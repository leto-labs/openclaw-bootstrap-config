# Cloud Key Management Service (KMS) API - API Reference

**Version**: `v1` | **Methods**: 83 | **Schemas**: 92

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `cloudkms.folders.getKajPolicyConfig` | GET | `v1/{+name}` | Gets the KeyAccessJustificationsPolicyConfig for a given organization, folder, or project. |
| `cloudkms.folders.updateKajPolicyConfig` | PATCH | `v1/{+name}` | Updates the KeyAccessJustificationsPolicyConfig for a given organization, folder, or project. |
| `cloudkms.folders.updateAutokeyConfig` | PATCH | `v1/{+name}` | Updates the AutokeyConfig for a folder or a project. The caller must have both `cloudkms.autokeyC... |
| `cloudkms.folders.getAutokeyConfig` | GET | `v1/{+name}` | Returns the AutokeyConfig for a folder or project. |
| `cloudkms.projects.updateAutokeyConfig` | PATCH | `v1/{+name}` | Updates the AutokeyConfig for a folder or a project. The caller must have both `cloudkms.autokeyC... |
| `cloudkms.projects.getKajPolicyConfig` | GET | `v1/{+name}` | Gets the KeyAccessJustificationsPolicyConfig for a given organization, folder, or project. |
| `cloudkms.projects.getAutokeyConfig` | GET | `v1/{+name}` | Returns the AutokeyConfig for a folder or project. |
| `cloudkms.projects.updateKajPolicyConfig` | PATCH | `v1/{+name}` | Updates the KeyAccessJustificationsPolicyConfig for a given organization, folder, or project. |
| `cloudkms.projects.showEffectiveAutokeyConfig` | GET | `v1/{+parent}:showEffectiveAutokeyConfig` | Returns the effective Cloud KMS Autokey configuration for a given project. |
| `cloudkms.projects.showEffectiveKeyAccessJustificationsPolicyConfig` | GET | `v1/{+project}:showEffectiveKeyAccessJustificationsPolicyConfig` | Returns the KeyAccessJustificationsPolicyConfig of the resource closest to the given project in h... |
| `cloudkms.projects.showEffectiveKeyAccessJustificationsEnrollmentConfig` | GET | `v1/{+project}:showEffectiveKeyAccessJustificationsEnrollmentConfig` | Returns the KeyAccessJustificationsEnrollmentConfig of the resource closest to the given project ... |
| `cloudkms.projects.locations.updateEkmConfig` | PATCH | `v1/{+name}` | Updates the EkmConfig singleton resource for a given project and location. |
| `cloudkms.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `cloudkms.projects.locations.generateRandomBytes` | POST | `v1/{+location}:generateRandomBytes` | Generate random bytes using the Cloud KMS randomness source in the provided location. |
| `cloudkms.projects.locations.getEkmConfig` | GET | `v1/{+name}` | Returns the EkmConfig singleton resource for a given project and location. |
| `cloudkms.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `cloudkms.projects.locations.ekmConnections.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `cloudkms.projects.locations.ekmConnections.verifyConnectivity` | GET | `v1/{+name}:verifyConnectivity` | Verifies that Cloud KMS can successfully connect to the external key manager specified by an EkmC... |
| `cloudkms.projects.locations.ekmConnections.list` | GET | `v1/{+parent}/ekmConnections` | Lists EkmConnections. |
| `cloudkms.projects.locations.ekmConnections.patch` | PATCH | `v1/{+name}` | Updates an EkmConnection's metadata. |
| `cloudkms.projects.locations.ekmConnections.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `cloudkms.projects.locations.ekmConnections.create` | POST | `v1/{+parent}/ekmConnections` | Creates a new EkmConnection in a given Project and Location. |
| `cloudkms.projects.locations.ekmConnections.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `cloudkms.projects.locations.ekmConnections.get` | GET | `v1/{+name}` | Returns metadata for a given EkmConnection. |
| `cloudkms.projects.locations.keyHandles.get` | GET | `v1/{+name}` | Returns the KeyHandle. |
| `cloudkms.projects.locations.keyHandles.create` | POST | `v1/{+parent}/keyHandles` | Creates a new KeyHandle, triggering the provisioning of a new CryptoKey for CMEK use with the giv... |
| `cloudkms.projects.locations.keyHandles.list` | GET | `v1/{+parent}/keyHandles` | Lists KeyHandles. |
| `cloudkms.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `cloudkms.projects.locations.singleTenantHsmInstances.list` | GET | `v1/{+parent}/singleTenantHsmInstances` | Lists SingleTenantHsmInstances. |
| `cloudkms.projects.locations.singleTenantHsmInstances.get` | GET | `v1/{+name}` | Returns metadata for a given SingleTenantHsmInstance. |
| `cloudkms.projects.locations.singleTenantHsmInstances.create` | POST | `v1/{+parent}/singleTenantHsmInstances` | Creates a new SingleTenantHsmInstance in a given Project and Location. User must create a Registe... |
| `cloudkms.projects.locations.singleTenantHsmInstances.proposals.execute` | POST | `v1/{+name}:execute` | Executes a SingleTenantHsmInstanceProposal for a given SingleTenantHsmInstance. The proposal must... |
| `cloudkms.projects.locations.singleTenantHsmInstances.proposals.approve` | POST | `v1/{+name}:approve` | Approves a SingleTenantHsmInstanceProposal for a given SingleTenantHsmInstance. The proposal must... |
| `cloudkms.projects.locations.singleTenantHsmInstances.proposals.delete` | DELETE | `v1/{+name}` | Deletes a SingleTenantHsmInstanceProposal. |
| `cloudkms.projects.locations.singleTenantHsmInstances.proposals.create` | POST | `v1/{+parent}/proposals` | Creates a new SingleTenantHsmInstanceProposal for a given SingleTenantHsmInstance. |
| `cloudkms.projects.locations.singleTenantHsmInstances.proposals.get` | GET | `v1/{+name}` | Returns metadata for a given SingleTenantHsmInstanceProposal. |
| `cloudkms.projects.locations.singleTenantHsmInstances.proposals.list` | GET | `v1/{+parent}/proposals` | Lists SingleTenantHsmInstanceProposals. |
| `cloudkms.projects.locations.retiredResources.list` | GET | `v1/{+parent}/retiredResources` | Lists the RetiredResources which are the records of deleted CryptoKeys. RetiredResources prevent ... |
| `cloudkms.projects.locations.retiredResources.get` | GET | `v1/{+name}` | Retrieves a specific RetiredResource resource, which represents the record of a deleted CryptoKey. |
| `cloudkms.projects.locations.keyRings.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `cloudkms.projects.locations.keyRings.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `cloudkms.projects.locations.keyRings.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `cloudkms.projects.locations.keyRings.get` | GET | `v1/{+name}` | Returns metadata for a given KeyRing. |
| `cloudkms.projects.locations.keyRings.list` | GET | `v1/{+parent}/keyRings` | Lists KeyRings. |
| `cloudkms.projects.locations.keyRings.create` | POST | `v1/{+parent}/keyRings` | Create a new KeyRing in a given Project and Location. |
| `cloudkms.projects.locations.keyRings.cryptoKeys.patch` | PATCH | `v1/{+name}` | Update a CryptoKey. |
| `cloudkms.projects.locations.keyRings.cryptoKeys.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `cloudkms.projects.locations.keyRings.cryptoKeys.updatePrimaryVersion` | POST | `v1/{+name}:updatePrimaryVersion` | Update the version of a CryptoKey that will be used in Encrypt. Returns an error if called on a k... |
| `cloudkms.projects.locations.keyRings.cryptoKeys.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `cloudkms.projects.locations.keyRings.cryptoKeys.delete` | DELETE | `v1/{+name}` | Permanently deletes the given CryptoKey. All child CryptoKeyVersions must have been previously de... |
| `cloudkms.projects.locations.keyRings.cryptoKeys.decrypt` | POST | `v1/{+name}:decrypt` | Decrypts data that was protected by Encrypt. The CryptoKey.purpose must be ENCRYPT_DECRYPT. |
| `cloudkms.projects.locations.keyRings.cryptoKeys.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `cloudkms.projects.locations.keyRings.cryptoKeys.create` | POST | `v1/{+parent}/cryptoKeys` | Create a new CryptoKey within a KeyRing. CryptoKey.purpose and CryptoKey.version_template.algorit... |
| `cloudkms.projects.locations.keyRings.cryptoKeys.list` | GET | `v1/{+parent}/cryptoKeys` | Lists CryptoKeys. |
| `cloudkms.projects.locations.keyRings.cryptoKeys.get` | GET | `v1/{+name}` | Returns metadata for a given CryptoKey, as well as its primary CryptoKeyVersion. |
| `cloudkms.projects.locations.keyRings.cryptoKeys.encrypt` | POST | `v1/{+name}:encrypt` | Encrypts data, so that it can only be recovered by a call to Decrypt. The CryptoKey.purpose must ... |
| `cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.rawEncrypt` | POST | `v1/{+name}:rawEncrypt` | Encrypts data using portable cryptographic primitives. Most users should choose Encrypt and Decry... |
| `cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.getPublicKey` | GET | `v1/{+name}/publicKey` | Returns the public key for the given CryptoKeyVersion. The CryptoKey.purpose must be ASYMMETRIC_S... |
| `cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.get` | GET | `v1/{+name}` | Returns metadata for a given CryptoKeyVersion. |
| `cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.rawDecrypt` | POST | `v1/{+name}:rawDecrypt` | Decrypts data that was originally encrypted using a raw cryptographic mechanism. The CryptoKey.pu... |
| `cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.asymmetricDecrypt` | POST | `v1/{+name}:asymmetricDecrypt` | Decrypts data that was encrypted with a public key retrieved from GetPublicKey corresponding to a... |
| `cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.destroy` | POST | `v1/{+name}:destroy` | Schedule a CryptoKeyVersion for destruction. Upon calling this method, CryptoKeyVersion.state wil... |
| `cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.patch` | PATCH | `v1/{+name}` | Update a CryptoKeyVersion's metadata. state may be changed between ENABLED and DISABLED using thi... |
| `cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.delete` | DELETE | `v1/{+name}` | Permanently deletes the given CryptoKeyVersion. Only possible if the version has not been previou... |
| `cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.macVerify` | POST | `v1/{+name}:macVerify` | Verifies MAC tag using a CryptoKeyVersion with CryptoKey.purpose MAC, and returns a response that... |
| `cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.import` | POST | `v1/{+parent}/cryptoKeyVersions:import` | Import wrapped key material into a CryptoKeyVersion. All requests must specify a CryptoKey. If a ... |
| `cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.macSign` | POST | `v1/{+name}:macSign` | Signs data using a CryptoKeyVersion with CryptoKey.purpose MAC, producing a tag that can be verif... |
| `cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.list` | GET | `v1/{+parent}/cryptoKeyVersions` | Lists CryptoKeyVersions. |
| `cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.decapsulate` | POST | `v1/{+name}:decapsulate` | Decapsulates data that was encapsulated with a public key retrieved from GetPublicKey correspondi... |
| `cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.asymmetricSign` | POST | `v1/{+name}:asymmetricSign` | Signs data using a CryptoKeyVersion with CryptoKey.purpose ASYMMETRIC_SIGN, producing a signature... |
| `cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.create` | POST | `v1/{+parent}/cryptoKeyVersions` | Create a new CryptoKeyVersion in a CryptoKey. The server will assign the next sequential id. If u... |
| `cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.restore` | POST | `v1/{+name}:restore` | Restore a CryptoKeyVersion in the DESTROY_SCHEDULED state. Upon restoration of the CryptoKeyVersi... |
| `cloudkms.projects.locations.keyRings.importJobs.get` | GET | `v1/{+name}` | Returns metadata for a given ImportJob. |
| `cloudkms.projects.locations.keyRings.importJobs.create` | POST | `v1/{+parent}/importJobs` | Create a new ImportJob within a KeyRing. ImportJob.import_method is required. |
| `cloudkms.projects.locations.keyRings.importJobs.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `cloudkms.projects.locations.keyRings.importJobs.list` | GET | `v1/{+parent}/importJobs` | Lists ImportJobs. |
| `cloudkms.projects.locations.keyRings.importJobs.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `cloudkms.projects.locations.keyRings.importJobs.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `cloudkms.projects.locations.ekmConfig.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `cloudkms.projects.locations.ekmConfig.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `cloudkms.projects.locations.ekmConfig.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `cloudkms.organizations.getKajPolicyConfig` | GET | `v1/{+name}` | Gets the KeyAccessJustificationsPolicyConfig for a given organization, folder, or project. |
| `cloudkms.organizations.updateKajPolicyConfig` | PATCH | `v1/{+name}` | Updates the KeyAccessJustificationsPolicyConfig for a given organization, folder, or project. |

### `cloudkms.folders.getKajPolicyConfig`

**GET** `v1/{+name}`

Gets the KeyAccessJustificationsPolicyConfig for a given organization, folder, or project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the KeyAccessJustificationsPolicyConfig to get. |

**Response**: `KeyAccessJustificationsPolicyConfig`

```typescript
const res = await cloudkms.folders.getKajPolicyConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.folders.updateKajPolicyConfig`

**PATCH** `v1/{+name}`

Updates the KeyAccessJustificationsPolicyConfig for a given organization, folder, or project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name for this KeyAccessJustificationsPolicyConfig in the format of "{organizations|folders|p... |
| `updateMask` | `string` | query | No | Optional. The list of fields to update. |

**Request body**: `KeyAccessJustificationsPolicyConfig`

**Response**: `KeyAccessJustificationsPolicyConfig`

```typescript
const res = await cloudkms.folders.updateKajPolicyConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.folders.updateAutokeyConfig`

**PATCH** `v1/{+name}`

Updates the AutokeyConfig for a folder or a project. The caller must have both `cloudkms.autokeyConfigs.update` permission on the parent folder and `cloudkms.cryptoKeys.setIamPolicy` permission on the provided key project. A KeyHandle creation in the folder's descendant projects will use this configuration to determine where to create the resulting CryptoKey.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Name of the AutokeyConfig resource, e.g. `folders/{FOLDER_NUMBER}/autokeyConfig` or `projects/{PROJECT_NU... |
| `updateMask` | `string` | query | No | Required. Masks which fields of the AutokeyConfig to update, e.g. `keyProject`. |

**Request body**: `AutokeyConfig`

**Response**: `AutokeyConfig`

```typescript
const res = await cloudkms.folders.updateAutokeyConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.folders.getAutokeyConfig`

**GET** `v1/{+name}`

Returns the AutokeyConfig for a folder or project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the AutokeyConfig resource, e.g. `folders/{FOLDER_NUMBER}/autokeyConfig` or `projects/{PROJECT_NUMB... |

**Response**: `AutokeyConfig`

```typescript
const res = await cloudkms.folders.getAutokeyConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.updateAutokeyConfig`

**PATCH** `v1/{+name}`

Updates the AutokeyConfig for a folder or a project. The caller must have both `cloudkms.autokeyConfigs.update` permission on the parent folder and `cloudkms.cryptoKeys.setIamPolicy` permission on the provided key project. A KeyHandle creation in the folder's descendant projects will use this configuration to determine where to create the resulting CryptoKey.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Name of the AutokeyConfig resource, e.g. `folders/{FOLDER_NUMBER}/autokeyConfig` or `projects/{PROJECT_NU... |
| `updateMask` | `string` | query | No | Required. Masks which fields of the AutokeyConfig to update, e.g. `keyProject`. |

**Request body**: `AutokeyConfig`

**Response**: `AutokeyConfig`

```typescript
const res = await cloudkms.projects.updateAutokeyConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.getKajPolicyConfig`

**GET** `v1/{+name}`

Gets the KeyAccessJustificationsPolicyConfig for a given organization, folder, or project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the KeyAccessJustificationsPolicyConfig to get. |

**Response**: `KeyAccessJustificationsPolicyConfig`

```typescript
const res = await cloudkms.projects.getKajPolicyConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.getAutokeyConfig`

**GET** `v1/{+name}`

Returns the AutokeyConfig for a folder or project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the AutokeyConfig resource, e.g. `folders/{FOLDER_NUMBER}/autokeyConfig` or `projects/{PROJECT_NUMB... |

**Response**: `AutokeyConfig`

```typescript
const res = await cloudkms.projects.getAutokeyConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.updateKajPolicyConfig`

**PATCH** `v1/{+name}`

Updates the KeyAccessJustificationsPolicyConfig for a given organization, folder, or project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name for this KeyAccessJustificationsPolicyConfig in the format of "{organizations|folders|p... |
| `updateMask` | `string` | query | No | Optional. The list of fields to update. |

**Request body**: `KeyAccessJustificationsPolicyConfig`

**Response**: `KeyAccessJustificationsPolicyConfig`

```typescript
const res = await cloudkms.projects.updateKajPolicyConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.showEffectiveAutokeyConfig`

**GET** `v1/{+parent}:showEffectiveAutokeyConfig`

Returns the effective Cloud KMS Autokey configuration for a given project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the resource project to the show effective Cloud KMS Autokey configuration for. This may be helpful... |

**Response**: `ShowEffectiveAutokeyConfigResponse`

```typescript
const res = await cloudkms.projects.showEffectiveAutokeyConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.showEffectiveKeyAccessJustificationsPolicyConfig`

**GET** `v1/{+project}:showEffectiveKeyAccessJustificationsPolicyConfig`

Returns the KeyAccessJustificationsPolicyConfig of the resource closest to the given project in hierarchy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Required. The number or id of the project to get the effective KeyAccessJustificationsPolicyConfig. In the format of ... |

**Response**: `ShowEffectiveKeyAccessJustificationsPolicyConfigResponse`

```typescript
const res = await cloudkms.projects.showEffectiveKeyAccessJustificationsPolicyConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.showEffectiveKeyAccessJustificationsEnrollmentConfig`

**GET** `v1/{+project}:showEffectiveKeyAccessJustificationsEnrollmentConfig`

Returns the KeyAccessJustificationsEnrollmentConfig of the resource closest to the given project in hierarchy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Required. The number or id of the project to get the effective KeyAccessJustificationsEnrollmentConfig for. |

**Response**: `ShowEffectiveKeyAccessJustificationsEnrollmentConfigResponse`

```typescript
const res = await cloudkms.projects.showEffectiveKeyAccessJustificationsEnrollmentConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.updateEkmConfig`

**PATCH** `v1/{+name}`

Updates the EkmConfig singleton resource for a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The resource name for the EkmConfig in the format `projects/*/locations/*/ekmConfig`. |
| `updateMask` | `string` | query | No | Required. List of fields to be updated in this request. |

**Request body**: `EkmConfig`

**Response**: `EkmConfig`

```typescript
const res = await cloudkms.locations.updateEkmConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await cloudkms.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.generateRandomBytes`

**POST** `v1/{+location}:generateRandomBytes`

Generate random bytes using the Cloud KMS randomness source in the provided location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `location` | `string` | path | Yes | The project-specific location in which to generate random bytes. For example, "projects/my-project/locations/us-centr... |

**Request body**: `GenerateRandomBytesRequest`

**Response**: `GenerateRandomBytesResponse`

```typescript
const res = await cloudkms.locations.generateRandomBytes({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.getEkmConfig`

**GET** `v1/{+name}`

Returns the EkmConfig singleton resource for a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the EkmConfig to get. |

**Response**: `EkmConfig`

```typescript
const res = await cloudkms.locations.getEkmConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.list`

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
const res = await cloudkms.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.ekmConnections.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await cloudkms.ekmConnections.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.ekmConnections.verifyConnectivity`

**GET** `v1/{+name}:verifyConnectivity`

Verifies that Cloud KMS can successfully connect to the external key manager specified by an EkmConnection. If there is an error connecting to the EKM, this method returns a FAILED_PRECONDITION status containing structured information as described at https://cloud.google.com/kms/docs/reference/ekm_errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the EkmConnection to verify. |

**Response**: `VerifyConnectivityResponse`

```typescript
const res = await cloudkms.ekmConnections.verifyConnectivity({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.ekmConnections.list`

**GET** `v1/{+parent}/ekmConnections`

Lists EkmConnections.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the location associated with the EkmConnections to list, in the format `projects/*/loc... |
| `filter` | `string` | query | No | Optional. Only include resources that match the filter in the response. For more information, see [Sorting and filter... |
| `orderBy` | `string` | query | No | Optional. Specify how the results should be sorted. If not specified, the results will be sorted in the default order... |
| `pageSize` | `integer` | query | No | Optional. Optional limit on the number of EkmConnections to include in the response. Further EkmConnections can subse... |
| `pageToken` | `string` | query | No | Optional. Optional pagination token, returned earlier via ListEkmConnectionsResponse.next_page_token. |

**Response**: `ListEkmConnectionsResponse`

```typescript
const res = await cloudkms.ekmConnections.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.ekmConnections.patch`

**PATCH** `v1/{+name}`

Updates an EkmConnection's metadata.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The resource name for the EkmConnection in the format `projects/*/locations/*/ekmConnections/*`. |
| `updateMask` | `string` | query | No | Required. List of fields to be updated in this request. |

**Request body**: `EkmConnection`

**Response**: `EkmConnection`

```typescript
const res = await cloudkms.ekmConnections.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.ekmConnections.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await cloudkms.ekmConnections.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.ekmConnections.create`

**POST** `v1/{+parent}/ekmConnections`

Creates a new EkmConnection in a given Project and Location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the location associated with the EkmConnection, in the format `projects/*/locations/*`. |
| `ekmConnectionId` | `string` | query | No | Required. It must be unique within a location and match the regular expression `[a-zA-Z0-9_-]{1,63}`. |

**Request body**: `EkmConnection`

**Response**: `EkmConnection`

```typescript
const res = await cloudkms.ekmConnections.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.ekmConnections.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await cloudkms.ekmConnections.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.ekmConnections.get`

**GET** `v1/{+name}`

Returns metadata for a given EkmConnection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the EkmConnection to get. |

**Response**: `EkmConnection`

```typescript
const res = await cloudkms.ekmConnections.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.keyHandles.get`

**GET** `v1/{+name}`

Returns the KeyHandle.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the KeyHandle resource, e.g. `projects/{PROJECT_ID}/locations/{LOCATION}/keyHandles/{KEY_HANDLE_ID}`. |

**Response**: `KeyHandle`

```typescript
const res = await cloudkms.keyHandles.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.keyHandles.create`

**POST** `v1/{+parent}/keyHandles`

Creates a new KeyHandle, triggering the provisioning of a new CryptoKey for CMEK use with the given resource type in the configured key project and the same location. GetOperation should be used to resolve the resulting long-running operation and get the resulting KeyHandle and CryptoKey.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the resource project and location to create the KeyHandle in, e.g. `projects/{PROJECT_ID}/locations... |
| `keyHandleId` | `string` | query | No | Optional. Id of the KeyHandle. Must be unique to the resource project and location. If not provided by the caller, a ... |

**Request body**: `KeyHandle`

**Response**: `Operation`

```typescript
const res = await cloudkms.keyHandles.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.keyHandles.list`

**GET** `v1/{+parent}/keyHandles`

Lists KeyHandles.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the resource project and location from which to list KeyHandles, e.g. `projects/{PROJECT_ID}/locati... |
| `filter` | `string` | query | No | Optional. Filter to apply when listing KeyHandles, e.g. `resource_type_selector="{SERVICE}.googleapis.com/{TYPE}"`. |
| `pageSize` | `integer` | query | No | Optional. Optional limit on the number of KeyHandles to include in the response. The service may return fewer than th... |
| `pageToken` | `string` | query | No | Optional. Optional pagination token, returned earlier via ListKeyHandlesResponse.next_page_token. |

**Response**: `ListKeyHandlesResponse`

```typescript
const res = await cloudkms.keyHandles.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await cloudkms.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.singleTenantHsmInstances.list`

**GET** `v1/{+parent}/singleTenantHsmInstances`

Lists SingleTenantHsmInstances.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the location associated with the SingleTenantHsmInstances to list, in the format `proj... |
| `filter` | `string` | query | No | Optional. Only include resources that match the filter in the response. For more information, see [Sorting and filter... |
| `orderBy` | `string` | query | No | Optional. Specify how the results should be sorted. If not specified, the results will be sorted in the default order... |
| `pageSize` | `integer` | query | No | Optional. Optional limit on the number of SingleTenantHsmInstances to include in the response. Further SingleTenantHs... |
| `pageToken` | `string` | query | No | Optional. Optional pagination token, returned earlier via ListSingleTenantHsmInstancesResponse.next_page_token. |
| `showDeleted` | `boolean` | query | No | Optional. If set to true, HsmManagement.ListSingleTenantHsmInstances will also return SingleTenantHsmInstances in DEL... |

**Response**: `ListSingleTenantHsmInstancesResponse`

```typescript
const res = await cloudkms.singleTenantHsmInstances.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.singleTenantHsmInstances.get`

**GET** `v1/{+name}`

Returns metadata for a given SingleTenantHsmInstance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the SingleTenantHsmInstance to get. |

**Response**: `SingleTenantHsmInstance`

```typescript
const res = await cloudkms.singleTenantHsmInstances.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.singleTenantHsmInstances.create`

**POST** `v1/{+parent}/singleTenantHsmInstances`

Creates a new SingleTenantHsmInstance in a given Project and Location. User must create a RegisterTwoFactorAuthKeys proposal with this single-tenant HSM instance to finish setup of the instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the location associated with the SingleTenantHsmInstance, in the format `projects/*/lo... |
| `singleTenantHsmInstanceId` | `string` | query | No | Optional. It must be unique within a location and match the regular expression `[a-zA-Z0-9_-]{1,63}`. |

**Request body**: `SingleTenantHsmInstance`

**Response**: `Operation`

```typescript
const res = await cloudkms.singleTenantHsmInstances.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.singleTenantHsmInstances.proposals.execute`

**POST** `v1/{+name}:execute`

Executes a SingleTenantHsmInstanceProposal for a given SingleTenantHsmInstance. The proposal must be in the APPROVED state.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the SingleTenantHsmInstanceProposal to execute. |

**Request body**: `ExecuteSingleTenantHsmInstanceProposalRequest`

**Response**: `Operation`

```typescript
const res = await cloudkms.proposals.execute({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.singleTenantHsmInstances.proposals.approve`

**POST** `v1/{+name}:approve`

Approves a SingleTenantHsmInstanceProposal for a given SingleTenantHsmInstance. The proposal must be in the PENDING state.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the SingleTenantHsmInstanceProposal to approve. |

**Request body**: `ApproveSingleTenantHsmInstanceProposalRequest`

**Response**: `ApproveSingleTenantHsmInstanceProposalResponse`

```typescript
const res = await cloudkms.proposals.approve({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.singleTenantHsmInstances.proposals.delete`

**DELETE** `v1/{+name}`

Deletes a SingleTenantHsmInstanceProposal.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the SingleTenantHsmInstanceProposal to delete. |

**Response**: `Empty`

```typescript
const res = await cloudkms.proposals.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.singleTenantHsmInstances.proposals.create`

**POST** `v1/{+parent}/proposals`

Creates a new SingleTenantHsmInstanceProposal for a given SingleTenantHsmInstance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the SingleTenantHsmInstance associated with the SingleTenantHsmInstanceProposals. |
| `singleTenantHsmInstanceProposalId` | `string` | query | No | Optional. It must be unique within a location and match the regular expression `[a-zA-Z0-9_-]{1,63}`. |

**Request body**: `SingleTenantHsmInstanceProposal`

**Response**: `Operation`

```typescript
const res = await cloudkms.proposals.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.singleTenantHsmInstances.proposals.get`

**GET** `v1/{+name}`

Returns metadata for a given SingleTenantHsmInstanceProposal.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the SingleTenantHsmInstanceProposal to get. |

**Response**: `SingleTenantHsmInstanceProposal`

```typescript
const res = await cloudkms.proposals.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.singleTenantHsmInstances.proposals.list`

**GET** `v1/{+parent}/proposals`

Lists SingleTenantHsmInstanceProposals.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the single tenant HSM instance associated with the SingleTenantHsmInstanceProposals to... |
| `filter` | `string` | query | No | Optional. Only include resources that match the filter in the response. For more information, see [Sorting and filter... |
| `orderBy` | `string` | query | No | Optional. Specify how the results should be sorted. If not specified, the results will be sorted in the default order... |
| `pageSize` | `integer` | query | No | Optional. Optional limit on the number of SingleTenantHsmInstanceProposals to include in the response. Further Single... |
| `pageToken` | `string` | query | No | Optional. Optional pagination token, returned earlier via ListSingleTenantHsmInstanceProposalsResponse.next_page_token. |
| `showDeleted` | `boolean` | query | No | Optional. If set to true, HsmManagement.ListSingleTenantHsmInstanceProposals will also return SingleTenantHsmInstance... |

**Response**: `ListSingleTenantHsmInstanceProposalsResponse`

```typescript
const res = await cloudkms.proposals.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.retiredResources.list`

**GET** `v1/{+parent}/retiredResources`

Lists the RetiredResources which are the records of deleted CryptoKeys. RetiredResources prevent the reuse of these resource names after deletion.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project-specific location holding the RetiredResources, in the format `projects/*/locations/*`. |
| `pageSize` | `integer` | query | No | Optional. Optional limit on the number of RetiredResources to be included in the response. Further RetiredResources c... |
| `pageToken` | `string` | query | No | Optional. Optional pagination token, returned earlier via ListRetiredResourcesResponse.next_page_token. |

**Response**: `ListRetiredResourcesResponse`

```typescript
const res = await cloudkms.retiredResources.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.retiredResources.get`

**GET** `v1/{+name}`

Retrieves a specific RetiredResource resource, which represents the record of a deleted CryptoKey.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the RetiredResource to get. |

**Response**: `RetiredResource`

```typescript
const res = await cloudkms.retiredResources.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.keyRings.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await cloudkms.keyRings.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.keyRings.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await cloudkms.keyRings.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.keyRings.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await cloudkms.keyRings.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.keyRings.get`

**GET** `v1/{+name}`

Returns metadata for a given KeyRing.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the KeyRing to get. |

**Response**: `KeyRing`

```typescript
const res = await cloudkms.keyRings.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.keyRings.list`

**GET** `v1/{+parent}/keyRings`

Lists KeyRings.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the location associated with the KeyRings, in the format `projects/*/locations/*`. |
| `filter` | `string` | query | No | Optional. Only include resources that match the filter in the response. For more information, see [Sorting and filter... |
| `orderBy` | `string` | query | No | Optional. Specify how the results should be sorted. If not specified, the results will be sorted in the default order... |
| `pageSize` | `integer` | query | No | Optional. Optional limit on the number of KeyRings to include in the response. Further KeyRings can subsequently be o... |
| `pageToken` | `string` | query | No | Optional. Optional pagination token, returned earlier via ListKeyRingsResponse.next_page_token. |

**Response**: `ListKeyRingsResponse`

```typescript
const res = await cloudkms.keyRings.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.keyRings.create`

**POST** `v1/{+parent}/keyRings`

Create a new KeyRing in a given Project and Location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the location associated with the KeyRings, in the format `projects/*/locations/*`. |
| `keyRingId` | `string` | query | No | Required. It must be unique within a location and match the regular expression `[a-zA-Z0-9_-]{1,63}` |

**Request body**: `KeyRing`

**Response**: `KeyRing`

```typescript
const res = await cloudkms.keyRings.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.keyRings.cryptoKeys.patch`

**PATCH** `v1/{+name}`

Update a CryptoKey.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The resource name for this CryptoKey in the format `projects/*/locations/*/keyRings/*/cryptoKeys/*`. |
| `updateMask` | `string` | query | No | Required. List of fields to be updated in this request. |

**Request body**: `CryptoKey`

**Response**: `CryptoKey`

```typescript
const res = await cloudkms.cryptoKeys.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.keyRings.cryptoKeys.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await cloudkms.cryptoKeys.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.keyRings.cryptoKeys.updatePrimaryVersion`

**POST** `v1/{+name}:updatePrimaryVersion`

Update the version of a CryptoKey that will be used in Encrypt. Returns an error if called on a key whose purpose is not ENCRYPT_DECRYPT.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the CryptoKey to update. |

**Request body**: `UpdateCryptoKeyPrimaryVersionRequest`

**Response**: `CryptoKey`

```typescript
const res = await cloudkms.cryptoKeys.updatePrimaryVersion({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.keyRings.cryptoKeys.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await cloudkms.cryptoKeys.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.keyRings.cryptoKeys.delete`

**DELETE** `v1/{+name}`

Permanently deletes the given CryptoKey. All child CryptoKeyVersions must have been previously deleted using KeyManagementService.DeleteCryptoKeyVersion. The specified crypto key will be immediately and permanently deleted upon calling this method. This action cannot be undone.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the CryptoKey to delete. |

**Response**: `Operation`

```typescript
const res = await cloudkms.cryptoKeys.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.keyRings.cryptoKeys.decrypt`

**POST** `v1/{+name}:decrypt`

Decrypts data that was protected by Encrypt. The CryptoKey.purpose must be ENCRYPT_DECRYPT.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the CryptoKey to use for decryption. The server will choose the appropriate version. |

**Request body**: `DecryptRequest`

**Response**: `DecryptResponse`

```typescript
const res = await cloudkms.cryptoKeys.decrypt({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.keyRings.cryptoKeys.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await cloudkms.cryptoKeys.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.keyRings.cryptoKeys.create`

**POST** `v1/{+parent}/cryptoKeys`

Create a new CryptoKey within a KeyRing. CryptoKey.purpose and CryptoKey.version_template.algorithm are required.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the KeyRing associated with the CryptoKeys. |
| `cryptoKeyId` | `string` | query | No | Required. It must be unique within a KeyRing and match the regular expression `[a-zA-Z0-9_-]{1,63}` |
| `skipInitialVersionCreation` | `boolean` | query | No | If set to true, the request will create a CryptoKey without any CryptoKeyVersions. You must manually call CreateCrypt... |

**Request body**: `CryptoKey`

**Response**: `CryptoKey`

```typescript
const res = await cloudkms.cryptoKeys.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.keyRings.cryptoKeys.list`

**GET** `v1/{+parent}/cryptoKeys`

Lists CryptoKeys.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the KeyRing to list, in the format `projects/*/locations/*/keyRings/*`. |
| `filter` | `string` | query | No | Optional. Only include resources that match the filter in the response. For more information, see [Sorting and filter... |
| `orderBy` | `string` | query | No | Optional. Specify how the results should be sorted. If not specified, the results will be sorted in the default order... |
| `pageSize` | `integer` | query | No | Optional. Optional limit on the number of CryptoKeys to include in the response. Further CryptoKeys can subsequently ... |
| `pageToken` | `string` | query | No | Optional. Optional pagination token, returned earlier via ListCryptoKeysResponse.next_page_token. |
| `versionView` | `string` | query | No | The fields of the primary version to include in the response. |

**Response**: `ListCryptoKeysResponse`

```typescript
const res = await cloudkms.cryptoKeys.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.keyRings.cryptoKeys.get`

**GET** `v1/{+name}`

Returns metadata for a given CryptoKey, as well as its primary CryptoKeyVersion.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the CryptoKey to get. |

**Response**: `CryptoKey`

```typescript
const res = await cloudkms.cryptoKeys.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.keyRings.cryptoKeys.encrypt`

**POST** `v1/{+name}:encrypt`

Encrypts data, so that it can only be recovered by a call to Decrypt. The CryptoKey.purpose must be ENCRYPT_DECRYPT.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the CryptoKey or CryptoKeyVersion to use for encryption. If a CryptoKey is specified, ... |

**Request body**: `EncryptRequest`

**Response**: `EncryptResponse`

```typescript
const res = await cloudkms.cryptoKeys.encrypt({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.rawEncrypt`

**POST** `v1/{+name}:rawEncrypt`

Encrypts data using portable cryptographic primitives. Most users should choose Encrypt and Decrypt rather than their raw counterparts. The CryptoKey.purpose must be RAW_ENCRYPT_DECRYPT.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the CryptoKeyVersion to use for encryption. |

**Request body**: `RawEncryptRequest`

**Response**: `RawEncryptResponse`

```typescript
const res = await cloudkms.cryptoKeyVersions.rawEncrypt({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.getPublicKey`

**GET** `v1/{+name}/publicKey`

Returns the public key for the given CryptoKeyVersion. The CryptoKey.purpose must be ASYMMETRIC_SIGN or ASYMMETRIC_DECRYPT.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the CryptoKeyVersion public key to get. |
| `publicKeyFormat` | `string` | query | No | Optional. The PublicKey format specified by the user. This field is required for PQC algorithms. If specified, the pu... |

**Response**: `PublicKey`

```typescript
const res = await cloudkms.cryptoKeyVersions.getPublicKey({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.get`

**GET** `v1/{+name}`

Returns metadata for a given CryptoKeyVersion.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the CryptoKeyVersion to get. |

**Response**: `CryptoKeyVersion`

```typescript
const res = await cloudkms.cryptoKeyVersions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.rawDecrypt`

**POST** `v1/{+name}:rawDecrypt`

Decrypts data that was originally encrypted using a raw cryptographic mechanism. The CryptoKey.purpose must be RAW_ENCRYPT_DECRYPT.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the CryptoKeyVersion to use for decryption. |

**Request body**: `RawDecryptRequest`

**Response**: `RawDecryptResponse`

```typescript
const res = await cloudkms.cryptoKeyVersions.rawDecrypt({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.asymmetricDecrypt`

**POST** `v1/{+name}:asymmetricDecrypt`

Decrypts data that was encrypted with a public key retrieved from GetPublicKey corresponding to a CryptoKeyVersion with CryptoKey.purpose ASYMMETRIC_DECRYPT.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the CryptoKeyVersion to use for decryption. |

**Request body**: `AsymmetricDecryptRequest`

**Response**: `AsymmetricDecryptResponse`

```typescript
const res = await cloudkms.cryptoKeyVersions.asymmetricDecrypt({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.destroy`

**POST** `v1/{+name}:destroy`

Schedule a CryptoKeyVersion for destruction. Upon calling this method, CryptoKeyVersion.state will be set to DESTROY_SCHEDULED, and destroy_time will be set to the time destroy_scheduled_duration in the future. At that time, the state will automatically change to DESTROYED, and the key material will be irrevocably destroyed. Before the destroy_time is reached, RestoreCryptoKeyVersion may be called to reverse the process.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the CryptoKeyVersion to destroy. |

**Request body**: `DestroyCryptoKeyVersionRequest`

**Response**: `CryptoKeyVersion`

```typescript
const res = await cloudkms.cryptoKeyVersions.destroy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.patch`

**PATCH** `v1/{+name}`

Update a CryptoKeyVersion's metadata. state may be changed between ENABLED and DISABLED using this method. See DestroyCryptoKeyVersion and RestoreCryptoKeyVersion to move between other states.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The resource name for this CryptoKeyVersion in the format `projects/*/locations/*/keyRings/*/cryptoKeys/... |
| `updateMask` | `string` | query | No | Required. List of fields to be updated in this request. |

**Request body**: `CryptoKeyVersion`

**Response**: `CryptoKeyVersion`

```typescript
const res = await cloudkms.cryptoKeyVersions.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.delete`

**DELETE** `v1/{+name}`

Permanently deletes the given CryptoKeyVersion. Only possible if the version has not been previously imported and if its state is one of DESTROYED, IMPORT_FAILED, or GENERATION_FAILED. Successfully imported CryptoKeyVersions cannot be deleted at this time. The specified version will be immediately and permanently deleted upon calling this method. This action cannot be undone.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the CryptoKeyVersion to delete. |

**Response**: `Operation`

```typescript
const res = await cloudkms.cryptoKeyVersions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.macVerify`

**POST** `v1/{+name}:macVerify`

Verifies MAC tag using a CryptoKeyVersion with CryptoKey.purpose MAC, and returns a response that indicates whether or not the verification was successful.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the CryptoKeyVersion to use for verification. |

**Request body**: `MacVerifyRequest`

**Response**: `MacVerifyResponse`

```typescript
const res = await cloudkms.cryptoKeyVersions.macVerify({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.import`

**POST** `v1/{+parent}/cryptoKeyVersions:import`

Import wrapped key material into a CryptoKeyVersion. All requests must specify a CryptoKey. If a CryptoKeyVersion is additionally specified in the request, key material will be reimported into that version. Otherwise, a new version will be created, and will be assigned the next sequential id within the CryptoKey.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the CryptoKey to be imported into. The create permission is only required on this key when crea... |

**Request body**: `ImportCryptoKeyVersionRequest`

**Response**: `CryptoKeyVersion`

```typescript
const res = await cloudkms.cryptoKeyVersions.import({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.macSign`

**POST** `v1/{+name}:macSign`

Signs data using a CryptoKeyVersion with CryptoKey.purpose MAC, producing a tag that can be verified by another source with the same key.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the CryptoKeyVersion to use for signing. |

**Request body**: `MacSignRequest`

**Response**: `MacSignResponse`

```typescript
const res = await cloudkms.cryptoKeyVersions.macSign({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.list`

**GET** `v1/{+parent}/cryptoKeyVersions`

Lists CryptoKeyVersions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the CryptoKey to list, in the format `projects/*/locations/*/keyRings/*/cryptoKeys/*`. |
| `filter` | `string` | query | No | Optional. Only include resources that match the filter in the response. For more information, see [Sorting and filter... |
| `orderBy` | `string` | query | No | Optional. Specify how the results should be sorted. If not specified, the results will be sorted in the default order... |
| `pageSize` | `integer` | query | No | Optional. Optional limit on the number of CryptoKeyVersions to include in the response. Further CryptoKeyVersions can... |
| `pageToken` | `string` | query | No | Optional. Optional pagination token, returned earlier via ListCryptoKeyVersionsResponse.next_page_token. |
| `view` | `string` | query | No | The fields to include in the response. |

**Response**: `ListCryptoKeyVersionsResponse`

```typescript
const res = await cloudkms.cryptoKeyVersions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.decapsulate`

**POST** `v1/{+name}:decapsulate`

Decapsulates data that was encapsulated with a public key retrieved from GetPublicKey corresponding to a CryptoKeyVersion with CryptoKey.purpose KEY_ENCAPSULATION.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the CryptoKeyVersion to use for decapsulation. |

**Request body**: `DecapsulateRequest`

**Response**: `DecapsulateResponse`

```typescript
const res = await cloudkms.cryptoKeyVersions.decapsulate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.asymmetricSign`

**POST** `v1/{+name}:asymmetricSign`

Signs data using a CryptoKeyVersion with CryptoKey.purpose ASYMMETRIC_SIGN, producing a signature that can be verified with the public key retrieved from GetPublicKey.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the CryptoKeyVersion to use for signing. |

**Request body**: `AsymmetricSignRequest`

**Response**: `AsymmetricSignResponse`

```typescript
const res = await cloudkms.cryptoKeyVersions.asymmetricSign({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.create`

**POST** `v1/{+parent}/cryptoKeyVersions`

Create a new CryptoKeyVersion in a CryptoKey. The server will assign the next sequential id. If unset, state will be set to ENABLED.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the CryptoKey associated with the CryptoKeyVersions. |

**Request body**: `CryptoKeyVersion`

**Response**: `CryptoKeyVersion`

```typescript
const res = await cloudkms.cryptoKeyVersions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.restore`

**POST** `v1/{+name}:restore`

Restore a CryptoKeyVersion in the DESTROY_SCHEDULED state. Upon restoration of the CryptoKeyVersion, state will be set to DISABLED, and destroy_time will be cleared.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the CryptoKeyVersion to restore. |

**Request body**: `RestoreCryptoKeyVersionRequest`

**Response**: `CryptoKeyVersion`

```typescript
const res = await cloudkms.cryptoKeyVersions.restore({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.keyRings.importJobs.get`

**GET** `v1/{+name}`

Returns metadata for a given ImportJob.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the ImportJob to get. |

**Response**: `ImportJob`

```typescript
const res = await cloudkms.importJobs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.keyRings.importJobs.create`

**POST** `v1/{+parent}/importJobs`

Create a new ImportJob within a KeyRing. ImportJob.import_method is required.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the KeyRing associated with the ImportJobs. |
| `importJobId` | `string` | query | No | Required. It must be unique within a KeyRing and match the regular expression `[a-zA-Z0-9_-]{1,63}` |

**Request body**: `ImportJob`

**Response**: `ImportJob`

```typescript
const res = await cloudkms.importJobs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.keyRings.importJobs.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await cloudkms.importJobs.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.keyRings.importJobs.list`

**GET** `v1/{+parent}/importJobs`

Lists ImportJobs.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the KeyRing to list, in the format `projects/*/locations/*/keyRings/*`. |
| `filter` | `string` | query | No | Optional. Only include resources that match the filter in the response. For more information, see [Sorting and filter... |
| `orderBy` | `string` | query | No | Optional. Specify how the results should be sorted. If not specified, the results will be sorted in the default order... |
| `pageSize` | `integer` | query | No | Optional. Optional limit on the number of ImportJobs to include in the response. Further ImportJobs can subsequently ... |
| `pageToken` | `string` | query | No | Optional. Optional pagination token, returned earlier via ListImportJobsResponse.next_page_token. |

**Response**: `ListImportJobsResponse`

```typescript
const res = await cloudkms.importJobs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.keyRings.importJobs.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await cloudkms.importJobs.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.keyRings.importJobs.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await cloudkms.importJobs.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.ekmConfig.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await cloudkms.ekmConfig.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.ekmConfig.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await cloudkms.ekmConfig.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.projects.locations.ekmConfig.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await cloudkms.ekmConfig.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.organizations.getKajPolicyConfig`

**GET** `v1/{+name}`

Gets the KeyAccessJustificationsPolicyConfig for a given organization, folder, or project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the KeyAccessJustificationsPolicyConfig to get. |

**Response**: `KeyAccessJustificationsPolicyConfig`

```typescript
const res = await cloudkms.organizations.getKajPolicyConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

### `cloudkms.organizations.updateKajPolicyConfig`

**PATCH** `v1/{+name}`

Updates the KeyAccessJustificationsPolicyConfig for a given organization, folder, or project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name for this KeyAccessJustificationsPolicyConfig in the format of "{organizations|folders|p... |
| `updateMask` | `string` | query | No | Optional. The list of fields to update. |

**Request body**: `KeyAccessJustificationsPolicyConfig`

**Response**: `KeyAccessJustificationsPolicyConfig`

```typescript
const res = await cloudkms.organizations.updateKajPolicyConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudkms`

---

## Schemas

### `AddQuorumMember`

Add a quorum member to the SingleTenantHsmInstance. This will increase the total_approver_count by 1. The SingleTenantHsmInstance must be in the ACTIVE state to perform this operation.

| Property | Type | Description |
|----------|------|-------------|
| `twoFactorPublicKeyPem` | `string` | Required. The public key associated with the 2FA key for the new quorum member to add. Public key... |

### `ApproveSingleTenantHsmInstanceProposalRequest`

Request message for HsmManagement.ApproveSingleTenantHsmInstanceProposal.

| Property | Type | Description |
|----------|------|-------------|
| `quorumReply` | `QuorumReply` | Required. The reply to QuorumParameters for approving the proposal. |
| `requiredActionQuorumReply` | `RequiredActionQuorumReply` | Required. The reply to RequiredActionQuorumParameters for approving the proposal. |

### `ApproveSingleTenantHsmInstanceProposalResponse`

Response message for HsmManagement.ApproveSingleTenantHsmInstanceProposal.

### `AsymmetricDecryptRequest`

Request message for KeyManagementService.AsymmetricDecrypt.

| Property | Type | Description |
|----------|------|-------------|
| `ciphertext` | `string` | Required. The data encrypted with the named CryptoKeyVersion's public key using OAEP. |
| `ciphertextCrc32c` | `string` | Optional. An optional CRC32C checksum of the AsymmetricDecryptRequest.ciphertext. If specified, K... |

### `AsymmetricDecryptResponse`

Response message for KeyManagementService.AsymmetricDecrypt.

| Property | Type | Description |
|----------|------|-------------|
| `plaintext` | `string` | The decrypted data originally encrypted with the matching public key. |
| `plaintextCrc32c` | `string` | Integrity verification field. A CRC32C checksum of the returned AsymmetricDecryptResponse.plainte... |
| `protectionLevel` | `string` | The ProtectionLevel of the CryptoKeyVersion used in decryption. |
| `verifiedCiphertextCrc32c` | `boolean` | Integrity verification field. A flag indicating whether AsymmetricDecryptRequest.ciphertext_crc32... |

### `AsymmetricSignRequest`

Request message for KeyManagementService.AsymmetricSign.

| Property | Type | Description |
|----------|------|-------------|
| `data` | `string` | Optional. The data to sign. It can't be supplied if AsymmetricSignRequest.digest is supplied. |
| `dataCrc32c` | `string` | Optional. An optional CRC32C checksum of the AsymmetricSignRequest.data. If specified, KeyManagem... |
| `digest` | `Digest` | Optional. The digest of the data to sign. The digest must be produced with the same digest algori... |
| `digestCrc32c` | `string` | Optional. An optional CRC32C checksum of the AsymmetricSignRequest.digest. If specified, KeyManag... |

### `AsymmetricSignResponse`

Response message for KeyManagementService.AsymmetricSign.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The resource name of the CryptoKeyVersion used for signing. Check this field to verify that the i... |
| `protectionLevel` | `string` | The ProtectionLevel of the CryptoKeyVersion used for signing. |
| `signature` | `string` | The created signature. |
| `signatureCrc32c` | `string` | Integrity verification field. A CRC32C checksum of the returned AsymmetricSignResponse.signature.... |
| `verifiedDataCrc32c` | `boolean` | Integrity verification field. A flag indicating whether AsymmetricSignRequest.data_crc32c was rec... |
| `verifiedDigestCrc32c` | `boolean` | Integrity verification field. A flag indicating whether AsymmetricSignRequest.digest_crc32c was r... |

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

### `AutokeyConfig`

Cloud KMS Autokey configuration for a folder.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Optional. A checksum computed by the server based on the value of other fields. This may be sent ... |
| `keyProject` | `string` | Optional. Name of the key project, e.g. `projects/{PROJECT_ID}` or `projects/{PROJECT_NUMBER}`, w... |
| `keyProjectResolutionMode` | `string` | Optional. KeyProjectResolutionMode for the AutokeyConfig. Valid values are `DEDICATED_KEY_PROJECT... |
| `name` | `string` | Identifier. Name of the AutokeyConfig resource, e.g. `folders/{FOLDER_NUMBER}/autokeyConfig` or `... |
| `state` | `string` | Output only. The state for the AutokeyConfig. |

### `Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `Certificate`

A Certificate represents an X.509 certificate used to authenticate HTTPS connections to EKM replicas.

| Property | Type | Description |
|----------|------|-------------|
| `issuer` | `string` | Output only. The issuer distinguished name in RFC 2253 format. Only present if parsed is true. |
| `notAfterTime` | `string` | Output only. The certificate is not valid after this time. Only present if parsed is true. |
| `notBeforeTime` | `string` | Output only. The certificate is not valid before this time. Only present if parsed is true. |
| `parsed` | `boolean` | Output only. True if the certificate was parsed successfully. |
| `rawDer` | `string` | Required. The raw certificate bytes in DER format. |
| `serialNumber` | `string` | Output only. The certificate serial number as a hex string. Only present if parsed is true. |
| `sha256Fingerprint` | `string` | Output only. The SHA-256 certificate fingerprint as a hex string. Only present if parsed is true. |
| `subject` | `string` | Output only. The subject distinguished name in RFC 2253 format. Only present if parsed is true. |
| `subjectAlternativeDnsNames` | `array<string>` | Output only. The subject Alternative DNS names. Only present if parsed is true. |

### `CertificateChains`

Certificate chains needed to verify the attestation. Certificates in chains are PEM-encoded and are ordered based on https://tools.ietf.org/html/rfc5246#section-7.4.2.

| Property | Type | Description |
|----------|------|-------------|
| `caviumCerts` | `array<string>` | Cavium certificate chain corresponding to the attestation. |
| `googleCardCerts` | `array<string>` | Google card certificate chain corresponding to the attestation. |
| `googlePartitionCerts` | `array<string>` | Google partition certificate chain corresponding to the attestation. |

### `Challenge`

A challenge to be signed by a 2FA key.

| Property | Type | Description |
|----------|------|-------------|
| `challenge` | `string` | Output only. The challenge to be signed by the 2FA key indicated by the public key. |
| `publicKeyPem` | `string` | Output only. The public key associated with the 2FA key that should sign the challenge. |

### `ChallengeReply`

A reply to a challenge signed by a 2FA key.

| Property | Type | Description |
|----------|------|-------------|
| `publicKeyPem` | `string` | Required. The public key associated with the 2FA key. |
| `signedChallenge` | `string` | Required. The signed challenge associated with the 2FA key. The signature must be RSASSA-PKCS1 v1... |

### `ChecksummedData`

Data with integrity verification field.

| Property | Type | Description |
|----------|------|-------------|
| `crc32cChecksum` | `string` | Integrity verification field. A CRC32C checksum of the returned ChecksummedData.data. An integrit... |
| `data` | `string` | Raw Data. |

### `CryptoKey`

A CryptoKey represents a logical key that can be used for cryptographic operations. A CryptoKey is made up of zero or more versions, which represent the actual key material used in cryptographic operations.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time at which this CryptoKey was created. |
| `cryptoKeyBackend` | `string` | Immutable. The resource name of the backend environment where the key material for all CryptoKeyV... |
| `destroyScheduledDuration` | `string` | Immutable. The period of time that versions of this key spend in the DESTROY_SCHEDULED state befo... |
| `importOnly` | `boolean` | Immutable. Whether this key may contain imported versions only. |
| `keyAccessJustificationsPolicy` | `KeyAccessJustificationsPolicy` | Optional. The policy used for Key Access Justifications Policy Enforcement. If this field is pres... |
| `labels` | `object` | Labels with user-defined metadata. For more information, see [Labeling Keys](https://cloud.google... |
| `name` | `string` | Output only. The resource name for this CryptoKey in the format `projects/*/locations/*/keyRings/... |
| `nextRotationTime` | `string` | At next_rotation_time, the Key Management Service will automatically: 1. Create a new version of ... |
| `primary` | `CryptoKeyVersion` | Output only. A copy of the "primary" CryptoKeyVersion that will be used by Encrypt when this Cryp... |
| `purpose` | `string` | Immutable. The immutable purpose of this CryptoKey. |
| `rotationPeriod` | `string` | next_rotation_time will be advanced by this period when the service automatically rotates a key. ... |
| `versionTemplate` | `CryptoKeyVersionTemplate` | A template describing settings for new CryptoKeyVersion instances. The properties of new CryptoKe... |

### `CryptoKeyVersion`

A CryptoKeyVersion represents an individual cryptographic key, and the associated key material. An ENABLED version can be used for cryptographic operations. For security reasons, the raw cryptographic key material represented by a CryptoKeyVersion can never be viewed or exported. It can only be used to encrypt, decrypt, or sign data when an authorized user or application invokes Cloud KMS.

| Property | Type | Description |
|----------|------|-------------|
| `algorithm` | `string` | Output only. The CryptoKeyVersionAlgorithm that this CryptoKeyVersion supports. |
| `attestation` | `KeyOperationAttestation` | Output only. Statement that was generated and signed by the HSM at key creation time. Use this st... |
| `createTime` | `string` | Output only. The time at which this CryptoKeyVersion was created. |
| `destroyEventTime` | `string` | Output only. The time this CryptoKeyVersion's key material was destroyed. Only present if state i... |
| `destroyTime` | `string` | Output only. The time this CryptoKeyVersion's key material is scheduled for destruction. Only pre... |
| `externalDestructionFailureReason` | `string` | Output only. The root cause of the most recent external destruction failure. Only present if stat... |
| `externalProtectionLevelOptions` | `ExternalProtectionLevelOptions` | ExternalProtectionLevelOptions stores a group of additional fields for configuring a CryptoKeyVer... |
| `generateTime` | `string` | Output only. The time this CryptoKeyVersion's key material was generated. |
| `generationFailureReason` | `string` | Output only. The root cause of the most recent generation failure. Only present if state is GENER... |
| `importFailureReason` | `string` | Output only. The root cause of the most recent import failure. Only present if state is IMPORT_FA... |
| `importJob` | `string` | Output only. The name of the ImportJob used in the most recent import of this CryptoKeyVersion. O... |
| `importTime` | `string` | Output only. The time at which this CryptoKeyVersion's key material was most recently imported. |
| `name` | `string` | Output only. The resource name for this CryptoKeyVersion in the format `projects/*/locations/*/ke... |
| `protectionLevel` | `string` | Output only. The ProtectionLevel describing how crypto operations are performed with this CryptoK... |
| `reimportEligible` | `boolean` | Output only. Whether or not this key version is eligible for reimport, by being specified as a ta... |
| `state` | `string` | The current state of the CryptoKeyVersion. |

### `CryptoKeyVersionTemplate`

A CryptoKeyVersionTemplate specifies the properties to use when creating a new CryptoKeyVersion, either manually with CreateCryptoKeyVersion or automatically as a result of auto-rotation.

| Property | Type | Description |
|----------|------|-------------|
| `algorithm` | `string` | Required. Algorithm to use when creating a CryptoKeyVersion based on this template. For backwards... |
| `protectionLevel` | `string` | ProtectionLevel to use when creating a CryptoKeyVersion based on this template. Immutable. Defaul... |

### `DecapsulateRequest`

Request message for KeyManagementService.Decapsulate.

| Property | Type | Description |
|----------|------|-------------|
| `ciphertext` | `string` | Required. The ciphertext produced from encapsulation with the named CryptoKeyVersion public key(s). |
| `ciphertextCrc32c` | `string` | Optional. A CRC32C checksum of the DecapsulateRequest.ciphertext. If specified, KeyManagementServ... |

### `DecapsulateResponse`

Response message for KeyManagementService.Decapsulate.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The resource name of the CryptoKeyVersion used for decapsulation. Check this field to verify that... |
| `protectionLevel` | `string` | The ProtectionLevel of the CryptoKeyVersion used in decapsulation. |
| `sharedSecret` | `string` | The decapsulated shared_secret originally encapsulated with the matching public key. |
| `sharedSecretCrc32c` | `string` | Integrity verification field. A CRC32C checksum of the returned DecapsulateResponse.shared_secret... |
| `verifiedCiphertextCrc32c` | `boolean` | Integrity verification field. A flag indicating whether DecapsulateRequest.ciphertext_crc32c was ... |

### `DecryptRequest`

Request message for KeyManagementService.Decrypt.

| Property | Type | Description |
|----------|------|-------------|
| `additionalAuthenticatedData` | `string` | Optional. Optional data that must match the data originally supplied in EncryptRequest.additional... |
| `additionalAuthenticatedDataCrc32c` | `string` | Optional. An optional CRC32C checksum of the DecryptRequest.additional_authenticated_data. If spe... |
| `ciphertext` | `string` | Required. The encrypted data originally returned in EncryptResponse.ciphertext. |
| `ciphertextCrc32c` | `string` | Optional. An optional CRC32C checksum of the DecryptRequest.ciphertext. If specified, KeyManageme... |

### `DecryptResponse`

Response message for KeyManagementService.Decrypt.

| Property | Type | Description |
|----------|------|-------------|
| `plaintext` | `string` | The decrypted data originally supplied in EncryptRequest.plaintext. |
| `plaintextCrc32c` | `string` | Integrity verification field. A CRC32C checksum of the returned DecryptResponse.plaintext. An int... |
| `protectionLevel` | `string` | The ProtectionLevel of the CryptoKeyVersion used in decryption. |
| `usedPrimary` | `boolean` | Whether the Decryption was performed using the primary key version. |

### `DeleteSingleTenantHsmInstance`

Delete the SingleTenantHsmInstance. Deleting a SingleTenantHsmInstance will make all CryptoKeys attached to the SingleTenantHsmInstance unusable. The SingleTenantHsmInstance must not be in the DELETING or DELETED state to perform this operation.

### `DestroyCryptoKeyVersionRequest`

Request message for KeyManagementService.DestroyCryptoKeyVersion.

### `Digest`

A Digest holds a cryptographic message digest.

| Property | Type | Description |
|----------|------|-------------|
| `externalMu` | `string` | A message digest produced with SHAKE-256, to be used with ML-DSA external-μ algorithms only. See ... |
| `sha256` | `string` | A message digest produced with the SHA-256 algorithm. |
| `sha384` | `string` | A message digest produced with the SHA-384 algorithm. |
| `sha512` | `string` | A message digest produced with the SHA-512 algorithm. |

### `DisableSingleTenantHsmInstance`

Disable the SingleTenantHsmInstance. The SingleTenantHsmInstance must be in the ACTIVE state to perform this operation.

### `EkmConfig`

An EkmConfig is a singleton resource that represents configuration parameters that apply to all CryptoKeys and CryptoKeyVersions with a ProtectionLevel of EXTERNAL_VPC in a given project and location.

| Property | Type | Description |
|----------|------|-------------|
| `defaultEkmConnection` | `string` | Optional. Resource name of the default EkmConnection. Setting this field to the empty string remo... |
| `name` | `string` | Output only. The resource name for the EkmConfig in the format `projects/*/locations/*/ekmConfig`. |

### `EkmConnection`

An EkmConnection represents an individual EKM connection. It can be used for creating CryptoKeys and CryptoKeyVersions with a ProtectionLevel of EXTERNAL_VPC, as well as performing cryptographic operations using keys created within the EkmConnection.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time at which the EkmConnection was created. |
| `cryptoSpacePath` | `string` | Optional. Identifies the EKM Crypto Space that this EkmConnection maps to. Note: This field is re... |
| `etag` | `string` | Optional. Etag of the currently stored EkmConnection. |
| `keyManagementMode` | `string` | Optional. Describes who can perform control plane operations on the EKM. If unset, this defaults ... |
| `name` | `string` | Output only. The resource name for the EkmConnection in the format `projects/*/locations/*/ekmCon... |
| `serviceResolvers` | `array<ServiceResolver>` | Optional. A list of ServiceResolvers where the EKM can be reached. There should be one ServiceRes... |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `EnableSingleTenantHsmInstance`

Enable the SingleTenantHsmInstance. The SingleTenantHsmInstance must be in the DISABLED state to perform this operation.

### `EncryptRequest`

Request message for KeyManagementService.Encrypt.

| Property | Type | Description |
|----------|------|-------------|
| `additionalAuthenticatedData` | `string` | Optional. Optional data that, if specified, must also be provided during decryption through Decry... |
| `additionalAuthenticatedDataCrc32c` | `string` | Optional. An optional CRC32C checksum of the EncryptRequest.additional_authenticated_data. If spe... |
| `plaintext` | `string` | Required. The data to encrypt. Must be no larger than 64KiB. The maximum size depends on the key ... |
| `plaintextCrc32c` | `string` | Optional. An optional CRC32C checksum of the EncryptRequest.plaintext. If specified, KeyManagemen... |

### `EncryptResponse`

Response message for KeyManagementService.Encrypt.

| Property | Type | Description |
|----------|------|-------------|
| `ciphertext` | `string` | The encrypted data. |
| `ciphertextCrc32c` | `string` | Integrity verification field. A CRC32C checksum of the returned EncryptResponse.ciphertext. An in... |
| `name` | `string` | The resource name of the CryptoKeyVersion used in encryption. Check this field to verify that the... |
| `protectionLevel` | `string` | The ProtectionLevel of the CryptoKeyVersion used in encryption. |
| `verifiedAdditionalAuthenticatedDataCrc32c` | `boolean` | Integrity verification field. A flag indicating whether EncryptRequest.additional_authenticated_d... |
| `verifiedPlaintextCrc32c` | `boolean` | Integrity verification field. A flag indicating whether EncryptRequest.plaintext_crc32c was recei... |

### `ExecuteSingleTenantHsmInstanceProposalRequest`

Request message for HsmManagement.ExecuteSingleTenantHsmInstanceProposal.

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `ExternalProtectionLevelOptions`

ExternalProtectionLevelOptions stores a group of additional fields for configuring a CryptoKeyVersion that are specific to the EXTERNAL protection level and EXTERNAL_VPC protection levels.

| Property | Type | Description |
|----------|------|-------------|
| `ekmConnectionKeyPath` | `string` | The path to the external key material on the EKM when using EkmConnection e.g., "v0/my/key". Set ... |
| `externalKeyUri` | `string` | The URI for an external resource that this CryptoKeyVersion represents. |

### `GenerateRandomBytesRequest`

Request message for KeyManagementService.GenerateRandomBytes.

| Property | Type | Description |
|----------|------|-------------|
| `lengthBytes` | `integer` | The length in bytes of the amount of randomness to retrieve. Minimum 8 bytes, maximum 1024 bytes. |
| `protectionLevel` | `string` | The ProtectionLevel to use when generating the random data. Currently, only HSM protection level ... |

### `GenerateRandomBytesResponse`

Response message for KeyManagementService.GenerateRandomBytes.

| Property | Type | Description |
|----------|------|-------------|
| `data` | `string` | The generated data. |
| `dataCrc32c` | `string` | Integrity verification field. A CRC32C checksum of the returned GenerateRandomBytesResponse.data.... |

### `ImportCryptoKeyVersionRequest`

Request message for KeyManagementService.ImportCryptoKeyVersion.

| Property | Type | Description |
|----------|------|-------------|
| `algorithm` | `string` | Required. The algorithm of the key being imported. This does not need to match the version_templa... |
| `cryptoKeyVersion` | `string` | Optional. The optional name of an existing CryptoKeyVersion to target for an import operation. If... |
| `importJob` | `string` | Required. The name of the ImportJob that was used to wrap this key material. |
| `rsaAesWrappedKey` | `string` | Optional. This field has the same meaning as wrapped_key. Prefer to use that field in new work. E... |
| `wrappedKey` | `string` | Optional. The wrapped key material to import. Before wrapping, key material must be formatted. If... |

### `ImportJob`

An ImportJob can be used to create CryptoKeys and CryptoKeyVersions using pre-existing key material, generated outside of Cloud KMS. When an ImportJob is created, Cloud KMS will generate a "wrapping key", which is a public/private key pair. You use the wrapping key to encrypt (also known as wrap) the pre-existing key material to protect it during the import process. The nature of the wrapping key depends on the choice of import_method. When the wrapping key generation is complete, the state will be set to ACTIVE and the public_key can be fetched. The fetched public key can then be used to wrap your pre-existing key material. Once the key material is wrapped, it can be imported into a new CryptoKeyVersion in an existing CryptoKey by calling ImportCryptoKeyVersion. Multiple CryptoKeyVersions can be imported with a single ImportJob. Cloud KMS uses the private key portion of the wrapping key to unwrap the key material. Only Cloud KMS has access to the private key. An ImportJob expires 3 days after it is created. Once expired, Cloud KMS will no longer be able to import or unwrap any key material that was wrapped with the ImportJob's public key. For more information, see [Importing a key](https://cloud.google.com/kms/docs/importing-a-key).

| Property | Type | Description |
|----------|------|-------------|
| `attestation` | `KeyOperationAttestation` | Output only. Statement that was generated and signed by the key creator (for example, an HSM) at ... |
| `createTime` | `string` | Output only. The time at which this ImportJob was created. |
| `cryptoKeyBackend` | `string` | Immutable. The resource name of the backend environment where the key material for the wrapping k... |
| `expireEventTime` | `string` | Output only. The time this ImportJob expired. Only present if state is EXPIRED. |
| `expireTime` | `string` | Output only. The time at which this ImportJob is scheduled for expiration and can no longer be us... |
| `generateTime` | `string` | Output only. The time this ImportJob's key material was generated. |
| `importMethod` | `string` | Required. Immutable. The wrapping method to be used for incoming key material. |
| `name` | `string` | Output only. The resource name for this ImportJob in the format `projects/*/locations/*/keyRings/... |
| `protectionLevel` | `string` | Required. Immutable. The protection level of the ImportJob. This must match the protection_level ... |
| `publicKey` | `WrappingPublicKey` | Output only. The public key with which to wrap key material prior to import. Only returned if sta... |
| `state` | `string` | Output only. The current state of the ImportJob, indicating if it can be used. |

### `KeyAccessJustificationsEnrollmentConfig`

The configuration of a protection level for a project's Key Access Justifications enrollment.

| Property | Type | Description |
|----------|------|-------------|
| `auditLogging` | `boolean` | Whether the project has KAJ logging enabled. |
| `policyEnforcement` | `boolean` | Whether the project is enrolled in KAJ policy enforcement. |

### `KeyAccessJustificationsPolicy`

A KeyAccessJustificationsPolicy specifies zero or more allowed AccessReason values for encrypt, decrypt, and sign operations on a CryptoKey.

| Property | Type | Description |
|----------|------|-------------|
| `allowedAccessReasons` | `array<string>` | The list of allowed reasons for access to a CryptoKey. Zero allowed access reasons means all encr... |

### `KeyAccessJustificationsPolicyConfig`

A singleton configuration for Key Access Justifications policies.

| Property | Type | Description |
|----------|------|-------------|
| `defaultKeyAccessJustificationPolicy` | `KeyAccessJustificationsPolicy` | Optional. The default key access justification policy used when a CryptoKey is created in this fo... |
| `name` | `string` | Identifier. The resource name for this KeyAccessJustificationsPolicyConfig in the format of "{org... |

### `KeyHandle`

Resource-oriented representation of a request to Cloud KMS Autokey and the resulting provisioning of a CryptoKey.

| Property | Type | Description |
|----------|------|-------------|
| `kmsKey` | `string` | Output only. Name of a CryptoKey that has been provisioned for Customer Managed Encryption Key (C... |
| `name` | `string` | Identifier. Name of the KeyHandle resource, e.g. `projects/{PROJECT_ID}/locations/{LOCATION}/keyH... |
| `resourceTypeSelector` | `string` | Required. Indicates the resource type that the resulting CryptoKey is meant to protect, e.g. `{SE... |

### `KeyOperationAttestation`

Contains an HSM-generated attestation about a key operation. For more information, see [Verifying attestations] (https://cloud.google.com/kms/docs/attest-key).

| Property | Type | Description |
|----------|------|-------------|
| `certChains` | `CertificateChains` | Output only. The certificate chains needed to validate the attestation |
| `content` | `string` | Output only. The attestation data provided by the HSM when the key operation was performed. |
| `format` | `string` | Output only. The format of the attestation data. |

### `KeyRing`

A KeyRing is a toplevel logical grouping of CryptoKeys.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time at which this KeyRing was created. |
| `name` | `string` | Output only. The resource name for the KeyRing in the format `projects/*/locations/*/keyRings/*`. |

### `ListCryptoKeyVersionsResponse`

Response message for KeyManagementService.ListCryptoKeyVersions.

| Property | Type | Description |
|----------|------|-------------|
| `cryptoKeyVersions` | `array<CryptoKeyVersion>` | The list of CryptoKeyVersions. |
| `nextPageToken` | `string` | A token to retrieve next page of results. Pass this value in ListCryptoKeyVersionsRequest.page_to... |
| `totalSize` | `integer` | The total number of CryptoKeyVersions that matched the query. This field is not populated if List... |

### `ListCryptoKeysResponse`

Response message for KeyManagementService.ListCryptoKeys.

| Property | Type | Description |
|----------|------|-------------|
| `cryptoKeys` | `array<CryptoKey>` | The list of CryptoKeys. |
| `nextPageToken` | `string` | A token to retrieve next page of results. Pass this value in ListCryptoKeysRequest.page_token to ... |
| `totalSize` | `integer` | The total number of CryptoKeys that matched the query. This field is not populated if ListCryptoK... |

### `ListEkmConnectionsResponse`

Response message for EkmService.ListEkmConnections.

| Property | Type | Description |
|----------|------|-------------|
| `ekmConnections` | `array<EkmConnection>` | The list of EkmConnections. |
| `nextPageToken` | `string` | A token to retrieve next page of results. Pass this value in ListEkmConnectionsRequest.page_token... |
| `totalSize` | `integer` | The total number of EkmConnections that matched the query. This field is not populated if ListEkm... |

### `ListImportJobsResponse`

Response message for KeyManagementService.ListImportJobs.

| Property | Type | Description |
|----------|------|-------------|
| `importJobs` | `array<ImportJob>` | The list of ImportJobs. |
| `nextPageToken` | `string` | A token to retrieve next page of results. Pass this value in ListImportJobsRequest.page_token to ... |
| `totalSize` | `integer` | The total number of ImportJobs that matched the query. This field is not populated if ListImportJ... |

### `ListKeyHandlesResponse`

Response message for Autokey.ListKeyHandles.

| Property | Type | Description |
|----------|------|-------------|
| `keyHandles` | `array<KeyHandle>` | Resulting KeyHandles. |
| `nextPageToken` | `string` | A token to retrieve next page of results. Pass this value in ListKeyHandlesRequest.page_token to ... |

### `ListKeyRingsResponse`

Response message for KeyManagementService.ListKeyRings.

| Property | Type | Description |
|----------|------|-------------|
| `keyRings` | `array<KeyRing>` | The list of KeyRings. |
| `nextPageToken` | `string` | A token to retrieve next page of results. Pass this value in ListKeyRingsRequest.page_token to re... |
| `totalSize` | `integer` | The total number of KeyRings that matched the query. This field is not populated if ListKeyRingsR... |

### `ListLocationsResponse`

The response message for Locations.ListLocations.

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<Location>` | A list of locations that matches the specified filter in the request. |
| `nextPageToken` | `string` | The standard List next-page token. |

### `ListRetiredResourcesResponse`

Response message for KeyManagementService.ListRetiredResources.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in ListRetiredResourcesRequest.page... |
| `retiredResources` | `array<RetiredResource>` | The list of RetiredResources. |
| `totalSize` | `string` | The total number of RetiredResources that matched the query. |

### `ListSingleTenantHsmInstanceProposalsResponse`

Response message for HsmManagement.ListSingleTenantHsmInstanceProposals.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token to retrieve next page of results. Pass this value in ListSingleTenantHsmInstanceProposals... |
| `singleTenantHsmInstanceProposals` | `array<SingleTenantHsmInstanceProposal>` | The list of SingleTenantHsmInstanceProposals. |
| `totalSize` | `integer` | The total number of SingleTenantHsmInstanceProposals that matched the query. This field is not po... |

### `ListSingleTenantHsmInstancesResponse`

Response message for HsmManagement.ListSingleTenantHsmInstances.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token to retrieve next page of results. Pass this value in ListSingleTenantHsmInstancesRequest.... |
| `singleTenantHsmInstances` | `array<SingleTenantHsmInstance>` | The list of SingleTenantHsmInstances. |
| `totalSize` | `integer` | The total number of SingleTenantHsmInstances that matched the query. This field is not populated ... |

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

### `LocationMetadata`

Cloud KMS metadata for the given google.cloud.location.Location.

| Property | Type | Description |
|----------|------|-------------|
| `ekmAvailable` | `boolean` | Indicates whether CryptoKeys with protection_level EXTERNAL can be created in this location. |
| `hsmAvailable` | `boolean` | Indicates whether CryptoKeys with protection_level HSM can be created in this location. |
| `hsmSingleTenantAvailable` | `boolean` | Indicates whether CryptoKeys with protection_level HSM_SINGLE_TENANT can be created in this locat... |

### `MacSignRequest`

Request message for KeyManagementService.MacSign.

| Property | Type | Description |
|----------|------|-------------|
| `data` | `string` | Required. The data to sign. The MAC tag is computed over this data field based on the specific al... |
| `dataCrc32c` | `string` | Optional. An optional CRC32C checksum of the MacSignRequest.data. If specified, KeyManagementServ... |

### `MacSignResponse`

Response message for KeyManagementService.MacSign.

| Property | Type | Description |
|----------|------|-------------|
| `mac` | `string` | The created signature. |
| `macCrc32c` | `string` | Integrity verification field. A CRC32C checksum of the returned MacSignResponse.mac. An integrity... |
| `name` | `string` | The resource name of the CryptoKeyVersion used for signing. Check this field to verify that the i... |
| `protectionLevel` | `string` | The ProtectionLevel of the CryptoKeyVersion used for signing. |
| `verifiedDataCrc32c` | `boolean` | Integrity verification field. A flag indicating whether MacSignRequest.data_crc32c was received b... |

### `MacVerifyRequest`

Request message for KeyManagementService.MacVerify.

| Property | Type | Description |
|----------|------|-------------|
| `data` | `string` | Required. The data used previously as a MacSignRequest.data to generate the MAC tag. |
| `dataCrc32c` | `string` | Optional. An optional CRC32C checksum of the MacVerifyRequest.data. If specified, KeyManagementSe... |
| `mac` | `string` | Required. The signature to verify. |
| `macCrc32c` | `string` | Optional. An optional CRC32C checksum of the MacVerifyRequest.mac. If specified, KeyManagementSer... |

### `MacVerifyResponse`

Response message for KeyManagementService.MacVerify.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The resource name of the CryptoKeyVersion used for verification. Check this field to verify that ... |
| `protectionLevel` | `string` | The ProtectionLevel of the CryptoKeyVersion used for verification. |
| `success` | `boolean` | This field indicates whether or not the verification operation for MacVerifyRequest.mac over MacV... |
| `verifiedDataCrc32c` | `boolean` | Integrity verification field. A flag indicating whether MacVerifyRequest.data_crc32c was received... |
| `verifiedMacCrc32c` | `boolean` | Integrity verification field. A flag indicating whether MacVerifyRequest.mac_crc32c was received ... |
| `verifiedSuccessIntegrity` | `boolean` | Integrity verification field. This value is used for the integrity verification of [MacVerifyResp... |

### `Operation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `Status` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `auditConfigs` | `array<AuditConfig>` | Specifies cloud audit logging configuration for this policy. |
| `bindings` | `array<Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `PublicKey`

The public keys for a given CryptoKeyVersion. Obtained via GetPublicKey.

| Property | Type | Description |
|----------|------|-------------|
| `algorithm` | `string` | The Algorithm associated with this key. |
| `name` | `string` | The name of the CryptoKeyVersion public key. Provided here for verification. NOTE: This field is ... |
| `pem` | `string` | The public key, encoded in PEM format. For more information, see the [RFC 7468](https://tools.iet... |
| `pemCrc32c` | `string` | Integrity verification field. A CRC32C checksum of the returned PublicKey.pem. An integrity check... |
| `protectionLevel` | `string` | The ProtectionLevel of the CryptoKeyVersion public key. |
| `publicKey` | `ChecksummedData` | This field contains the public key (with integrity verification), formatted according to the publ... |
| `publicKeyFormat` | `string` | The PublicKey format specified by the customer through the public_key_format field. |

### `QuorumAuth`

Configuration for M of N quorum auth.

| Property | Type | Description |
|----------|------|-------------|
| `requiredApproverCount` | `integer` | Output only. The required numbers of approvers. The M value used for M of N quorum auth. Must be ... |
| `totalApproverCount` | `integer` | Required. The total number of approvers. This is the N value used for M of N quorum auth. Must be... |
| `twoFactorPublicKeyPems` | `array<string>` | Output only. The public keys associated with the 2FA keys for M of N quorum auth. |

### `QuorumParameters`

Parameters of quorum approval for the SingleTenantHsmInstanceProposal.

| Property | Type | Description |
|----------|------|-------------|
| `approvedTwoFactorPublicKeyPems` | `array<string>` | Output only. The public keys associated with the 2FA keys that have already approved the SingleTe... |
| `challenges` | `array<Challenge>` | Output only. The challenges to be signed by 2FA keys for quorum auth. M of N of these challenges ... |
| `requiredApproverCount` | `integer` | Output only. The required numbers of approvers. This is the M value used for M of N quorum auth. ... |

### `QuorumReply`

The reply to QuorumParameters for approving the proposal.

| Property | Type | Description |
|----------|------|-------------|
| `challengeReplies` | `array<ChallengeReply>` | Required. The challenge replies to approve the proposal. Challenge replies can be sent across mul... |

### `RawDecryptRequest`

Request message for KeyManagementService.RawDecrypt.

| Property | Type | Description |
|----------|------|-------------|
| `additionalAuthenticatedData` | `string` | Optional. Optional data that must match the data originally supplied in RawEncryptRequest.additio... |
| `additionalAuthenticatedDataCrc32c` | `string` | Optional. An optional CRC32C checksum of the RawDecryptRequest.additional_authenticated_data. If ... |
| `ciphertext` | `string` | Required. The encrypted data originally returned in RawEncryptResponse.ciphertext. |
| `ciphertextCrc32c` | `string` | Optional. An optional CRC32C checksum of the RawDecryptRequest.ciphertext. If specified, KeyManag... |
| `initializationVector` | `string` | Required. The initialization vector (IV) used during encryption, which must match the data origin... |
| `initializationVectorCrc32c` | `string` | Optional. An optional CRC32C checksum of the RawDecryptRequest.initialization_vector. If specifie... |
| `tagLength` | `integer` | The length of the authentication tag that is appended to the end of the ciphertext. If unspecifie... |

### `RawDecryptResponse`

Response message for KeyManagementService.RawDecrypt.

| Property | Type | Description |
|----------|------|-------------|
| `plaintext` | `string` | The decrypted data. |
| `plaintextCrc32c` | `string` | Integrity verification field. A CRC32C checksum of the returned RawDecryptResponse.plaintext. An ... |
| `protectionLevel` | `string` | The ProtectionLevel of the CryptoKeyVersion used in decryption. |
| `verifiedAdditionalAuthenticatedDataCrc32c` | `boolean` | Integrity verification field. A flag indicating whether RawDecryptRequest.additional_authenticate... |
| `verifiedCiphertextCrc32c` | `boolean` | Integrity verification field. A flag indicating whether RawDecryptRequest.ciphertext_crc32c was r... |
| `verifiedInitializationVectorCrc32c` | `boolean` | Integrity verification field. A flag indicating whether RawDecryptRequest.initialization_vector_c... |

### `RawEncryptRequest`

Request message for KeyManagementService.RawEncrypt.

| Property | Type | Description |
|----------|------|-------------|
| `additionalAuthenticatedData` | `string` | Optional. Optional data that, if specified, must also be provided during decryption through RawDe... |
| `additionalAuthenticatedDataCrc32c` | `string` | Optional. An optional CRC32C checksum of the RawEncryptRequest.additional_authenticated_data. If ... |
| `initializationVector` | `string` | Optional. A customer-supplied initialization vector that will be used for encryption. If it is no... |
| `initializationVectorCrc32c` | `string` | Optional. An optional CRC32C checksum of the RawEncryptRequest.initialization_vector. If specifie... |
| `plaintext` | `string` | Required. The data to encrypt. Must be no larger than 64KiB. The maximum size depends on the key ... |
| `plaintextCrc32c` | `string` | Optional. An optional CRC32C checksum of the RawEncryptRequest.plaintext. If specified, KeyManage... |

### `RawEncryptResponse`

Response message for KeyManagementService.RawEncrypt.

| Property | Type | Description |
|----------|------|-------------|
| `ciphertext` | `string` | The encrypted data. In the case of AES-GCM, the authentication tag is the tag_length bytes at the... |
| `ciphertextCrc32c` | `string` | Integrity verification field. A CRC32C checksum of the returned RawEncryptResponse.ciphertext. An... |
| `initializationVector` | `string` | The initialization vector (IV) generated by the service during encryption. This value must be sto... |
| `initializationVectorCrc32c` | `string` | Integrity verification field. A CRC32C checksum of the returned RawEncryptResponse.initialization... |
| `name` | `string` | The resource name of the CryptoKeyVersion used in encryption. Check this field to verify that the... |
| `protectionLevel` | `string` | The ProtectionLevel of the CryptoKeyVersion used in encryption. |
| `tagLength` | `integer` | The length of the authentication tag that is appended to the end of the ciphertext. |
| `verifiedAdditionalAuthenticatedDataCrc32c` | `boolean` | Integrity verification field. A flag indicating whether RawEncryptRequest.additional_authenticate... |
| `verifiedInitializationVectorCrc32c` | `boolean` | Integrity verification field. A flag indicating whether RawEncryptRequest.initialization_vector_c... |
| `verifiedPlaintextCrc32c` | `boolean` | Integrity verification field. A flag indicating whether RawEncryptRequest.plaintext_crc32c was re... |

### `RefreshSingleTenantHsmInstance`

Refreshes the SingleTenantHsmInstance. This operation must be performed periodically to keep the SingleTenantHsmInstance active. This operation must be performed before unrefreshed_duration_until_disable has passed. The SingleTenantHsmInstance must be in the ACTIVE state to perform this operation.

### `RegisterTwoFactorAuthKeys`

Register 2FA keys for the SingleTenantHsmInstance. This operation requires all Challenges to be signed by 2FA keys. The SingleTenantHsmInstance must be in the PENDING_TWO_FACTOR_AUTH_REGISTRATION state to perform this operation.

| Property | Type | Description |
|----------|------|-------------|
| `requiredApproverCount` | `integer` | Required. The required numbers of approvers to set for the SingleTenantHsmInstance. This is the M... |
| `twoFactorPublicKeyPems` | `array<string>` | Required. The public keys associated with the 2FA keys for M of N quorum auth. Public keys must b... |

### `RemoveQuorumMember`

Remove a quorum member from the SingleTenantHsmInstance. This will reduce total_approver_count by 1. The SingleTenantHsmInstance must be in the ACTIVE state to perform this operation.

| Property | Type | Description |
|----------|------|-------------|
| `twoFactorPublicKeyPem` | `string` | Required. The public key associated with the 2FA key for the quorum member to remove. Public keys... |

### `RequiredActionQuorumParameters`

Parameters for an approval that has both required challenges and a quorum.

| Property | Type | Description |
|----------|------|-------------|
| `approvedTwoFactorPublicKeyPems` | `array<string>` | Output only. The public keys associated with the 2FA keys that have already approved the SingleTe... |
| `quorumChallenges` | `array<Challenge>` | Output only. The challenges to be signed by 2FA keys for quorum auth. M of N of these challenges ... |
| `requiredApproverCount` | `integer` | Output only. The required number of quorum approvers. This is the M value used for M of N quorum ... |
| `requiredChallenges` | `array<Challenge>` | Output only. A list of specific challenges that must be signed. For some operations, this will co... |

### `RequiredActionQuorumReply`

The reply to RequiredActionQuorumParameters for approving the proposal.

| Property | Type | Description |
|----------|------|-------------|
| `quorumChallengeReplies` | `array<ChallengeReply>` | Required. Quorum members' signed challenge replies. These can be provided across multiple request... |
| `requiredChallengeReplies` | `array<ChallengeReply>` | Required. All required challenges must be signed for the proposal to be approved. These can be se... |

### `RestoreCryptoKeyVersionRequest`

Request message for KeyManagementService.RestoreCryptoKeyVersion.

### `RetiredResource`

A RetiredResource resource represents the record of a deleted CryptoKey. Its purpose is to provide visibility into retained user data and to prevent reuse of these names for new CryptoKeys.

| Property | Type | Description |
|----------|------|-------------|
| `deleteTime` | `string` | Output only. The time at which the original resource was deleted and this RetiredResource record ... |
| `name` | `string` | Output only. Identifier. The resource name for this RetiredResource in the format `projects/*/loc... |
| `originalResource` | `string` | Output only. The full resource name of the original CryptoKey that was deleted in the format `pro... |
| `resourceType` | `string` | Output only. The resource type of the original deleted resource. |

### `ServiceResolver`

A ServiceResolver represents an EKM replica that can be reached within an EkmConnection.

| Property | Type | Description |
|----------|------|-------------|
| `endpointFilter` | `string` | Optional. The filter applied to the endpoints of the resolved service. If no filter is specified,... |
| `hostname` | `string` | Required. The hostname of the EKM replica used at TLS and HTTP layers. |
| `serverCertificates` | `array<Certificate>` | Required. A list of leaf server certificates used to authenticate HTTPS connections to the EKM re... |
| `serviceDirectoryService` | `string` | Required. The resource name of the Service Directory service pointing to an EKM replica, in the f... |

### `SetIamPolicyRequest`

Request message for `SetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `Policy` | REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited ... |
| `updateMask` | `string` | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mas... |

### `ShowEffectiveAutokeyConfigResponse`

Response message for ShowEffectiveAutokeyConfig.

| Property | Type | Description |
|----------|------|-------------|
| `keyProject` | `string` | Name of the key project configured in the resource project's folder ancestry. |

### `ShowEffectiveKeyAccessJustificationsEnrollmentConfigResponse`

Response message for KeyAccessJustificationsConfig.ShowEffectiveKeyAccessJustificationsEnrollmentConfig

| Property | Type | Description |
|----------|------|-------------|
| `externalConfig` | `KeyAccessJustificationsEnrollmentConfig` | The effective KeyAccessJustificationsEnrollmentConfig for external keys. |
| `hardwareConfig` | `KeyAccessJustificationsEnrollmentConfig` | The effective KeyAccessJustificationsEnrollmentConfig for hardware keys. |
| `softwareConfig` | `KeyAccessJustificationsEnrollmentConfig` | The effective KeyAccessJustificationsEnrollmentConfig for software keys. |

### `ShowEffectiveKeyAccessJustificationsPolicyConfigResponse`

Response message for KeyAccessJustificationsConfig.ShowEffectiveKeyAccessJustificationsPolicyConfig.

| Property | Type | Description |
|----------|------|-------------|
| `effectiveKajPolicy` | `KeyAccessJustificationsPolicyConfig` | The effective KeyAccessJustificationsPolicyConfig. |

### `SingleTenantHsmInstance`

A SingleTenantHsmInstance represents a single-tenant HSM instance. It can be used for creating CryptoKeys with a ProtectionLevel of HSM_SINGLE_TENANT, as well as performing cryptographic operations using keys created within the SingleTenantHsmInstance.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time at which the SingleTenantHsmInstance was created. |
| `deleteTime` | `string` | Output only. The time at which the SingleTenantHsmInstance was deleted. |
| `disableTime` | `string` | Output only. The time at which the instance will be automatically disabled if not refreshed. This... |
| `name` | `string` | Identifier. The resource name for this SingleTenantHsmInstance in the format `projects/*/location... |
| `quorumAuth` | `QuorumAuth` | Required. The quorum auth configuration for the SingleTenantHsmInstance. |
| `state` | `string` | Output only. The state of the SingleTenantHsmInstance. |
| `unrefreshedDurationUntilDisable` | `string` | Output only. The system-defined duration that an instance can remain unrefreshed until it is auto... |

### `SingleTenantHsmInstanceProposal`

A SingleTenantHsmInstanceProposal represents a proposal to perform an operation on a SingleTenantHsmInstance.

| Property | Type | Description |
|----------|------|-------------|
| `addQuorumMember` | `AddQuorumMember` | Add a quorum member to the SingleTenantHsmInstance. This will increase the total_approver_count b... |
| `createTime` | `string` | Output only. The time at which the SingleTenantHsmInstanceProposal was created. |
| `deleteSingleTenantHsmInstance` | `DeleteSingleTenantHsmInstance` | Delete the SingleTenantHsmInstance. Deleting a SingleTenantHsmInstance will make all CryptoKeys a... |
| `deleteTime` | `string` | Output only. The time at which the SingleTenantHsmInstanceProposal was deleted. |
| `disableSingleTenantHsmInstance` | `DisableSingleTenantHsmInstance` | Disable the SingleTenantHsmInstance. The SingleTenantHsmInstance must be in the ACTIVE state to p... |
| `enableSingleTenantHsmInstance` | `EnableSingleTenantHsmInstance` | Enable the SingleTenantHsmInstance. The SingleTenantHsmInstance must be in the DISABLED state to ... |
| `expireTime` | `string` | The time at which the SingleTenantHsmInstanceProposal will expire if not approved and executed. |
| `failureReason` | `string` | Output only. The root cause of the most recent failure. Only present if state is FAILED. |
| `name` | `string` | Identifier. The resource name for this SingleTenantHsmInstance in the format `projects/*/location... |
| `purgeTime` | `string` | Output only. The time at which the soft-deleted SingleTenantHsmInstanceProposal will be permanent... |
| `quorumParameters` | `QuorumParameters` | Output only. The quorum approval parameters for the SingleTenantHsmInstanceProposal. |
| `refreshSingleTenantHsmInstance` | `RefreshSingleTenantHsmInstance` | Refreshes the SingleTenantHsmInstance. This operation must be performed periodically to keep the ... |
| `registerTwoFactorAuthKeys` | `RegisterTwoFactorAuthKeys` | Register 2FA keys for the SingleTenantHsmInstance. This operation requires all N Challenges to be... |
| `removeQuorumMember` | `RemoveQuorumMember` | Remove a quorum member from the SingleTenantHsmInstance. This will reduce total_approver_count by... |
| `requiredActionQuorumParameters` | `RequiredActionQuorumParameters` | Output only. Parameters for an approval of a SingleTenantHsmInstanceProposal that has both requir... |
| `state` | `string` | Output only. The state of the SingleTenantHsmInstanceProposal. |
| `ttl` | `string` | Input only. The TTL for the SingleTenantHsmInstanceProposal. Proposals will expire after this dur... |

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

### `UpdateCryptoKeyPrimaryVersionRequest`

Request message for KeyManagementService.UpdateCryptoKeyPrimaryVersion.

| Property | Type | Description |
|----------|------|-------------|
| `cryptoKeyVersionId` | `string` | Required. The id of the child CryptoKeyVersion to use as primary. |

### `VerifyConnectivityResponse`

Response message for EkmService.VerifyConnectivity.

### `WrappingPublicKey`

The public key component of the wrapping key. For details of the type of key this public key corresponds to, see the ImportMethod.

| Property | Type | Description |
|----------|------|-------------|
| `pem` | `string` | The public key, encoded in PEM format. For more information, see the [RFC 7468](https://tools.iet... |

