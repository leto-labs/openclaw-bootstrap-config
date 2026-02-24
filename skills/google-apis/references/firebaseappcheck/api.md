# Firebase App Check API - API Reference

**Version**: `v1` | **Methods**: 49 | **Schemas**: 46

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `firebaseappcheck.jwks.get` | GET | `v1/{+name}` | Returns a public JWK set as specified by [RFC 7517](https://tools.ietf.org/html/rfc7517) that can... |
| `firebaseappcheck.oauthClients.exchangeAppAttestAssertion` | POST | `v1/{+app}:exchangeAppAttestAssertion` | Accepts an App Attest assertion and an artifact previously obtained from ExchangeAppAttestAttesta... |
| `firebaseappcheck.oauthClients.exchangeAppAttestAttestation` | POST | `v1/{+app}:exchangeAppAttestAttestation` | Accepts an App Attest CBOR attestation and verifies it with Apple using your preconfigured team a... |
| `firebaseappcheck.oauthClients.generateAppAttestChallenge` | POST | `v1/{+app}:generateAppAttestChallenge` | Generates a challenge that protects the integrity of an immediately following call to ExchangeApp... |
| `firebaseappcheck.oauthClients.exchangeDebugToken` | POST | `v1/{+app}:exchangeDebugToken` | Validates a debug token secret that you have previously created using CreateDebugToken. If valid,... |
| `firebaseappcheck.projects.apps.generateAppAttestChallenge` | POST | `v1/{+app}:generateAppAttestChallenge` | Generates a challenge that protects the integrity of an immediately following call to ExchangeApp... |
| `firebaseappcheck.projects.apps.exchangeDeviceCheckToken` | POST | `v1/{+app}:exchangeDeviceCheckToken` | Accepts a [`device_token`](https://developer.apple.com/documentation/devicecheck/dcdevice) issued... |
| `firebaseappcheck.projects.apps.exchangePlayIntegrityToken` | POST | `v1/{+app}:exchangePlayIntegrityToken` | Validates an [integrity verdict response token from Play Integrity](https://developer.android.com... |
| `firebaseappcheck.projects.apps.exchangeRecaptchaV3Token` | POST | `v1/{+app}:exchangeRecaptchaV3Token` | Validates a [reCAPTCHA v3 response token](https://developers.google.com/recaptcha/docs/v3). If va... |
| `firebaseappcheck.projects.apps.exchangeDebugToken` | POST | `v1/{+app}:exchangeDebugToken` | Validates a debug token secret that you have previously created using CreateDebugToken. If valid,... |
| `firebaseappcheck.projects.apps.exchangeRecaptchaEnterpriseToken` | POST | `v1/{+app}:exchangeRecaptchaEnterpriseToken` | Validates a [reCAPTCHA Enterprise response token](https://cloud.google.com/recaptcha-enterprise/d... |
| `firebaseappcheck.projects.apps.exchangeCustomToken` | POST | `v1/{+app}:exchangeCustomToken` | Validates a custom token signed using your project's Admin SDK service account credentials. If va... |
| `firebaseappcheck.projects.apps.exchangeSafetyNetToken` | POST | `v1/{+app}:exchangeSafetyNetToken` | Validates a [SafetyNet token](https://developer.android.com/training/safetynet/attestation#reques... |
| `firebaseappcheck.projects.apps.exchangeAppAttestAttestation` | POST | `v1/{+app}:exchangeAppAttestAttestation` | Accepts an App Attest CBOR attestation and verifies it with Apple using your preconfigured team a... |
| `firebaseappcheck.projects.apps.generatePlayIntegrityChallenge` | POST | `v1/{+app}:generatePlayIntegrityChallenge` | Generates a challenge that protects the integrity of an immediately following integrity verdict r... |
| `firebaseappcheck.projects.apps.exchangeAppAttestAssertion` | POST | `v1/{+app}:exchangeAppAttestAssertion` | Accepts an App Attest assertion and an artifact previously obtained from ExchangeAppAttestAttesta... |
| `firebaseappcheck.projects.apps.recaptchaEnterpriseConfig.get` | GET | `v1/{+name}` | Gets the RecaptchaEnterpriseConfig for the specified app. |
| `firebaseappcheck.projects.apps.recaptchaEnterpriseConfig.batchGet` | GET | `v1/{+parent}/apps/-/recaptchaEnterpriseConfig:batchGet` | Atomically gets the RecaptchaEnterpriseConfigs for the specified list of apps. |
| `firebaseappcheck.projects.apps.recaptchaEnterpriseConfig.patch` | PATCH | `v1/{+name}` | Updates the RecaptchaEnterpriseConfig for the specified app. While this configuration is incomple... |
| `firebaseappcheck.projects.apps.safetyNetConfig.get` | GET | `v1/{+name}` | Gets the SafetyNetConfig for the specified app. |
| `firebaseappcheck.projects.apps.safetyNetConfig.batchGet` | GET | `v1/{+parent}/apps/-/safetyNetConfig:batchGet` | Atomically gets the SafetyNetConfigs for the specified list of apps. |
| `firebaseappcheck.projects.apps.safetyNetConfig.patch` | PATCH | `v1/{+name}` | Updates the SafetyNetConfig for the specified app. While this configuration is incomplete or inva... |
| `firebaseappcheck.projects.apps.playIntegrityConfig.batchGet` | GET | `v1/{+parent}/apps/-/playIntegrityConfig:batchGet` | Atomically gets the PlayIntegrityConfigs for the specified list of apps. |
| `firebaseappcheck.projects.apps.playIntegrityConfig.patch` | PATCH | `v1/{+name}` | Updates the PlayIntegrityConfig for the specified app. While this configuration is incomplete or ... |
| `firebaseappcheck.projects.apps.playIntegrityConfig.get` | GET | `v1/{+name}` | Gets the PlayIntegrityConfig for the specified app. |
| `firebaseappcheck.projects.apps.appAttestConfig.batchGet` | GET | `v1/{+parent}/apps/-/appAttestConfig:batchGet` | Atomically gets the AppAttestConfigs for the specified list of apps. |
| `firebaseappcheck.projects.apps.appAttestConfig.get` | GET | `v1/{+name}` | Gets the AppAttestConfig for the specified app. |
| `firebaseappcheck.projects.apps.appAttestConfig.patch` | PATCH | `v1/{+name}` | Updates the AppAttestConfig for the specified app. While this configuration is incomplete or inva... |
| `firebaseappcheck.projects.apps.debugTokens.patch` | PATCH | `v1/{+name}` | Updates the specified DebugToken. For security reasons, the `token` field cannot be updated, nor ... |
| `firebaseappcheck.projects.apps.debugTokens.delete` | DELETE | `v1/{+name}` | Deletes the specified DebugToken. A deleted debug token cannot be used to exchange for an App Che... |
| `firebaseappcheck.projects.apps.debugTokens.get` | GET | `v1/{+name}` | Gets the specified DebugToken. For security reasons, the `token` field is never populated in the ... |
| `firebaseappcheck.projects.apps.debugTokens.list` | GET | `v1/{+parent}/debugTokens` | Lists all DebugTokens for the specified app. For security reasons, the `token` field is never pop... |
| `firebaseappcheck.projects.apps.debugTokens.create` | POST | `v1/{+parent}/debugTokens` | Creates a new DebugToken for the specified app. For security reasons, after the creation operatio... |
| `firebaseappcheck.projects.apps.deviceCheckConfig.get` | GET | `v1/{+name}` | Gets the DeviceCheckConfig for the specified app. For security reasons, the `private_key` field i... |
| `firebaseappcheck.projects.apps.deviceCheckConfig.patch` | PATCH | `v1/{+name}` | Updates the DeviceCheckConfig for the specified app. While this configuration is incomplete or in... |
| `firebaseappcheck.projects.apps.deviceCheckConfig.batchGet` | GET | `v1/{+parent}/apps/-/deviceCheckConfig:batchGet` | Atomically gets the DeviceCheckConfigs for the specified list of apps. For security reasons, the ... |
| `firebaseappcheck.projects.apps.recaptchaV3Config.get` | GET | `v1/{+name}` | Gets the RecaptchaV3Config for the specified app. For security reasons, the `site_secret` field i... |
| `firebaseappcheck.projects.apps.recaptchaV3Config.batchGet` | GET | `v1/{+parent}/apps/-/recaptchaV3Config:batchGet` | Atomically gets the RecaptchaV3Configs for the specified list of apps. For security reasons, the ... |
| `firebaseappcheck.projects.apps.recaptchaV3Config.patch` | PATCH | `v1/{+name}` | Updates the RecaptchaV3Config for the specified app. While this configuration is incomplete or in... |
| `firebaseappcheck.projects.services.get` | GET | `v1/{+name}` | Gets the Service configuration for the specified service name. |
| `firebaseappcheck.projects.services.batchUpdate` | POST | `v1/{+parent}/services:batchUpdate` | Atomically updates the specified Service configurations. |
| `firebaseappcheck.projects.services.list` | GET | `v1/{+parent}/services` | Lists all Service configurations for the specified project. Only Services which were explicitly c... |
| `firebaseappcheck.projects.services.patch` | PATCH | `v1/{+name}` | Updates the specified Service configuration. |
| `firebaseappcheck.projects.services.resourcePolicies.create` | POST | `v1/{+parent}/resourcePolicies` | Creates the specified ResourcePolicy configuration. |
| `firebaseappcheck.projects.services.resourcePolicies.batchUpdate` | POST | `v1/{+parent}/resourcePolicies:batchUpdate` | Atomically updates the specified ResourcePolicy configurations. |
| `firebaseappcheck.projects.services.resourcePolicies.get` | GET | `v1/{+name}` | Gets the requested ResourcePolicy configuration. |
| `firebaseappcheck.projects.services.resourcePolicies.list` | GET | `v1/{+parent}/resourcePolicies` | Lists all ResourcePolicy configurations for the specified project and service. |
| `firebaseappcheck.projects.services.resourcePolicies.patch` | PATCH | `v1/{+name}` | Updates the specified ResourcePolicy configuration. |
| `firebaseappcheck.projects.services.resourcePolicies.delete` | DELETE | `v1/{+name}` | Deletes the specified ResourcePolicy configuration. |

### `firebaseappcheck.jwks.get`

**GET** `v1/{+name}`

Returns a public JWK set as specified by [RFC 7517](https://tools.ietf.org/html/rfc7517) that can be used to verify App Check tokens. Exactly one of the public keys in the returned set will successfully validate any App Check token that is currently valid.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The relative resource name to the public JWK set. Must always be exactly the string `jwks`. |

**Response**: `GoogleFirebaseAppcheckV1PublicJwkSet`

```typescript
const res = await firebaseappcheck.jwks.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.oauthClients.exchangeAppAttestAssertion`

**POST** `v1/{+app}:exchangeAppAttestAssertion`

Accepts an App Attest assertion and an artifact previously obtained from ExchangeAppAttestAttestation and verifies those with Apple. If valid, returns an AppCheckToken.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `app` | `string` | path | Yes | Required. The relative resource name of the iOS app, in the format: ``` projects/{project_number}/apps/{app_id} ``` I... |

**Request body**: `GoogleFirebaseAppcheckV1ExchangeAppAttestAssertionRequest`

**Response**: `GoogleFirebaseAppcheckV1AppCheckToken`

```typescript
const res = await firebaseappcheck.oauthClients.exchangeAppAttestAssertion({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.oauthClients.exchangeAppAttestAttestation`

**POST** `v1/{+app}:exchangeAppAttestAttestation`

Accepts an App Attest CBOR attestation and verifies it with Apple using your preconfigured team and bundle IDs. If valid, returns an attestation artifact that can later be exchanged for an AppCheckToken using ExchangeAppAttestAssertion. For convenience and performance, this method's response object will also contain an AppCheckToken (if the verification is successful).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `app` | `string` | path | Yes | Required. The relative resource name of the iOS app, in the format: ``` projects/{project_number}/apps/{app_id} ``` I... |

**Request body**: `GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationRequest`

**Response**: `GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationResponse`

```typescript
const res = await firebaseappcheck.oauthClients.exchangeAppAttestAttestation({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.oauthClients.generateAppAttestChallenge`

**POST** `v1/{+app}:generateAppAttestChallenge`

Generates a challenge that protects the integrity of an immediately following call to ExchangeAppAttestAttestation or ExchangeAppAttestAssertion. A challenge should not be reused for multiple calls.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `app` | `string` | path | Yes | Required. The relative resource name of the iOS app, in the format: ``` projects/{project_number}/apps/{app_id} ``` I... |

**Request body**: `GoogleFirebaseAppcheckV1GenerateAppAttestChallengeRequest`

**Response**: `GoogleFirebaseAppcheckV1GenerateAppAttestChallengeResponse`

```typescript
const res = await firebaseappcheck.oauthClients.generateAppAttestChallenge({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.oauthClients.exchangeDebugToken`

**POST** `v1/{+app}:exchangeDebugToken`

Validates a debug token secret that you have previously created using CreateDebugToken. If valid, returns an AppCheckToken. Note that a restrictive quota is enforced on this method to prevent accidental exposure of the app to abuse.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `app` | `string` | path | Yes | Required. The relative resource name of the app, in the format: ``` projects/{project_number}/apps/{app_id} ``` If ne... |

**Request body**: `GoogleFirebaseAppcheckV1ExchangeDebugTokenRequest`

**Response**: `GoogleFirebaseAppcheckV1AppCheckToken`

```typescript
const res = await firebaseappcheck.oauthClients.exchangeDebugToken({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.projects.apps.generateAppAttestChallenge`

**POST** `v1/{+app}:generateAppAttestChallenge`

Generates a challenge that protects the integrity of an immediately following call to ExchangeAppAttestAttestation or ExchangeAppAttestAssertion. A challenge should not be reused for multiple calls.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `app` | `string` | path | Yes | Required. The relative resource name of the iOS app, in the format: ``` projects/{project_number}/apps/{app_id} ``` I... |

**Request body**: `GoogleFirebaseAppcheckV1GenerateAppAttestChallengeRequest`

**Response**: `GoogleFirebaseAppcheckV1GenerateAppAttestChallengeResponse`

```typescript
const res = await firebaseappcheck.apps.generateAppAttestChallenge({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.projects.apps.exchangeDeviceCheckToken`

**POST** `v1/{+app}:exchangeDeviceCheckToken`

Accepts a [`device_token`](https://developer.apple.com/documentation/devicecheck/dcdevice) issued by DeviceCheck, and attempts to validate it with Apple. If valid, returns an AppCheckToken.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `app` | `string` | path | Yes | Required. The relative resource name of the iOS app, in the format: ``` projects/{project_number}/apps/{app_id} ``` I... |

**Request body**: `GoogleFirebaseAppcheckV1ExchangeDeviceCheckTokenRequest`

**Response**: `GoogleFirebaseAppcheckV1AppCheckToken`

```typescript
const res = await firebaseappcheck.apps.exchangeDeviceCheckToken({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.projects.apps.exchangePlayIntegrityToken`

**POST** `v1/{+app}:exchangePlayIntegrityToken`

Validates an [integrity verdict response token from Play Integrity](https://developer.android.com/google/play/integrity/verdict#decrypt-verify). If valid, returns an AppCheckToken.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `app` | `string` | path | Yes | Required. The relative resource name of the Android app, in the format: ``` projects/{project_number}/apps/{app_id} `... |

**Request body**: `GoogleFirebaseAppcheckV1ExchangePlayIntegrityTokenRequest`

**Response**: `GoogleFirebaseAppcheckV1AppCheckToken`

```typescript
const res = await firebaseappcheck.apps.exchangePlayIntegrityToken({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.projects.apps.exchangeRecaptchaV3Token`

**POST** `v1/{+app}:exchangeRecaptchaV3Token`

Validates a [reCAPTCHA v3 response token](https://developers.google.com/recaptcha/docs/v3). If valid, returns an AppCheckToken.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `app` | `string` | path | Yes | Required. The relative resource name of the web app, in the format: ``` projects/{project_number}/apps/{app_id} ``` I... |

**Request body**: `GoogleFirebaseAppcheckV1ExchangeRecaptchaV3TokenRequest`

**Response**: `GoogleFirebaseAppcheckV1AppCheckToken`

```typescript
const res = await firebaseappcheck.apps.exchangeRecaptchaV3Token({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.projects.apps.exchangeDebugToken`

**POST** `v1/{+app}:exchangeDebugToken`

Validates a debug token secret that you have previously created using CreateDebugToken. If valid, returns an AppCheckToken. Note that a restrictive quota is enforced on this method to prevent accidental exposure of the app to abuse.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `app` | `string` | path | Yes | Required. The relative resource name of the app, in the format: ``` projects/{project_number}/apps/{app_id} ``` If ne... |

**Request body**: `GoogleFirebaseAppcheckV1ExchangeDebugTokenRequest`

**Response**: `GoogleFirebaseAppcheckV1AppCheckToken`

```typescript
const res = await firebaseappcheck.apps.exchangeDebugToken({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.projects.apps.exchangeRecaptchaEnterpriseToken`

**POST** `v1/{+app}:exchangeRecaptchaEnterpriseToken`

Validates a [reCAPTCHA Enterprise response token](https://cloud.google.com/recaptcha-enterprise/docs/create-assessment#retrieve_token). If valid, returns an AppCheckToken.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `app` | `string` | path | Yes | Required. The relative resource name of the web app, in the format: ``` projects/{project_number}/apps/{app_id} ``` I... |

**Request body**: `GoogleFirebaseAppcheckV1ExchangeRecaptchaEnterpriseTokenRequest`

**Response**: `GoogleFirebaseAppcheckV1AppCheckToken`

```typescript
const res = await firebaseappcheck.apps.exchangeRecaptchaEnterpriseToken({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.projects.apps.exchangeCustomToken`

**POST** `v1/{+app}:exchangeCustomToken`

Validates a custom token signed using your project's Admin SDK service account credentials. If valid, returns an AppCheckToken.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `app` | `string` | path | Yes | Required. The relative resource name of the app, in the format: ``` projects/{project_number}/apps/{app_id} ``` If ne... |

**Request body**: `GoogleFirebaseAppcheckV1ExchangeCustomTokenRequest`

**Response**: `GoogleFirebaseAppcheckV1AppCheckToken`

```typescript
const res = await firebaseappcheck.apps.exchangeCustomToken({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.projects.apps.exchangeSafetyNetToken`

**POST** `v1/{+app}:exchangeSafetyNetToken`

Validates a [SafetyNet token](https://developer.android.com/training/safetynet/attestation#request-attestation-step). If valid, returns an AppCheckToken.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `app` | `string` | path | Yes | Required. The relative resource name of the Android app, in the format: ``` projects/{project_number}/apps/{app_id} `... |

**Request body**: `GoogleFirebaseAppcheckV1ExchangeSafetyNetTokenRequest`

**Response**: `GoogleFirebaseAppcheckV1AppCheckToken`

```typescript
const res = await firebaseappcheck.apps.exchangeSafetyNetToken({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.projects.apps.exchangeAppAttestAttestation`

**POST** `v1/{+app}:exchangeAppAttestAttestation`

Accepts an App Attest CBOR attestation and verifies it with Apple using your preconfigured team and bundle IDs. If valid, returns an attestation artifact that can later be exchanged for an AppCheckToken using ExchangeAppAttestAssertion. For convenience and performance, this method's response object will also contain an AppCheckToken (if the verification is successful).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `app` | `string` | path | Yes | Required. The relative resource name of the iOS app, in the format: ``` projects/{project_number}/apps/{app_id} ``` I... |

**Request body**: `GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationRequest`

**Response**: `GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationResponse`

```typescript
const res = await firebaseappcheck.apps.exchangeAppAttestAttestation({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.projects.apps.generatePlayIntegrityChallenge`

**POST** `v1/{+app}:generatePlayIntegrityChallenge`

Generates a challenge that protects the integrity of an immediately following integrity verdict request to the Play Integrity API. The next call to ExchangePlayIntegrityToken using the resulting integrity token will verify the presence and validity of the challenge. A challenge should not be reused for multiple calls.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `app` | `string` | path | Yes | Required. The relative resource name of the app, in the format: ``` projects/{project_number}/apps/{app_id} ``` If ne... |

**Request body**: `GoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeRequest`

**Response**: `GoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeResponse`

```typescript
const res = await firebaseappcheck.apps.generatePlayIntegrityChallenge({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.projects.apps.exchangeAppAttestAssertion`

**POST** `v1/{+app}:exchangeAppAttestAssertion`

Accepts an App Attest assertion and an artifact previously obtained from ExchangeAppAttestAttestation and verifies those with Apple. If valid, returns an AppCheckToken.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `app` | `string` | path | Yes | Required. The relative resource name of the iOS app, in the format: ``` projects/{project_number}/apps/{app_id} ``` I... |

**Request body**: `GoogleFirebaseAppcheckV1ExchangeAppAttestAssertionRequest`

**Response**: `GoogleFirebaseAppcheckV1AppCheckToken`

```typescript
const res = await firebaseappcheck.apps.exchangeAppAttestAssertion({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.projects.apps.recaptchaEnterpriseConfig.get`

**GET** `v1/{+name}`

Gets the RecaptchaEnterpriseConfig for the specified app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The relative resource name of the RecaptchaEnterpriseConfig, in the format: ``` projects/{project_number}/a... |

**Response**: `GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig`

```typescript
const res = await firebaseappcheck.recaptchaEnterpriseConfig.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.projects.apps.recaptchaEnterpriseConfig.batchGet`

**GET** `v1/{+parent}/apps/-/recaptchaEnterpriseConfig:batchGet`

Atomically gets the RecaptchaEnterpriseConfigs for the specified list of apps.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent project name shared by all RecaptchaEnterpriseConfigs being retrieved, in the format ``` project... |
| `names` | `string` | query | No | Required. The relative resource names of the RecaptchaEnterpriseConfigs to retrieve, in the format: ``` projects/{pro... |

**Response**: `GoogleFirebaseAppcheckV1BatchGetRecaptchaEnterpriseConfigsResponse`

```typescript
const res = await firebaseappcheck.recaptchaEnterpriseConfig.batchGet({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.projects.apps.recaptchaEnterpriseConfig.patch`

**PATCH** `v1/{+name}`

Updates the RecaptchaEnterpriseConfig for the specified app. While this configuration is incomplete or invalid, the app will be unable to exchange reCAPTCHA Enterprise tokens for App Check tokens.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The relative resource name of the reCAPTCHA Enterprise configuration object, in the format: ``` projects/{p... |
| `updateMask` | `string` | query | No | Required. A comma-separated list of names of fields in the RecaptchaEnterpriseConfig to update. Example: `site_key`. |

**Request body**: `GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig`

**Response**: `GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig`

```typescript
const res = await firebaseappcheck.recaptchaEnterpriseConfig.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.projects.apps.safetyNetConfig.get`

**GET** `v1/{+name}`

Gets the SafetyNetConfig for the specified app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The relative resource name of the SafetyNetConfig, in the format: ``` projects/{project_number}/apps/{app_i... |

**Response**: `GoogleFirebaseAppcheckV1SafetyNetConfig`

```typescript
const res = await firebaseappcheck.safetyNetConfig.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.projects.apps.safetyNetConfig.batchGet`

**GET** `v1/{+parent}/apps/-/safetyNetConfig:batchGet`

Atomically gets the SafetyNetConfigs for the specified list of apps.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent project name shared by all SafetyNetConfigs being retrieved, in the format ``` projects/{project... |
| `names` | `string` | query | No | Required. The relative resource names of the SafetyNetConfigs to retrieve, in the format ``` projects/{project_number... |

**Response**: `GoogleFirebaseAppcheckV1BatchGetSafetyNetConfigsResponse`

```typescript
const res = await firebaseappcheck.safetyNetConfig.batchGet({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.projects.apps.safetyNetConfig.patch`

**PATCH** `v1/{+name}`

Updates the SafetyNetConfig for the specified app. While this configuration is incomplete or invalid, the app will be unable to exchange SafetyNet tokens for App Check tokens.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The relative resource name of the SafetyNet configuration object, in the format: ``` projects/{project_numb... |
| `updateMask` | `string` | query | No | Required. A comma-separated list of names of fields in the SafetyNetConfig to update. Example: `token_ttl`. |

**Request body**: `GoogleFirebaseAppcheckV1SafetyNetConfig`

**Response**: `GoogleFirebaseAppcheckV1SafetyNetConfig`

```typescript
const res = await firebaseappcheck.safetyNetConfig.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.projects.apps.playIntegrityConfig.batchGet`

**GET** `v1/{+parent}/apps/-/playIntegrityConfig:batchGet`

Atomically gets the PlayIntegrityConfigs for the specified list of apps.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent project name shared by all PlayIntegrityConfigs being retrieved, in the format ``` projects/{pro... |
| `names` | `string` | query | No | Required. The relative resource names of the PlayIntegrityConfigs to retrieve, in the format ``` projects/{project_nu... |

**Response**: `GoogleFirebaseAppcheckV1BatchGetPlayIntegrityConfigsResponse`

```typescript
const res = await firebaseappcheck.playIntegrityConfig.batchGet({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.projects.apps.playIntegrityConfig.patch`

**PATCH** `v1/{+name}`

Updates the PlayIntegrityConfig for the specified app. While this configuration is incomplete or invalid, the app will be unable to exchange Play Integrity tokens for App Check tokens.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The relative resource name of the Play Integrity configuration object, in the format: ``` projects/{project... |
| `updateMask` | `string` | query | No | Required. A comma-separated list of names of fields in the PlayIntegrityConfig to update. Example: `token_ttl`. |

**Request body**: `GoogleFirebaseAppcheckV1PlayIntegrityConfig`

**Response**: `GoogleFirebaseAppcheckV1PlayIntegrityConfig`

```typescript
const res = await firebaseappcheck.playIntegrityConfig.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.projects.apps.playIntegrityConfig.get`

**GET** `v1/{+name}`

Gets the PlayIntegrityConfig for the specified app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The relative resource name of the PlayIntegrityConfig, in the format: ``` projects/{project_number}/apps/{a... |

**Response**: `GoogleFirebaseAppcheckV1PlayIntegrityConfig`

```typescript
const res = await firebaseappcheck.playIntegrityConfig.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.projects.apps.appAttestConfig.batchGet`

**GET** `v1/{+parent}/apps/-/appAttestConfig:batchGet`

Atomically gets the AppAttestConfigs for the specified list of apps.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent project name shared by all AppAttestConfigs being retrieved, in the format ``` projects/{project... |
| `names` | `string` | query | No | Required. The relative resource names of the AppAttestConfigs to retrieve, in the format ``` projects/{project_number... |

**Response**: `GoogleFirebaseAppcheckV1BatchGetAppAttestConfigsResponse`

```typescript
const res = await firebaseappcheck.appAttestConfig.batchGet({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.projects.apps.appAttestConfig.get`

**GET** `v1/{+name}`

Gets the AppAttestConfig for the specified app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The relative resource name of the AppAttestConfig, in the format: ``` projects/{project_number}/apps/{app_i... |

**Response**: `GoogleFirebaseAppcheckV1AppAttestConfig`

```typescript
const res = await firebaseappcheck.appAttestConfig.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.projects.apps.appAttestConfig.patch`

**PATCH** `v1/{+name}`

Updates the AppAttestConfig for the specified app. While this configuration is incomplete or invalid, the app will be unable to exchange AppAttest tokens for App Check tokens.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The relative resource name of the App Attest configuration object, in the format: ``` projects/{project_num... |
| `updateMask` | `string` | query | No | Required. A comma-separated list of names of fields in the AppAttestConfig to update. Example: `token_ttl`. |

**Request body**: `GoogleFirebaseAppcheckV1AppAttestConfig`

**Response**: `GoogleFirebaseAppcheckV1AppAttestConfig`

```typescript
const res = await firebaseappcheck.appAttestConfig.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.projects.apps.debugTokens.patch`

**PATCH** `v1/{+name}`

Updates the specified DebugToken. For security reasons, the `token` field cannot be updated, nor will it be populated in the response, but you can revoke the debug token using DeleteDebugToken.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The relative resource name of the debug token, in the format: ``` projects/{project_number}/apps/{app_id}/d... |
| `updateMask` | `string` | query | No | Required. A comma-separated list of names of fields in the DebugToken to update. Example: `display_name`. |

**Request body**: `GoogleFirebaseAppcheckV1DebugToken`

**Response**: `GoogleFirebaseAppcheckV1DebugToken`

```typescript
const res = await firebaseappcheck.debugTokens.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.projects.apps.debugTokens.delete`

**DELETE** `v1/{+name}`

Deletes the specified DebugToken. A deleted debug token cannot be used to exchange for an App Check token. Use this method when you suspect the secret `token` has been compromised or when you no longer need the debug token.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The relative resource name of the DebugToken to delete, in the format: ``` projects/{project_number}/apps/{... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await firebaseappcheck.debugTokens.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.projects.apps.debugTokens.get`

**GET** `v1/{+name}`

Gets the specified DebugToken. For security reasons, the `token` field is never populated in the response.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The relative resource name of the debug token, in the format: ``` projects/{project_number}/apps/{app_id}/d... |

**Response**: `GoogleFirebaseAppcheckV1DebugToken`

```typescript
const res = await firebaseappcheck.debugTokens.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.projects.apps.debugTokens.list`

**GET** `v1/{+parent}/debugTokens`

Lists all DebugTokens for the specified app. For security reasons, the `token` field is never populated in the response.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The relative resource name of the parent app for which to list each associated DebugToken, in the format: `... |
| `pageSize` | `integer` | query | No | The maximum number of DebugTokens to return in the response. Note that an app can have at most 20 debug tokens. The s... |
| `pageToken` | `string` | query | No | Token returned from a previous call to ListDebugTokens indicating where in the set of DebugTokens to resume listing. ... |

**Response**: `GoogleFirebaseAppcheckV1ListDebugTokensResponse`

```typescript
const res = await firebaseappcheck.debugTokens.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.projects.apps.debugTokens.create`

**POST** `v1/{+parent}/debugTokens`

Creates a new DebugToken for the specified app. For security reasons, after the creation operation completes, the `token` field cannot be updated or retrieved, but you can revoke the debug token using DeleteDebugToken. Each app can have a maximum of 20 debug tokens.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The relative resource name of the parent app in which the specified DebugToken will be created, in the form... |

**Request body**: `GoogleFirebaseAppcheckV1DebugToken`

**Response**: `GoogleFirebaseAppcheckV1DebugToken`

```typescript
const res = await firebaseappcheck.debugTokens.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.projects.apps.deviceCheckConfig.get`

**GET** `v1/{+name}`

Gets the DeviceCheckConfig for the specified app. For security reasons, the `private_key` field is never populated in the response.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The relative resource name of the DeviceCheckConfig, in the format: ``` projects/{project_number}/apps/{app... |

**Response**: `GoogleFirebaseAppcheckV1DeviceCheckConfig`

```typescript
const res = await firebaseappcheck.deviceCheckConfig.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.projects.apps.deviceCheckConfig.patch`

**PATCH** `v1/{+name}`

Updates the DeviceCheckConfig for the specified app. While this configuration is incomplete or invalid, the app will be unable to exchange DeviceCheck tokens for App Check tokens. For security reasons, the `private_key` field is never populated in the response.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The relative resource name of the DeviceCheck configuration object, in the format: ``` projects/{project_nu... |
| `updateMask` | `string` | query | No | Required. A comma-separated list of names of fields in the DeviceCheckConfig to update. Example: `key_id,private_key`. |

**Request body**: `GoogleFirebaseAppcheckV1DeviceCheckConfig`

**Response**: `GoogleFirebaseAppcheckV1DeviceCheckConfig`

```typescript
const res = await firebaseappcheck.deviceCheckConfig.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.projects.apps.deviceCheckConfig.batchGet`

**GET** `v1/{+parent}/apps/-/deviceCheckConfig:batchGet`

Atomically gets the DeviceCheckConfigs for the specified list of apps. For security reasons, the `private_key` field is never populated in the response.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent project name shared by all DeviceCheckConfigs being retrieved, in the format ``` projects/{proje... |
| `names` | `string` | query | No | Required. The relative resource names of the DeviceCheckConfigs to retrieve, in the format ``` projects/{project_numb... |

**Response**: `GoogleFirebaseAppcheckV1BatchGetDeviceCheckConfigsResponse`

```typescript
const res = await firebaseappcheck.deviceCheckConfig.batchGet({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.projects.apps.recaptchaV3Config.get`

**GET** `v1/{+name}`

Gets the RecaptchaV3Config for the specified app. For security reasons, the `site_secret` field is never populated in the response.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The relative resource name of the RecaptchaV3Config, in the format: ``` projects/{project_number}/apps/{app... |

**Response**: `GoogleFirebaseAppcheckV1RecaptchaV3Config`

```typescript
const res = await firebaseappcheck.recaptchaV3Config.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.projects.apps.recaptchaV3Config.batchGet`

**GET** `v1/{+parent}/apps/-/recaptchaV3Config:batchGet`

Atomically gets the RecaptchaV3Configs for the specified list of apps. For security reasons, the `site_secret` field is never populated in the response.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent project name shared by all RecaptchaV3Configs being retrieved, in the format ``` projects/{proje... |
| `names` | `string` | query | No | Required. The relative resource names of the RecaptchaV3Configs to retrieve, in the format: ``` projects/{project_num... |

**Response**: `GoogleFirebaseAppcheckV1BatchGetRecaptchaV3ConfigsResponse`

```typescript
const res = await firebaseappcheck.recaptchaV3Config.batchGet({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.projects.apps.recaptchaV3Config.patch`

**PATCH** `v1/{+name}`

Updates the RecaptchaV3Config for the specified app. While this configuration is incomplete or invalid, the app will be unable to exchange reCAPTCHA V3 tokens for App Check tokens. For security reasons, the `site_secret` field is never populated in the response.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The relative resource name of the reCAPTCHA v3 configuration object, in the format: ``` projects/{project_n... |
| `updateMask` | `string` | query | No | Required. A comma-separated list of names of fields in the RecaptchaV3Config to update. Example: `site_secret`. |

**Request body**: `GoogleFirebaseAppcheckV1RecaptchaV3Config`

**Response**: `GoogleFirebaseAppcheckV1RecaptchaV3Config`

```typescript
const res = await firebaseappcheck.recaptchaV3Config.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.projects.services.get`

**GET** `v1/{+name}`

Gets the Service configuration for the specified service name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The relative resource name of the Service to retrieve, in the format: ``` projects/{project_number}/service... |

**Response**: `GoogleFirebaseAppcheckV1Service`

```typescript
const res = await firebaseappcheck.services.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.projects.services.batchUpdate`

**POST** `v1/{+parent}/services:batchUpdate`

Atomically updates the specified Service configurations.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent project name shared by all Service configurations being updated, in the format ``` projects/{pro... |

**Request body**: `GoogleFirebaseAppcheckV1BatchUpdateServicesRequest`

**Response**: `GoogleFirebaseAppcheckV1BatchUpdateServicesResponse`

```typescript
const res = await firebaseappcheck.services.batchUpdate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.projects.services.list`

**GET** `v1/{+parent}/services`

Lists all Service configurations for the specified project. Only Services which were explicitly configured using UpdateService or BatchUpdateServices will be returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The relative resource name of the parent project for which to list each associated Service, in the format: ... |
| `pageSize` | `integer` | query | No | The maximum number of Services to return in the response. Only explicitly configured services are returned. The serve... |
| `pageToken` | `string` | query | No | Token returned from a previous call to ListServices indicating where in the set of Services to resume listing. Provid... |

**Response**: `GoogleFirebaseAppcheckV1ListServicesResponse`

```typescript
const res = await firebaseappcheck.services.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.projects.services.patch`

**PATCH** `v1/{+name}`

Updates the specified Service configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The relative resource name of the service configuration object, in the format: ``` projects/{project_number... |
| `updateMask` | `string` | query | No | Required. A comma-separated list of names of fields in the Service to update. Example: `enforcement_mode`. |

**Request body**: `GoogleFirebaseAppcheckV1Service`

**Response**: `GoogleFirebaseAppcheckV1Service`

```typescript
const res = await firebaseappcheck.services.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.projects.services.resourcePolicies.create`

**POST** `v1/{+parent}/resourcePolicies`

Creates the specified ResourcePolicy configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The relative resource name of the parent Service in which the specified ResourcePolicy will be created, in ... |

**Request body**: `GoogleFirebaseAppcheckV1ResourcePolicy`

**Response**: `GoogleFirebaseAppcheckV1ResourcePolicy`

```typescript
const res = await firebaseappcheck.resourcePolicies.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.projects.services.resourcePolicies.batchUpdate`

**POST** `v1/{+parent}/resourcePolicies:batchUpdate`

Atomically updates the specified ResourcePolicy configurations.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent service name, in the format ``` projects/{project_number}/services/{service_id} ``` The parent c... |

**Request body**: `GoogleFirebaseAppcheckV1BatchUpdateResourcePoliciesRequest`

**Response**: `GoogleFirebaseAppcheckV1BatchUpdateResourcePoliciesResponse`

```typescript
const res = await firebaseappcheck.resourcePolicies.batchUpdate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.projects.services.resourcePolicies.get`

**GET** `v1/{+name}`

Gets the requested ResourcePolicy configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The relative resource name of the ResourcePolicy to retrieve, in the format: ``` projects/{project_number}/... |

**Response**: `GoogleFirebaseAppcheckV1ResourcePolicy`

```typescript
const res = await firebaseappcheck.resourcePolicies.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.projects.services.resourcePolicies.list`

**GET** `v1/{+parent}/resourcePolicies`

Lists all ResourcePolicy configurations for the specified project and service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The relative resource name of the parent Service for which to list each associated ResourcePolicy, in the f... |
| `filter` | `string` | query | No | Optional. Filters the results by the specified rule. For the exact syntax of this field, please consult the [AIP-160]... |
| `pageSize` | `integer` | query | No | The maximum number of ResourcePolicy objects to return in the response. The server may return fewer than this at its ... |
| `pageToken` | `string` | query | No | Token returned from a previous call to ListResourcePolicies indicating where in the set of ResourcePolicy objects to ... |

**Response**: `GoogleFirebaseAppcheckV1ListResourcePoliciesResponse`

```typescript
const res = await firebaseappcheck.resourcePolicies.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.projects.services.resourcePolicies.patch`

**PATCH** `v1/{+name}`

Updates the specified ResourcePolicy configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Identifier. The relative name of the resource policy object, in the format: ``` projects/{project_number}/s... |
| `updateMask` | `string` | query | No | Required. A comma-separated list of names of fields in the ResourcePolicy to update. Example: `enforcement_mode`. |

**Request body**: `GoogleFirebaseAppcheckV1ResourcePolicy`

**Response**: `GoogleFirebaseAppcheckV1ResourcePolicy`

```typescript
const res = await firebaseappcheck.resourcePolicies.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebaseappcheck.projects.services.resourcePolicies.delete`

**DELETE** `v1/{+name}`

Deletes the specified ResourcePolicy configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The relative resource name of the ResourcePolicy to delete, in the format: ``` projects/{project_number}/se... |
| `etag` | `string` | query | No | The checksum to be validated against the current ResourcePolicy, to ensure the client has an up-to-date value before ... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await firebaseappcheck.resourcePolicies.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

## Schemas

### `GoogleFirebaseAppcheckV1AppAttestConfig`

An app's App Attest configuration object. This configuration controls certain properties of the `AppCheckToken` returned by ExchangeAppAttestAttestation and ExchangeAppAttestAssertion, such as its ttl. Note that the Team ID registered with your app is used as part of the validation process. Please register it via the Firebase Console or programmatically via the [Firebase Management Service](https://firebase.google.com/docs/projects/api/reference/rest/v11/projects.iosApps/patch).

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. The relative resource name of the App Attest configuration object, in the format: ``` p... |
| `tokenTtl` | `string` | Specifies the duration for which App Check tokens exchanged from App Attest artifacts will be val... |

### `GoogleFirebaseAppcheckV1AppCheckToken`

Encapsulates an *App Check token*, which are used to access backend services protected by App Check.

| Property | Type | Description |
|----------|------|-------------|
| `token` | `string` | The App Check token. App Check tokens are signed [JWTs](https://tools.ietf.org/html/rfc7519) cont... |
| `ttl` | `string` | The duration from the time this token is minted until its expiration. This field is intended to e... |

### `GoogleFirebaseAppcheckV1BatchGetAppAttestConfigsResponse`

Response message for the BatchGetAppAttestConfigs method.

| Property | Type | Description |
|----------|------|-------------|
| `configs` | `array<GoogleFirebaseAppcheckV1AppAttestConfig>` | AppAttestConfigs retrieved. |

### `GoogleFirebaseAppcheckV1BatchGetDeviceCheckConfigsResponse`

Response message for the BatchGetDeviceCheckConfigs method.

| Property | Type | Description |
|----------|------|-------------|
| `configs` | `array<GoogleFirebaseAppcheckV1DeviceCheckConfig>` | DeviceCheckConfigs retrieved. |

### `GoogleFirebaseAppcheckV1BatchGetPlayIntegrityConfigsResponse`

Response message for the BatchGetPlayIntegrityConfigs method.

| Property | Type | Description |
|----------|------|-------------|
| `configs` | `array<GoogleFirebaseAppcheckV1PlayIntegrityConfig>` | PlayIntegrityConfigs retrieved. |

### `GoogleFirebaseAppcheckV1BatchGetRecaptchaEnterpriseConfigsResponse`

Response message for the BatchGetRecaptchaEnterpriseConfigs method.

| Property | Type | Description |
|----------|------|-------------|
| `configs` | `array<GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig>` | RecaptchaEnterpriseConfigs retrieved. |

### `GoogleFirebaseAppcheckV1BatchGetRecaptchaV3ConfigsResponse`

Response message for the BatchGetRecaptchaV3Configs method.

| Property | Type | Description |
|----------|------|-------------|
| `configs` | `array<GoogleFirebaseAppcheckV1RecaptchaV3Config>` | RecaptchaV3Configs retrieved. |

### `GoogleFirebaseAppcheckV1BatchGetSafetyNetConfigsResponse`

Response message for the BatchGetSafetyNetConfigs method.

| Property | Type | Description |
|----------|------|-------------|
| `configs` | `array<GoogleFirebaseAppcheckV1SafetyNetConfig>` | SafetyNetConfigs retrieved. |

### `GoogleFirebaseAppcheckV1BatchUpdateResourcePoliciesRequest`

Request message for the BatchUpdateResourcePolicies method.

| Property | Type | Description |
|----------|------|-------------|
| `requests` | `array<GoogleFirebaseAppcheckV1UpdateResourcePolicyRequest>` | Required. The request messages specifying the ResourcePolicy objects to update. A maximum of 100 ... |
| `updateMask` | `string` | Optional. A comma-separated list of names of fields in the ResourcePolicy objects to update. Exam... |

### `GoogleFirebaseAppcheckV1BatchUpdateResourcePoliciesResponse`

Response message for the BatchUpdateResourcePolicies method.

| Property | Type | Description |
|----------|------|-------------|
| `resourcePolicies` | `array<GoogleFirebaseAppcheckV1ResourcePolicy>` | ResourcePolicy objects after the updates have been applied. |

### `GoogleFirebaseAppcheckV1BatchUpdateServicesRequest`

Request message for the BatchUpdateServices method.

| Property | Type | Description |
|----------|------|-------------|
| `requests` | `array<GoogleFirebaseAppcheckV1UpdateServiceRequest>` | Required. The request messages specifying the Services to update. A maximum of 100 objects can be... |
| `updateMask` | `string` | Optional. A comma-separated list of names of fields in the Services to update. Example: `display_... |

### `GoogleFirebaseAppcheckV1BatchUpdateServicesResponse`

Response message for the BatchUpdateServices method.

| Property | Type | Description |
|----------|------|-------------|
| `services` | `array<GoogleFirebaseAppcheckV1Service>` | Service objects after the updates have been applied. |

### `GoogleFirebaseAppcheckV1DebugToken`

A *debug token* is a secret used during the development or integration testing of an app. It essentially allows the development or integration testing to bypass app attestation while still allowing App Check to enforce protection on supported production Firebase services.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Required. A human readable display name used to identify this debug token. |
| `name` | `string` | Required. The relative resource name of the debug token, in the format: ``` projects/{project_num... |
| `token` | `string` | Required. Input only. Immutable. The secret token itself. Must be provided during creation, and m... |
| `updateTime` | `string` | Output only. Timestamp when this debug token was most recently updated. |

### `GoogleFirebaseAppcheckV1DeviceCheckConfig`

An app's DeviceCheck configuration object. This configuration is used by ExchangeDeviceCheckToken to validate device tokens issued to apps by DeviceCheck. It also controls certain properties of the returned `AppCheckToken`, such as its ttl. Note that the Team ID registered with your app is used as part of the validation process. Please register it via the Firebase Console or programmatically via the [Firebase Management Service](https://firebase.google.com/docs/projects/api/reference/rest/v11/projects.iosApps/patch).

| Property | Type | Description |
|----------|------|-------------|
| `keyId` | `string` | Required. The key identifier of a private key enabled with DeviceCheck, created in your Apple Dev... |
| `name` | `string` | Required. The relative resource name of the DeviceCheck configuration object, in the format: ``` ... |
| `privateKey` | `string` | Required. Input only. The contents of the private key (`.p8`) file associated with the key specif... |
| `privateKeySet` | `boolean` | Output only. Whether the `private_key` field was previously set. Since we will never return the `... |
| `tokenTtl` | `string` | Specifies the duration for which App Check tokens exchanged from DeviceCheck tokens will be valid... |

### `GoogleFirebaseAppcheckV1ExchangeAppAttestAssertionRequest`

Request message for the ExchangeAppAttestAssertion method.

| Property | Type | Description |
|----------|------|-------------|
| `artifact` | `string` | Required. The artifact returned by a previous call to ExchangeAppAttestAttestation. |
| `assertion` | `string` | Required. The CBOR-encoded assertion returned by the client-side App Attest API. |
| `challenge` | `string` | Required. A one-time challenge returned by an immediately prior call to GenerateAppAttestChallenge. |
| `limitedUse` | `boolean` | Specifies whether this attestation is for use in a *limited use* (`true`) or *session based* (`fa... |

### `GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationRequest`

Request message for the ExchangeAppAttestAttestation method.

| Property | Type | Description |
|----------|------|-------------|
| `attestationStatement` | `string` | Required. The App Attest statement returned by the client-side App Attest API. This is a base64ur... |
| `challenge` | `string` | Required. A one-time challenge returned by an immediately prior call to GenerateAppAttestChallenge. |
| `keyId` | `string` | Required. The key ID generated by App Attest for the client app. |
| `limitedUse` | `boolean` | Specifies whether this attestation is for use in a *limited use* (`true`) or *session based* (`fa... |

### `GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationResponse`

Response message for the ExchangeAppAttestAttestation method.

| Property | Type | Description |
|----------|------|-------------|
| `appCheckToken` | `GoogleFirebaseAppcheckV1AppCheckToken` | Encapsulates an App Check token. |
| `artifact` | `string` | An artifact that can be used in future calls to ExchangeAppAttestAssertion. |

### `GoogleFirebaseAppcheckV1ExchangeCustomTokenRequest`

Request message for the ExchangeCustomToken method.

| Property | Type | Description |
|----------|------|-------------|
| `customToken` | `string` | Required. A custom token signed using your project's Admin SDK service account credentials. |
| `limitedUse` | `boolean` | Specifies whether this attestation is for use in a *limited use* (`true`) or *session based* (`fa... |

### `GoogleFirebaseAppcheckV1ExchangeDebugTokenRequest`

Request message for the ExchangeDebugToken method.

| Property | Type | Description |
|----------|------|-------------|
| `debugToken` | `string` | Required. A debug token secret. This string must match a debug token secret previously created us... |
| `limitedUse` | `boolean` | Specifies whether this attestation is for use in a *limited use* (`true`) or *session based* (`fa... |

### `GoogleFirebaseAppcheckV1ExchangeDeviceCheckTokenRequest`

Request message for the ExchangeDeviceCheckToken method.

| Property | Type | Description |
|----------|------|-------------|
| `deviceToken` | `string` | Required. The `device_token` as returned by Apple's client-side [DeviceCheck API](https://develop... |
| `limitedUse` | `boolean` | Specifies whether this attestation is for use in a *limited use* (`true`) or *session based* (`fa... |

### `GoogleFirebaseAppcheckV1ExchangePlayIntegrityTokenRequest`

Request message for the ExchangePlayIntegrityToken method.

| Property | Type | Description |
|----------|------|-------------|
| `limitedUse` | `boolean` | Specifies whether this attestation is for use in a *limited use* (`true`) or *session based* (`fa... |
| `playIntegrityToken` | `string` | Required. The [integrity verdict response token from Play Integrity](https://developer.android.co... |

### `GoogleFirebaseAppcheckV1ExchangeRecaptchaEnterpriseTokenRequest`

Request message for the ExchangeRecaptchaEnterpriseToken method.

| Property | Type | Description |
|----------|------|-------------|
| `limitedUse` | `boolean` | Specifies whether this attestation is for use in a *limited use* (`true`) or *session based* (`fa... |
| `recaptchaEnterpriseToken` | `string` | Required. The reCAPTCHA token as returned by the [reCAPTCHA Enterprise JavaScript API](https://cl... |

### `GoogleFirebaseAppcheckV1ExchangeRecaptchaV3TokenRequest`

Request message for the ExchangeRecaptchaV3Token method.

| Property | Type | Description |
|----------|------|-------------|
| `limitedUse` | `boolean` | Specifies whether this attestation is for use in a *limited use* (`true`) or *session based* (`fa... |
| `recaptchaV3Token` | `string` | Required. The reCAPTCHA token as returned by the [reCAPTCHA v3 JavaScript API](https://developers... |

### `GoogleFirebaseAppcheckV1ExchangeSafetyNetTokenRequest`

Request message for the ExchangeSafetyNetToken method.

| Property | Type | Description |
|----------|------|-------------|
| `safetyNetToken` | `string` | Required. The [SafetyNet attestation response](https://developer.android.com/training/safetynet/a... |

### `GoogleFirebaseAppcheckV1GenerateAppAttestChallengeRequest`

Request message for the GenerateAppAttestChallenge method.

### `GoogleFirebaseAppcheckV1GenerateAppAttestChallengeResponse`

Response message for the GenerateAppAttestChallenge method.

| Property | Type | Description |
|----------|------|-------------|
| `challenge` | `string` | A one-time use challenge for the client to pass to the App Attest API. |
| `ttl` | `string` | The duration from the time this challenge is minted until its expiration. This field is intended ... |

### `GoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeRequest`

Request message for the GeneratePlayIntegrityChallenge method.

### `GoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeResponse`

Response message for the GeneratePlayIntegrityChallenge method.

| Property | Type | Description |
|----------|------|-------------|
| `challenge` | `string` | A one-time use [challenge](https://developer.android.com/google/play/integrity/verdict#protect-ag... |
| `ttl` | `string` | The duration from the time this challenge is minted until its expiration. This field is intended ... |

### `GoogleFirebaseAppcheckV1ListDebugTokensResponse`

Response message for the ListDebugTokens method.

| Property | Type | Description |
|----------|------|-------------|
| `debugTokens` | `array<GoogleFirebaseAppcheckV1DebugToken>` | The DebugTokens retrieved. |
| `nextPageToken` | `string` | If the result list is too large to fit in a single response, then a token is returned. If the str... |

### `GoogleFirebaseAppcheckV1ListResourcePoliciesResponse`

Response message for the ListResourcePolicies method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If the result list is too large to fit in a single response, then a token is returned. If the str... |
| `resourcePolicies` | `array<GoogleFirebaseAppcheckV1ResourcePolicy>` | The ResourcePolicy objects retrieved. |

### `GoogleFirebaseAppcheckV1ListServicesResponse`

Response message for the ListServices method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If the result list is too large to fit in a single response, then a token is returned. If the str... |
| `services` | `array<GoogleFirebaseAppcheckV1Service>` | The Services retrieved. |

### `GoogleFirebaseAppcheckV1PlayIntegrityConfig`

An app's Play Integrity configuration object. This configuration controls certain properties of the `AppCheckToken` returned by ExchangePlayIntegrityToken, such as its ttl. Note that your registered SHA-256 certificate fingerprints are used to validate tokens issued by the Play Integrity API; please register them via the Firebase Console or programmatically via the [Firebase Management Service](https://firebase.google.com/docs/projects/api/reference/rest/v1beta1/projects.androidApps.sha/create).

| Property | Type | Description |
|----------|------|-------------|
| `accountDetails` | `GoogleFirebaseAppcheckV1PlayIntegrityConfigAccountDetails` | Specifies account requirements for Android devices running your app. These settings correspond to... |
| `appIntegrity` | `GoogleFirebaseAppcheckV1PlayIntegrityConfigAppIntegrity` | Specifies application integrity requirements for Android devices running your app. These settings... |
| `deviceIntegrity` | `GoogleFirebaseAppcheckV1PlayIntegrityConfigDeviceIntegrity` | Specifies device integrity requirements for Android devices running your app. These settings corr... |
| `name` | `string` | Required. The relative resource name of the Play Integrity configuration object, in the format: `... |
| `tokenTtl` | `string` | Specifies the duration for which App Check tokens exchanged from Play Integrity tokens will be va... |

### `GoogleFirebaseAppcheckV1PlayIntegrityConfigAccountDetails`

A settings object specifying account requirements for Android devices running your app. These settings correspond to requirements on the [**account details** field](https://developer.android.com/google/play/integrity/verdicts#account-details-field) obtained from the Play Integrity API. See the [default responses table](https://developer.android.com/google/play/integrity/setup#default) for a quick summary. The default values for these settings work for most apps, and are recommended.

| Property | Type | Description |
|----------|------|-------------|
| `requireLicensed` | `boolean` | Specifies whether the caller must have received the [`LICENSED` verdict](https://developer.androi... |

### `GoogleFirebaseAppcheckV1PlayIntegrityConfigAppIntegrity`

A settings object specifying application integrity requirements for Android devices running your app. These settings correspond to requirements on the [**application integrity** field](https://developer.android.com/google/play/integrity/verdicts#application-integrity-field) obtained from the Play Integrity API. See the [default responses table](https://developer.android.com/google/play/integrity/setup#default) for a quick summary. The default values for these settings work for most apps, and are recommended.

| Property | Type | Description |
|----------|------|-------------|
| `allowUnrecognizedVersion` | `boolean` | Specifies whether your running app is allowed to have the `UNRECOGNIZED_VERSION` [app recognition... |

### `GoogleFirebaseAppcheckV1PlayIntegrityConfigDeviceIntegrity`

A settings object specifying device integrity requirements for Android devices running your app. These settings correspond to requirements on the [**device integrity** field](https://developer.android.com/google/play/integrity/verdicts#device-integrity-field) obtained from the Play Integrity API. See the [default responses table](https://developer.android.com/google/play/integrity/setup#default) for a quick summary. Warning: There are also [conditional](https://developer.android.com/google/play/integrity/setup#conditional) as well as [optional](https://developer.android.com/google/play/integrity/setup#optional_device_information) responses that you can receive, but requires additional explicit opt-in from you. The App Check API is **not** responsible for any such opt-ins. The default values for these settings work for most apps, and are recommended.

| Property | Type | Description |
|----------|------|-------------|
| `minDeviceRecognitionLevel` | `string` | Specifies the minimum device integrity level in order for the device to be considered valid. Any ... |

### `GoogleFirebaseAppcheckV1PublicJwk`

A JWK as specified by [section 4 of RFC 7517](https://tools.ietf.org/html/rfc7517#section-4) and [section 6.3.1 of RFC 7518](https://tools.ietf.org/html/rfc7518#section-6.3.1).

| Property | Type | Description |
|----------|------|-------------|
| `alg` | `string` | See [section 4.4 of RFC 7517](https://tools.ietf.org/html/rfc7517#section-4.4). |
| `e` | `string` | See [section 6.3.1.2 of RFC 7518](https://tools.ietf.org/html/rfc7518#section-6.3.1.2). |
| `kid` | `string` | See [section 4.5 of RFC 7517](https://tools.ietf.org/html/rfc7517#section-4.5). |
| `kty` | `string` | See [section 4.1 of RFC 7517](https://tools.ietf.org/html/rfc7517#section-4.1). |
| `n` | `string` | See [section 6.3.1.1 of RFC 7518](https://tools.ietf.org/html/rfc7518#section-6.3.1.1). |
| `use` | `string` | See [section 4.2 of RFC 7517](https://tools.ietf.org/html/rfc7517#section-4.2). |

### `GoogleFirebaseAppcheckV1PublicJwkSet`

The currently active set of public keys that can be used to verify App Check tokens. This object is a JWK set as specified by [section 5 of RFC 7517](https://tools.ietf.org/html/rfc7517#section-5). For security, the response **must not** be cached for longer than six hours.

| Property | Type | Description |
|----------|------|-------------|
| `keys` | `array<GoogleFirebaseAppcheckV1PublicJwk>` | The set of public keys. See [section 5.1 of RFC 7517](https://tools.ietf.org/html/rfc7517#section... |

### `GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig`

An app's reCAPTCHA Enterprise configuration object. This configuration is used by ExchangeRecaptchaEnterpriseToken to validate reCAPTCHA tokens issued to apps by reCAPTCHA Enterprise. It also controls certain properties of the returned `AppCheckToken`, such as its ttl.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. The relative resource name of the reCAPTCHA Enterprise configuration object, in the for... |
| `riskAnalysis` | `GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfigRiskAnalysis` | Specifies risk tolerance and requirements for your application. These settings correspond to requ... |
| `siteKey` | `string` | The score-based site key [created in reCAPTCHA Enterprise](https://cloud.google.com/recaptcha-ent... |
| `tokenTtl` | `string` | Specifies the duration for which App Check tokens exchanged from reCAPTCHA Enterprise tokens will... |

### `GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfigRiskAnalysis`

A settings object specifying risk tolerance and requirements for your application. These settings correspond to requirements on the [**`riskAnalysis`**](https://cloud.google.com/recaptcha/docs/interpret-assessment-website#interpret_assessment) tuple in the assessment obtained from reCAPTCHA Enterprise. The default values for these settings work for most apps, and are recommended.

| Property | Type | Description |
|----------|------|-------------|
| `minValidScore` | `number` | Specifies a minimum score required for a reCAPTCHA token to be considered valid. If its score is ... |

### `GoogleFirebaseAppcheckV1RecaptchaV3Config`

An app's reCAPTCHA v3 configuration object. This configuration is used by ExchangeRecaptchaV3Token to validate reCAPTCHA tokens issued to apps by reCAPTCHA v3. It also controls certain properties of the returned `AppCheckToken`, such as its ttl.

| Property | Type | Description |
|----------|------|-------------|
| `minValidScore` | `number` | Specifies a minimum score required for a reCAPTCHA token to be considered valid. If its score is ... |
| `name` | `string` | Required. The relative resource name of the reCAPTCHA v3 configuration object, in the format: ```... |
| `siteSecret` | `string` | Required. Input only. The site secret used to identify your service for reCAPTCHA v3 verification... |
| `siteSecretSet` | `boolean` | Output only. Whether the `site_secret` field was previously set. Since we will never return the `... |
| `tokenTtl` | `string` | Specifies the duration for which App Check tokens exchanged from reCAPTCHA tokens will be valid. ... |

### `GoogleFirebaseAppcheckV1ResourcePolicy`

App Check enforcement policy for a specific resource of a Google service supported by App Check. Note that this policy will override the service-level configuration.

| Property | Type | Description |
|----------|------|-------------|
| `enforcementMode` | `string` | Required. The App Check enforcement mode for this resource. This will override the App Check over... |
| `etag` | `string` | This checksum is computed by the server based on the value of other fields, and may be sent on up... |
| `name` | `string` | Required. Identifier. The relative name of the resource policy object, in the format: ``` project... |
| `targetResource` | `string` | Required. Service specific name of the resource object to which this policy applies, in the forma... |
| `updateTime` | `string` | Output only. Timestamp when this resource policy configuration object was most recently updated. |

### `GoogleFirebaseAppcheckV1SafetyNetConfig`

An app's SafetyNet configuration object. This configuration controls certain properties of the `AppCheckToken` returned by ExchangeSafetyNetToken, such as its ttl. Note that your registered SHA-256 certificate fingerprints are used to validate tokens issued by SafetyNet; please register them via the Firebase Console or programmatically via the [Firebase Management Service](https://firebase.google.com/docs/projects/api/reference/rest/v11/projects.androidApps.sha/create).

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. The relative resource name of the SafetyNet configuration object, in the format: ``` pr... |
| `tokenTtl` | `string` | Specifies the duration for which App Check tokens exchanged from SafetyNet tokens will be valid. ... |

### `GoogleFirebaseAppcheckV1Service`

The enforcement configuration for a Firebase service supported by App Check.

| Property | Type | Description |
|----------|------|-------------|
| `enforcementMode` | `string` | Required. The App Check enforcement mode for this service. |
| `name` | `string` | Required. The relative resource name of the service configuration object, in the format: ``` proj... |

### `GoogleFirebaseAppcheckV1UpdateResourcePolicyRequest`

Request message for the UpdateResourcePolicy method as well as an individual update message for the BatchUpdateResourcePolicies method.

| Property | Type | Description |
|----------|------|-------------|
| `resourcePolicy` | `GoogleFirebaseAppcheckV1ResourcePolicy` | Required. The ResourcePolicy to update. The ResourcePolicy's `name` field is used to identify the... |
| `updateMask` | `string` | Required. A comma-separated list of names of fields in the ResourcePolicy to update. Example: `en... |

### `GoogleFirebaseAppcheckV1UpdateServiceRequest`

Request message for the UpdateService method as well as an individual update message for the BatchUpdateServices method.

| Property | Type | Description |
|----------|------|-------------|
| `service` | `GoogleFirebaseAppcheckV1Service` | Required. The Service to update. The Service's `name` field is used to identify the Service to be... |
| `updateMask` | `string` | Required. A comma-separated list of names of fields in the Service to update. Example: `enforceme... |

### `GoogleProtobufEmpty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

