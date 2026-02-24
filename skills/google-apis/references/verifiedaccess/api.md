# Chrome Verified Access API - API Reference

**Version**: `v2` | **Methods**: 2 | **Schemas**: 7

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `verifiedaccess.challenge.generate` | POST | `v2/challenge:generate` | Generates a new challenge. |
| `verifiedaccess.challenge.verify` | POST | `v2/challenge:verify` | Verifies the challenge response. |

### `verifiedaccess.challenge.generate`

**POST** `v2/challenge:generate`

Generates a new challenge.

**Request body**: `Empty`

**Response**: `Challenge`

```typescript
const res = await verifiedaccess.challenge.generate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/verifiedaccess`

---

### `verifiedaccess.challenge.verify`

**POST** `v2/challenge:verify`

Verifies the challenge response.

**Request body**: `VerifyChallengeResponseRequest`

**Response**: `VerifyChallengeResponseResult`

```typescript
const res = await verifiedaccess.challenge.verify({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/verifiedaccess`

---

## Schemas

### `Antivirus`

Antivirus information on a device.

| Property | Type | Description |
|----------|------|-------------|
| `state` | `string` | Output only. The state of the antivirus on the device. Introduced in Chrome M136. |

### `Challenge`

Result message for VerifiedAccess.GenerateChallenge.

| Property | Type | Description |
|----------|------|-------------|
| `challenge` | `string` | Generated challenge, the bytes representation of SignedData. |

### `CrowdStrikeAgent`

Properties of the CrowdStrike agent installed on a device.

| Property | Type | Description |
|----------|------|-------------|
| `agentId` | `string` | Output only. The Agent ID of the Crowdstrike agent. |
| `customerId` | `string` | Output only. The Customer ID to which the agent belongs to. |

### `DeviceSignals`

The device signals as reported by Chrome. Unless otherwise specified, signals are available on all platforms.

| Property | Type | Description |
|----------|------|-------------|
| `allowScreenLock` | `boolean` | Output only. Value of the AllowScreenLock policy on the device. See https://chromeenterprise.goog... |
| `antivirus` | `Antivirus` | Output only. Information about Antivirus software on the device. Available on Windows only. |
| `browserVersion` | `string` | Output only. Current version of the Chrome browser which generated this set of signals. Example v... |
| `builtInDnsClientEnabled` | `boolean` | Output only. Whether Chrome's built-in DNS client is used. The OS DNS client is otherwise used. T... |
| `chromeRemoteDesktopAppBlocked` | `boolean` | Output only. Whether access to the Chrome Remote Desktop application is blocked via a policy. |
| `crowdStrikeAgent` | `CrowdStrikeAgent` | Output only. Crowdstrike agent properties installed on the device, if any. Available on Windows a... |
| `deviceAffiliationIds` | `array<string>` | Output only. Affiliation IDs of the organizations that are affiliated with the organization that ... |
| `deviceEnrollmentDomain` | `string` | Output only. Enrollment domain of the customer which is currently managing the device. |
| `deviceManufacturer` | `string` | Output only. The name of the device's manufacturer. |
| `deviceModel` | `string` | Output only. The name of the device's model. |
| `diskEncryption` | `string` | Output only. The encryption state of the disk. On ChromeOS, the main disk is always ENCRYPTED. |
| `displayName` | `string` | Output only. The display name of the device, as defined by the user. |
| `hostname` | `string` | Hostname of the device. |
| `imei` | `array<string>` | Output only. International Mobile Equipment Identity (IMEI) of the device. Available on ChromeOS ... |
| `macAddresses` | `array<string>` | Output only. MAC addresses of the device. |
| `meid` | `array<string>` | Output only. Mobile Equipment Identifier (MEID) of the device. Available on ChromeOS only. |
| `operatingSystem` | `string` | Output only. The type of the Operating System currently running on the device. |
| `osFirewall` | `string` | Output only. The state of the OS level firewall. On ChromeOS, the value will always be ENABLED on... |
| `osVersion` | `string` | Output only. The current version of the Operating System. On Windows and linux, the value will al... |
| `passwordProtectionWarningTrigger` | `string` | Output only. Whether the Password Protection Warning feature is enabled or not. Password protecti... |
| `profileAffiliationIds` | `array<string>` | Output only. Affiliation IDs of the organizations that are affiliated with the organization that ... |
| `profileEnrollmentDomain` | `string` | Output only. Enrollment domain of the customer which is currently managing the profile. |
| `realtimeUrlCheckMode` | `string` | Output only. Whether Enterprise-grade (i.e. custom) unsafe URL scanning is enabled or not. This s... |
| `safeBrowsingProtectionLevel` | `string` | Output only. Safe Browsing Protection Level. That setting may be controlled by an enterprise poli... |
| `screenLockSecured` | `string` | Output only. The state of the Screen Lock password protection. On ChromeOS, this value will alway... |
| `secureBootMode` | `string` | Output only. Whether the device's startup software has its Secure Boot feature enabled. Available... |
| `serialNumber` | `string` | Output only. The serial number of the device. On Windows, this represents the BIOS's serial numbe... |
| `siteIsolationEnabled` | `boolean` | Output only. Whether the Site Isolation (a.k.a Site Per Process) setting is enabled. That setting... |
| `systemDnsServers` | `array<string>` | List of the addesses of all OS level DNS servers configured in the device's network settings. |
| `thirdPartyBlockingEnabled` | `boolean` | Output only. Deprecated. The corresponding policy is now deprecated. Whether Chrome is blocking t... |
| `trigger` | `string` | Output only. The trigger which generated this set of signals. |
| `windowsMachineDomain` | `string` | Output only. Windows domain that the current machine has joined. Available on Windows only. |
| `windowsUserDomain` | `string` | Output only. Windows domain for the current OS user. Available on Windows only. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `VerifyChallengeResponseRequest`

Signed ChallengeResponse.

| Property | Type | Description |
|----------|------|-------------|
| `challengeResponse` | `string` | Required. The generated response to the challenge, the bytes representation of SignedData. |
| `expectedIdentity` | `string` | Optional. Service can optionally provide identity information about the device or user associated... |

### `VerifyChallengeResponseResult`

Result message for VerifiedAccess.VerifyChallengeResponse. The response returned when successful for Managed profiles on Unmanaged browsers will NOT have devicePermanentId, keyTrustLevel, virtualDeviceId and customerId fields. Managed profiles will INSTEAD have the profileCustomerId, virtualProfileId, profilePermanentId and profileKeyTrustLevel fields.

| Property | Type | Description |
|----------|------|-------------|
| `attestedDeviceId` | `string` | Output only. Attested device ID (ADID). |
| `customerId` | `string` | Output only. Unique customer id that this device belongs to, as defined by the Google Admin SDK a... |
| `deviceEnrollmentId` | `string` | Output only. Device enrollment id for ChromeOS devices. |
| `devicePermanentId` | `string` | Output only. Device permanent id is returned in this field (for the machine response only). |
| `deviceSignal` | `string` | Output only. Deprecated. Device signal in json string representation. Prefer using `device_signal... |
| `deviceSignals` | `DeviceSignals` | Output only. Device signals. |
| `keyTrustLevel` | `string` | Output only. Device attested key trust level. |
| `profileCustomerId` | `string` | Output only. Unique customer id that this profile belongs to, as defined by the Google Admin SDK ... |
| `profileKeyTrustLevel` | `string` | Output only. Profile attested key trust level. |
| `profilePermanentId` | `string` | Output only. The unique server-side ID of a profile on the device. |
| `signedPublicKeyAndChallenge` | `string` | Output only. Certificate Signing Request (in the SPKAC format, base64 encoded) is returned in thi... |
| `virtualDeviceId` | `string` | Output only. Virtual device id of the device. The definition of virtual device id is platform-spe... |
| `virtualProfileId` | `string` | Output only. The client-provided ID of a profile on the device. |

