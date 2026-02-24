# KMS Inventory API - API Reference

**Version**: `v1` | **Methods**: 4 | **Schemas**: 12

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `kmsinventory.projects.cryptoKeys.list` | GET | `v1/{+parent}/cryptoKeys` | Returns cryptographic keys managed by Cloud KMS in a given Cloud project. Note that this data is ... |
| `kmsinventory.projects.locations.keyRings.cryptoKeys.getProtectedResourcesSummary` | GET | `v1/{+name}/protectedResourcesSummary` | Returns aggregate information about the resources protected by the given Cloud KMS CryptoKey. By ... |
| `kmsinventory.projects.protectedResources.search` | GET | `v1/{+scope}/protectedResources:search` | Returns metadata about the resources protected by the given Cloud KMS CryptoKey in the given Clou... |
| `kmsinventory.organizations.protectedResources.search` | GET | `v1/{+scope}/protectedResources:search` | Returns metadata about the resources protected by the given Cloud KMS CryptoKey in the given Clou... |

### `kmsinventory.projects.cryptoKeys.list`

**GET** `v1/{+parent}/cryptoKeys`

Returns cryptographic keys managed by Cloud KMS in a given Cloud project. Note that this data is sourced from snapshots, meaning it may not completely reflect the actual state of key metadata at call time.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The Google Cloud project for which to retrieve key metadata, in the format `projects/*` |
| `pageSize` | `integer` | query | No | Optional. The maximum number of keys to return. The service may return fewer than this value. If unspecified, at most... |
| `pageToken` | `string` | query | No | Optional. Pass this into a subsequent request in order to receive the next page of results. |

**Response**: `GoogleCloudKmsInventoryV1ListCryptoKeysResponse`

```typescript
const res = await kmsinventory.cryptoKeys.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `kmsinventory.projects.locations.keyRings.cryptoKeys.getProtectedResourcesSummary`

**GET** `v1/{+name}/protectedResourcesSummary`

Returns aggregate information about the resources protected by the given Cloud KMS CryptoKey. By default, summary of resources within the same Cloud organization as the key will be returned, which requires the KMS organization service account to be configured(refer https://docs.cloud.google.com/kms/docs/view-key-usage#required-roles). If the KMS organization service account is not configured or key's project is not part of an organization, set fallback_scope to `FALLBACK_SCOPE_PROJECT` to retrieve a summary of protected resources within the key's project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the CryptoKey. |
| `fallbackScope` | `string` | query | No | Optional. The scope to use if the kms organization service account is not configured. |

**Response**: `GoogleCloudKmsInventoryV1ProtectedResourcesSummary`

```typescript
const res = await kmsinventory.cryptoKeys.getProtectedResourcesSummary({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `kmsinventory.projects.protectedResources.search`

**GET** `v1/{+scope}/protectedResources:search`

Returns metadata about the resources protected by the given Cloud KMS CryptoKey in the given Cloud organization/project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `scope` | `string` | path | Yes | Required. A scope can be an organization or a project. Resources protected by the crypto key in provided scope will b... |
| `cryptoKey` | `string` | query | No | Required. The resource name of the CryptoKey. |
| `pageSize` | `integer` | query | No | The maximum number of resources to return. The service may return fewer than this value. If unspecified, at most 500 ... |
| `pageToken` | `string` | query | No | A page token, received from a previous KeyTrackingService.SearchProtectedResources call. Provide this to retrieve the... |
| `resourceTypes` | `string` | query | No | Optional. A list of resource types that this request searches for. If empty, it will search all the [trackable resour... |

**Response**: `GoogleCloudKmsInventoryV1SearchProtectedResourcesResponse`

```typescript
const res = await kmsinventory.protectedResources.search({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `kmsinventory.organizations.protectedResources.search`

**GET** `v1/{+scope}/protectedResources:search`

Returns metadata about the resources protected by the given Cloud KMS CryptoKey in the given Cloud organization/project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `scope` | `string` | path | Yes | Required. A scope can be an organization or a project. Resources protected by the crypto key in provided scope will b... |
| `cryptoKey` | `string` | query | No | Required. The resource name of the CryptoKey. |
| `pageSize` | `integer` | query | No | The maximum number of resources to return. The service may return fewer than this value. If unspecified, at most 500 ... |
| `pageToken` | `string` | query | No | A page token, received from a previous KeyTrackingService.SearchProtectedResources call. Provide this to retrieve the... |
| `resourceTypes` | `string` | query | No | Optional. A list of resource types that this request searches for. If empty, it will search all the [trackable resour... |

**Response**: `GoogleCloudKmsInventoryV1SearchProtectedResourcesResponse`

```typescript
const res = await kmsinventory.protectedResources.search({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `GoogleCloudKmsInventoryV1ListCryptoKeysResponse`

Response message for KeyDashboardService.ListCryptoKeys.

| Property | Type | Description |
|----------|------|-------------|
| `cryptoKeys` | `array<GoogleCloudKmsV1CryptoKey>` | The list of CryptoKeys. |
| `nextPageToken` | `string` | The page token returned from the previous response if the next page is desired. |

### `GoogleCloudKmsInventoryV1ProtectedResource`

Metadata about a resource protected by a Cloud KMS key.

| Property | Type | Description |
|----------|------|-------------|
| `cloudProduct` | `string` | The Cloud product that owns the resource. Example: `compute` |
| `createTime` | `string` | Output only. The time at which this resource was created. The granularity is in seconds. Timestam... |
| `cryptoKeyVersion` | `string` | The name of the Cloud KMS [CryptoKeyVersion](https://cloud.google.com/kms/docs/reference/rest/v1/... |
| `cryptoKeyVersions` | `array<string>` | The names of the Cloud KMS [CryptoKeyVersion](https://cloud.google.com/kms/docs/reference/rest/v1... |
| `labels` | `object` | A key-value pair of the resource's labels (v1) to their values. |
| `location` | `string` | Location can be `global`, regional like `us-east1`, or zonal like `us-west1-b`. |
| `name` | `string` | The full resource name of the resource. Example: `//compute.googleapis.com/projects/my_project_12... |
| `project` | `string` | Format: `projects/{PROJECT_NUMBER}`. |
| `projectId` | `string` | The ID of the project that owns the resource. |
| `resourceType` | `string` | Example: `compute.googleapis.com/Disk` |

### `GoogleCloudKmsInventoryV1ProtectedResourcesSummary`

Aggregate information about the resources protected by a Cloud KMS key in the same Cloud organization/project as the key.

| Property | Type | Description |
|----------|------|-------------|
| `cloudProducts` | `object` | The number of resources protected by the key grouped by Cloud product. |
| `locations` | `object` | The number of resources protected by the key grouped by region. |
| `name` | `string` | The full name of the ProtectedResourcesSummary resource. Example: projects/test-project/locations... |
| `projectCount` | `integer` | The number of distinct Cloud projects in the same Cloud organization as the key that have resourc... |
| `resourceCount` | `string` | The total number of protected resources in the same Cloud organization as the key. |
| `resourceTypes` | `object` | The number of resources protected by the key grouped by resource type. |
| `warnings` | `array<GoogleCloudKmsInventoryV1Warning>` | Warning messages for the state of response ProtectedResourcesSummary For example, if the organiza... |

### `GoogleCloudKmsInventoryV1SearchProtectedResourcesResponse`

Response message for KeyTrackingService.SearchProtectedResources.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token that can be sent as `page_token` to retrieve the next page. If this field is omitted, the... |
| `protectedResources` | `array<GoogleCloudKmsInventoryV1ProtectedResource>` | Protected resources for this page. |

### `GoogleCloudKmsInventoryV1Warning`

A warning message that indicates potential problems with the response data.

| Property | Type | Description |
|----------|------|-------------|
| `displayMessage` | `string` | The literal message providing context and details about the warnings. |
| `warningCode` | `string` | The specific warning code for the displayed message. |

### `GoogleCloudKmsV1CryptoKey`

A CryptoKey represents a logical key that can be used for cryptographic operations. A CryptoKey is made up of zero or more versions, which represent the actual key material used in cryptographic operations.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time at which this CryptoKey was created. |
| `cryptoKeyBackend` | `string` | Immutable. The resource name of the backend environment where the key material for all CryptoKeyV... |
| `destroyScheduledDuration` | `string` | Immutable. The period of time that versions of this key spend in the DESTROY_SCHEDULED state befo... |
| `importOnly` | `boolean` | Immutable. Whether this key may contain imported versions only. |
| `keyAccessJustificationsPolicy` | `GoogleCloudKmsV1KeyAccessJustificationsPolicy` | Optional. The policy used for Key Access Justifications Policy Enforcement. If this field is pres... |
| `labels` | `object` | Labels with user-defined metadata. For more information, see [Labeling Keys](https://cloud.google... |
| `name` | `string` | Output only. The resource name for this CryptoKey in the format `projects/*/locations/*/keyRings/... |
| `nextRotationTime` | `string` | At next_rotation_time, the Key Management Service will automatically: 1. Create a new version of ... |
| `primary` | `GoogleCloudKmsV1CryptoKeyVersion` | Output only. A copy of the "primary" CryptoKeyVersion that will be used by Encrypt when this Cryp... |
| `purpose` | `string` | Immutable. The immutable purpose of this CryptoKey. |
| `rotationPeriod` | `string` | next_rotation_time will be advanced by this period when the service automatically rotates a key. ... |
| `versionTemplate` | `GoogleCloudKmsV1CryptoKeyVersionTemplate` | A template describing settings for new CryptoKeyVersion instances. The properties of new CryptoKe... |

### `GoogleCloudKmsV1CryptoKeyVersion`

A CryptoKeyVersion represents an individual cryptographic key, and the associated key material. An ENABLED version can be used for cryptographic operations. For security reasons, the raw cryptographic key material represented by a CryptoKeyVersion can never be viewed or exported. It can only be used to encrypt, decrypt, or sign data when an authorized user or application invokes Cloud KMS.

| Property | Type | Description |
|----------|------|-------------|
| `algorithm` | `string` | Output only. The CryptoKeyVersionAlgorithm that this CryptoKeyVersion supports. |
| `attestation` | `GoogleCloudKmsV1KeyOperationAttestation` | Output only. Statement that was generated and signed by the HSM at key creation time. Use this st... |
| `createTime` | `string` | Output only. The time at which this CryptoKeyVersion was created. |
| `destroyEventTime` | `string` | Output only. The time this CryptoKeyVersion's key material was destroyed. Only present if state i... |
| `destroyTime` | `string` | Output only. The time this CryptoKeyVersion's key material is scheduled for destruction. Only pre... |
| `externalDestructionFailureReason` | `string` | Output only. The root cause of the most recent external destruction failure. Only present if stat... |
| `externalProtectionLevelOptions` | `GoogleCloudKmsV1ExternalProtectionLevelOptions` | ExternalProtectionLevelOptions stores a group of additional fields for configuring a CryptoKeyVer... |
| `generateTime` | `string` | Output only. The time this CryptoKeyVersion's key material was generated. |
| `generationFailureReason` | `string` | Output only. The root cause of the most recent generation failure. Only present if state is GENER... |
| `importFailureReason` | `string` | Output only. The root cause of the most recent import failure. Only present if state is IMPORT_FA... |
| `importJob` | `string` | Output only. The name of the ImportJob used in the most recent import of this CryptoKeyVersion. O... |
| `importTime` | `string` | Output only. The time at which this CryptoKeyVersion's key material was most recently imported. |
| `name` | `string` | Output only. The resource name for this CryptoKeyVersion in the format `projects/*/locations/*/ke... |
| `protectionLevel` | `string` | Output only. The ProtectionLevel describing how crypto operations are performed with this CryptoK... |
| `reimportEligible` | `boolean` | Output only. Whether or not this key version is eligible for reimport, by being specified as a ta... |
| `state` | `string` | The current state of the CryptoKeyVersion. |

### `GoogleCloudKmsV1CryptoKeyVersionTemplate`

A CryptoKeyVersionTemplate specifies the properties to use when creating a new CryptoKeyVersion, either manually with CreateCryptoKeyVersion or automatically as a result of auto-rotation.

| Property | Type | Description |
|----------|------|-------------|
| `algorithm` | `string` | Required. Algorithm to use when creating a CryptoKeyVersion based on this template. For backwards... |
| `protectionLevel` | `string` | ProtectionLevel to use when creating a CryptoKeyVersion based on this template. Immutable. Defaul... |

### `GoogleCloudKmsV1ExternalProtectionLevelOptions`

ExternalProtectionLevelOptions stores a group of additional fields for configuring a CryptoKeyVersion that are specific to the EXTERNAL protection level and EXTERNAL_VPC protection levels.

| Property | Type | Description |
|----------|------|-------------|
| `ekmConnectionKeyPath` | `string` | The path to the external key material on the EKM when using EkmConnection e.g., "v0/my/key". Set ... |
| `externalKeyUri` | `string` | The URI for an external resource that this CryptoKeyVersion represents. |

### `GoogleCloudKmsV1KeyAccessJustificationsPolicy`

A KeyAccessJustificationsPolicy specifies zero or more allowed AccessReason values for encrypt, decrypt, and sign operations on a CryptoKey.

| Property | Type | Description |
|----------|------|-------------|
| `allowedAccessReasons` | `array<string>` | The list of allowed reasons for access to a CryptoKey. Zero allowed access reasons means all encr... |

### `GoogleCloudKmsV1KeyOperationAttestation`

Contains an HSM-generated attestation about a key operation. For more information, see [Verifying attestations] (https://cloud.google.com/kms/docs/attest-key).

| Property | Type | Description |
|----------|------|-------------|
| `certChains` | `GoogleCloudKmsV1KeyOperationAttestationCertificateChains` | Output only. The certificate chains needed to validate the attestation |
| `content` | `string` | Output only. The attestation data provided by the HSM when the key operation was performed. |
| `format` | `string` | Output only. The format of the attestation data. |

### `GoogleCloudKmsV1KeyOperationAttestationCertificateChains`

Certificate chains needed to verify the attestation. Certificates in chains are PEM-encoded and are ordered based on https://tools.ietf.org/html/rfc5246#section-7.4.2.

| Property | Type | Description |
|----------|------|-------------|
| `caviumCerts` | `array<string>` | Cavium certificate chain corresponding to the attestation. |
| `googleCardCerts` | `array<string>` | Google card certificate chain corresponding to the attestation. |
| `googlePartitionCerts` | `array<string>` | Google partition certificate chain corresponding to the attestation. |

