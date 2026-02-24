# Android Device Provisioning Partner API - API Reference

**Version**: `v1` | **Methods**: 27 | **Schemas**: 43

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `androiddeviceprovisioning.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `androiddeviceprovisioning.partners.vendors.list` | GET | `v1/{+parent}/vendors` | Lists the vendors of the partner. |
| `androiddeviceprovisioning.partners.vendors.customers.list` | GET | `v1/{+parent}/customers` | Lists the customers of the vendor. |
| `androiddeviceprovisioning.partners.customers.create` | POST | `v1/{+parent}/customers` | Creates a customer for zero-touch enrollment. After the method returns successfully, admin and ow... |
| `androiddeviceprovisioning.partners.customers.list` | GET | `v1/partners/{+partnerId}/customers` | Lists the customers that are enrolled to the reseller identified by the `partnerId` argument. Thi... |
| `androiddeviceprovisioning.partners.devices.claim` | POST | `v1/partners/{+partnerId}/devices:claim` | Claims a device for a customer and adds it to zero-touch enrollment. If the device is already cla... |
| `androiddeviceprovisioning.partners.devices.unclaim` | POST | `v1/partners/{+partnerId}/devices:unclaim` | Unclaims a device from a customer and removes it from zero-touch enrollment. |
| `androiddeviceprovisioning.partners.devices.findByIdentifier` | POST | `v1/partners/{+partnerId}/devices:findByIdentifier` | Finds devices by hardware identifiers, such as IMEI. |
| `androiddeviceprovisioning.partners.devices.findByOwner` | POST | `v1/partners/{+partnerId}/devices:findByOwner` | Finds devices claimed for customers. The results only contain devices registered to the reseller ... |
| `androiddeviceprovisioning.partners.devices.get` | GET | `v1/{+name}` | Gets a device. |
| `androiddeviceprovisioning.partners.devices.getSimLockState` | POST | `v1/partners/{+partnerId}/devices:getSimLockState` | Gets a device's SIM lock state. |
| `androiddeviceprovisioning.partners.devices.metadata` | POST | `v1/partners/{+metadataOwnerId}/devices/{+deviceId}/metadata` | Updates reseller metadata associated with the device. Android devices only. |
| `androiddeviceprovisioning.partners.devices.claimAsync` | POST | `v1/partners/{+partnerId}/devices:claimAsync` | Claims a batch of devices for a customer asynchronously. Adds the devices to zero-touch enrollmen... |
| `androiddeviceprovisioning.partners.devices.unclaimAsync` | POST | `v1/partners/{+partnerId}/devices:unclaimAsync` | Unclaims a batch of devices for a customer asynchronously. Removes the devices from zero-touch en... |
| `androiddeviceprovisioning.partners.devices.updateMetadataAsync` | POST | `v1/partners/{+partnerId}/devices:updateMetadataAsync` | Updates the reseller metadata attached to a batch of devices. This method updates devices asynchr... |
| `androiddeviceprovisioning.customers.list` | GET | `v1/customers` | Lists the user's customer accounts. |
| `androiddeviceprovisioning.customers.configurations.create` | POST | `v1/{+parent}/configurations` | Creates a new configuration. Once created, a customer can apply the configuration to devices. |
| `androiddeviceprovisioning.customers.configurations.get` | GET | `v1/{+name}` | Gets the details of a configuration. |
| `androiddeviceprovisioning.customers.configurations.patch` | PATCH | `v1/{+name}` | Updates a configuration's field values. |
| `androiddeviceprovisioning.customers.configurations.delete` | DELETE | `v1/{+name}` | Deletes an unused configuration. The API call fails if the customer has devices with the configur... |
| `androiddeviceprovisioning.customers.configurations.list` | GET | `v1/{+parent}/configurations` | Lists a customer's configurations. |
| `androiddeviceprovisioning.customers.dpcs.list` | GET | `v1/{+parent}/dpcs` | Lists the DPCs (device policy controllers) that support zero-touch enrollment. |
| `androiddeviceprovisioning.customers.devices.list` | GET | `v1/{+parent}/devices` | Lists a customer's devices. |
| `androiddeviceprovisioning.customers.devices.get` | GET | `v1/{+name}` | Gets the details of a device. |
| `androiddeviceprovisioning.customers.devices.unclaim` | POST | `v1/{+parent}/devices:unclaim` | Unclaims a device from a customer and removes it from zero-touch enrollment. After removing a dev... |
| `androiddeviceprovisioning.customers.devices.applyConfiguration` | POST | `v1/{+parent}/devices:applyConfiguration` | Applies a Configuration to the device to register the device for zero-touch enrollment. After app... |
| `androiddeviceprovisioning.customers.devices.removeConfiguration` | POST | `v1/{+parent}/devices:removeConfiguration` | Removes a configuration from device. |

### `androiddeviceprovisioning.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await androiddeviceprovisioning.operations.get({
  // parameters
});
```

---

### `androiddeviceprovisioning.partners.vendors.list`

**GET** `v1/{+parent}/vendors`

Lists the vendors of the partner.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name in the format `partners/[PARTNER_ID]`. |
| `pageSize` | `integer` | query | No | The maximum number of results to be returned. |
| `pageToken` | `string` | query | No | A token identifying a page of results returned by the server. |

**Response**: `ListVendorsResponse`

```typescript
const res = await androiddeviceprovisioning.vendors.list({
  // parameters
});
```

---

### `androiddeviceprovisioning.partners.vendors.customers.list`

**GET** `v1/{+parent}/customers`

Lists the customers of the vendor.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name in the format `partners/[PARTNER_ID]/vendors/[VENDOR_ID]`. |
| `pageSize` | `integer` | query | No | The maximum number of results to be returned. |
| `pageToken` | `string` | query | No | A token identifying a page of results returned by the server. |

**Response**: `ListVendorCustomersResponse`

```typescript
const res = await androiddeviceprovisioning.customers.list({
  // parameters
});
```

---

### `androiddeviceprovisioning.partners.customers.create`

**POST** `v1/{+parent}/customers`

Creates a customer for zero-touch enrollment. After the method returns successfully, admin and owner roles can manage devices and EMM configs by calling API methods or using their zero-touch enrollment portal. The customer receives an email that welcomes them to zero-touch enrollment and explains how to sign into the portal.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource ID in the format `partners/[PARTNER_ID]` that identifies the reseller. |

**Request body**: `CreateCustomerRequest`

**Response**: `Company`

```typescript
const res = await androiddeviceprovisioning.customers.create({
  // parameters
});
```

---

### `androiddeviceprovisioning.partners.customers.list`

**GET** `v1/partners/{+partnerId}/customers`

Lists the customers that are enrolled to the reseller identified by the `partnerId` argument. This list includes customers that the reseller created and customers that enrolled themselves using the portal.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `partnerId` | `string` | path | Yes | Required. The ID of the reseller partner. |
| `pageSize` | `integer` | query | No | The maximum number of results to be returned. If not specified or 0, all the records are returned. |
| `pageToken` | `string` | query | No | A token identifying a page of results returned by the server. |

**Response**: `ListCustomersResponse`

```typescript
const res = await androiddeviceprovisioning.customers.list({
  // parameters
});
```

---

### `androiddeviceprovisioning.partners.devices.claim`

**POST** `v1/partners/{+partnerId}/devices:claim`

Claims a device for a customer and adds it to zero-touch enrollment. If the device is already claimed by another customer, the call returns an error.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `partnerId` | `string` | path | Yes | Required. The ID of the reseller partner. |

**Request body**: `ClaimDeviceRequest`

**Response**: `ClaimDeviceResponse`

```typescript
const res = await androiddeviceprovisioning.devices.claim({
  // parameters
});
```

---

### `androiddeviceprovisioning.partners.devices.unclaim`

**POST** `v1/partners/{+partnerId}/devices:unclaim`

Unclaims a device from a customer and removes it from zero-touch enrollment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `partnerId` | `string` | path | Yes | Required. The ID of the reseller partner. |

**Request body**: `UnclaimDeviceRequest`

**Response**: `Empty`

```typescript
const res = await androiddeviceprovisioning.devices.unclaim({
  // parameters
});
```

---

### `androiddeviceprovisioning.partners.devices.findByIdentifier`

**POST** `v1/partners/{+partnerId}/devices:findByIdentifier`

Finds devices by hardware identifiers, such as IMEI.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `partnerId` | `string` | path | Yes | Required. The ID of the reseller partner. |

**Request body**: `FindDevicesByDeviceIdentifierRequest`

**Response**: `FindDevicesByDeviceIdentifierResponse`

```typescript
const res = await androiddeviceprovisioning.devices.findByIdentifier({
  // parameters
});
```

---

### `androiddeviceprovisioning.partners.devices.findByOwner`

**POST** `v1/partners/{+partnerId}/devices:findByOwner`

Finds devices claimed for customers. The results only contain devices registered to the reseller that's identified by the `partnerId` argument. The customer's devices purchased from other resellers don't appear in the results.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `partnerId` | `string` | path | Yes | Required. The ID of the reseller partner. |

**Request body**: `FindDevicesByOwnerRequest`

**Response**: `FindDevicesByOwnerResponse`

```typescript
const res = await androiddeviceprovisioning.devices.findByOwner({
  // parameters
});
```

---

### `androiddeviceprovisioning.partners.devices.get`

**GET** `v1/{+name}`

Gets a device.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The device API resource name in the format `partners/[PARTNER_ID]/devices/[DEVICE_ID]`. |

**Response**: `Device`

```typescript
const res = await androiddeviceprovisioning.devices.get({
  // parameters
});
```

---

### `androiddeviceprovisioning.partners.devices.getSimLockState`

**POST** `v1/partners/{+partnerId}/devices:getSimLockState`

Gets a device's SIM lock state.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `partnerId` | `string` | path | Yes | Required. The ID of the partner. |

**Request body**: `GetDeviceSimLockStateRequest`

**Response**: `GetDeviceSimLockStateResponse`

```typescript
const res = await androiddeviceprovisioning.devices.getSimLockState({
  // parameters
});
```

---

### `androiddeviceprovisioning.partners.devices.metadata`

**POST** `v1/partners/{+metadataOwnerId}/devices/{+deviceId}/metadata`

Updates reseller metadata associated with the device. Android devices only.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `metadataOwnerId` | `string` | path | Yes | Required. The owner of the newly set metadata. Set this to the partner ID. |
| `deviceId` | `string` | path | Yes | Required. The ID of the device. |

**Request body**: `UpdateDeviceMetadataRequest`

**Response**: `DeviceMetadata`

```typescript
const res = await androiddeviceprovisioning.devices.metadata({
  // parameters
});
```

---

### `androiddeviceprovisioning.partners.devices.claimAsync`

**POST** `v1/partners/{+partnerId}/devices:claimAsync`

Claims a batch of devices for a customer asynchronously. Adds the devices to zero-touch enrollment. To learn more, read [Long‑running batch operations](/zero-touch/guides/how-it-works#operations).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `partnerId` | `string` | path | Yes | Required. The ID of the reseller partner. |

**Request body**: `ClaimDevicesRequest`

**Response**: `Operation`

```typescript
const res = await androiddeviceprovisioning.devices.claimAsync({
  // parameters
});
```

---

### `androiddeviceprovisioning.partners.devices.unclaimAsync`

**POST** `v1/partners/{+partnerId}/devices:unclaimAsync`

Unclaims a batch of devices for a customer asynchronously. Removes the devices from zero-touch enrollment. To learn more, read [Long‑running batch operations](/zero-touch/guides/how-it-works#operations).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `partnerId` | `string` | path | Yes | Required. The reseller partner ID. |

**Request body**: `UnclaimDevicesRequest`

**Response**: `Operation`

```typescript
const res = await androiddeviceprovisioning.devices.unclaimAsync({
  // parameters
});
```

---

### `androiddeviceprovisioning.partners.devices.updateMetadataAsync`

**POST** `v1/partners/{+partnerId}/devices:updateMetadataAsync`

Updates the reseller metadata attached to a batch of devices. This method updates devices asynchronously and returns an `Operation` that can be used to track progress. Read [Long‑running batch operations](/zero-touch/guides/how-it-works#operations). Android Devices only.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `partnerId` | `string` | path | Yes | Required. The reseller partner ID. |

**Request body**: `UpdateDeviceMetadataInBatchRequest`

**Response**: `Operation`

```typescript
const res = await androiddeviceprovisioning.devices.updateMetadataAsync({
  // parameters
});
```

---

### `androiddeviceprovisioning.customers.list`

**GET** `v1/customers`

Lists the user's customer accounts.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pageSize` | `integer` | query | No | Required. The maximum number of customers to show in a page of results. A number between 1 and 100 (inclusive). |
| `pageToken` | `string` | query | No | A token specifying which result page to return. This field has custom validations in ListCustomersRequestValidator |

**Response**: `CustomerListCustomersResponse`

```typescript
const res = await androiddeviceprovisioning.customers.list({
  // parameters
});
```

---

### `androiddeviceprovisioning.customers.configurations.create`

**POST** `v1/{+parent}/configurations`

Creates a new configuration. Once created, a customer can apply the configuration to devices.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The customer that manages the configuration. An API resource name in the format `customers/[CUSTOMER_ID]`. ... |

**Request body**: `Configuration`

**Response**: `Configuration`

```typescript
const res = await androiddeviceprovisioning.configurations.create({
  // parameters
});
```

---

### `androiddeviceprovisioning.customers.configurations.get`

**GET** `v1/{+name}`

Gets the details of a configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The configuration to get. An API resource name in the format `customers/[CUSTOMER_ID]/configurations/[CONFI... |

**Response**: `Configuration`

```typescript
const res = await androiddeviceprovisioning.configurations.get({
  // parameters
});
```

---

### `androiddeviceprovisioning.customers.configurations.patch`

**PATCH** `v1/{+name}`

Updates a configuration's field values.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The API resource name in the format `customers/[CUSTOMER_ID]/configurations/[CONFIGURATION_ID]`. Assigne... |
| `updateMask` | `string` | query | No | Required. The field mask applied to the target `Configuration` before updating the fields. To learn more about using ... |

**Request body**: `Configuration`

**Response**: `Configuration`

```typescript
const res = await androiddeviceprovisioning.configurations.patch({
  // parameters
});
```

---

### `androiddeviceprovisioning.customers.configurations.delete`

**DELETE** `v1/{+name}`

Deletes an unused configuration. The API call fails if the customer has devices with the configuration applied.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The configuration to delete. An API resource name in the format `customers/[CUSTOMER_ID]/configurations/[CO... |

**Response**: `Empty`

```typescript
const res = await androiddeviceprovisioning.configurations.delete({
  // parameters
});
```

---

### `androiddeviceprovisioning.customers.configurations.list`

**GET** `v1/{+parent}/configurations`

Lists a customer's configurations.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The customer that manages the listed configurations. An API resource name in the format `customers/[CUSTOME... |

**Response**: `CustomerListConfigurationsResponse`

```typescript
const res = await androiddeviceprovisioning.configurations.list({
  // parameters
});
```

---

### `androiddeviceprovisioning.customers.dpcs.list`

**GET** `v1/{+parent}/dpcs`

Lists the DPCs (device policy controllers) that support zero-touch enrollment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The customer that can use the DPCs in configurations. An API resource name in the format `customers/[CUSTOM... |

**Response**: `CustomerListDpcsResponse`

```typescript
const res = await androiddeviceprovisioning.dpcs.list({
  // parameters
});
```

---

### `androiddeviceprovisioning.customers.devices.list`

**GET** `v1/{+parent}/devices`

Lists a customer's devices.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The customer managing the devices. An API resource name in the format `customers/[CUSTOMER_ID]`. |
| `pageSize` | `string` | query | No | Required. The maximum number of devices to show in a page of results. Must be between 1 and 100 inclusive. |
| `pageToken` | `string` | query | No | A token specifying which result page to return. |

**Response**: `CustomerListDevicesResponse`

```typescript
const res = await androiddeviceprovisioning.devices.list({
  // parameters
});
```

---

### `androiddeviceprovisioning.customers.devices.get`

**GET** `v1/{+name}`

Gets the details of a device.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The device to get. An API resource name in the format `customers/[CUSTOMER_ID]/devices/[DEVICE_ID]`. |

**Response**: `Device`

```typescript
const res = await androiddeviceprovisioning.devices.get({
  // parameters
});
```

---

### `androiddeviceprovisioning.customers.devices.unclaim`

**POST** `v1/{+parent}/devices:unclaim`

Unclaims a device from a customer and removes it from zero-touch enrollment. After removing a device, a customer must contact their reseller to register the device into zero-touch enrollment again.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The customer managing the device. An API resource name in the format `customers/[CUSTOMER_ID]`. |

**Request body**: `CustomerUnclaimDeviceRequest`

**Response**: `Empty`

```typescript
const res = await androiddeviceprovisioning.devices.unclaim({
  // parameters
});
```

---

### `androiddeviceprovisioning.customers.devices.applyConfiguration`

**POST** `v1/{+parent}/devices:applyConfiguration`

Applies a Configuration to the device to register the device for zero-touch enrollment. After applying a configuration to a device, the device automatically provisions itself on first boot, or next factory reset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The customer managing the device. An API resource name in the format `customers/[CUSTOMER_ID]`. |

**Request body**: `CustomerApplyConfigurationRequest`

**Response**: `Empty`

```typescript
const res = await androiddeviceprovisioning.devices.applyConfiguration({
  // parameters
});
```

---

### `androiddeviceprovisioning.customers.devices.removeConfiguration`

**POST** `v1/{+parent}/devices:removeConfiguration`

Removes a configuration from device.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The customer managing the device in the format `customers/[CUSTOMER_ID]`. |

**Request body**: `CustomerRemoveConfigurationRequest`

**Response**: `Empty`

```typescript
const res = await androiddeviceprovisioning.devices.removeConfiguration({
  // parameters
});
```

---

## Schemas

### `ClaimDeviceRequest`

Request message to claim a device on behalf of a customer.

| Property | Type | Description |
|----------|------|-------------|
| `configurationId` | `string` | Optional. The ID of the configuration applied to the device section. |
| `customerId` | `string` | The ID of the customer for whom the device is being claimed. |
| `deviceIdentifier` | `DeviceIdentifier` | Required. Required. The device identifier of the device to claim. |
| `deviceMetadata` | `DeviceMetadata` | Optional. The metadata to attach to the device. |
| `googleWorkspaceCustomerId` | `string` | The Google Workspace customer ID. |
| `preProvisioningToken` | `string` | Optional. Must and can only be set for Chrome OS devices. |
| `sectionType` | `string` | Required. The section type of the device's provisioning record. |
| `simlockProfileId` | `string` | Optional. Must and can only be set when DeviceProvisioningSectionType is SECTION_TYPE_SIM_LOCK. T... |

### `ClaimDeviceResponse`

Response message containing device id of the claim.

| Property | Type | Description |
|----------|------|-------------|
| `deviceId` | `string` | The device ID of the claimed device. |
| `deviceName` | `string` | The resource name of the device in the format `partners/[PARTNER_ID]/devices/[DEVICE_ID]`. |

### `ClaimDevicesRequest`

Request to claim devices asynchronously in batch. Claiming a device adds the device to zero-touch enrollment and shows the device in the customer's view of the portal.

| Property | Type | Description |
|----------|------|-------------|
| `claims` | `array<PartnerClaim>` | Required. A list of device claims. |

### `Company`

A reseller, vendor, or customer in the zero-touch reseller and customer APIs.

| Property | Type | Description |
|----------|------|-------------|
| `adminEmails` | `array<string>` | Optional. Email address of customer's users in the admin role. Each email address must be associa... |
| `companyId` | `string` | Output only. The ID of the company. Assigned by the server. |
| `companyName` | `string` | Required. The name of the company. For example _XYZ Corp_. Displayed to the company's employees i... |
| `googleWorkspaceAccount` | `GoogleWorkspaceAccount` | Output only. The Google Workspace account associated with this customer. Only used for customer C... |
| `languageCode` | `string` | Input only. The preferred locale of the customer represented as a BCP47 language code. This field... |
| `name` | `string` | Output only. The API resource name of the company. The resource name is one of the following form... |
| `ownerEmails` | `array<string>` | Required. Input only. Email address of customer's users in the owner role. At least one `owner_em... |
| `skipWelcomeEmail` | `boolean` | Input only. If set to true, welcome email will not be sent to the customer. It is recommended to ... |
| `termsStatus` | `string` | Output only. Whether any user from the company has accepted the latest Terms of Service (ToS). Se... |

### `Configuration`

A configuration collects the provisioning options for Android devices. Each configuration combines the following: * The EMM device policy controller (DPC) installed on the devices. * EMM policies enforced on the devices. * Metadata displayed on the device to help users during setup. Customers can add as many configurations as they need. However, zero-touch enrollment works best when a customer sets a default configuration that's applied to any new devices the organization purchases.

| Property | Type | Description |
|----------|------|-------------|
| `companyName` | `string` | Required. The name of the organization. Zero-touch enrollment shows this organization name to dev... |
| `configurationId` | `string` | Output only. The ID of the configuration. Assigned by the server. |
| `configurationName` | `string` | Required. A short name that describes the configuration's purpose. For example, _Sales team_ or _... |
| `contactEmail` | `string` | Required. The email address that device users can contact to get help. Zero-touch enrollment show... |
| `contactPhone` | `string` | Required. The telephone number that device users can call, using another device, to get help. Zer... |
| `customMessage` | `string` | A message, containing one or two sentences, to help device users get help or give them more detai... |
| `dpcExtras` | `string` | The JSON-formatted EMM provisioning extras that are passed to the DPC. |
| `dpcResourcePath` | `string` | Required. The resource name of the selected DPC (device policy controller) in the format `custome... |
| `forcedResetTime` | `string` | Optional. The timeout before forcing factory reset the device if the device doesn't go through pr... |
| `isDefault` | `boolean` | Required. Whether this is the default configuration that zero-touch enrollment applies to any new... |
| `name` | `string` | Output only. The API resource name in the format `customers/[CUSTOMER_ID]/configurations/[CONFIGU... |

### `CreateCustomerRequest`

Request message to create a customer.

| Property | Type | Description |
|----------|------|-------------|
| `customer` | `Company` | Required. The company data to populate the new customer. Must contain a value for `companyName` a... |

### `CustomerApplyConfigurationRequest`

Request message for customer to assign a configuration to device.

| Property | Type | Description |
|----------|------|-------------|
| `configuration` | `string` | Required. The configuration applied to the device in the format `customers/[CUSTOMER_ID]/configur... |
| `device` | `DeviceReference` | Required. The device the configuration is applied to. There are custom validations in ApplyConfig... |

### `CustomerListConfigurationsResponse`

Response message of customer's listing configuration.

| Property | Type | Description |
|----------|------|-------------|
| `configurations` | `array<Configuration>` | The configurations. |

### `CustomerListCustomersResponse`

Response message for listing my customers.

| Property | Type | Description |
|----------|------|-------------|
| `customers` | `array<Company>` | The customer accounts the calling user is a member of. |
| `nextPageToken` | `string` | A token used to access the next page of results. Omitted if no further results are available. |

### `CustomerListDevicesResponse`

Response message of customer's liting devices.

| Property | Type | Description |
|----------|------|-------------|
| `devices` | `array<Device>` | The customer's devices. |
| `nextPageToken` | `string` | A token used to access the next page of results. Omitted if no further results are available. |

### `CustomerListDpcsResponse`

Response message of customer's listing DPCs.

| Property | Type | Description |
|----------|------|-------------|
| `dpcs` | `array<Dpc>` | The list of DPCs available to the customer that support zero-touch enrollment. |

### `CustomerRemoveConfigurationRequest`

Request message for customer to remove the configuration from device.

| Property | Type | Description |
|----------|------|-------------|
| `device` | `DeviceReference` | Required. The device to remove the configuration from. There are custom validations in RemoveConf... |

### `CustomerUnclaimDeviceRequest`

Request message for customer to unclaim a device.

| Property | Type | Description |
|----------|------|-------------|
| `device` | `DeviceReference` | Required. The device to unclaim. There are custom validations in UnclaimDeviceRequestValidator. |

### `Device`

An Android or Chrome OS device registered for zero-touch enrollment.

| Property | Type | Description |
|----------|------|-------------|
| `claims` | `array<DeviceClaim>` | Output only. The provisioning claims for a device. Devices claimed for zero-touch enrollment have... |
| `configuration` | `string` | Not available to resellers. |
| `deviceId` | `string` | Output only. The ID of the device. Assigned by the server. |
| `deviceIdentifier` | `DeviceIdentifier` | The hardware IDs that identify a manufactured device. To learn more, read [Identifiers](https://d... |
| `deviceMetadata` | `DeviceMetadata` | The metadata attached to the device. Structured as key-value pairs. To learn more, read [Device m... |
| `name` | `string` | Output only. The API resource name in the format `partners/[PARTNER_ID]/devices/[DEVICE_ID]`. Ass... |

### `DeviceClaim`

A record of a device claimed by a reseller for a customer. Devices claimed for zero-touch enrollment have a claim with the type `SECTION_TYPE_ZERO_TOUCH`. To learn more, read [Claim devices for customers](/zero-touch/guides/how-it-works#claim).

| Property | Type | Description |
|----------|------|-------------|
| `additionalService` | `string` | The Additional service registered for the device. |
| `googleWorkspaceCustomerId` | `string` | The ID of the Google Workspace account that owns the Chrome OS device. |
| `ownerCompanyId` | `string` | The ID of the Customer that purchased the device. |
| `resellerId` | `string` | The ID of the reseller that claimed the device. |
| `sectionType` | `string` | Output only. The type of claim made on the device. |
| `vacationModeExpireTime` | `string` | The timestamp when the device will exit ‘vacation mode’. This value is present iff the device is ... |
| `vacationModeStartTime` | `string` | The timestamp when the device was put into ‘vacation mode’. This value is present iff the device ... |

### `DeviceIdentifier`

Encapsulates hardware and product IDs to identify a manufactured device. To understand requirements on identifier sets, read [Identifiers](https://developers.google.com/zero-touch/guides/identifiers).

| Property | Type | Description |
|----------|------|-------------|
| `chromeOsAttestedDeviceId` | `string` | An identifier provided by OEMs, carried through the production and sales process. Only applicable... |
| `deviceType` | `string` | The type of the device |
| `imei` | `string` | The device’s IMEI number. Validated on input. |
| `imei2` | `string` | The device’s second IMEI number. |
| `manufacturer` | `string` | The device manufacturer’s name. Matches the device's built-in value returned from `android.os.Bui... |
| `meid` | `string` | The device’s MEID number. |
| `meid2` | `string` | The device’s second MEID number. |
| `model` | `string` | The device model's name. Allowed values are listed in [Android models](/zero-touch/resources/manu... |
| `serialNumber` | `string` | The manufacturer's serial number for the device. This value might not be unique across different ... |

### `DeviceMetadata`

Metadata entries that can be attached to a `Device`. To learn more, read [Device metadata](https://developers.google.com/zero-touch/guides/metadata).

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `object` | Metadata entries recorded as key-value pairs. |

### `DeviceReference`

A `DeviceReference` is an API abstraction that lets you supply a _device_ argument to a method using one of the following identifier types: * A numeric API resource ID. * Real-world hardware IDs, such as IMEI number, belonging to the manufactured device. Methods that operate on devices take a `DeviceReference` as a parameter type because it's more flexible for the caller. To learn more about device identifiers, read [Identifiers](https://developers.google.com/zero-touch/guides/identifiers).

| Property | Type | Description |
|----------|------|-------------|
| `deviceId` | `string` | The ID of the device. |
| `deviceIdentifier` | `DeviceIdentifier` | The hardware IDs of the device. |

### `DevicesLongRunningOperationMetadata`

Tracks the status of a long-running operation to asynchronously update a batch of reseller metadata attached to devices. To learn more, read [Long‑running batch operations](/zero-touch/guides/how-it-works#operations).

| Property | Type | Description |
|----------|------|-------------|
| `devicesCount` | `integer` | The number of metadata updates in the operation. This might be different from the number of updat... |
| `processingStatus` | `string` | The processing status of the operation. |
| `progress` | `integer` | The processing progress of the operation. Measured as a number from 0 to 100. A value of 10O does... |

### `DevicesLongRunningOperationResponse`

Tracks the status of a long-running operation to claim, unclaim, or attach metadata to devices. To learn more, read [Long‑running batch operations](/zero-touch/guides/how-it-works#operations).

| Property | Type | Description |
|----------|------|-------------|
| `perDeviceStatus` | `array<OperationPerDevice>` | The processing status for each device in the operation. One `PerDeviceStatus` per device. The lis... |
| `successCount` | `integer` | A summary of how many items in the operation the server processed successfully. Updated as the op... |

### `Dpc`

An EMM's DPC ([device policy controller](http://developer.android.com/work/dpc/build-dpc.html)). Zero-touch enrollment installs a DPC (listed in the `Configuration`) on a device to maintain the customer's mobile policies. All the DPCs listed by the API support zero-touch enrollment and are available in Google Play.

| Property | Type | Description |
|----------|------|-------------|
| `dpcName` | `string` | Output only. The title of the DPC app in Google Play. For example, _Google Apps Device Policy_. U... |
| `name` | `string` | Output only. The API resource name in the format `customers/[CUSTOMER_ID]/dpcs/[DPC_ID]`. Assigne... |
| `packageName` | `string` | Output only. The DPC's Android application ID that looks like a Java package name. Zero-touch enr... |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `FindDevicesByDeviceIdentifierRequest`

Request to find devices.

| Property | Type | Description |
|----------|------|-------------|
| `deviceIdentifier` | `DeviceIdentifier` | Required. Required. The device identifier to search for. If serial number is provided then case i... |
| `limit` | `string` | Required. The maximum number of devices to show in a page of results. Must be between 1 and 100 i... |
| `pageToken` | `string` | A token specifying which result page to return. |

### `FindDevicesByDeviceIdentifierResponse`

Response containing found devices.

| Property | Type | Description |
|----------|------|-------------|
| `devices` | `array<Device>` | Found devices. |
| `nextPageToken` | `string` | A token used to access the next page of results. Omitted if no further results are available. |
| `totalSize` | `integer` | The total count of items in the list irrespective of pagination. |

### `FindDevicesByOwnerRequest`

Request to find devices by customers.

| Property | Type | Description |
|----------|------|-------------|
| `customerId` | `array<string>` | The list of customer IDs to search for. |
| `googleWorkspaceCustomerId` | `array<string>` | The list of IDs of Google Workspace accounts to search for. |
| `limit` | `string` | Required. The maximum number of devices to show in a page of results. Must be between 1 and 100 i... |
| `pageToken` | `string` | A token specifying which result page to return. |
| `sectionType` | `string` | Required. The section type of the device's provisioning record. |

### `FindDevicesByOwnerResponse`

Response containing found devices.

| Property | Type | Description |
|----------|------|-------------|
| `devices` | `array<Device>` | The customer's devices. |
| `nextPageToken` | `string` | A token used to access the next page of results. Omitted if no further results are available. |
| `totalSize` | `integer` | The total count of items in the list irrespective of pagination. |

### `GetDeviceSimLockStateRequest`

Request to get a device's SIM lock status.

| Property | Type | Description |
|----------|------|-------------|
| `deviceIdentifier` | `DeviceIdentifier` | Required. Required. The device identifier to search for. |

### `GetDeviceSimLockStateResponse`

Response containing a device's SimLock state.

| Property | Type | Description |
|----------|------|-------------|
| `simLockState` | `string` |  |

### `GoogleWorkspaceAccount`

A Google Workspace customer.

| Property | Type | Description |
|----------|------|-------------|
| `customerId` | `string` | Required. The customer ID. |
| `preProvisioningTokens` | `array<string>` | Output only. The pre-provisioning tokens previously used to claim devices. |

### `ListCustomersResponse`

Response message of all customers related to this partner.

| Property | Type | Description |
|----------|------|-------------|
| `customers` | `array<Company>` | List of customers related to this reseller partner. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Omitted if no further results are available. |
| `totalSize` | `integer` | The total count of items in the list irrespective of pagination. |

### `ListVendorCustomersResponse`

Response message to list customers of the vendor.

| Property | Type | Description |
|----------|------|-------------|
| `customers` | `array<Company>` | List of customers of the vendor. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Omitted if no further results are available. |
| `totalSize` | `integer` | The total count of items in the list irrespective of pagination. |

### `ListVendorsResponse`

Response message to list vendors of the partner.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token to retrieve the next page of results. Omitted if no further results are available. |
| `totalSize` | `integer` | The total count of items in the list irrespective of pagination. |
| `vendors` | `array<Company>` | List of vendors of the reseller partner. Fields `name`, `companyId` and `companyName` are populat... |

### `Operation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `Status` | This field will always be not set if the operation is created by `claimAsync`, `unclaimAsync`, or... |
| `metadata` | `object` | This field will contain a `DevicesLongRunningOperationMetadata` object if the operation is create... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | This field will contain a `DevicesLongRunningOperationResponse` object if the operation is create... |

### `OperationPerDevice`

A task for each device in the operation. Corresponds to each device change in the request.

| Property | Type | Description |
|----------|------|-------------|
| `claim` | `PartnerClaim` | A copy of the original device-claim request received by the server. |
| `result` | `PerDeviceStatusInBatch` | The processing result for each device. |
| `unclaim` | `PartnerUnclaim` | A copy of the original device-unclaim request received by the server. |
| `updateMetadata` | `UpdateMetadataArguments` | A copy of the original metadata-update request received by the server. |

### `PartnerClaim`

Identifies one claim request.

| Property | Type | Description |
|----------|------|-------------|
| `configurationId` | `string` | Optional. The ID of the configuration applied to the device section. |
| `customerId` | `string` | The ID of the customer for whom the device is being claimed. |
| `deviceIdentifier` | `DeviceIdentifier` | Required. Required. Device identifier of the device. |
| `deviceMetadata` | `DeviceMetadata` | Required. The metadata to attach to the device at claim. |
| `googleWorkspaceCustomerId` | `string` | The Google Workspace customer ID. |
| `preProvisioningToken` | `string` | Optional. Must and can only be set for Chrome OS devices. |
| `sectionType` | `string` | Required. The section type of the device's provisioning record. |
| `simlockProfileId` | `string` | Optional. Must and can only be set when DeviceProvisioningSectionType is SECTION_TYPE_SIM_LOCK. T... |

### `PartnerUnclaim`

Identifies one unclaim request.

| Property | Type | Description |
|----------|------|-------------|
| `deviceId` | `string` | Required. Device ID of the device. |
| `deviceIdentifier` | `DeviceIdentifier` | Required. Device identifier of the device. |
| `sectionType` | `string` | Required. The section type of the device's provisioning record. |
| `vacationModeDays` | `integer` | Optional. The duration of the vacation unlock starting from when the request is processed. (1 day... |
| `vacationModeExpireTime` | `string` | Optional. The expiration time of the vacation unlock. |

### `PerDeviceStatusInBatch`

Captures the processing status for each device in the operation.

| Property | Type | Description |
|----------|------|-------------|
| `deviceId` | `string` | If processing succeeds, the device ID of the device. |
| `errorIdentifier` | `string` | If processing fails, the error type. |
| `errorMessage` | `string` | If processing fails, a developer message explaining what went wrong. |
| `status` | `string` | The result status of the device after processing. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `UnclaimDeviceRequest`

Request message to unclaim a device.

| Property | Type | Description |
|----------|------|-------------|
| `deviceId` | `string` | Required. The device ID returned by `ClaimDevice`. |
| `deviceIdentifier` | `DeviceIdentifier` | Required. The device identifier you used when you claimed this device. |
| `sectionType` | `string` | Required. The section type of the device's provisioning record. |
| `vacationModeDays` | `integer` | The duration of the vacation unlock starting from when the request is processed. (1 day is treate... |
| `vacationModeExpireTime` | `string` | The expiration time of the vacation unlock. |

### `UnclaimDevicesRequest`

Request to unclaim devices asynchronously in batch.

| Property | Type | Description |
|----------|------|-------------|
| `unclaims` | `array<PartnerUnclaim>` | Required. The list of devices to unclaim. |

### `UpdateDeviceMetadataInBatchRequest`

Request to update device metadata in batch.

| Property | Type | Description |
|----------|------|-------------|
| `updates` | `array<UpdateMetadataArguments>` | Required. The list of metadata updates. |

### `UpdateDeviceMetadataRequest`

Request to set metadata for a device.

| Property | Type | Description |
|----------|------|-------------|
| `deviceMetadata` | `DeviceMetadata` | Required. The metadata to attach to the device. |

### `UpdateMetadataArguments`

Identifies metadata updates to one device.

| Property | Type | Description |
|----------|------|-------------|
| `deviceId` | `string` | Required. Device ID of the device. |
| `deviceIdentifier` | `DeviceIdentifier` | Required. Device identifier. |
| `deviceMetadata` | `DeviceMetadata` | Required. The metadata to update. |

