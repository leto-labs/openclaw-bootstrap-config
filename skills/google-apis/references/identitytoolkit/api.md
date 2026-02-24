# Google Identity Toolkit API - API Reference

**Version**: `v3` | **Methods**: 20 | **Schemas**: 40

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `identitytoolkit.relyingparty.getOobConfirmationCode` | POST | `getOobConfirmationCode` | Get a code for user action confirmation. |
| `identitytoolkit.relyingparty.getAccountInfo` | POST | `getAccountInfo` | Returns the account info. |
| `identitytoolkit.relyingparty.sendVerificationCode` | POST | `sendVerificationCode` | Send SMS verification code. |
| `identitytoolkit.relyingparty.downloadAccount` | POST | `downloadAccount` | Batch download user accounts. |
| `identitytoolkit.relyingparty.getRecaptchaParam` | GET | `getRecaptchaParam` | Get recaptcha secure param. |
| `identitytoolkit.relyingparty.deleteAccount` | POST | `deleteAccount` | Delete user account. |
| `identitytoolkit.relyingparty.signOutUser` | POST | `signOutUser` | Sign out user. |
| `identitytoolkit.relyingparty.createAuthUri` | POST | `createAuthUri` | Creates the URI used by the IdP to authenticate the user. |
| `identitytoolkit.relyingparty.uploadAccount` | POST | `uploadAccount` | Batch upload existing user accounts. |
| `identitytoolkit.relyingparty.getProjectConfig` | GET | `getProjectConfig` | Get project configuration. |
| `identitytoolkit.relyingparty.verifyAssertion` | POST | `verifyAssertion` | Verifies the assertion returned by the IdP. |
| `identitytoolkit.relyingparty.resetPassword` | POST | `resetPassword` | Reset password for a user. |
| `identitytoolkit.relyingparty.verifyPhoneNumber` | POST | `verifyPhoneNumber` | Verifies ownership of a phone number and creates/updates the user account accordingly. |
| `identitytoolkit.relyingparty.signupNewUser` | POST | `signupNewUser` | Signup new user. |
| `identitytoolkit.relyingparty.verifyCustomToken` | POST | `verifyCustomToken` | Verifies the developer asserted ID token. |
| `identitytoolkit.relyingparty.getPublicKeys` | GET | `publicKeys` | Get token signing public key. |
| `identitytoolkit.relyingparty.setProjectConfig` | POST | `setProjectConfig` | Set project configuration. |
| `identitytoolkit.relyingparty.emailLinkSignin` | POST | `emailLinkSignin` | Reset password for a user. |
| `identitytoolkit.relyingparty.verifyPassword` | POST | `verifyPassword` | Verifies the user entered password. |
| `identitytoolkit.relyingparty.setAccountInfo` | POST | `setAccountInfo` | Set account info for a user. |

### `identitytoolkit.relyingparty.getOobConfirmationCode`

**POST** `getOobConfirmationCode`

Get a code for user action confirmation.

**Request body**: `Relyingparty`

**Response**: `GetOobConfirmationCodeResponse`

```typescript
const res = await identitytoolkit.relyingparty.getOobConfirmationCode({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `identitytoolkit.relyingparty.getAccountInfo`

**POST** `getAccountInfo`

Returns the account info.

**Request body**: `IdentitytoolkitRelyingpartyGetAccountInfoRequest`

**Response**: `GetAccountInfoResponse`

```typescript
const res = await identitytoolkit.relyingparty.getAccountInfo({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `identitytoolkit.relyingparty.sendVerificationCode`

**POST** `sendVerificationCode`

Send SMS verification code.

**Request body**: `IdentitytoolkitRelyingpartySendVerificationCodeRequest`

**Response**: `IdentitytoolkitRelyingpartySendVerificationCodeResponse`

```typescript
const res = await identitytoolkit.relyingparty.sendVerificationCode({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `identitytoolkit.relyingparty.downloadAccount`

**POST** `downloadAccount`

Batch download user accounts.

**Request body**: `IdentitytoolkitRelyingpartyDownloadAccountRequest`

**Response**: `DownloadAccountResponse`

```typescript
const res = await identitytoolkit.relyingparty.downloadAccount({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `identitytoolkit.relyingparty.getRecaptchaParam`

**GET** `getRecaptchaParam`

Get recaptcha secure param.

**Response**: `GetRecaptchaParamResponse`

```typescript
const res = await identitytoolkit.relyingparty.getRecaptchaParam({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `identitytoolkit.relyingparty.deleteAccount`

**POST** `deleteAccount`

Delete user account.

**Request body**: `IdentitytoolkitRelyingpartyDeleteAccountRequest`

**Response**: `DeleteAccountResponse`

```typescript
const res = await identitytoolkit.relyingparty.deleteAccount({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `identitytoolkit.relyingparty.signOutUser`

**POST** `signOutUser`

Sign out user.

**Request body**: `IdentitytoolkitRelyingpartySignOutUserRequest`

**Response**: `IdentitytoolkitRelyingpartySignOutUserResponse`

```typescript
const res = await identitytoolkit.relyingparty.signOutUser({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `identitytoolkit.relyingparty.createAuthUri`

**POST** `createAuthUri`

Creates the URI used by the IdP to authenticate the user.

**Request body**: `IdentitytoolkitRelyingpartyCreateAuthUriRequest`

**Response**: `CreateAuthUriResponse`

```typescript
const res = await identitytoolkit.relyingparty.createAuthUri({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `identitytoolkit.relyingparty.uploadAccount`

**POST** `uploadAccount`

Batch upload existing user accounts.

**Request body**: `IdentitytoolkitRelyingpartyUploadAccountRequest`

**Response**: `UploadAccountResponse`

```typescript
const res = await identitytoolkit.relyingparty.uploadAccount({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `identitytoolkit.relyingparty.getProjectConfig`

**GET** `getProjectConfig`

Get project configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `delegatedProjectNumber` | `string` | query | No | Delegated GCP project number of the request. |
| `projectNumber` | `string` | query | No | GCP project number of the request. |

**Response**: `IdentitytoolkitRelyingpartyGetProjectConfigResponse`

```typescript
const res = await identitytoolkit.relyingparty.getProjectConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `identitytoolkit.relyingparty.verifyAssertion`

**POST** `verifyAssertion`

Verifies the assertion returned by the IdP.

**Request body**: `IdentitytoolkitRelyingpartyVerifyAssertionRequest`

**Response**: `VerifyAssertionResponse`

```typescript
const res = await identitytoolkit.relyingparty.verifyAssertion({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `identitytoolkit.relyingparty.resetPassword`

**POST** `resetPassword`

Reset password for a user.

**Request body**: `IdentitytoolkitRelyingpartyResetPasswordRequest`

**Response**: `ResetPasswordResponse`

```typescript
const res = await identitytoolkit.relyingparty.resetPassword({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `identitytoolkit.relyingparty.verifyPhoneNumber`

**POST** `verifyPhoneNumber`

Verifies ownership of a phone number and creates/updates the user account accordingly.

**Request body**: `IdentitytoolkitRelyingpartyVerifyPhoneNumberRequest`

**Response**: `IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse`

```typescript
const res = await identitytoolkit.relyingparty.verifyPhoneNumber({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `identitytoolkit.relyingparty.signupNewUser`

**POST** `signupNewUser`

Signup new user.

**Request body**: `IdentitytoolkitRelyingpartySignupNewUserRequest`

**Response**: `SignupNewUserResponse`

```typescript
const res = await identitytoolkit.relyingparty.signupNewUser({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `identitytoolkit.relyingparty.verifyCustomToken`

**POST** `verifyCustomToken`

Verifies the developer asserted ID token.

**Request body**: `IdentitytoolkitRelyingpartyVerifyCustomTokenRequest`

**Response**: `VerifyCustomTokenResponse`

```typescript
const res = await identitytoolkit.relyingparty.verifyCustomToken({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `identitytoolkit.relyingparty.getPublicKeys`

**GET** `publicKeys`

Get token signing public key.

**Response**: `IdentitytoolkitRelyingpartyGetPublicKeysResponse`

```typescript
const res = await identitytoolkit.relyingparty.getPublicKeys({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `identitytoolkit.relyingparty.setProjectConfig`

**POST** `setProjectConfig`

Set project configuration.

**Request body**: `IdentitytoolkitRelyingpartySetProjectConfigRequest`

**Response**: `IdentitytoolkitRelyingpartySetProjectConfigResponse`

```typescript
const res = await identitytoolkit.relyingparty.setProjectConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `identitytoolkit.relyingparty.emailLinkSignin`

**POST** `emailLinkSignin`

Reset password for a user.

**Request body**: `IdentitytoolkitRelyingpartyEmailLinkSigninRequest`

**Response**: `EmailLinkSigninResponse`

```typescript
const res = await identitytoolkit.relyingparty.emailLinkSignin({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `identitytoolkit.relyingparty.verifyPassword`

**POST** `verifyPassword`

Verifies the user entered password.

**Request body**: `IdentitytoolkitRelyingpartyVerifyPasswordRequest`

**Response**: `VerifyPasswordResponse`

```typescript
const res = await identitytoolkit.relyingparty.verifyPassword({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `identitytoolkit.relyingparty.setAccountInfo`

**POST** `setAccountInfo`

Set account info for a user.

**Request body**: `IdentitytoolkitRelyingpartySetAccountInfoRequest`

**Response**: `SetAccountInfoResponse`

```typescript
const res = await identitytoolkit.relyingparty.setAccountInfo({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `CreateAuthUriResponse`

Response of creating the IDP authentication URL.

| Property | Type | Description |
|----------|------|-------------|
| `allProviders` | `array<string>` | all providers the user has once used to do federated login |
| `authUri` | `string` | The URI used by the IDP to authenticate the user. |
| `captchaRequired` | `boolean` | True if captcha is required. |
| `forExistingProvider` | `boolean` | True if the authUri is for user's existing provider. |
| `kind` | `string` | The fixed string identitytoolkit#CreateAuthUriResponse". |
| `providerId` | `string` | The provider ID of the auth URI. |
| `registered` | `boolean` | Whether the user is registered if the identifier is an email. |
| `sessionId` | `string` | Session ID which should be passed in the following verifyAssertion request. |
| `signinMethods` | `array<string>` | All sign-in methods this user has used. |

### `DeleteAccountResponse`

Respone of deleting account.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | The fixed string "identitytoolkit#DeleteAccountResponse". |

### `DownloadAccountResponse`

Response of downloading accounts in batch.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | The fixed string "identitytoolkit#DownloadAccountResponse". |
| `nextPageToken` | `string` | The next page token. To be used in a subsequent request to return the next page of results. |
| `users` | `array<UserInfo>` | The user accounts data. |

### `EmailLinkSigninResponse`

Response of email signIn.

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | The user's email. |
| `expiresIn` | `string` | Expiration time of STS id token in seconds. |
| `idToken` | `string` | The STS id token to login the newly signed in user. |
| `isNewUser` | `boolean` | Whether the user is new. |
| `kind` | `string` | The fixed string "identitytoolkit#EmailLinkSigninResponse". |
| `localId` | `string` | The RP local ID of the user. |
| `refreshToken` | `string` | The refresh token for the signed in user. |

### `EmailTemplate`

Template for an email template.

| Property | Type | Description |
|----------|------|-------------|
| `body` | `string` | Email body. |
| `format` | `string` | Email body format. |
| `from` | `string` | From address of the email. |
| `fromDisplayName` | `string` | From display name. |
| `replyTo` | `string` | Reply-to address. |
| `subject` | `string` | Subject of the email. |

### `GetAccountInfoResponse`

Response of getting account information.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | The fixed string "identitytoolkit#GetAccountInfoResponse". |
| `users` | `array<UserInfo>` | The info of the users. |

### `GetOobConfirmationCodeResponse`

Response of getting a code for user confirmation (reset password, change email etc.).

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | The email address that the email is sent to. |
| `kind` | `string` | The fixed string "identitytoolkit#GetOobConfirmationCodeResponse". |
| `oobCode` | `string` | The code to be send to the user. |

### `GetRecaptchaParamResponse`

Response of getting recaptcha param.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | The fixed string "identitytoolkit#GetRecaptchaParamResponse". |
| `recaptchaSiteKey` | `string` | Site key registered at recaptcha. |
| `recaptchaStoken` | `string` | The stoken field for the recaptcha widget, used to request captcha challenge. |

### `IdentitytoolkitRelyingpartyCreateAuthUriRequest`

Request to get the IDP authentication URL.

| Property | Type | Description |
|----------|------|-------------|
| `appId` | `string` | The app ID of the mobile app, base64(CERT_SHA1):PACKAGE_NAME for Android, BUNDLE_ID for iOS. |
| `authFlowType` | `string` | Explicitly specify the auth flow type. Currently only support "CODE_FLOW" type. The field is only... |
| `clientId` | `string` | The relying party OAuth client ID. |
| `context` | `string` | The opaque value used by the client to maintain context info between the authentication request a... |
| `continueUri` | `string` | The URI to which the IDP redirects the user after the federated login flow. |
| `customParameter` | `object` | The query parameter that client can customize by themselves in auth url. The following parameters... |
| `hostedDomain` | `string` | The hosted domain to restrict sign-in to accounts at that domain for Google Apps hosted accounts. |
| `identifier` | `string` | The email or federated ID of the user. |
| `oauthConsumerKey` | `string` | The developer's consumer key for OpenId OAuth Extension |
| `oauthScope` | `string` | Additional oauth scopes, beyond the basid user profile, that the user would be prompted to grant |
| `openidRealm` | `string` | Optional realm for OpenID protocol. The sub string "scheme://domain:port" of the param "continueU... |
| `otaApp` | `string` | The native app package for OTA installation. |
| `providerId` | `string` | The IdP ID. For white listed IdPs it's a short domain name e.g. google.com, aol.com, live.net and... |
| `sessionId` | `string` | The session_id passed by client. |
| `tenantId` | `string` | For multi-tenant use cases, in order to construct sign-in URL with the correct IDP parameters, Fi... |
| `tenantProjectNumber` | `string` | Tenant project number to be used for idp discovery. |

### `IdentitytoolkitRelyingpartyDeleteAccountRequest`

Request to delete account.

| Property | Type | Description |
|----------|------|-------------|
| `delegatedProjectNumber` | `string` | GCP project number of the requesting delegated app. Currently only intended for Firebase V1 migra... |
| `idToken` | `string` | The GITKit token or STS id token of the authenticated user. |
| `localId` | `string` | The local ID of the user. |

### `IdentitytoolkitRelyingpartyDownloadAccountRequest`

Request to download user account in batch.

| Property | Type | Description |
|----------|------|-------------|
| `delegatedProjectNumber` | `string` | GCP project number of the requesting delegated app. Currently only intended for Firebase V1 migra... |
| `maxResults` | `integer` | The max number of results to return in the response. |
| `nextPageToken` | `string` | The token for the next page. This should be taken from the previous response. |
| `targetProjectId` | `string` | Specify which project (field value is actually project id) to operate. Only used when provided cr... |

### `IdentitytoolkitRelyingpartyEmailLinkSigninRequest`

Request to sign in with email.

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | The email address of the user. |
| `idToken` | `string` | Token for linking flow. |
| `oobCode` | `string` | The confirmation code. |

### `IdentitytoolkitRelyingpartyGetAccountInfoRequest`

Request to get the account information.

| Property | Type | Description |
|----------|------|-------------|
| `delegatedProjectNumber` | `string` | GCP project number of the requesting delegated app. Currently only intended for Firebase V1 migra... |
| `email` | `array<string>` | The list of emails of the users to inquiry. |
| `idToken` | `string` | The GITKit token of the authenticated user. |
| `localId` | `array<string>` | The list of local ID's of the users to inquiry. |
| `phoneNumber` | `array<string>` | Privileged caller can query users by specified phone number. |

### `IdentitytoolkitRelyingpartyGetProjectConfigResponse`

Response of getting the project configuration.

| Property | Type | Description |
|----------|------|-------------|
| `allowPasswordUser` | `boolean` | Whether to allow password user sign in or sign up. |
| `apiKey` | `string` | Browser API key, needed when making http request to Apiary. |
| `authorizedDomains` | `array<string>` | Authorized domains. |
| `changeEmailTemplate` | `EmailTemplate` | Change email template. |
| `dynamicLinksDomain` | `string` |  |
| `enableAnonymousUser` | `boolean` | Whether anonymous user is enabled. |
| `idpConfig` | `array<IdpConfig>` | OAuth2 provider configuration. |
| `legacyResetPasswordTemplate` | `EmailTemplate` | Legacy reset password email template. |
| `projectId` | `string` | Project ID of the relying party. |
| `resetPasswordTemplate` | `EmailTemplate` | Reset password email template. |
| `useEmailSending` | `boolean` | Whether to use email sending provided by Firebear. |
| `verifyEmailTemplate` | `EmailTemplate` | Verify email template. |

### `IdentitytoolkitRelyingpartyGetPublicKeysResponse`

Respone of getting public keys.

### `IdentitytoolkitRelyingpartyResetPasswordRequest`

Request to reset the password.

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | The email address of the user. |
| `newPassword` | `string` | The new password inputted by the user. |
| `oldPassword` | `string` | The old password inputted by the user. |
| `oobCode` | `string` | The confirmation code. |

### `IdentitytoolkitRelyingpartySendVerificationCodeRequest`

Request for Identitytoolkit-SendVerificationCode

| Property | Type | Description |
|----------|------|-------------|
| `iosReceipt` | `string` | Receipt of successful app token validation with APNS. |
| `iosSecret` | `string` | Secret delivered to iOS app via APNS. |
| `phoneNumber` | `string` | The phone number to send the verification code to in E.164 format. |
| `recaptchaToken` | `string` | Recaptcha solution. |

### `IdentitytoolkitRelyingpartySendVerificationCodeResponse`

Response for Identitytoolkit-SendVerificationCode

| Property | Type | Description |
|----------|------|-------------|
| `sessionInfo` | `string` | Encrypted session information |

### `IdentitytoolkitRelyingpartySetAccountInfoRequest`

Request to set the account information.

| Property | Type | Description |
|----------|------|-------------|
| `captchaChallenge` | `string` | The captcha challenge. |
| `captchaResponse` | `string` | Response to the captcha. |
| `createdAt` | `string` | The timestamp when the account is created. |
| `customAttributes` | `string` | The custom attributes to be set in the user's id token. |
| `delegatedProjectNumber` | `string` | GCP project number of the requesting delegated app. Currently only intended for Firebase V1 migra... |
| `deleteAttribute` | `array<string>` | The attributes users request to delete. |
| `deleteProvider` | `array<string>` | The IDPs the user request to delete. |
| `disableUser` | `boolean` | Whether to disable the user. |
| `displayName` | `string` | The name of the user. |
| `email` | `string` | The email of the user. |
| `emailVerified` | `boolean` | Mark the email as verified or not. |
| `idToken` | `string` | The GITKit token of the authenticated user. |
| `instanceId` | `string` | Instance id token of the app. |
| `lastLoginAt` | `string` | Last login timestamp. |
| `localId` | `string` | The local ID of the user. |
| `oobCode` | `string` | The out-of-band code of the change email request. |
| `password` | `string` | The new password of the user. |
| `phoneNumber` | `string` | Privileged caller can update user with specified phone number. |
| `photoUrl` | `string` | The photo url of the user. |
| `provider` | `array<string>` | The associated IDPs of the user. |
| `returnSecureToken` | `boolean` | Whether return sts id token and refresh token instead of gitkit token. |
| `upgradeToFederatedLogin` | `boolean` | Mark the user to upgrade to federated login. |
| `validSince` | `string` | Timestamp in seconds for valid login token. |

### `IdentitytoolkitRelyingpartySetProjectConfigRequest`

Request to set the project configuration.

| Property | Type | Description |
|----------|------|-------------|
| `allowPasswordUser` | `boolean` | Whether to allow password user sign in or sign up. |
| `apiKey` | `string` | Browser API key, needed when making http request to Apiary. |
| `authorizedDomains` | `array<string>` | Authorized domains for widget redirect. |
| `changeEmailTemplate` | `EmailTemplate` | Change email template. |
| `delegatedProjectNumber` | `string` | GCP project number of the requesting delegated app. Currently only intended for Firebase V1 migra... |
| `enableAnonymousUser` | `boolean` | Whether to enable anonymous user. |
| `idpConfig` | `array<IdpConfig>` | Oauth2 provider configuration. |
| `legacyResetPasswordTemplate` | `EmailTemplate` | Legacy reset password email template. |
| `resetPasswordTemplate` | `EmailTemplate` | Reset password email template. |
| `useEmailSending` | `boolean` | Whether to use email sending provided by Firebear. |
| `verifyEmailTemplate` | `EmailTemplate` | Verify email template. |

### `IdentitytoolkitRelyingpartySetProjectConfigResponse`

Response of setting the project configuration.

| Property | Type | Description |
|----------|------|-------------|
| `projectId` | `string` | Project ID of the relying party. |

### `IdentitytoolkitRelyingpartySignOutUserRequest`

Request to sign out user.

| Property | Type | Description |
|----------|------|-------------|
| `instanceId` | `string` | Instance id token of the app. |
| `localId` | `string` | The local ID of the user. |

### `IdentitytoolkitRelyingpartySignOutUserResponse`

Response of signing out user.

| Property | Type | Description |
|----------|------|-------------|
| `localId` | `string` | The local ID of the user. |

### `IdentitytoolkitRelyingpartySignupNewUserRequest`

Request to signup new user, create anonymous user or anonymous user reauth.

| Property | Type | Description |
|----------|------|-------------|
| `captchaChallenge` | `string` | The captcha challenge. |
| `captchaResponse` | `string` | Response to the captcha. |
| `disabled` | `boolean` | Whether to disable the user. Only can be used by service account. |
| `displayName` | `string` | The name of the user. |
| `email` | `string` | The email of the user. |
| `emailVerified` | `boolean` | Mark the email as verified or not. Only can be used by service account. |
| `idToken` | `string` | The GITKit token of the authenticated user. |
| `instanceId` | `string` | Instance id token of the app. |
| `localId` | `string` | Privileged caller can create user with specified user id. |
| `password` | `string` | The new password of the user. |
| `phoneNumber` | `string` | Privileged caller can create user with specified phone number. |
| `photoUrl` | `string` | The photo url of the user. |
| `tenantId` | `string` | For multi-tenant use cases, in order to construct sign-in URL with the correct IDP parameters, Fi... |
| `tenantProjectNumber` | `string` | Tenant project number to be used for idp discovery. |

### `IdentitytoolkitRelyingpartyUploadAccountRequest`

Request to upload user account in batch.

| Property | Type | Description |
|----------|------|-------------|
| `allowOverwrite` | `boolean` | Whether allow overwrite existing account when user local_id exists. |
| `blockSize` | `integer` |  |
| `cpuMemCost` | `integer` | The following 4 fields are for standard scrypt algorithm. |
| `delegatedProjectNumber` | `string` | GCP project number of the requesting delegated app. Currently only intended for Firebase V1 migra... |
| `dkLen` | `integer` |  |
| `hashAlgorithm` | `string` | The password hash algorithm. |
| `memoryCost` | `integer` | Memory cost for hash calculation. Used by scrypt similar algorithms. |
| `parallelization` | `integer` |  |
| `rounds` | `integer` | Rounds for hash calculation. Used by scrypt and similar algorithms. |
| `saltSeparator` | `string` | The salt separator. |
| `sanityCheck` | `boolean` | If true, backend will do sanity check(including duplicate email and federated id) when uploading ... |
| `signerKey` | `string` | The key for to hash the password. |
| `targetProjectId` | `string` | Specify which project (field value is actually project id) to operate. Only used when provided cr... |
| `users` | `array<UserInfo>` | The account info to be stored. |

### `IdentitytoolkitRelyingpartyVerifyAssertionRequest`

Request to verify the IDP assertion.

| Property | Type | Description |
|----------|------|-------------|
| `autoCreate` | `boolean` | When it's true, automatically creates a new account if the user doesn't exist. When it's false, a... |
| `delegatedProjectNumber` | `string` | GCP project number of the requesting delegated app. Currently only intended for Firebase V1 migra... |
| `idToken` | `string` | The GITKit token of the authenticated user. |
| `instanceId` | `string` | Instance id token of the app. |
| `pendingIdToken` | `string` | The GITKit token for the non-trusted IDP pending to be confirmed by the user. |
| `postBody` | `string` | The post body if the request is a HTTP POST. |
| `requestUri` | `string` | The URI to which the IDP redirects the user back. It may contain federated login result params ad... |
| `returnIdpCredential` | `boolean` | Whether return 200 and IDP credential rather than throw exception when federated id is already li... |
| `returnRefreshToken` | `boolean` | Whether to return refresh tokens. |
| `returnSecureToken` | `boolean` | Whether return sts id token and refresh token instead of gitkit token. |
| `sessionId` | `string` | Session ID, which should match the one in previous createAuthUri request. |
| `tenantId` | `string` | For multi-tenant use cases, in order to construct sign-in URL with the correct IDP parameters, Fi... |
| `tenantProjectNumber` | `string` | Tenant project number to be used for idp discovery. |

### `IdentitytoolkitRelyingpartyVerifyCustomTokenRequest`

Request to verify a custom token

| Property | Type | Description |
|----------|------|-------------|
| `delegatedProjectNumber` | `string` | GCP project number of the requesting delegated app. Currently only intended for Firebase V1 migra... |
| `instanceId` | `string` | Instance id token of the app. |
| `returnSecureToken` | `boolean` | Whether return sts id token and refresh token instead of gitkit token. |
| `token` | `string` | The custom token to verify |

### `IdentitytoolkitRelyingpartyVerifyPasswordRequest`

Request to verify the password.

| Property | Type | Description |
|----------|------|-------------|
| `captchaChallenge` | `string` | The captcha challenge. |
| `captchaResponse` | `string` | Response to the captcha. |
| `delegatedProjectNumber` | `string` | GCP project number of the requesting delegated app. Currently only intended for Firebase V1 migra... |
| `email` | `string` | The email of the user. |
| `idToken` | `string` | The GITKit token of the authenticated user. |
| `instanceId` | `string` | Instance id token of the app. |
| `password` | `string` | The password inputed by the user. |
| `pendingIdToken` | `string` | The GITKit token for the non-trusted IDP, which is to be confirmed by the user. |
| `returnSecureToken` | `boolean` | Whether return sts id token and refresh token instead of gitkit token. |
| `tenantId` | `string` | For multi-tenant use cases, in order to construct sign-in URL with the correct IDP parameters, Fi... |
| `tenantProjectNumber` | `string` | Tenant project number to be used for idp discovery. |

### `IdentitytoolkitRelyingpartyVerifyPhoneNumberRequest`

Request for Identitytoolkit-VerifyPhoneNumber

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` |  |
| `idToken` | `string` |  |
| `operation` | `string` |  |
| `phoneNumber` | `string` |  |
| `sessionInfo` | `string` | The session info previously returned by IdentityToolkit-SendVerificationCode. |
| `temporaryProof` | `string` |  |
| `verificationProof` | `string` |  |

### `IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse`

Response for Identitytoolkit-VerifyPhoneNumber

| Property | Type | Description |
|----------|------|-------------|
| `expiresIn` | `string` |  |
| `idToken` | `string` |  |
| `isNewUser` | `boolean` |  |
| `localId` | `string` |  |
| `phoneNumber` | `string` |  |
| `refreshToken` | `string` |  |
| `temporaryProof` | `string` |  |
| `temporaryProofExpiresIn` | `string` |  |
| `verificationProof` | `string` |  |
| `verificationProofExpiresIn` | `string` |  |

### `IdpConfig`

Template for a single idp configuration.

| Property | Type | Description |
|----------|------|-------------|
| `clientId` | `string` | OAuth2 client ID. |
| `enabled` | `boolean` | Whether this IDP is enabled. |
| `experimentPercent` | `integer` | Percent of users who will be prompted/redirected federated login for this IDP. |
| `provider` | `string` | OAuth2 provider. |
| `secret` | `string` | OAuth2 client secret. |
| `whitelistedAudiences` | `array<string>` | Whitelisted client IDs for audience check. |

### `Relyingparty`

Request of getting a code for user confirmation (reset password, change email etc.)

| Property | Type | Description |
|----------|------|-------------|
| `androidInstallApp` | `boolean` | whether or not to install the android app on the device where the link is opened |
| `androidMinimumVersion` | `string` | minimum version of the app. if the version on the device is lower than this version then the user... |
| `androidPackageName` | `string` | android package name of the android app to handle the action code |
| `canHandleCodeInApp` | `boolean` | whether or not the app can handle the oob code without first going to web |
| `captchaResp` | `string` | The recaptcha response from the user. |
| `challenge` | `string` | The recaptcha challenge presented to the user. |
| `continueUrl` | `string` | The url to continue to the Gitkit app |
| `email` | `string` | The email of the user. |
| `iOSAppStoreId` | `string` | iOS app store id to download the app if it's not already installed |
| `iOSBundleId` | `string` | the iOS bundle id of iOS app to handle the action code |
| `idToken` | `string` | The user's Gitkit login token for email change. |
| `kind` | `string` | The fixed string "identitytoolkit#relyingparty". |
| `newEmail` | `string` | The new email if the code is for email change. |
| `requestType` | `string` | The request type. |
| `userIp` | `string` | The IP address of the user. |

### `ResetPasswordResponse`

Response of resetting the password.

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | The user's email. If the out-of-band code is for email recovery, the user's original email. |
| `kind` | `string` | The fixed string "identitytoolkit#ResetPasswordResponse". |
| `newEmail` | `string` | If the out-of-band code is for email recovery, the user's new email. |
| `requestType` | `string` | The request type. |

### `SetAccountInfoResponse`

Respone of setting the account information.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The name of the user. |
| `email` | `string` | The email of the user. |
| `emailVerified` | `boolean` | If email has been verified. |
| `expiresIn` | `string` | If idToken is STS id token, then this field will be expiration time of STS id token in seconds. |
| `idToken` | `string` | The Gitkit id token to login the newly sign up user. |
| `kind` | `string` | The fixed string "identitytoolkit#SetAccountInfoResponse". |
| `localId` | `string` | The local ID of the user. |
| `newEmail` | `string` | The new email the user attempts to change to. |
| `passwordHash` | `string` | The user's hashed password. |
| `photoUrl` | `string` | The photo url of the user. |
| `providerUserInfo` | `array<object>` | The user's profiles at the associated IdPs. |
| `refreshToken` | `string` | If idToken is STS id token, then this field will be refresh token. |

### `SignupNewUserResponse`

Response of signing up new user, creating anonymous user or anonymous user reauth.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The name of the user. |
| `email` | `string` | The email of the user. |
| `expiresIn` | `string` | If idToken is STS id token, then this field will be expiration time of STS id token in seconds. |
| `idToken` | `string` | The Gitkit id token to login the newly sign up user. |
| `kind` | `string` | The fixed string "identitytoolkit#SignupNewUserResponse". |
| `localId` | `string` | The RP local ID of the user. |
| `refreshToken` | `string` | If idToken is STS id token, then this field will be refresh token. |

### `UploadAccountResponse`

Respone of uploading accounts in batch.

| Property | Type | Description |
|----------|------|-------------|
| `error` | `array<object>` | The error encountered while processing the account info. |
| `kind` | `string` | The fixed string "identitytoolkit#UploadAccountResponse". |

### `UserInfo`

Template for an individual account info.

| Property | Type | Description |
|----------|------|-------------|
| `createdAt` | `string` | User creation timestamp. |
| `customAttributes` | `string` | The custom attributes to be set in the user's id token. |
| `customAuth` | `boolean` | Whether the user is authenticated by the developer. |
| `disabled` | `boolean` | Whether the user is disabled. |
| `displayName` | `string` | The name of the user. |
| `email` | `string` | The email of the user. |
| `emailVerified` | `boolean` | Whether the email has been verified. |
| `lastLoginAt` | `string` | last login timestamp. |
| `localId` | `string` | The local ID of the user. |
| `passwordHash` | `string` | The user's hashed password. |
| `passwordUpdatedAt` | `number` | The timestamp when the password was last updated. |
| `phoneNumber` | `string` | User's phone number. |
| `photoUrl` | `string` | The URL of the user profile photo. |
| `providerUserInfo` | `array<object>` | The IDP of the user. |
| `rawPassword` | `string` | The user's plain text password. |
| `salt` | `string` | The user's password salt. |
| `screenName` | `string` | User's screen name at Twitter or login name at Github. |
| `validSince` | `string` | Timestamp in seconds for valid login token. |
| `version` | `integer` | Version of the user's password. |

### `VerifyAssertionResponse`

Response of verifying the IDP assertion.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` | The action code. |
| `appInstallationUrl` | `string` | URL for OTA app installation. |
| `appScheme` | `string` | The custom scheme used by mobile app. |
| `context` | `string` | The opaque value used by the client to maintain context info between the authentication request a... |
| `dateOfBirth` | `string` | The birth date of the IdP account. |
| `displayName` | `string` | The display name of the user. |
| `email` | `string` | The email returned by the IdP. NOTE: The federated login user may not own the email. |
| `emailRecycled` | `boolean` | It's true if the email is recycled. |
| `emailVerified` | `boolean` | The value is true if the IDP is also the email provider. It means the user owns the email. |
| `errorMessage` | `string` | Client error code. |
| `expiresIn` | `string` | If idToken is STS id token, then this field will be expiration time of STS id token in seconds. |
| `federatedId` | `string` | The unique ID identifies the IdP account. |
| `firstName` | `string` | The first name of the user. |
| `fullName` | `string` | The full name of the user. |
| `idToken` | `string` | The ID token. |
| `inputEmail` | `string` | It's the identifier param in the createAuthUri request if the identifier is an email. It can be u... |
| `isNewUser` | `boolean` | True if it's a new user sign-in, false if it's a returning user. |
| `kind` | `string` | The fixed string "identitytoolkit#VerifyAssertionResponse". |
| `language` | `string` | The language preference of the user. |
| `lastName` | `string` | The last name of the user. |
| `localId` | `string` | The RP local ID if it's already been mapped to the IdP account identified by the federated ID. |
| `needConfirmation` | `boolean` | Whether the assertion is from a non-trusted IDP and need account linking confirmation. |
| `needEmail` | `boolean` | Whether need client to supply email to complete the federated login flow. |
| `nickName` | `string` | The nick name of the user. |
| `oauthAccessToken` | `string` | The OAuth2 access token. |
| `oauthAuthorizationCode` | `string` | The OAuth2 authorization code. |
| `oauthExpireIn` | `integer` | The lifetime in seconds of the OAuth2 access token. |
| `oauthIdToken` | `string` | The OIDC id token. |
| `oauthRequestToken` | `string` | The user approved request token for the OpenID OAuth extension. |
| `oauthScope` | `string` | The scope for the OpenID OAuth extension. |
| `oauthTokenSecret` | `string` | The OAuth1 access token secret. |
| `originalEmail` | `string` | The original email stored in the mapping storage. It's returned when the federated ID is associat... |
| `photoUrl` | `string` | The URI of the public accessible profiel picture. |
| `providerId` | `string` | The IdP ID. For white listed IdPs it's a short domain name e.g. google.com, aol.com, live.net and... |
| `rawUserInfo` | `string` | Raw IDP-returned user info. |
| `refreshToken` | `string` | If idToken is STS id token, then this field will be refresh token. |
| `screenName` | `string` | The screen_name of a Twitter user or the login name at Github. |
| `timeZone` | `string` | The timezone of the user. |
| `verifiedProvider` | `array<string>` | When action is 'map', contains the idps which can be used for confirmation. |

### `VerifyCustomTokenResponse`

Response from verifying a custom token

| Property | Type | Description |
|----------|------|-------------|
| `expiresIn` | `string` | If idToken is STS id token, then this field will be expiration time of STS id token in seconds. |
| `idToken` | `string` | The GITKit token for authenticated user. |
| `isNewUser` | `boolean` | True if it's a new user sign-in, false if it's a returning user. |
| `kind` | `string` | The fixed string "identitytoolkit#VerifyCustomTokenResponse". |
| `refreshToken` | `string` | If idToken is STS id token, then this field will be refresh token. |

### `VerifyPasswordResponse`

Request of verifying the password.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The name of the user. |
| `email` | `string` | The email returned by the IdP. NOTE: The federated login user may not own the email. |
| `expiresIn` | `string` | If idToken is STS id token, then this field will be expiration time of STS id token in seconds. |
| `idToken` | `string` | The GITKit token for authenticated user. |
| `kind` | `string` | The fixed string "identitytoolkit#VerifyPasswordResponse". |
| `localId` | `string` | The RP local ID if it's already been mapped to the IdP account identified by the federated ID. |
| `oauthAccessToken` | `string` | The OAuth2 access token. |
| `oauthAuthorizationCode` | `string` | The OAuth2 authorization code. |
| `oauthExpireIn` | `integer` | The lifetime in seconds of the OAuth2 access token. |
| `photoUrl` | `string` | The URI of the user's photo at IdP |
| `refreshToken` | `string` | If idToken is STS id token, then this field will be refresh token. |
| `registered` | `boolean` | Whether the email is registered. |

