# Google Play Integrity API - API Reference

**Version**: `v1` | **Methods**: 3 | **Schemas**: 25

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `playintegrity.decodeIntegrityToken` | POST | `v1/{+packageName}:decodeIntegrityToken` | Decodes the integrity token and returns the token payload. |
| `playintegrity.decodePcIntegrityToken` | POST | `v1/{+packageName}:decodePcIntegrityToken` | Decodes the PC integrity token and returns the PC token payload. |
| `playintegrity.deviceRecall.write` | POST | `v1/{+packageName}/deviceRecall:write` | Writes recall bits for the device where Play Integrity API token is obtained. The endpoint is ava... |

### `playintegrity.decodeIntegrityToken`

**POST** `v1/{+packageName}:decodeIntegrityToken`

Decodes the integrity token and returns the token payload.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app the attached integrity token belongs to. |

**Request body**: `DecodeIntegrityTokenRequest`

**Response**: `DecodeIntegrityTokenResponse`

```typescript
const res = await playintegrity.decodeIntegrityToken({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/playintegrity`

---

### `playintegrity.decodePcIntegrityToken`

**POST** `v1/{+packageName}:decodePcIntegrityToken`

Decodes the PC integrity token and returns the PC token payload.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app the attached integrity token belongs to. |

**Request body**: `DecodePcIntegrityTokenRequest`

**Response**: `DecodePcIntegrityTokenResponse`

```typescript
const res = await playintegrity.decodePcIntegrityToken({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/playintegrity`

---

### `playintegrity.deviceRecall.write`

**POST** `v1/{+packageName}/deviceRecall:write`

Writes recall bits for the device where Play Integrity API token is obtained. The endpoint is available to select Play partners in an early access program (EAP).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. Package name of the app the attached integrity token belongs to. |

**Request body**: `WriteDeviceRecallRequest`

**Response**: `WriteDeviceRecallResponse`

```typescript
const res = await playintegrity.deviceRecall.write({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/playintegrity`

---

## Schemas

### `AccountActivity`

(Restricted Access) Contains a signal helping apps differentiating between likely genuine and likely non-genuine user traffic.

| Property | Type | Description |
|----------|------|-------------|
| `activityLevel` | `string` | Required. Indicates the activity level of the account. |

### `AccountDetails`

Contains the account information such as the licensing status for the user in the scope.

| Property | Type | Description |
|----------|------|-------------|
| `accountActivity` | `AccountActivity` | (Restricted Access) Details about the account activity for the user in the scope. |
| `appLicensingVerdict` | `string` | Required. Details about the licensing status of the user for the app in the scope. |

### `AppAccessRiskVerdict`

Contains signals about others apps on the device which could be used to access or control the requesting app.

| Property | Type | Description |
|----------|------|-------------|
| `appsDetected` | `array<string>` | List of detected app types signalled for App Access Risk. |

### `AppIntegrity`

Contains the application integrity information.

| Property | Type | Description |
|----------|------|-------------|
| `appRecognitionVerdict` | `string` | Required. Details about the app recognition verdict |
| `certificateSha256Digest` | `array<string>` | The SHA256 hash of the requesting app's signing certificates (base64 web-safe encoded). Set iff a... |
| `packageName` | `string` | Package name of the application under attestation. Set iff app_recognition_verdict != UNEVALUATED. |
| `versionCode` | `string` | Version code of the application. Set iff app_recognition_verdict != UNEVALUATED. |

### `DecodeIntegrityTokenRequest`

Request to decode the integrity token.

| Property | Type | Description |
|----------|------|-------------|
| `integrityToken` | `string` | Encoded integrity token. |

### `DecodeIntegrityTokenResponse`

Response containing the decoded integrity payload.

| Property | Type | Description |
|----------|------|-------------|
| `tokenPayloadExternal` | `TokenPayloadExternal` | Plain token payload generated from the decoded integrity token. |

### `DecodePcIntegrityTokenRequest`

Request to decode the PC integrity token.

| Property | Type | Description |
|----------|------|-------------|
| `integrityToken` | `string` | Encoded integrity token. |

### `DecodePcIntegrityTokenResponse`

Response containing the decoded PC integrity payload.

| Property | Type | Description |
|----------|------|-------------|
| `tokenPayloadExternal` | `PcTokenPayloadExternal` | Plain token payload generated from the decoded integrity token. |

### `DeviceAttributes`

Contains information about the device for which the integrity token was generated, e.g. Android SDK version.

| Property | Type | Description |
|----------|------|-------------|
| `sdkVersion` | `integer` | Android SDK version of the device, as defined in the public Android documentation: https://develo... |

### `DeviceIntegrity`

Contains the device attestation information.

| Property | Type | Description |
|----------|------|-------------|
| `deviceAttributes` | `DeviceAttributes` | Attributes of the device where the integrity token was generated. |
| `deviceRecall` | `DeviceRecall` | Details about the device recall bits set by the developer. |
| `deviceRecognitionVerdict` | `array<string>` | Details about the integrity of the device the app is running on. |
| `legacyDeviceRecognitionVerdict` | `array<string>` | Contains legacy details about the integrity of the device the app is running on. Only for devices... |
| `recentDeviceActivity` | `RecentDeviceActivity` | Details about the device activity of the device the app is running on. |

### `DeviceRecall`

Contains the recall bits per device set by the developer.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `Values` | Required. Contains the recall bits values. |
| `writeDates` | `WriteDates` | Required. Contains the recall bits write dates. |

### `EnvironmentDetails`

Contains information about the environment Play Integrity API runs in, e.g. Play Protect verdict.

| Property | Type | Description |
|----------|------|-------------|
| `appAccessRiskVerdict` | `AppAccessRiskVerdict` | The evaluation of the App Access Risk verdicts. |
| `playProtectVerdict` | `string` | The evaluation of Play Protect verdict. |

### `PcAccountDetails`

Contains the account information such as the licensing status for the user in the scope.

| Property | Type | Description |
|----------|------|-------------|
| `appLicensingVerdict` | `string` | Required. Details about the licensing status of the user for the app in the scope. |

### `PcDeviceIntegrity`

Contains the device attestation information.

| Property | Type | Description |
|----------|------|-------------|
| `deviceRecognitionVerdict` | `array<string>` | Details about the integrity of the device the app is running on. |

### `PcRequestDetails`

Contains the integrity request information.

| Property | Type | Description |
|----------|------|-------------|
| `requestHash` | `string` | Request hash that was provided in the request. |
| `requestPackageName` | `string` | Required. Application package name this attestation was requested for. Note: This field makes no ... |
| `requestTime` | `string` | Required. Timestamp, of the integrity application request. |

### `PcTestingDetails`

Contains additional information generated for testing responses.

| Property | Type | Description |
|----------|------|-------------|
| `isTestingResponse` | `boolean` | Indicates that the information contained in this payload is a testing response that is statically... |

### `PcTokenPayloadExternal`

Contains PC device attestation details.

| Property | Type | Description |
|----------|------|-------------|
| `accountDetails` | `PcAccountDetails` | Details about the account information such as the licensing status. |
| `deviceIntegrity` | `PcDeviceIntegrity` | Required. Details about the device integrity. |
| `requestDetails` | `PcRequestDetails` | Required. Details about the integrity request. |
| `testingDetails` | `PcTestingDetails` | Indicates that this payload is generated for testing purposes and contains any additional data th... |

### `RecentDeviceActivity`

Recent device activity can help developers identify devices that have exhibited hyperactive attestation activity, which could be a sign of an attack or token farming.

| Property | Type | Description |
|----------|------|-------------|
| `deviceActivityLevel` | `string` | Required. Indicates the activity level of the device. |

### `RequestDetails`

Contains the integrity request information.

| Property | Type | Description |
|----------|------|-------------|
| `nonce` | `string` | Nonce that was provided in the request (which is base64 web-safe no-wrap). |
| `requestHash` | `string` | Request hash that was provided in the request. |
| `requestPackageName` | `string` | Required. Application package name this attestation was requested for. Note: This field makes no ... |
| `timestampMillis` | `string` | Required. Timestamp, in milliseconds, of the integrity application request. |

### `TestingDetails`

Contains additional information generated for testing responses.

| Property | Type | Description |
|----------|------|-------------|
| `isTestingResponse` | `boolean` | Required. Indicates that the information contained in this payload is a testing response that is ... |

### `TokenPayloadExternal`

Contains basic app information and integrity signals like device attestation and licensing details.

| Property | Type | Description |
|----------|------|-------------|
| `accountDetails` | `AccountDetails` | Required. Details about the Play Store account. |
| `appIntegrity` | `AppIntegrity` | Required. Details about the application integrity. |
| `deviceIntegrity` | `DeviceIntegrity` | Required. Details about the device integrity. |
| `environmentDetails` | `EnvironmentDetails` | Details of the environment Play Integrity API runs in. |
| `requestDetails` | `RequestDetails` | Required. Details about the integrity request. |
| `testingDetails` | `TestingDetails` | Indicates that this payload is generated for testing purposes and contains any additional data th... |

### `Values`

Contains the recall bits values.

| Property | Type | Description |
|----------|------|-------------|
| `bitFirst` | `boolean` | Required. First recall bit value. |
| `bitSecond` | `boolean` | Required. Second recall bit value. |
| `bitThird` | `boolean` | Required. Third recall bit value. |

### `WriteDates`

Contains the recall bits write dates.

| Property | Type | Description |
|----------|------|-------------|
| `yyyymmFirst` | `integer` | Optional. Write time in YYYYMM format (in UTC, e.g. 202402) for the first bit. Note that this val... |
| `yyyymmSecond` | `integer` | Optional. Write time in YYYYMM format (in UTC, e.g. 202402) for the second bit. Note that this va... |
| `yyyymmThird` | `integer` | Optional. Write time in YYYYMM format (in UTC, e.g. 202402) for the third bit. Note that this val... |

### `WriteDeviceRecallRequest`

Request to write device recall bits.

| Property | Type | Description |
|----------|------|-------------|
| `integrityToken` | `string` | Required. Integrity token obtained from calling Play Integrity API. |
| `newValues` | `Values` | Required. The new values for the device recall bits to be written. |

### `WriteDeviceRecallResponse`

Response for the Write Device Recall action. Currently empty.

