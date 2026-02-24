# My Business Verifications API - API Reference

**Version**: `v1` | **Methods**: 6 | **Schemas**: 22

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `mybusinessverifications.locations.getVoiceOfMerchantState` | GET | `v1/{+name}/VoiceOfMerchantState` | Gets the VoiceOfMerchant state. |
| `mybusinessverifications.locations.fetchVerificationOptions` | POST | `v1/{+location}:fetchVerificationOptions` | Reports all eligible verification options for a location in a specific language. |
| `mybusinessverifications.locations.verify` | POST | `v1/{+name}:verify` | Starts the verification process for a location. |
| `mybusinessverifications.locations.verifications.complete` | POST | `v1/{+name}:complete` | Completes a `PENDING` verification. It is only necessary for non `AUTO` verification methods. `AU... |
| `mybusinessverifications.locations.verifications.list` | GET | `v1/{+parent}/verifications` | List verifications of a location, ordered by create time. |
| `mybusinessverifications.verificationTokens.generate` | POST | `v1/verificationTokens:generate` | Generate a token for the provided location data to verify the location. |

### `mybusinessverifications.locations.getVoiceOfMerchantState`

**GET** `v1/{+name}/VoiceOfMerchantState`

Gets the VoiceOfMerchant state.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the location. |

**Response**: `VoiceOfMerchantState`

```typescript
const res = await mybusinessverifications.locations.getVoiceOfMerchantState({
  // parameters
});
```

---

### `mybusinessverifications.locations.fetchVerificationOptions`

**POST** `v1/{+location}:fetchVerificationOptions`

Reports all eligible verification options for a location in a specific language.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `location` | `string` | path | Yes | Required. The location to verify. |

**Request body**: `FetchVerificationOptionsRequest`

**Response**: `FetchVerificationOptionsResponse`

```typescript
const res = await mybusinessverifications.locations.fetchVerificationOptions({
  // parameters
});
```

---

### `mybusinessverifications.locations.verify`

**POST** `v1/{+name}:verify`

Starts the verification process for a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the location to verify. |

**Request body**: `VerifyLocationRequest`

**Response**: `VerifyLocationResponse`

```typescript
const res = await mybusinessverifications.locations.verify({
  // parameters
});
```

---

### `mybusinessverifications.locations.verifications.complete`

**POST** `v1/{+name}:complete`

Completes a `PENDING` verification. It is only necessary for non `AUTO` verification methods. `AUTO` verification request is instantly `VERIFIED` upon creation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the verification to complete. |

**Request body**: `CompleteVerificationRequest`

**Response**: `CompleteVerificationResponse`

```typescript
const res = await mybusinessverifications.verifications.complete({
  // parameters
});
```

---

### `mybusinessverifications.locations.verifications.list`

**GET** `v1/{+parent}/verifications`

List verifications of a location, ordered by create time.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the location that verification requests belong to. |
| `pageSize` | `integer` | query | No | How many verification to include per page. Minimum is 1, and the default and maximum page size is 100. |
| `pageToken` | `string` | query | No | If specified, returns the next page of verifications. |

**Response**: `ListVerificationsResponse`

```typescript
const res = await mybusinessverifications.verifications.list({
  // parameters
});
```

---

### `mybusinessverifications.verificationTokens.generate`

**POST** `v1/verificationTokens:generate`

Generate a token for the provided location data to verify the location.

**Request body**: `GenerateInstantVerificationTokenRequest`

**Response**: `GenerateInstantVerificationTokenResponse`

```typescript
const res = await mybusinessverifications.verificationTokens.generate({
  // parameters
});
```

---

## Schemas

### `AddressVerificationData`

Display data for verifications through postcard.

| Property | Type | Description |
|----------|------|-------------|
| `address` | `PostalAddress` | Address that a postcard can be sent to. |
| `business` | `string` | Merchant's business name. |
| `expectedDeliveryDaysRegion` | `integer` | Expected number of days it takes to deliver a postcard to the address's region. |

### `CompleteVerificationRequest`

Request message for Verifications.CompleteVerificationAction.

| Property | Type | Description |
|----------|------|-------------|
| `pin` | `string` | Required. PIN code received by the merchant to complete the verification. |

### `CompleteVerificationResponse`

Response message for Verifications.CompleteVerificationAction.

| Property | Type | Description |
|----------|------|-------------|
| `verification` | `Verification` | The completed verification. |

### `ComplyWithGuidelines`

Indicates that the location fails to comply with our [guidelines](https://support.google.com/business/answer/3038177).

| Property | Type | Description |
|----------|------|-------------|
| `recommendationReason` | `string` | The reason why the location is being recommended to comply with guidelines. |

### `EmailVerificationData`

Display data for verifications through email.

| Property | Type | Description |
|----------|------|-------------|
| `domain` | `string` | Domain name in the email address. e.g. "gmail.com" in foo@gmail.com |
| `isUserNameEditable` | `boolean` | Whether client is allowed to provide a different user name. |
| `user` | `string` | User name in the email address. e.g. "foo" in foo@gmail.com |

### `FetchVerificationOptionsRequest`

Request message for Verifications.FetchVerificationOptions.

| Property | Type | Description |
|----------|------|-------------|
| `context` | `ServiceBusinessContext` | Optional. Extra context information for the verification of service businesses. Can only be appli... |
| `languageCode` | `string` | Required. The BCP 47 language code representing the language that is to be used for the verificat... |

### `FetchVerificationOptionsResponse`

Response message for Verifications.FetchVerificationOptions.

| Property | Type | Description |
|----------|------|-------------|
| `options` | `array<VerificationOption>` | The available verification options. |

### `GenerateInstantVerificationTokenRequest`

Request message for Verifications.GenerateInstantVerificationToken.

| Property | Type | Description |
|----------|------|-------------|
| `locationData` | `LocationData` | Immutable. The address and other details of the location to generate an instant verification toke... |
| `locationId` | `string` | The location identifier associated with an unverified listing. This is the location id generated ... |

### `GenerateInstantVerificationTokenResponse`

Response message for Verifications.GenerateInstantVerificationToken.

| Property | Type | Description |
|----------|------|-------------|
| `instantVerificationToken` | `string` | The generated instant verification token. |
| `result` | `string` | Output only. The result of the instant verification token generation. |

### `ListVerificationsResponse`

Response message for Verifications.ListVerifications.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If the number of verifications exceeded the requested page size, this field will be populated wit... |
| `verifications` | `array<Verification>` | List of the verifications. |

### `LocationData`

The address and other details of the location to generate an instant verification token for.

| Property | Type | Description |
|----------|------|-------------|
| `address` | `PostalAddress` | Immutable. A precise, accurate address to describe your business location. PO boxes or mailboxes ... |
| `name` | `string` | Immutable. Name should reflect your business's real-world name, as used consistently on your stor... |

### `PostalAddress`

Represents a postal address, such as for postal delivery or payments addresses. With a postal address, a postal service can deliver items to a premise, P.O. box, or similar. A postal address is not intended to model geographical locations like roads, towns, or mountains. In typical usage, an address would be created by user input or from importing existing data, depending on the type of process. Advice on address input or editing: - Use an internationalization-ready address widget such as https://github.com/google/libaddressinput. - Users should not be presented with UI elements for input or editing of fields outside countries where that field is used. For more guidance on how to use this schema, see: https://support.google.com/business/answer/6397478.

| Property | Type | Description |
|----------|------|-------------|
| `addressLines` | `array<string>` | Unstructured address lines describing the lower levels of an address. Because values in `address_... |
| `administrativeArea` | `string` | Optional. Highest administrative subdivision which is used for postal addresses of a country or r... |
| `languageCode` | `string` | Optional. BCP-47 language code of the contents of this address (if known). This is often the UI l... |
| `locality` | `string` | Optional. Generally refers to the city or town portion of the address. Examples: US city, IT comu... |
| `organization` | `string` | Optional. The name of the organization at the address. |
| `postalCode` | `string` | Optional. Postal code of the address. Not all countries use or require postal codes to be present... |
| `recipients` | `array<string>` | Optional. The recipient at the address. This field may, under certain circumstances, contain mult... |
| `regionCode` | `string` | Required. CLDR region code of the country/region of the address. This is never inferred and it is... |
| `revision` | `integer` | The schema revision of the `PostalAddress`. This must be set to 0, which is the latest revision. ... |
| `sortingCode` | `string` | Optional. Additional, country-specific, sorting code. This is not used in most regions. Where it ... |
| `sublocality` | `string` | Optional. Sublocality of the address. For example, this can be a neighborhood, borough, or district. |

### `ResolveOwnershipConflict`

Indicates that the location duplicates another location that is in good standing.

### `ServiceBusinessContext`

Additional data for service business verification.

| Property | Type | Description |
|----------|------|-------------|
| `address` | `PostalAddress` | The verification address of the location. It is used to either enable more verification options o... |

### `Verification`

A verification represents a verification attempt on a location.

| Property | Type | Description |
|----------|------|-------------|
| `announcement` | `string` | Optional. Response announcement set only if the method is VETTED_PARTNER. |
| `createTime` | `string` | The timestamp when the verification is requested. |
| `method` | `string` | The method of the verification. |
| `name` | `string` | Resource name of the verification. |
| `state` | `string` | The state of the verification. |

### `VerificationOption`

The verification option represents how to verify the location (indicated by verification method) and where the verification will be sent to (indicated by display data).

| Property | Type | Description |
|----------|------|-------------|
| `addressData` | `AddressVerificationData` | Set only if the method is MAIL. |
| `announcement` | `string` | Set only if the method is VETTED_PARTNER. |
| `emailData` | `EmailVerificationData` | Set only if the method is EMAIL. |
| `phoneNumber` | `string` | Set only if the method is PHONE_CALL or SMS. Phone number that the PIN will be sent to. |
| `verificationMethod` | `string` | Method to verify the location. |

### `VerificationToken`

Token generated by a vetted [partner](https://support.google.com/business/answer/7674102).

| Property | Type | Description |
|----------|------|-------------|
| `tokenString` | `string` | The token string. |

### `Verify`

Indicates that the location requires verification. Contains information about the current verification actions performed on the location.

| Property | Type | Description |
|----------|------|-------------|
| `hasPendingVerification` | `boolean` | Indicates whether a verification process has already started, and can be completed by the location. |

### `VerifyLocationRequest`

Request message for Verifications.VerifyLocation.

| Property | Type | Description |
|----------|------|-------------|
| `context` | `ServiceBusinessContext` | Optional. Extra context information for the verification of service businesses. It is only requir... |
| `emailAddress` | `string` | Optional. The input for EMAIL method. Email address where the PIN should be sent to. An email add... |
| `languageCode` | `string` | Optional. The BCP 47 language code representing the language that is to be used for the verificat... |
| `mailerContact` | `string` | Optional. The input for ADDRESS method. Contact name the mail should be sent to. |
| `method` | `string` | Required. Verification method. |
| `phoneNumber` | `string` | Optional. The input for PHONE_CALL/SMS method The phone number that should be called or be sent S... |
| `token` | `VerificationToken` | Optional. The input for VETTED_PARTNER method available to select [partners.](https://support.goo... |
| `trustedPartnerToken` | `string` | The input for TRUSTED_PARTNER method The verification token that is associated to the location. |

### `VerifyLocationResponse`

Response message for Verifications.VerifyLocation.

| Property | Type | Description |
|----------|------|-------------|
| `verification` | `Verification` | The created verification request. |

### `VoiceOfMerchantState`

Response message for VoiceOfMerchant.GetVoiceOfMerchantState.

| Property | Type | Description |
|----------|------|-------------|
| `complyWithGuidelines` | `ComplyWithGuidelines` | The location fails to comply with our [guidelines](https://support.google.com/business/answer/303... |
| `hasBusinessAuthority` | `boolean` | Indicates whether the location has the authority (ownership) over the business on Google. If true... |
| `hasVoiceOfMerchant` | `boolean` | Indicates whether the location is in good standing and has control over the business on Google. A... |
| `resolveOwnershipConflict` | `ResolveOwnershipConflict` | This location duplicates another location that is in good standing. If you have access to the loc... |
| `verify` | `Verify` | Start or continue the verification process. |
| `waitForVoiceOfMerchant` | `WaitForVoiceOfMerchant` | Wait to gain Voice of Merchant. The location is under review for quality purposes. |

### `WaitForVoiceOfMerchant`

Indicates that the location will gain voice of merchant after passing review.

