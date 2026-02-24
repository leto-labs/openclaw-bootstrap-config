# Google Play EMM API - API Reference

**Version**: `v1` | **Methods**: 77 | **Schemas**: 90

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `androidenterprise.devices.list` | GET | `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices` | Retrieves the IDs of all of a user's devices. |
| `androidenterprise.devices.get` | GET | `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}` | Retrieves the details of a device. |
| `androidenterprise.devices.update` | PUT | `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}` | Updates the device policy. To ensure the policy is properly enforced, you need to prevent unmanag... |
| `androidenterprise.devices.getState` | GET | `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/state` | Retrieves whether a device's access to Google services is enabled or disabled. The device state t... |
| `androidenterprise.devices.setState` | PUT | `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/state` | Sets whether a device's access to Google services is enabled or disabled. The device state takes ... |
| `androidenterprise.devices.forceReportUpload` | POST | `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/forceReportUpload` | Uploads a report containing any changes in app states on the device since the last report was gen... |
| `androidenterprise.enrollmentTokens.create` | POST | `androidenterprise/v1/enterprises/{enterpriseId}/enrollmentTokens` | Returns a token for device enrollment. The DPC can encode this token within the QR/NFC/zero-touch... |
| `androidenterprise.enterprises.list` | GET | `androidenterprise/v1/enterprises` | Looks up an enterprise by domain name. This is only supported for enterprises created via the Goo... |
| `androidenterprise.enterprises.get` | GET | `androidenterprise/v1/enterprises/{enterpriseId}` | Retrieves the name and domain of an enterprise. |
| `androidenterprise.enterprises.enroll` | POST | `androidenterprise/v1/enterprises/enroll` | Enrolls an enterprise with the calling EMM. |
| `androidenterprise.enterprises.setAccount` | PUT | `androidenterprise/v1/enterprises/{enterpriseId}/account` | Sets the account that will be used to authenticate to the API as the enterprise. |
| `androidenterprise.enterprises.sendTestPushNotification` | POST | `androidenterprise/v1/enterprises/{enterpriseId}/sendTestPushNotification` | Sends a test notification to validate the EMM integration with the Google Cloud Pub/Sub service f... |
| `androidenterprise.enterprises.pullNotificationSet` | POST | `androidenterprise/v1/enterprises/pullNotificationSet` | Pulls and returns a notification set for the enterprises associated with the service account auth... |
| `androidenterprise.enterprises.acknowledgeNotificationSet` | POST | `androidenterprise/v1/enterprises/acknowledgeNotificationSet` | Acknowledges notifications that were received from Enterprises.PullNotificationSet to prevent sub... |
| `androidenterprise.enterprises.unenroll` | POST | `androidenterprise/v1/enterprises/{enterpriseId}/unenroll` | Unenrolls an enterprise from the calling EMM. |
| `androidenterprise.enterprises.getStoreLayout` | GET | `androidenterprise/v1/enterprises/{enterpriseId}/storeLayout` | Returns the store layout for the enterprise. If the store layout has not been set, returns "basic... |
| `androidenterprise.enterprises.setStoreLayout` | PUT | `androidenterprise/v1/enterprises/{enterpriseId}/storeLayout` | Sets the store layout for the enterprise. By default, storeLayoutType is set to "basic" and the b... |
| `androidenterprise.enterprises.generateSignupUrl` | POST | `androidenterprise/v1/enterprises/signupUrl` | Generates a sign-up URL. |
| `androidenterprise.enterprises.completeSignup` | POST | `androidenterprise/v1/enterprises/completeSignup` | Completes the signup flow, by specifying the Completion token and Enterprise token. This request ... |
| `androidenterprise.enterprises.getServiceAccount` | GET | `androidenterprise/v1/enterprises/{enterpriseId}/serviceAccount` | Returns a service account and credentials. The service account can be bound to the enterprise by ... |
| `androidenterprise.enterprises.createWebToken` | POST | `androidenterprise/v1/enterprises/{enterpriseId}/createWebToken` | Returns a unique token to access an embeddable UI. To generate a web UI, pass the generated token... |
| `androidenterprise.enterprises.generateEnterpriseUpgradeUrl` | POST | `androidenterprise/v1/enterprises/{enterpriseId}/generateEnterpriseUpgradeUrl` | Generates an enterprise upgrade URL to upgrade an existing managed Google Play Accounts enterpris... |
| `androidenterprise.entitlements.list` | GET | `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/entitlements` | Lists all entitlements for the specified user. Only the ID is set. **Note:** This item has been d... |
| `androidenterprise.entitlements.get` | GET | `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/entitlements/{entitlementId}` | Retrieves details of an entitlement. **Note:** This item has been deprecated. New integrations ca... |
| `androidenterprise.entitlements.update` | PUT | `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/entitlements/{entitlementId}` | Adds or updates an entitlement to an app for a user. **Note:** This item has been deprecated. New... |
| `androidenterprise.entitlements.delete` | DELETE | `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/entitlements/{entitlementId}` | Removes an entitlement to an app for a user. **Note:** This item has been deprecated. New integra... |
| `androidenterprise.grouplicenseusers.list` | GET | `androidenterprise/v1/enterprises/{enterpriseId}/groupLicenses/{groupLicenseId}/users` | Retrieves the IDs of the users who have been granted entitlements under the license. **Note:** Th... |
| `androidenterprise.grouplicenses.list` | GET | `androidenterprise/v1/enterprises/{enterpriseId}/groupLicenses` | Retrieves IDs of all products for which the enterprise has a group license. **Note:** This item h... |
| `androidenterprise.grouplicenses.get` | GET | `androidenterprise/v1/enterprises/{enterpriseId}/groupLicenses/{groupLicenseId}` | Retrieves details of an enterprise's group license for a product. **Note:** This item has been de... |
| `androidenterprise.installs.list` | GET | `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/installs` | Retrieves the details of all apps installed on the specified device. |
| `androidenterprise.installs.get` | GET | `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/installs/{installId}` | Retrieves details of an installation of an app on a device. |
| `androidenterprise.installs.update` | PUT | `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/installs/{installId}` | Requests to install the latest version of an app to a device. If the app is already installed, th... |
| `androidenterprise.installs.delete` | DELETE | `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/installs/{installId}` | Requests to remove an app from a device. A call to get or list will still show the app as install... |
| `androidenterprise.managedconfigurationsfordevice.list` | GET | `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/managedConfigurationsForDevice` | Lists all the per-device managed configurations for the specified device. Only the ID is set. |
| `androidenterprise.managedconfigurationsfordevice.get` | GET | `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/managedConfigurationsForDevice/{managedConfigurationForDeviceId}` | Retrieves details of a per-device managed configuration. |
| `androidenterprise.managedconfigurationsfordevice.update` | PUT | `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/managedConfigurationsForDevice/{managedConfigurationForDeviceId}` | Adds or updates a per-device managed configuration for an app for the specified device. |
| `androidenterprise.managedconfigurationsfordevice.delete` | DELETE | `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/managedConfigurationsForDevice/{managedConfigurationForDeviceId}` | Removes a per-device managed configuration for an app for the specified device. |
| `androidenterprise.managedconfigurationsforuser.list` | GET | `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/managedConfigurationsForUser` | Lists all the per-user managed configurations for the specified user. Only the ID is set. |
| `androidenterprise.managedconfigurationsforuser.get` | GET | `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/managedConfigurationsForUser/{managedConfigurationForUserId}` | Retrieves details of a per-user managed configuration for an app for the specified user. |
| `androidenterprise.managedconfigurationsforuser.update` | PUT | `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/managedConfigurationsForUser/{managedConfigurationForUserId}` | Adds or updates the managed configuration settings for an app for the specified user. If you supp... |
| `androidenterprise.managedconfigurationsforuser.delete` | DELETE | `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/managedConfigurationsForUser/{managedConfigurationForUserId}` | Removes a per-user managed configuration for an app for the specified user. |
| `androidenterprise.managedconfigurationssettings.list` | GET | `androidenterprise/v1/enterprises/{enterpriseId}/products/{productId}/managedConfigurationsSettings` | Lists all the managed configurations settings for the specified app. |
| `androidenterprise.permissions.get` | GET | `androidenterprise/v1/permissions/{permissionId}` | Retrieves details of an Android app permission for display to an enterprise admin. |
| `androidenterprise.products.get` | GET | `androidenterprise/v1/enterprises/{enterpriseId}/products/{productId}` | Retrieves details of a product for display to an enterprise admin. |
| `androidenterprise.products.list` | GET | `androidenterprise/v1/enterprises/{enterpriseId}/products` | Finds approved products that match a query, or all approved products if there is no query. **Note... |
| `androidenterprise.products.getPermissions` | GET | `androidenterprise/v1/enterprises/{enterpriseId}/products/{productId}/permissions` | Retrieves the Android app permissions required by this app. |
| `androidenterprise.products.generateApprovalUrl` | POST | `androidenterprise/v1/enterprises/{enterpriseId}/products/{productId}/generateApprovalUrl` | Generates a URL that can be rendered in an iframe to display the permissions (if any) of a produc... |
| `androidenterprise.products.approve` | POST | `androidenterprise/v1/enterprises/{enterpriseId}/products/{productId}/approve` | Approves the specified product and the relevant app permissions, if any. The maximum number of pr... |
| `androidenterprise.products.unapprove` | POST | `androidenterprise/v1/enterprises/{enterpriseId}/products/{productId}/unapprove` | Unapproves the specified product (and the relevant app permissions, if any) **Note:** This item h... |
| `androidenterprise.products.getAppRestrictionsSchema` | GET | `androidenterprise/v1/enterprises/{enterpriseId}/products/{productId}/appRestrictionsSchema` | Retrieves the schema that defines the configurable properties for this product. All products have... |
| `androidenterprise.serviceaccountkeys.insert` | POST | `androidenterprise/v1/enterprises/{enterpriseId}/serviceAccountKeys` | Generates new credentials for the service account associated with this enterprise. The calling se... |
| `androidenterprise.serviceaccountkeys.list` | GET | `androidenterprise/v1/enterprises/{enterpriseId}/serviceAccountKeys` | Lists all active credentials for the service account associated with this enterprise. Only the ID... |
| `androidenterprise.serviceaccountkeys.delete` | DELETE | `androidenterprise/v1/enterprises/{enterpriseId}/serviceAccountKeys/{keyId}` | Removes and invalidates the specified credentials for the service account associated with this en... |
| `androidenterprise.storelayoutclusters.list` | GET | `androidenterprise/v1/enterprises/{enterpriseId}/storeLayout/pages/{pageId}/clusters` | Retrieves the details of all clusters on the specified page. |
| `androidenterprise.storelayoutclusters.insert` | POST | `androidenterprise/v1/enterprises/{enterpriseId}/storeLayout/pages/{pageId}/clusters` | Inserts a new cluster in a page. |
| `androidenterprise.storelayoutclusters.get` | GET | `androidenterprise/v1/enterprises/{enterpriseId}/storeLayout/pages/{pageId}/clusters/{clusterId}` | Retrieves details of a cluster. |
| `androidenterprise.storelayoutclusters.update` | PUT | `androidenterprise/v1/enterprises/{enterpriseId}/storeLayout/pages/{pageId}/clusters/{clusterId}` | Updates a cluster. |
| `androidenterprise.storelayoutclusters.delete` | DELETE | `androidenterprise/v1/enterprises/{enterpriseId}/storeLayout/pages/{pageId}/clusters/{clusterId}` | Deletes a cluster. |
| `androidenterprise.storelayoutpages.list` | GET | `androidenterprise/v1/enterprises/{enterpriseId}/storeLayout/pages` | Retrieves the details of all pages in the store. |
| `androidenterprise.storelayoutpages.insert` | POST | `androidenterprise/v1/enterprises/{enterpriseId}/storeLayout/pages` | Inserts a new store page. |
| `androidenterprise.storelayoutpages.get` | GET | `androidenterprise/v1/enterprises/{enterpriseId}/storeLayout/pages/{pageId}` | Retrieves details of a store page. |
| `androidenterprise.storelayoutpages.update` | PUT | `androidenterprise/v1/enterprises/{enterpriseId}/storeLayout/pages/{pageId}` | Updates the content of a store page. |
| `androidenterprise.storelayoutpages.delete` | DELETE | `androidenterprise/v1/enterprises/{enterpriseId}/storeLayout/pages/{pageId}` | Deletes a store page. |
| `androidenterprise.users.insert` | POST | `androidenterprise/v1/enterprises/{enterpriseId}/users` | Creates a new EMM-managed user. The Users resource passed in the body of the request should inclu... |
| `androidenterprise.users.update` | PUT | `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}` | Updates the details of an EMM-managed user. Can be used with EMM-managed users only (not Google m... |
| `androidenterprise.users.list` | GET | `androidenterprise/v1/enterprises/{enterpriseId}/users` | Looks up a user by primary email address. This is only supported for Google-managed users. Lookup... |
| `androidenterprise.users.get` | GET | `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}` | Retrieves a user's details. |
| `androidenterprise.users.delete` | DELETE | `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}` | Deleted an EMM-managed user. |
| `androidenterprise.users.generateAuthenticationToken` | POST | `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/authenticationToken` | Generates an authentication token which the device policy client can use to provision the given E... |
| `androidenterprise.users.getAvailableProductSet` | GET | `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/availableProductSet` | Retrieves the set of products a user is entitled to access. **Note:** This item has been deprecat... |
| `androidenterprise.users.revokeDeviceAccess` | DELETE | `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/deviceAccess` | Revokes access to all devices currently provisioned to the user. The user will no longer be able ... |
| `androidenterprise.users.setAvailableProductSet` | PUT | `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/availableProductSet` | Modifies the set of products that a user is entitled to access (referred to as *whitelisted* prod... |
| `androidenterprise.webapps.get` | GET | `androidenterprise/v1/enterprises/{enterpriseId}/webApps/{webAppId}` | Gets an existing web app. |
| `androidenterprise.webapps.list` | GET | `androidenterprise/v1/enterprises/{enterpriseId}/webApps` | Retrieves the details of all web apps for a given enterprise. |
| `androidenterprise.webapps.insert` | POST | `androidenterprise/v1/enterprises/{enterpriseId}/webApps` | Creates a new web app for the enterprise. |
| `androidenterprise.webapps.update` | PUT | `androidenterprise/v1/enterprises/{enterpriseId}/webApps/{webAppId}` | Updates an existing web app. |
| `androidenterprise.webapps.delete` | DELETE | `androidenterprise/v1/enterprises/{enterpriseId}/webApps/{webAppId}` | Deletes an existing web app. |

### `androidenterprise.devices.list`

**GET** `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices`

Retrieves the IDs of all of a user's devices.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `userId` | `string` | path | Yes | The ID of the user. |

**Response**: `DevicesListResponse`

```typescript
const res = await androidenterprise.devices.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.devices.get`

**GET** `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}`

Retrieves the details of a device.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `userId` | `string` | path | Yes | The ID of the user. |
| `deviceId` | `string` | path | Yes | The ID of the device. |

**Response**: `Device`

```typescript
const res = await androidenterprise.devices.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.devices.update`

**PUT** `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}`

Updates the device policy. To ensure the policy is properly enforced, you need to prevent unmanaged accounts from accessing Google Play by setting the allowed_accounts in the managed configuration for the Google Play package. See restrict accounts in Google Play. When provisioning a new device, you should set the device policy using this method before adding the managed Google Play Account to the device, otherwise the policy will not be applied for a short period of time after adding the account to the device.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `userId` | `string` | path | Yes | The ID of the user. |
| `deviceId` | `string` | path | Yes | The ID of the device. |
| `updateMask` | `string` | query | No | Mask that identifies which fields to update. If not set, all modifiable fields will be modified. When set in a query ... |

**Request body**: `Device`

**Response**: `Device`

```typescript
const res = await androidenterprise.devices.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.devices.getState`

**GET** `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/state`

Retrieves whether a device's access to Google services is enabled or disabled. The device state takes effect only if enforcing EMM policies on Android devices is enabled in the Google Admin Console. Otherwise, the device state is ignored and all devices are allowed access to Google services. This is only supported for Google-managed users.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `userId` | `string` | path | Yes | The ID of the user. |
| `deviceId` | `string` | path | Yes | The ID of the device. |

**Response**: `DeviceState`

```typescript
const res = await androidenterprise.devices.getState({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.devices.setState`

**PUT** `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/state`

Sets whether a device's access to Google services is enabled or disabled. The device state takes effect only if enforcing EMM policies on Android devices is enabled in the Google Admin Console. Otherwise, the device state is ignored and all devices are allowed access to Google services. This is only supported for Google-managed users.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `userId` | `string` | path | Yes | The ID of the user. |
| `deviceId` | `string` | path | Yes | The ID of the device. |

**Request body**: `DeviceState`

**Response**: `DeviceState`

```typescript
const res = await androidenterprise.devices.setState({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.devices.forceReportUpload`

**POST** `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/forceReportUpload`

Uploads a report containing any changes in app states on the device since the last report was generated. You can call this method up to 3 times every 24 hours for a given device. If you exceed the quota, then the Google Play EMM API returns HTTP 429 Too Many Requests.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `userId` | `string` | path | Yes | The ID of the user. |
| `deviceId` | `string` | path | Yes | The ID of the device. |

```typescript
const res = await androidenterprise.devices.forceReportUpload({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.enrollmentTokens.create`

**POST** `androidenterprise/v1/enterprises/{enterpriseId}/enrollmentTokens`

Returns a token for device enrollment. The DPC can encode this token within the QR/NFC/zero-touch enrollment payload or fetch it before calling the on-device API to authenticate the user. The token can be generated for each device or reused across multiple devices.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | Required. The ID of the enterprise. |

**Request body**: `EnrollmentToken`

**Response**: `EnrollmentToken`

```typescript
const res = await androidenterprise.enrollmentTokens.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.enterprises.list`

**GET** `androidenterprise/v1/enterprises`

Looks up an enterprise by domain name. This is only supported for enterprises created via the Google-initiated creation flow. Lookup of the id is not needed for enterprises created via the EMM-initiated flow since the EMM learns the enterprise ID in the callback specified in the Enterprises.generateSignupUrl call.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `domain` | `string` | query | Yes | Required. The exact primary domain name of the enterprise to look up. |

**Response**: `EnterprisesListResponse`

```typescript
const res = await androidenterprise.enterprises.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.enterprises.get`

**GET** `androidenterprise/v1/enterprises/{enterpriseId}`

Retrieves the name and domain of an enterprise.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |

**Response**: `Enterprise`

```typescript
const res = await androidenterprise.enterprises.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.enterprises.enroll`

**POST** `androidenterprise/v1/enterprises/enroll`

Enrolls an enterprise with the calling EMM.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `token` | `string` | query | Yes | Required. The token provided by the enterprise to register the EMM. |

**Request body**: `Enterprise`

**Response**: `Enterprise`

```typescript
const res = await androidenterprise.enterprises.enroll({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.enterprises.setAccount`

**PUT** `androidenterprise/v1/enterprises/{enterpriseId}/account`

Sets the account that will be used to authenticate to the API as the enterprise.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |

**Request body**: `EnterpriseAccount`

**Response**: `EnterpriseAccount`

```typescript
const res = await androidenterprise.enterprises.setAccount({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.enterprises.sendTestPushNotification`

**POST** `androidenterprise/v1/enterprises/{enterpriseId}/sendTestPushNotification`

Sends a test notification to validate the EMM integration with the Google Cloud Pub/Sub service for this enterprise.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |

**Response**: `EnterprisesSendTestPushNotificationResponse`

```typescript
const res = await androidenterprise.enterprises.sendTestPushNotification({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.enterprises.pullNotificationSet`

**POST** `androidenterprise/v1/enterprises/pullNotificationSet`

Pulls and returns a notification set for the enterprises associated with the service account authenticated for the request. The notification set may be empty if no notification are pending. A notification set returned needs to be acknowledged within 20 seconds by calling Enterprises.AcknowledgeNotificationSet, unless the notification set is empty. Notifications that are not acknowledged within the 20 seconds will eventually be included again in the response to another PullNotificationSet request, and those that are never acknowledged will ultimately be deleted according to the Google Cloud Platform Pub/Sub system policy. Multiple requests might be performed concurrently to retrieve notifications, in which case the pending notifications (if any) will be split among each caller, if any are pending. If no notifications are present, an empty notification list is returned. Subsequent requests may return more notifications once they become available.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `requestMode` | `string` | query | No | The request mode for pulling notifications. Specifying waitForNotifications will cause the request to block and wait ... |

**Response**: `NotificationSet`

```typescript
const res = await androidenterprise.enterprises.pullNotificationSet({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.enterprises.acknowledgeNotificationSet`

**POST** `androidenterprise/v1/enterprises/acknowledgeNotificationSet`

Acknowledges notifications that were received from Enterprises.PullNotificationSet to prevent subsequent calls from returning the same notifications.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `notificationSetId` | `string` | query | No | The notification set ID as returned by Enterprises.PullNotificationSet. This must be provided. |

```typescript
const res = await androidenterprise.enterprises.acknowledgeNotificationSet({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.enterprises.unenroll`

**POST** `androidenterprise/v1/enterprises/{enterpriseId}/unenroll`

Unenrolls an enterprise from the calling EMM.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |

```typescript
const res = await androidenterprise.enterprises.unenroll({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.enterprises.getStoreLayout`

**GET** `androidenterprise/v1/enterprises/{enterpriseId}/storeLayout`

Returns the store layout for the enterprise. If the store layout has not been set, returns "basic" as the store layout type and no homepage.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |

**Response**: `StoreLayout`

```typescript
const res = await androidenterprise.enterprises.getStoreLayout({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.enterprises.setStoreLayout`

**PUT** `androidenterprise/v1/enterprises/{enterpriseId}/storeLayout`

Sets the store layout for the enterprise. By default, storeLayoutType is set to "basic" and the basic store layout is enabled. The basic layout only contains apps approved by the admin, and that have been added to the available product set for a user (using the setAvailableProductSet call). Apps on the page are sorted in order of their product ID value. If you create a custom store layout (by setting storeLayoutType = "custom" and setting a homepage), the basic store layout is disabled.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |

**Request body**: `StoreLayout`

**Response**: `StoreLayout`

```typescript
const res = await androidenterprise.enterprises.setStoreLayout({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.enterprises.generateSignupUrl`

**POST** `androidenterprise/v1/enterprises/signupUrl`

Generates a sign-up URL.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `adminEmail` | `string` | query | No | Optional. Email address used to prefill the admin field of the enterprise signup form. This value is a hint only and ... |
| `allowedDomains` | `string` | query | No | Optional. A list of domains that are permitted for the admin email. The IT admin cannot enter an email address with a... |
| `callbackUrl` | `string` | query | No | The callback URL to which the Admin will be redirected after successfully creating an enterprise. Before redirecting ... |

**Response**: `SignupInfo`

```typescript
const res = await androidenterprise.enterprises.generateSignupUrl({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.enterprises.completeSignup`

**POST** `androidenterprise/v1/enterprises/completeSignup`

Completes the signup flow, by specifying the Completion token and Enterprise token. This request must not be called multiple times for a given Enterprise Token.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `completionToken` | `string` | query | No | The Completion token initially returned by GenerateSignupUrl. |
| `enterpriseToken` | `string` | query | No | The Enterprise token appended to the Callback URL. |

**Response**: `Enterprise`

```typescript
const res = await androidenterprise.enterprises.completeSignup({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.enterprises.getServiceAccount`

**GET** `androidenterprise/v1/enterprises/{enterpriseId}/serviceAccount`

Returns a service account and credentials. The service account can be bound to the enterprise by calling setAccount. The service account is unique to this enterprise and EMM, and will be deleted if the enterprise is unbound. The credentials contain private key data and are not stored server-side. This method can only be called after calling Enterprises.Enroll or Enterprises.CompleteSignup, and before Enterprises.SetAccount; at other times it will return an error. Subsequent calls after the first will generate a new, unique set of credentials, and invalidate the previously generated credentials. Once the service account is bound to the enterprise, it can be managed using the serviceAccountKeys resource. *Note:* After you create a key, you might need to wait for 60 seconds or more before you perform another operation with the key. If you try to perform an operation with the key immediately after you create the key, and you receive an error, you can retry the request with exponential backoff .

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `keyType` | `string` | query | No | The type of credential to return with the service account. Required. |

**Response**: `ServiceAccount`

```typescript
const res = await androidenterprise.enterprises.getServiceAccount({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.enterprises.createWebToken`

**POST** `androidenterprise/v1/enterprises/{enterpriseId}/createWebToken`

Returns a unique token to access an embeddable UI. To generate a web UI, pass the generated token into the managed Google Play javascript API. Each token may only be used to start one UI session. See the JavaScript API documentation for further information.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |

**Request body**: `AdministratorWebTokenSpec`

**Response**: `AdministratorWebToken`

```typescript
const res = await androidenterprise.enterprises.createWebToken({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.enterprises.generateEnterpriseUpgradeUrl`

**POST** `androidenterprise/v1/enterprises/{enterpriseId}/generateEnterpriseUpgradeUrl`

Generates an enterprise upgrade URL to upgrade an existing managed Google Play Accounts enterprise to a managed Google domain. See the guide to upgrading an enterprise for more details.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | Required. The ID of the enterprise. |
| `adminEmail` | `string` | query | No | Optional. Email address used to prefill the admin field of the enterprise signup form as part of the upgrade process.... |
| `allowedDomains` | `string` | query | No | Optional. A list of domains that are permitted for the admin email. The IT admin cannot enter an email address with a... |

**Response**: `GenerateEnterpriseUpgradeUrlResponse`

```typescript
const res = await androidenterprise.enterprises.generateEnterpriseUpgradeUrl({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.entitlements.list`

**GET** `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/entitlements`

Lists all entitlements for the specified user. Only the ID is set. **Note:** This item has been deprecated. New integrations cannot use this method and can refer to our new recommendations.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `userId` | `string` | path | Yes | The ID of the user. |

**Response**: `EntitlementsListResponse`

```typescript
const res = await androidenterprise.entitlements.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.entitlements.get`

**GET** `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/entitlements/{entitlementId}`

Retrieves details of an entitlement. **Note:** This item has been deprecated. New integrations cannot use this method and can refer to our new recommendations.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `userId` | `string` | path | Yes | The ID of the user. |
| `entitlementId` | `string` | path | Yes | The ID of the entitlement (a product ID), e.g. "app:com.google.android.gm". |

**Response**: `Entitlement`

```typescript
const res = await androidenterprise.entitlements.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.entitlements.update`

**PUT** `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/entitlements/{entitlementId}`

Adds or updates an entitlement to an app for a user. **Note:** This item has been deprecated. New integrations cannot use this method and can refer to our new recommendations.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `userId` | `string` | path | Yes | The ID of the user. |
| `entitlementId` | `string` | path | Yes | The ID of the entitlement (a product ID), e.g. "app:com.google.android.gm". |
| `install` | `boolean` | query | No | Set to true to also install the product on all the user's devices where possible. Failure to install on one or more d... |

**Request body**: `Entitlement`

**Response**: `Entitlement`

```typescript
const res = await androidenterprise.entitlements.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.entitlements.delete`

**DELETE** `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/entitlements/{entitlementId}`

Removes an entitlement to an app for a user. **Note:** This item has been deprecated. New integrations cannot use this method and can refer to our new recommendations.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `userId` | `string` | path | Yes | The ID of the user. |
| `entitlementId` | `string` | path | Yes | The ID of the entitlement (a product ID), e.g. "app:com.google.android.gm". |

```typescript
const res = await androidenterprise.entitlements.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.grouplicenseusers.list`

**GET** `androidenterprise/v1/enterprises/{enterpriseId}/groupLicenses/{groupLicenseId}/users`

Retrieves the IDs of the users who have been granted entitlements under the license. **Note:** This item has been deprecated. New integrations cannot use this method and can refer to our new recommendations.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `groupLicenseId` | `string` | path | Yes | The ID of the product the group license is for, e.g. "app:com.google.android.gm". |

**Response**: `GroupLicenseUsersListResponse`

```typescript
const res = await androidenterprise.grouplicenseusers.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.grouplicenses.list`

**GET** `androidenterprise/v1/enterprises/{enterpriseId}/groupLicenses`

Retrieves IDs of all products for which the enterprise has a group license. **Note:** This item has been deprecated. New integrations cannot use this method and can refer to our new recommendations.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |

**Response**: `GroupLicensesListResponse`

```typescript
const res = await androidenterprise.grouplicenses.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.grouplicenses.get`

**GET** `androidenterprise/v1/enterprises/{enterpriseId}/groupLicenses/{groupLicenseId}`

Retrieves details of an enterprise's group license for a product. **Note:** This item has been deprecated. New integrations cannot use this method and can refer to our new recommendations.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `groupLicenseId` | `string` | path | Yes | The ID of the product the group license is for, e.g. "app:com.google.android.gm". |

**Response**: `GroupLicense`

```typescript
const res = await androidenterprise.grouplicenses.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.installs.list`

**GET** `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/installs`

Retrieves the details of all apps installed on the specified device.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `userId` | `string` | path | Yes | The ID of the user. |
| `deviceId` | `string` | path | Yes | The Android ID of the device. |

**Response**: `InstallsListResponse`

```typescript
const res = await androidenterprise.installs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.installs.get`

**GET** `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/installs/{installId}`

Retrieves details of an installation of an app on a device.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `userId` | `string` | path | Yes | The ID of the user. |
| `deviceId` | `string` | path | Yes | The Android ID of the device. |
| `installId` | `string` | path | Yes | The ID of the product represented by the install, e.g. "app:com.google.android.gm". |

**Response**: `Install`

```typescript
const res = await androidenterprise.installs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.installs.update`

**PUT** `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/installs/{installId}`

Requests to install the latest version of an app to a device. If the app is already installed, then it is updated to the latest version if necessary.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `userId` | `string` | path | Yes | The ID of the user. |
| `deviceId` | `string` | path | Yes | The Android ID of the device. |
| `installId` | `string` | path | Yes | The ID of the product represented by the install, e.g. "app:com.google.android.gm". |

**Request body**: `Install`

**Response**: `Install`

```typescript
const res = await androidenterprise.installs.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.installs.delete`

**DELETE** `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/installs/{installId}`

Requests to remove an app from a device. A call to get or list will still show the app as installed on the device until it is actually removed. A successful response indicates that a removal request has been sent to the device. The call will be considered successful even if the app is not present on the device (e.g. it was never installed, or was removed by the user).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `userId` | `string` | path | Yes | The ID of the user. |
| `deviceId` | `string` | path | Yes | The Android ID of the device. |
| `installId` | `string` | path | Yes | The ID of the product represented by the install, e.g. "app:com.google.android.gm". |

```typescript
const res = await androidenterprise.installs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.managedconfigurationsfordevice.list`

**GET** `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/managedConfigurationsForDevice`

Lists all the per-device managed configurations for the specified device. Only the ID is set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `userId` | `string` | path | Yes | The ID of the user. |
| `deviceId` | `string` | path | Yes | The Android ID of the device. |

**Response**: `ManagedConfigurationsForDeviceListResponse`

```typescript
const res = await androidenterprise.managedconfigurationsfordevice.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.managedconfigurationsfordevice.get`

**GET** `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/managedConfigurationsForDevice/{managedConfigurationForDeviceId}`

Retrieves details of a per-device managed configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `userId` | `string` | path | Yes | The ID of the user. |
| `deviceId` | `string` | path | Yes | The Android ID of the device. |
| `managedConfigurationForDeviceId` | `string` | path | Yes | The ID of the managed configuration (a product ID), e.g. "app:com.google.android.gm". |

**Response**: `ManagedConfiguration`

```typescript
const res = await androidenterprise.managedconfigurationsfordevice.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.managedconfigurationsfordevice.update`

**PUT** `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/managedConfigurationsForDevice/{managedConfigurationForDeviceId}`

Adds or updates a per-device managed configuration for an app for the specified device.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `userId` | `string` | path | Yes | The ID of the user. |
| `deviceId` | `string` | path | Yes | The Android ID of the device. |
| `managedConfigurationForDeviceId` | `string` | path | Yes | The ID of the managed configuration (a product ID), e.g. "app:com.google.android.gm". |

**Request body**: `ManagedConfiguration`

**Response**: `ManagedConfiguration`

```typescript
const res = await androidenterprise.managedconfigurationsfordevice.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.managedconfigurationsfordevice.delete`

**DELETE** `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/managedConfigurationsForDevice/{managedConfigurationForDeviceId}`

Removes a per-device managed configuration for an app for the specified device.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `userId` | `string` | path | Yes | The ID of the user. |
| `deviceId` | `string` | path | Yes | The Android ID of the device. |
| `managedConfigurationForDeviceId` | `string` | path | Yes | The ID of the managed configuration (a product ID), e.g. "app:com.google.android.gm". |

```typescript
const res = await androidenterprise.managedconfigurationsfordevice.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.managedconfigurationsforuser.list`

**GET** `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/managedConfigurationsForUser`

Lists all the per-user managed configurations for the specified user. Only the ID is set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `userId` | `string` | path | Yes | The ID of the user. |

**Response**: `ManagedConfigurationsForUserListResponse`

```typescript
const res = await androidenterprise.managedconfigurationsforuser.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.managedconfigurationsforuser.get`

**GET** `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/managedConfigurationsForUser/{managedConfigurationForUserId}`

Retrieves details of a per-user managed configuration for an app for the specified user.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `userId` | `string` | path | Yes | The ID of the user. |
| `managedConfigurationForUserId` | `string` | path | Yes | The ID of the managed configuration (a product ID), e.g. "app:com.google.android.gm". |

**Response**: `ManagedConfiguration`

```typescript
const res = await androidenterprise.managedconfigurationsforuser.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.managedconfigurationsforuser.update`

**PUT** `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/managedConfigurationsForUser/{managedConfigurationForUserId}`

Adds or updates the managed configuration settings for an app for the specified user. If you support the Managed configurations iframe, you can apply managed configurations to a user by specifying an mcmId and its associated configuration variables (if any) in the request. Alternatively, all EMMs can apply managed configurations by passing a list of managed properties.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `userId` | `string` | path | Yes | The ID of the user. |
| `managedConfigurationForUserId` | `string` | path | Yes | The ID of the managed configuration (a product ID), e.g. "app:com.google.android.gm". |

**Request body**: `ManagedConfiguration`

**Response**: `ManagedConfiguration`

```typescript
const res = await androidenterprise.managedconfigurationsforuser.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.managedconfigurationsforuser.delete`

**DELETE** `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/managedConfigurationsForUser/{managedConfigurationForUserId}`

Removes a per-user managed configuration for an app for the specified user.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `userId` | `string` | path | Yes | The ID of the user. |
| `managedConfigurationForUserId` | `string` | path | Yes | The ID of the managed configuration (a product ID), e.g. "app:com.google.android.gm". |

```typescript
const res = await androidenterprise.managedconfigurationsforuser.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.managedconfigurationssettings.list`

**GET** `androidenterprise/v1/enterprises/{enterpriseId}/products/{productId}/managedConfigurationsSettings`

Lists all the managed configurations settings for the specified app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `productId` | `string` | path | Yes | The ID of the product for which the managed configurations settings applies to. |

**Response**: `ManagedConfigurationsSettingsListResponse`

```typescript
const res = await androidenterprise.managedconfigurationssettings.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.permissions.get`

**GET** `androidenterprise/v1/permissions/{permissionId}`

Retrieves details of an Android app permission for display to an enterprise admin.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `permissionId` | `string` | path | Yes | The ID of the permission. |
| `language` | `string` | query | No | The BCP47 tag for the user's preferred language (e.g. "en-US", "de") |

**Response**: `Permission`

```typescript
const res = await androidenterprise.permissions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.products.get`

**GET** `androidenterprise/v1/enterprises/{enterpriseId}/products/{productId}`

Retrieves details of a product for display to an enterprise admin.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `productId` | `string` | path | Yes | The ID of the product, e.g. "app:com.google.android.gm". |
| `language` | `string` | query | No | The BCP47 tag for the user's preferred language (e.g. "en-US", "de"). |

**Response**: `Product`

```typescript
const res = await androidenterprise.products.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.products.list`

**GET** `androidenterprise/v1/enterprises/{enterpriseId}/products`

Finds approved products that match a query, or all approved products if there is no query. **Note:** This item has been deprecated. New integrations cannot use this method and can refer to our new recommendations.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `approved` | `boolean` | query | No | Specifies whether to search among all products (false) or among only products that have been approved (true). Only "t... |
| `language` | `string` | query | No | The BCP47 tag for the user's preferred language (e.g. "en-US", "de"). Results are returned in the language best match... |
| `maxResults` | `integer` | query | No | Defines how many results the list operation should return. The default number depends on the resource collection. |
| `query` | `string` | query | No | The search query as typed in the Google Play store search box. If omitted, all approved apps will be returned (using ... |
| `token` | `string` | query | No | Defines the token of the page to return, usually taken from TokenPagination. This can only be used if token paging is... |

**Response**: `ProductsListResponse`

```typescript
const res = await androidenterprise.products.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.products.getPermissions`

**GET** `androidenterprise/v1/enterprises/{enterpriseId}/products/{productId}/permissions`

Retrieves the Android app permissions required by this app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `productId` | `string` | path | Yes | The ID of the product. |

**Response**: `ProductPermissions`

```typescript
const res = await androidenterprise.products.getPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.products.generateApprovalUrl`

**POST** `androidenterprise/v1/enterprises/{enterpriseId}/products/{productId}/generateApprovalUrl`

Generates a URL that can be rendered in an iframe to display the permissions (if any) of a product. An enterprise admin must view these permissions and accept them on behalf of their organization in order to approve that product. Admins should accept the displayed permissions by interacting with a separate UI element in the EMM console, which in turn should trigger the use of this URL as the approvalUrlInfo.approvalUrl property in a Products.approve call to approve the product. This URL can only be used to display permissions for up to 1 day. **Note:** This item has been deprecated. New integrations cannot use this method and can refer to our new recommendations.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `productId` | `string` | path | Yes | The ID of the product. |
| `languageCode` | `string` | query | No | The BCP 47 language code used for permission names and descriptions in the returned iframe, for instance "en-US". |

**Response**: `ProductsGenerateApprovalUrlResponse`

```typescript
const res = await androidenterprise.products.generateApprovalUrl({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.products.approve`

**POST** `androidenterprise/v1/enterprises/{enterpriseId}/products/{productId}/approve`

Approves the specified product and the relevant app permissions, if any. The maximum number of products that you can approve per enterprise customer is 1,000. To learn how to use managed Google Play to design and create a store layout to display approved products to your users, see Store Layout Design. **Note:** This item has been deprecated. New integrations cannot use this method and can refer to our new recommendations.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `productId` | `string` | path | Yes | The ID of the product. |

**Request body**: `ProductsApproveRequest`

```typescript
const res = await androidenterprise.products.approve({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.products.unapprove`

**POST** `androidenterprise/v1/enterprises/{enterpriseId}/products/{productId}/unapprove`

Unapproves the specified product (and the relevant app permissions, if any) **Note:** This item has been deprecated. New integrations cannot use this method and can refer to our new recommendations.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `productId` | `string` | path | Yes | The ID of the product. |

```typescript
const res = await androidenterprise.products.unapprove({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.products.getAppRestrictionsSchema`

**GET** `androidenterprise/v1/enterprises/{enterpriseId}/products/{productId}/appRestrictionsSchema`

Retrieves the schema that defines the configurable properties for this product. All products have a schema, but this schema may be empty if no managed configurations have been defined. This schema can be used to populate a UI that allows an admin to configure the product. To apply a managed configuration based on the schema obtained using this API, see Managed Configurations through Play.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `productId` | `string` | path | Yes | The ID of the product. |
| `language` | `string` | query | No | The BCP47 tag for the user's preferred language (e.g. "en-US", "de"). |

**Response**: `AppRestrictionsSchema`

```typescript
const res = await androidenterprise.products.getAppRestrictionsSchema({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.serviceaccountkeys.insert`

**POST** `androidenterprise/v1/enterprises/{enterpriseId}/serviceAccountKeys`

Generates new credentials for the service account associated with this enterprise. The calling service account must have been retrieved by calling Enterprises.GetServiceAccount and must have been set as the enterprise service account by calling Enterprises.SetAccount. Only the type of the key should be populated in the resource to be inserted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |

**Request body**: `ServiceAccountKey`

**Response**: `ServiceAccountKey`

```typescript
const res = await androidenterprise.serviceaccountkeys.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.serviceaccountkeys.list`

**GET** `androidenterprise/v1/enterprises/{enterpriseId}/serviceAccountKeys`

Lists all active credentials for the service account associated with this enterprise. Only the ID and key type are returned. The calling service account must have been retrieved by calling Enterprises.GetServiceAccount and must have been set as the enterprise service account by calling Enterprises.SetAccount.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |

**Response**: `ServiceAccountKeysListResponse`

```typescript
const res = await androidenterprise.serviceaccountkeys.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.serviceaccountkeys.delete`

**DELETE** `androidenterprise/v1/enterprises/{enterpriseId}/serviceAccountKeys/{keyId}`

Removes and invalidates the specified credentials for the service account associated with this enterprise. The calling service account must have been retrieved by calling Enterprises.GetServiceAccount and must have been set as the enterprise service account by calling Enterprises.SetAccount.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `keyId` | `string` | path | Yes | The ID of the key. |

```typescript
const res = await androidenterprise.serviceaccountkeys.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.storelayoutclusters.list`

**GET** `androidenterprise/v1/enterprises/{enterpriseId}/storeLayout/pages/{pageId}/clusters`

Retrieves the details of all clusters on the specified page.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `pageId` | `string` | path | Yes | The ID of the page. |

**Response**: `StoreLayoutClustersListResponse`

```typescript
const res = await androidenterprise.storelayoutclusters.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.storelayoutclusters.insert`

**POST** `androidenterprise/v1/enterprises/{enterpriseId}/storeLayout/pages/{pageId}/clusters`

Inserts a new cluster in a page.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `pageId` | `string` | path | Yes | The ID of the page. |

**Request body**: `StoreCluster`

**Response**: `StoreCluster`

```typescript
const res = await androidenterprise.storelayoutclusters.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.storelayoutclusters.get`

**GET** `androidenterprise/v1/enterprises/{enterpriseId}/storeLayout/pages/{pageId}/clusters/{clusterId}`

Retrieves details of a cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `pageId` | `string` | path | Yes | The ID of the page. |
| `clusterId` | `string` | path | Yes | The ID of the cluster. |

**Response**: `StoreCluster`

```typescript
const res = await androidenterprise.storelayoutclusters.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.storelayoutclusters.update`

**PUT** `androidenterprise/v1/enterprises/{enterpriseId}/storeLayout/pages/{pageId}/clusters/{clusterId}`

Updates a cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `pageId` | `string` | path | Yes | The ID of the page. |
| `clusterId` | `string` | path | Yes | The ID of the cluster. |

**Request body**: `StoreCluster`

**Response**: `StoreCluster`

```typescript
const res = await androidenterprise.storelayoutclusters.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.storelayoutclusters.delete`

**DELETE** `androidenterprise/v1/enterprises/{enterpriseId}/storeLayout/pages/{pageId}/clusters/{clusterId}`

Deletes a cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `pageId` | `string` | path | Yes | The ID of the page. |
| `clusterId` | `string` | path | Yes | The ID of the cluster. |

```typescript
const res = await androidenterprise.storelayoutclusters.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.storelayoutpages.list`

**GET** `androidenterprise/v1/enterprises/{enterpriseId}/storeLayout/pages`

Retrieves the details of all pages in the store.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |

**Response**: `StoreLayoutPagesListResponse`

```typescript
const res = await androidenterprise.storelayoutpages.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.storelayoutpages.insert`

**POST** `androidenterprise/v1/enterprises/{enterpriseId}/storeLayout/pages`

Inserts a new store page.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |

**Request body**: `StorePage`

**Response**: `StorePage`

```typescript
const res = await androidenterprise.storelayoutpages.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.storelayoutpages.get`

**GET** `androidenterprise/v1/enterprises/{enterpriseId}/storeLayout/pages/{pageId}`

Retrieves details of a store page.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `pageId` | `string` | path | Yes | The ID of the page. |

**Response**: `StorePage`

```typescript
const res = await androidenterprise.storelayoutpages.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.storelayoutpages.update`

**PUT** `androidenterprise/v1/enterprises/{enterpriseId}/storeLayout/pages/{pageId}`

Updates the content of a store page.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `pageId` | `string` | path | Yes | The ID of the page. |

**Request body**: `StorePage`

**Response**: `StorePage`

```typescript
const res = await androidenterprise.storelayoutpages.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.storelayoutpages.delete`

**DELETE** `androidenterprise/v1/enterprises/{enterpriseId}/storeLayout/pages/{pageId}`

Deletes a store page.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `pageId` | `string` | path | Yes | The ID of the page. |

```typescript
const res = await androidenterprise.storelayoutpages.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.users.insert`

**POST** `androidenterprise/v1/enterprises/{enterpriseId}/users`

Creates a new EMM-managed user. The Users resource passed in the body of the request should include an accountIdentifier and an accountType. If a corresponding user already exists with the same account identifier, the user will be updated with the resource. In this case only the displayName field can be changed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |

**Request body**: `User`

**Response**: `User`

```typescript
const res = await androidenterprise.users.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.users.update`

**PUT** `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}`

Updates the details of an EMM-managed user. Can be used with EMM-managed users only (not Google managed users). Pass the new details in the Users resource in the request body. Only the displayName field can be changed. Other fields must either be unset or have the currently active value.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `userId` | `string` | path | Yes | The ID of the user. |

**Request body**: `User`

**Response**: `User`

```typescript
const res = await androidenterprise.users.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.users.list`

**GET** `androidenterprise/v1/enterprises/{enterpriseId}/users`

Looks up a user by primary email address. This is only supported for Google-managed users. Lookup of the id is not needed for EMM-managed users because the id is already returned in the result of the Users.insert call.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `email` | `string` | query | Yes | Required. The exact primary email address of the user to look up. |

**Response**: `UsersListResponse`

```typescript
const res = await androidenterprise.users.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.users.get`

**GET** `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}`

Retrieves a user's details.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `userId` | `string` | path | Yes | The ID of the user. |

**Response**: `User`

```typescript
const res = await androidenterprise.users.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.users.delete`

**DELETE** `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}`

Deleted an EMM-managed user.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `userId` | `string` | path | Yes | The ID of the user. |

```typescript
const res = await androidenterprise.users.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.users.generateAuthenticationToken`

**POST** `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/authenticationToken`

Generates an authentication token which the device policy client can use to provision the given EMM-managed user account on a device. The generated token is single-use and expires after a few minutes. You can provision a maximum of 10 devices per user. This call only works with EMM-managed accounts.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `userId` | `string` | path | Yes | The ID of the user. |

**Response**: `AuthenticationToken`

```typescript
const res = await androidenterprise.users.generateAuthenticationToken({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.users.getAvailableProductSet`

**GET** `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/availableProductSet`

Retrieves the set of products a user is entitled to access. **Note:** This item has been deprecated. New integrations cannot use this method and can refer to our new recommendations.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `userId` | `string` | path | Yes | The ID of the user. |

**Response**: `ProductSet`

```typescript
const res = await androidenterprise.users.getAvailableProductSet({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.users.revokeDeviceAccess`

**DELETE** `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/deviceAccess`

Revokes access to all devices currently provisioned to the user. The user will no longer be able to use the managed Play store on any of their managed devices. This call only works with EMM-managed accounts.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `userId` | `string` | path | Yes | The ID of the user. |

```typescript
const res = await androidenterprise.users.revokeDeviceAccess({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.users.setAvailableProductSet`

**PUT** `androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/availableProductSet`

Modifies the set of products that a user is entitled to access (referred to as *whitelisted* products). Only products that are approved or products that were previously approved (products with revoked approval) can be whitelisted. **Note:** This item has been deprecated. New integrations cannot use this method and can refer to our new recommendations.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `userId` | `string` | path | Yes | The ID of the user. |

**Request body**: `ProductSet`

**Response**: `ProductSet`

```typescript
const res = await androidenterprise.users.setAvailableProductSet({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.webapps.get`

**GET** `androidenterprise/v1/enterprises/{enterpriseId}/webApps/{webAppId}`

Gets an existing web app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `webAppId` | `string` | path | Yes | The ID of the web app. |

**Response**: `WebApp`

```typescript
const res = await androidenterprise.webapps.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.webapps.list`

**GET** `androidenterprise/v1/enterprises/{enterpriseId}/webApps`

Retrieves the details of all web apps for a given enterprise.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |

**Response**: `WebAppsListResponse`

```typescript
const res = await androidenterprise.webapps.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.webapps.insert`

**POST** `androidenterprise/v1/enterprises/{enterpriseId}/webApps`

Creates a new web app for the enterprise.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |

**Request body**: `WebApp`

**Response**: `WebApp`

```typescript
const res = await androidenterprise.webapps.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.webapps.update`

**PUT** `androidenterprise/v1/enterprises/{enterpriseId}/webApps/{webAppId}`

Updates an existing web app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `webAppId` | `string` | path | Yes | The ID of the web app. |

**Request body**: `WebApp`

**Response**: `WebApp`

```typescript
const res = await androidenterprise.webapps.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

### `androidenterprise.webapps.delete`

**DELETE** `androidenterprise/v1/enterprises/{enterpriseId}/webApps/{webAppId}`

Deletes an existing web app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enterpriseId` | `string` | path | Yes | The ID of the enterprise. |
| `webAppId` | `string` | path | Yes | The ID of the web app. |

```typescript
const res = await androidenterprise.webapps.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidenterprise`

---

## Schemas

### `Administrator`

This represents an enterprise admin who can manage the enterprise in the managed Google Play store.

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | The admin's email address. |

### `AdministratorWebToken`

A token authorizing an admin to access an iframe.

| Property | Type | Description |
|----------|------|-------------|
| `token` | `string` | An opaque token to be passed to the Play front-end to generate an iframe. |

### `AdministratorWebTokenSpec`

Specification for a token used to generate iframes. The token specifies what data the admin is allowed to modify and the URI the iframe is allowed to communiate with.

| Property | Type | Description |
|----------|------|-------------|
| `managedConfigurations` | `AdministratorWebTokenSpecManagedConfigurations` | Options for displaying the Managed Configuration page. |
| `parent` | `string` | The URI of the parent frame hosting the iframe. To prevent XSS, the iframe may not be hosted at o... |
| `permission` | `array<string>` | Deprecated. Use PlaySearch.approveApps. |
| `playSearch` | `AdministratorWebTokenSpecPlaySearch` | Options for displaying the managed Play Search apps page. |
| `privateApps` | `AdministratorWebTokenSpecPrivateApps` | Options for displaying the Private Apps page. |
| `storeBuilder` | `AdministratorWebTokenSpecStoreBuilder` | Options for displaying the Organize apps page. |
| `webApps` | `AdministratorWebTokenSpecWebApps` | Options for displaying the Web Apps page. |
| `zeroTouch` | `AdministratorWebTokenSpecZeroTouch` | Options for displaying the Zero Touch page. |

### `AdministratorWebTokenSpecManagedConfigurations`

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Whether the Managed Configuration page is displayed. Default is true. |

### `AdministratorWebTokenSpecPlaySearch`

| Property | Type | Description |
|----------|------|-------------|
| `approveApps` | `boolean` | Allow access to the iframe in approve mode. Default is false. |
| `enabled` | `boolean` | Whether the managed Play Search apps page is displayed. Default is true. |

### `AdministratorWebTokenSpecPrivateApps`

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Whether the Private Apps page is displayed. Default is true. |

### `AdministratorWebTokenSpecStoreBuilder`

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Whether the Organize apps page is displayed. Default is true. |

### `AdministratorWebTokenSpecWebApps`

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Whether the Web Apps page is displayed. Default is true. |

### `AdministratorWebTokenSpecZeroTouch`

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Whether zero-touch embedded UI is usable with this token. If enabled, the admin can link zero-tou... |

### `AppRestrictionsSchema`

Represents the list of app restrictions available to be pre-configured for the product.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Deprecated. |
| `restrictions` | `array<AppRestrictionsSchemaRestriction>` | The set of restrictions that make up this schema. |

### `AppRestrictionsSchemaChangeEvent`

An event generated when a new app version is uploaded to Google Play and its app restrictions schema changed. To fetch the app restrictions schema for an app, use Products.getAppRestrictionsSchema on the EMM API.

| Property | Type | Description |
|----------|------|-------------|
| `productId` | `string` | The id of the product (e.g. "app:com.google.android.gm") for which the app restriction schema cha... |

### `AppRestrictionsSchemaRestriction`

A restriction in the App Restriction Schema represents a piece of configuration that may be pre-applied.

| Property | Type | Description |
|----------|------|-------------|
| `defaultValue` | `AppRestrictionsSchemaRestrictionRestrictionValue` | The default value of the restriction. bundle and bundleArray restrictions never have a default va... |
| `description` | `string` | A longer description of the restriction, giving more detail of what it affects. |
| `entry` | `array<string>` | For choice or multiselect restrictions, the list of possible entries' human-readable names. |
| `entryValue` | `array<string>` | For choice or multiselect restrictions, the list of possible entries' machine-readable values. Th... |
| `key` | `string` | The unique key that the product uses to identify the restriction, e.g. "com.google.android.gm.fie... |
| `nestedRestriction` | `array<AppRestrictionsSchemaRestriction>` | For bundle or bundleArray restrictions, the list of nested restrictions. A bundle restriction is ... |
| `restrictionType` | `string` | The type of the restriction. |
| `title` | `string` | The name of the restriction. |

### `AppRestrictionsSchemaRestrictionRestrictionValue`

A typed value for the restriction.

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | The type of the value being provided. |
| `valueBool` | `boolean` | The boolean value - this will only be present if type is bool. |
| `valueInteger` | `integer` | The integer value - this will only be present if type is integer. |
| `valueMultiselect` | `array<string>` | The list of string values - this will only be present if type is multiselect. |
| `valueString` | `string` | The string value - this will be present for types string, choice and hidden. |

### `AppState`

List of states set by the app.

| Property | Type | Description |
|----------|------|-------------|
| `keyedAppState` | `array<KeyedAppState>` | List of keyed app states. This field will always be present. |
| `packageName` | `string` | The package name of the app. This field will always be present. |

### `AppUpdateEvent`

An event generated when a new version of an app is uploaded to Google Play. Notifications are sent for new public versions only: alpha, beta, or canary versions do not generate this event. To fetch up-to-date version history for an app, use Products.Get on the EMM API.

| Property | Type | Description |
|----------|------|-------------|
| `productId` | `string` | The id of the product (e.g. "app:com.google.android.gm") that was updated. This field will always... |

### `AppVersion`

This represents a single version of the app.

| Property | Type | Description |
|----------|------|-------------|
| `isProduction` | `boolean` | True if this version is a production APK. |
| `targetSdkVersion` | `integer` | The SDK version this app targets, as specified in the manifest of the APK. See http://developer.a... |
| `track` | `string` | Deprecated, use trackId instead. |
| `trackId` | `array<string>` | Track ids that the app version is published in. Replaces the track field (deprecated), but doesn'... |
| `versionCode` | `integer` | Unique increasing identifier for the app version. |
| `versionString` | `string` | The string used in the Play store by the app developer to identify the version. The string is not... |

### `ApprovalUrlInfo`

Information on an approval URL.

| Property | Type | Description |
|----------|------|-------------|
| `approvalUrl` | `string` | A URL that displays a product's permissions and that can also be used to approve the product with... |

### `AuthenticationToken`

An AuthenticationToken is used by the EMM's device policy client on a device to provision the given EMM-managed user on that device.

| Property | Type | Description |
|----------|------|-------------|
| `token` | `string` | The authentication token to be passed to the device policy client on the device where it can be u... |

### `AutoInstallConstraint`

The auto-install constraint. Defines a set of restrictions for installation. At least one of the fields must be set.

| Property | Type | Description |
|----------|------|-------------|
| `chargingStateConstraint` | `string` | Charging state constraint. |
| `deviceIdleStateConstraint` | `string` | Device idle state constraint. |
| `networkTypeConstraint` | `string` | Network type constraint. |

### `AutoInstallPolicy`

| Property | Type | Description |
|----------|------|-------------|
| `autoInstallConstraint` | `array<AutoInstallConstraint>` | The constraints for auto-installing the app. You can specify a maximum of one constraint. |
| `autoInstallMode` | `string` | The auto-install mode. If unset, defaults to "doNotAutoInstall". An app is automatically installe... |
| `autoInstallPriority` | `integer` | The priority of the install, as an unsigned integer. A lower number means higher priority. |
| `minimumVersionCode` | `integer` | The minimum version of the app. If a lower version of the app is installed, then the app will be ... |

### `ConfigurationVariables`

A configuration variables resource contains the managed configuration settings ID to be applied to a single user, as well as the variable set that is attributed to the user. The variable set will be used to replace placeholders in the managed configuration settings.

| Property | Type | Description |
|----------|------|-------------|
| `mcmId` | `string` | The ID of the managed configurations settings. |
| `variableSet` | `array<VariableSet>` | The variable set that is attributed to the user. |

### `Device`

A Devices resource represents a mobile device managed by the EMM and belonging to a specific enterprise user.

| Property | Type | Description |
|----------|------|-------------|
| `androidId` | `string` | The Google Play Services Android ID for the device encoded as a lowercase hex string. For example... |
| `device` | `string` | The internal hardware codename of the device. This comes from android.os.Build.DEVICE. (field nam... |
| `latestBuildFingerprint` | `string` | The build fingerprint of the device if known. |
| `maker` | `string` | The manufacturer of the device. This comes from android.os.Build.MANUFACTURER. |
| `managementType` | `string` | Identifies the extent to which the device is controlled by a managed Google Play EMM in various d... |
| `model` | `string` | The model name of the device. This comes from android.os.Build.MODEL. |
| `policy` | `Policy` | The policy enforced on the device. |
| `product` | `string` | The product name of the device. This comes from android.os.Build.PRODUCT. |
| `report` | `DeviceReport` | The device report updated with the latest app states. |
| `retailBrand` | `string` | Retail brand for the device, if set. See android.os.Build.BRAND |
| `sdkVersion` | `integer` | API compatibility version. |

### `DeviceReport`

Device report updated with the latest app states for managed apps on the device.

| Property | Type | Description |
|----------|------|-------------|
| `appState` | `array<AppState>` | List of app states set by managed apps on the device. App states are defined by the app's develop... |
| `lastUpdatedTimestampMillis` | `string` | The timestamp of the last report update in milliseconds since epoch. This field will always be pr... |

### `DeviceReportUpdateEvent`

An event generated when an updated device report is available.

| Property | Type | Description |
|----------|------|-------------|
| `deviceId` | `string` | The Android ID of the device. This field will always be present. |
| `report` | `DeviceReport` | The device report updated with the latest app states. This field will always be present. |
| `userId` | `string` | The ID of the user. This field will always be present. |

### `DeviceState`

The state of a user's device, as accessed by the getState and setState methods on device resources.

| Property | Type | Description |
|----------|------|-------------|
| `accountState` | `string` | The state of the Google account on the device. "enabled" indicates that the Google account on the... |

### `DevicesListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `device` | `array<Device>` | A managed device. |

### `EnrollmentToken`

A token used to enroll a device.

| Property | Type | Description |
|----------|------|-------------|
| `duration` | `string` | [Optional] The length of time the enrollment token is valid, ranging from 1 minute to [`Durations... |
| `enrollmentTokenType` | `string` | [Required] The type of the enrollment token. |
| `googleAuthenticationOptions` | `EnrollmentTokenGoogleAuthenticationOptions` | [Optional] Provides options related to Google authentication during the enrollment. |
| `token` | `string` | The token value that's passed to the device and authorizes the device to enroll. This is a read-o... |

### `EnrollmentTokenGoogleAuthenticationOptions`

Options for Google authentication during the enrollment.

| Property | Type | Description |
|----------|------|-------------|
| `authenticationRequirement` | `string` | [Optional] Specifies whether user should authenticate with Google during enrollment. This setting... |
| `requiredAccountEmail` | `string` | [Optional] Specifies the managed Google account that the user must use during enrollment.`Authent... |

### `Enterprise`

An Enterprises resource represents the binding between an EMM and a specific organization. That binding can be instantiated in one of two different ways using this API as follows: - For Google managed domain customers, the process involves using Enterprises.enroll and Enterprises.setAccount (in conjunction with artifacts obtained from the Admin console and the Google API Console) and submitted to the EMM through a more-or-less manual process. - For managed Google Play Accounts customers, the process involves using Enterprises.generateSignupUrl and Enterprises.completeSignup in conjunction with the managed Google Play sign-up UI (Google-provided mechanism) to create the binding without manual steps. As an EMM, you can support either or both approaches in your EMM console. See Create an Enterprise for details.

| Property | Type | Description |
|----------|------|-------------|
| `administrator` | `array<Administrator>` | Admins of the enterprise. This is only supported for enterprises created via the EMM-initiated flow. |
| `enterpriseType` | `string` | The type of the enterprise. |
| `googleAuthenticationSettings` | `GoogleAuthenticationSettings` | Output only. Settings for Google-provided user authentication. |
| `id` | `string` | The unique ID for the enterprise. |
| `managedGoogleDomainType` | `string` | The type of managed Google domain |
| `name` | `string` | The name of the enterprise, for example, "Example, Inc". |
| `primaryDomain` | `string` | The enterprise's primary domain, such as "example.com". |

### `EnterpriseAccount`

A service account that can be used to authenticate as the enterprise to API calls that require such authentication.

| Property | Type | Description |
|----------|------|-------------|
| `accountEmail` | `string` | The email address of the service account. |

### `EnterpriseAuthenticationAppLinkConfig`

An authentication URL configuration for the authenticator app of an identity provider.

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` | An authentication url. |

### `EnterpriseUpgradeEvent`

An event generated when an enterprise is upgraded.

| Property | Type | Description |
|----------|------|-------------|
| `upgradeState` | `string` | The upgrade state. |

### `EnterprisesListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `enterprise` | `array<Enterprise>` | An enterprise. |

### `EnterprisesSendTestPushNotificationResponse`

| Property | Type | Description |
|----------|------|-------------|
| `messageId` | `string` | The message ID of the test push notification that was sent. |
| `topicName` | `string` | The name of the Cloud Pub/Sub topic to which notifications for this enterprise's enrolled account... |

### `Entitlement`

*Deprecated:* New integrations cannot use this method and can refer to our new recommendations.

| Property | Type | Description |
|----------|------|-------------|
| `productId` | `string` | The ID of the product that the entitlement is for. For example, "app:com.google.android.gm". |
| `reason` | `string` | The reason for the entitlement. For example, "free" for free apps. This property is temporary: it... |

### `EntitlementsListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `entitlement` | `array<Entitlement>` | An entitlement of a user to a product (e.g. an app). For example, a free app that they have insta... |

### `GenerateEnterpriseUpgradeUrlResponse`

Response message for generating a URL to upgrade an existing managed Google Play Accounts enterprise to a managed Google domain.

| Property | Type | Description |
|----------|------|-------------|
| `url` | `string` | A URL for an enterprise admin to upgrade their enterprise. The page can't be rendered in an iframe. |

### `GoogleAuthenticationSettings`

Contains settings for Google-provided user authentication.

| Property | Type | Description |
|----------|------|-------------|
| `dedicatedDevicesAllowed` | `string` | Whether dedicated devices are allowed. |
| `googleAuthenticationRequired` | `string` | Whether Google authentication is required. |

### `GroupLicense`

*Deprecated:* New integrations cannot use this method and can refer to our new recommendations

| Property | Type | Description |
|----------|------|-------------|
| `acquisitionKind` | `string` | How this group license was acquired. "bulkPurchase" means that this Grouplicenses resource was cr... |
| `approval` | `string` | Whether the product to which this group license relates is currently approved by the enterprise. ... |
| `numProvisioned` | `integer` | The total number of provisioned licenses for this product. Returned by read operations, but ignor... |
| `numPurchased` | `integer` | The number of purchased licenses (possibly in multiple purchases). If this field is omitted, then... |
| `permissions` | `string` | The permission approval status of the product. This field is only set if the product is approved.... |
| `productId` | `string` | The ID of the product that the license is for. For example, "app:com.google.android.gm". |

### `GroupLicenseUsersListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `user` | `array<User>` | A user of an enterprise. |

### `GroupLicensesListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `groupLicense` | `array<GroupLicense>` | A group license for a product approved for use in the enterprise. |

### `Install`

The existence of an Installs resource indicates that an app is installed on a particular device (or that an install is pending). The API can be used to create an install resource using the update method. This triggers the actual install of the app on the device. If the user does not already have an entitlement for the app, then an attempt is made to create one. If this fails (for example, because the app is not free and there is no available license), then the creation of the install fails. The API can also be used to update an installed app. If the update method is used on an existing install, then the app will be updated to the latest available version. Note that it is not possible to force the installation of a specific version of an app: the version code is read-only. If a user installs an app themselves (as permitted by the enterprise), then again an install resource and possibly an entitlement resource are automatically created. The API can also be used to delete an install resource, which triggers the removal of the app from the device. Note that deleting an install does not automatically remove the corresponding entitlement, even if there are no remaining installs. The install resource will also be deleted if the user uninstalls the app themselves.

| Property | Type | Description |
|----------|------|-------------|
| `installState` | `string` | Install state. The state "installPending" means that an install request has recently been made an... |
| `productId` | `string` | The ID of the product that the install is for. For example, "app:com.google.android.gm". |
| `versionCode` | `integer` | The version of the installed product. Guaranteed to be set only if the install state is "installed". |

### `InstallFailureEvent`

An event generated when an app installation failed on a device

| Property | Type | Description |
|----------|------|-------------|
| `deviceId` | `string` | The Android ID of the device. This field will always be present. |
| `failureDetails` | `string` | Additional details on the failure if applicable. |
| `failureReason` | `string` | The reason for the installation failure. This field will always be present. |
| `productId` | `string` | The id of the product (e.g. "app:com.google.android.gm") for which the install failure event occu... |
| `userId` | `string` | The ID of the user. This field will always be present. |

### `InstallsListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `install` | `array<Install>` | An installation of an app for a user on a specific device. The existence of an install implies th... |

### `KeyedAppState`

Represents a keyed app state containing a key, timestamp, severity level, optional description, and optional data.

| Property | Type | Description |
|----------|------|-------------|
| `data` | `string` | Additional field intended for machine-readable data. For example, a number or JSON object. To pre... |
| `key` | `string` | Key indicating what the app is providing a state for. The content of the key is set by the app's ... |
| `message` | `string` | Free-form, human-readable message describing the app state. For example, an error message. To pre... |
| `severity` | `string` | Severity of the app state. This field will always be present. |
| `stateTimestampMillis` | `string` | Timestamp of when the app set the state in milliseconds since epoch. This field will always be pr... |

### `LocalizedText`

A localized string with its locale.

| Property | Type | Description |
|----------|------|-------------|
| `locale` | `string` | The BCP47 tag for a locale. (e.g. "en-US", "de"). |
| `text` | `string` | The text localized in the associated locale. |

### `MaintenanceWindow`

Maintenance window for managed Google Play Accounts. This allows Play store to update the apps on the foreground in the designated window.

| Property | Type | Description |
|----------|------|-------------|
| `durationMs` | `string` | Duration of the maintenance window, in milliseconds. The duration must be between 30 minutes and ... |
| `startTimeAfterMidnightMs` | `string` | Start time of the maintenance window, in milliseconds after midnight on the device. Windows can s... |

### `ManagedConfiguration`

*Deprecated:* New integrations cannot use this method and can refer to our new recommendations

| Property | Type | Description |
|----------|------|-------------|
| `configurationVariables` | `ConfigurationVariables` | Contains the ID of the managed configuration profile and the set of configuration variables (if a... |
| `kind` | `string` | Deprecated. |
| `managedProperty` | `array<ManagedProperty>` | The set of managed properties for this configuration. |
| `productId` | `string` | The ID of the product that the managed configuration is for, e.g. "app:com.google.android.gm". |

### `ManagedConfigurationsForDeviceListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `managedConfigurationForDevice` | `array<ManagedConfiguration>` | A managed configuration for an app on a specific device. |

### `ManagedConfigurationsForUserListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `managedConfigurationForUser` | `array<ManagedConfiguration>` | A managed configuration for an app for a specific user. |

### `ManagedConfigurationsSettings`

A managed configurations settings resource contains the set of managed properties that have been configured for an Android app to be applied to a set of users. The app's developer would have defined configurable properties in the managed configurations schema.

| Property | Type | Description |
|----------|------|-------------|
| `lastUpdatedTimestampMillis` | `string` | The last updated time of the managed configuration settings in milliseconds since 1970-01-01T00:0... |
| `mcmId` | `string` | The ID of the managed configurations settings. |
| `name` | `string` | The name of the managed configurations settings. |

### `ManagedConfigurationsSettingsListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `managedConfigurationsSettings` | `array<ManagedConfigurationsSettings>` | A managed configurations settings for an app that may be assigned to a group of users in an enter... |

### `ManagedProperty`

A managed property of a managed configuration. The property must match one of the properties in the app restrictions schema of the product. Exactly one of the value fields must be populated, and it must match the property's type in the app restrictions schema.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | The unique key that identifies the property. |
| `valueBool` | `boolean` | The boolean value - this will only be present if type of the property is bool. |
| `valueBundle` | `ManagedPropertyBundle` | The bundle of managed properties - this will only be present if type of the property is bundle. |
| `valueBundleArray` | `array<ManagedPropertyBundle>` | The list of bundles of properties - this will only be present if type of the property is bundle_a... |
| `valueInteger` | `integer` | The integer value - this will only be present if type of the property is integer. |
| `valueString` | `string` | The string value - this will only be present if type of the property is string, choice or hidden. |
| `valueStringArray` | `array<string>` | The list of string values - this will only be present if type of the property is multiselect. |

### `ManagedPropertyBundle`

A bundle of managed properties.

| Property | Type | Description |
|----------|------|-------------|
| `managedProperty` | `array<ManagedProperty>` | The list of managed properties. |

### `NewDeviceEvent`

An event generated when a new device is ready to be managed.

| Property | Type | Description |
|----------|------|-------------|
| `deviceId` | `string` | The Android ID of the device. This field will always be present. |
| `dpcPackageName` | `string` | Policy app on the device. |
| `managementType` | `string` | Identifies the extent to which the device is controlled by an Android EMM in various deployment c... |
| `userId` | `string` | The ID of the user. This field will always be present. |

### `NewPermissionsEvent`

An event generated when new permissions are added to an app.

| Property | Type | Description |
|----------|------|-------------|
| `approvedPermissions` | `array<string>` | The set of permissions that the enterprise admin has already approved for this application. Use P... |
| `productId` | `string` | The id of the product (e.g. "app:com.google.android.gm") for which new permissions were added. Th... |
| `requestedPermissions` | `array<string>` | The set of permissions that the app is currently requesting. Use Permissions.Get on the EMM API t... |

### `Notification`

A notification of one event relating to an enterprise.

| Property | Type | Description |
|----------|------|-------------|
| `appRestrictionsSchemaChangeEvent` | `AppRestrictionsSchemaChangeEvent` | Notifications about new app restrictions schema changes. |
| `appUpdateEvent` | `AppUpdateEvent` | Notifications about app updates. |
| `deviceReportUpdateEvent` | `DeviceReportUpdateEvent` | Notifications about device report updates. |
| `enterpriseId` | `string` | The ID of the enterprise for which the notification is sent. This will always be present. |
| `enterpriseUpgradeEvent` | `EnterpriseUpgradeEvent` | Notifications about enterprise upgrade. |
| `installFailureEvent` | `InstallFailureEvent` | Notifications about an app installation failure. |
| `newDeviceEvent` | `NewDeviceEvent` | Notifications about new devices. |
| `newPermissionsEvent` | `NewPermissionsEvent` | Notifications about new app permissions. |
| `notificationType` | `string` | Type of the notification. |
| `productApprovalEvent` | `ProductApprovalEvent` | Notifications about changes to a product's approval status. |
| `productAvailabilityChangeEvent` | `ProductAvailabilityChangeEvent` | Notifications about product availability changes. |
| `timestampMillis` | `string` | The time when the notification was published in milliseconds since 1970-01-01T00:00:00Z. This wil... |

### `NotificationSet`

A resource returned by the PullNotificationSet API, which contains a collection of notifications for enterprises associated with the service account authenticated for the request.

| Property | Type | Description |
|----------|------|-------------|
| `notification` | `array<Notification>` | The notifications received, or empty if no notifications are present. |
| `notificationSetId` | `string` | The notification set ID, required to mark the notification as received with the Enterprises.Ackno... |

### `PageInfo`

Information about the current page. List operations that supports paging return only one "page" of results. This protocol buffer message describes the page that has been returned.

| Property | Type | Description |
|----------|------|-------------|
| `resultPerPage` | `integer` | Maximum number of results returned in one page. ! The number of results included in the API respo... |
| `startIndex` | `integer` | Index of the first result returned in the current page. |
| `totalResults` | `integer` | Total number of results available on the backend ! The total number of results in the result set. |

### `Permission`

A Permissions resource represents some extra capability, to be granted to an Android app, which requires explicit consent. An enterprise admin must consent to these permissions on behalf of their users before an entitlement for the app can be created. The permissions collection is read-only. The information provided for each permission (localized name and description) is intended to be used in the MDM user interface when obtaining consent from the enterprise.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | A longer description of the Permissions resource, giving more details of what it affects. |
| `name` | `string` | The name of the permission. |
| `permissionId` | `string` | An opaque string uniquely identifying the permission. |

### `Policy`

The device policy for a given managed device.

| Property | Type | Description |
|----------|------|-------------|
| `autoUpdatePolicy` | `string` | Controls when automatic app updates on the device can be applied. Recommended alternative: autoUp... |
| `deviceReportPolicy` | `string` | Whether the device reports app states to the EMM. The default value is "deviceReportDisabled". |
| `maintenanceWindow` | `MaintenanceWindow` | The maintenance window defining when apps running in the foreground should be updated. |
| `policyId` | `string` | An identifier for the policy that will be passed with the app install feedback sent from the Play... |
| `productAvailabilityPolicy` | `string` | The availability granted to the device for the specified products. "all" gives the device access ... |
| `productPolicy` | `array<ProductPolicy>` | The list of product policies. The productAvailabilityPolicy needs to be set to WHITELIST or ALL f... |

### `Product`

A Products resource represents an app in the Google Play store that is available to at least some users in the enterprise. (Some apps are restricted to a single enterprise, and no information about them is made available outside that enterprise.) The information provided for each product (localized name, icon, link to the full Google Play details page) is intended to allow a basic representation of the product within an EMM user interface.

| Property | Type | Description |
|----------|------|-------------|
| `appRestrictionsSchema` | `AppRestrictionsSchema` | The app restriction schema |
| `appTracks` | `array<TrackInfo>` | The tracks visible to the enterprise. |
| `appVersion` | `array<AppVersion>` | App versions currently available for this product. |
| `authorName` | `string` | The name of the author of the product (for example, the app developer). |
| `availableCountries` | `array<string>` | The countries which this app is available in. |
| `availableTracks` | `array<string>` | Deprecated, use appTracks instead. |
| `category` | `string` | The app category (e.g. RACING, SOCIAL, etc.) |
| `contentRating` | `string` | The content rating for this app. |
| `description` | `string` | The localized promotional description, if available. |
| `detailsUrl` | `string` | A link to the (consumer) Google Play details page for the product. |
| `distributionChannel` | `string` | How and to whom the package is made available. The value publicGoogleHosted means that the packag... |
| `features` | `array<string>` | Noteworthy features (if any) of this product. |
| `fullDescription` | `string` | The localized full app store description, if available. |
| `iconUrl` | `string` | A link to an image that can be used as an icon for the product. This image is suitable for use at... |
| `lastUpdatedTimestampMillis` | `string` | The approximate time (within 7 days) the app was last published, expressed in milliseconds since ... |
| `minAndroidSdkVersion` | `integer` | The minimum Android SDK necessary to run the app. |
| `permissions` | `array<ProductPermission>` | A list of permissions required by the app. |
| `productId` | `string` | A string of the form *app:<package name>*. For example, app:com.google.android.gm represents the ... |
| `productPricing` | `string` | Whether this product is free, free with in-app purchases, or paid. If the pricing is unknown, thi... |
| `recentChanges` | `string` | A description of the recent changes made to the app. |
| `requiresContainerApp` | `boolean` | Deprecated. |
| `screenshotUrls` | `array<string>` | A list of screenshot links representing the app. |
| `signingCertificate` | `ProductSigningCertificate` | The certificate used to sign this product. |
| `smallIconUrl` | `string` | A link to a smaller image that can be used as an icon for the product. This image is suitable for... |
| `title` | `string` | The name of the product. |
| `workDetailsUrl` | `string` | A link to the managed Google Play details page for the product, for use by an Enterprise admin. |

### `ProductApprovalEvent`

An event generated when a product's approval status is changed.

| Property | Type | Description |
|----------|------|-------------|
| `approved` | `string` | Whether the product was approved or unapproved. This field will always be present. |
| `productId` | `string` | The id of the product (e.g. "app:com.google.android.gm") for which the approval status has change... |

### `ProductAvailabilityChangeEvent`

An event generated whenever a product's availability changes.

| Property | Type | Description |
|----------|------|-------------|
| `availabilityStatus` | `string` | The new state of the product. This field will always be present. |
| `productId` | `string` | The id of the product (e.g. "app:com.google.android.gm") for which the product availability chang... |

### `ProductPermission`

A product permissions resource represents the set of permissions required by a specific app and whether or not they have been accepted by an enterprise admin. The API can be used to read the set of permissions, and also to update the set to indicate that permissions have been accepted.

| Property | Type | Description |
|----------|------|-------------|
| `permissionId` | `string` | An opaque string uniquely identifying the permission. |
| `state` | `string` | Whether the permission has been accepted or not. |

### `ProductPermissions`

Information about the permissions required by a specific app and whether they have been accepted by the enterprise.

| Property | Type | Description |
|----------|------|-------------|
| `permission` | `array<ProductPermission>` | The permissions required by the app. |
| `productId` | `string` | The ID of the app that the permissions relate to, e.g. "app:com.google.android.gm". |

### `ProductPolicy`

The policy for a product.

| Property | Type | Description |
|----------|------|-------------|
| `autoInstallPolicy` | `AutoInstallPolicy` | The auto-install policy for the product. |
| `autoUpdateMode` | `string` | The auto-update mode for the product. When autoUpdateMode is used, it always takes precedence ove... |
| `enterpriseAuthenticationAppLinkConfigs` | `array<EnterpriseAuthenticationAppLinkConfig>` | An authentication URL configuration for the authenticator app of an identity provider. This helps... |
| `managedConfiguration` | `ManagedConfiguration` | The managed configuration for the product. |
| `productId` | `string` | The ID of the product. For example, "app:com.google.android.gm". |
| `trackIds` | `array<string>` | Grants the device visibility to the specified product release track(s), identified by trackIds. T... |
| `tracks` | `array<string>` | Deprecated. Use trackIds instead. |

### `ProductSet`

A set of products.

| Property | Type | Description |
|----------|------|-------------|
| `productId` | `array<string>` | The list of product IDs making up the set of products. |
| `productSetBehavior` | `string` | The interpretation of this product set. "unknown" should never be sent and is ignored if received... |
| `productVisibility` | `array<ProductVisibility>` | Additional list of product IDs making up the product set. Unlike the productID array, in this lis... |

### `ProductSigningCertificate`

| Property | Type | Description |
|----------|------|-------------|
| `certificateHashSha1` | `string` | The base64 urlsafe encoded SHA1 hash of the certificate. (This field is deprecated in favor of SH... |
| `certificateHashSha256` | `string` | The base64 urlsafe encoded SHA2-256 hash of the certificate. |

### `ProductVisibility`

A product to be made visible to a user.

| Property | Type | Description |
|----------|------|-------------|
| `productId` | `string` | The product ID to make visible to the user. Required for each item in the productVisibility list. |
| `trackIds` | `array<string>` | Grants the user visibility to the specified product track(s), identified by trackIds. |
| `tracks` | `array<string>` | Deprecated. Use trackIds instead. |

### `ProductsApproveRequest`

| Property | Type | Description |
|----------|------|-------------|
| `approvalUrlInfo` | `ApprovalUrlInfo` | The approval URL that was shown to the user. Only the permissions shown to the user with that URL... |
| `approvedPermissions` | `string` | Sets how new permission requests for the product are handled. "allPermissions" automatically appr... |

### `ProductsGenerateApprovalUrlResponse`

| Property | Type | Description |
|----------|------|-------------|
| `url` | `string` | A URL that can be rendered in an iframe to display the permissions (if any) of a product. This UR... |

### `ProductsListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `pageInfo` | `PageInfo` | General pagination information. |
| `product` | `array<Product>` | Information about a product (e.g. an app) in the Google Play store, for display to an enterprise ... |
| `tokenPagination` | `TokenPagination` | Pagination information for token pagination. |

### `ServiceAccount`

A service account identity, including the name and credentials that can be used to authenticate as the service account.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `ServiceAccountKey` | Credentials that can be used to authenticate as this ServiceAccount. |
| `name` | `string` | The account name of the service account, in the form of an email address. Assigned by the server. |

### `ServiceAccountKey`

*Deprecated:* New integrations cannot use this method and can refer to our new recommendations

| Property | Type | Description |
|----------|------|-------------|
| `data` | `string` | The body of the private key credentials file, in string format. This is only populated when the S... |
| `id` | `string` | An opaque, unique identifier for this ServiceAccountKey. Assigned by the server. |
| `publicData` | `string` | Public key data for the credentials file. This is an X.509 cert. If you are using the googleCrede... |
| `type` | `string` | The file format of the generated key data. |

### `ServiceAccountKeysListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `serviceAccountKey` | `array<ServiceAccountKey>` | The service account credentials. |

### `SignupInfo`

A resource returned by the GenerateSignupUrl API, which contains the Signup URL and Completion Token.

| Property | Type | Description |
|----------|------|-------------|
| `completionToken` | `string` | An opaque token that will be required, along with the Enterprise Token, for obtaining the enterpr... |
| `kind` | `string` | Deprecated. |
| `url` | `string` | A URL under which the Admin can sign up for an enterprise. The page pointed to cannot be rendered... |

### `StoreCluster`

Definition of a managed Google Play store cluster, a list of products displayed as part of a store page.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | Unique ID of this cluster. Assigned by the server. Immutable once assigned. |
| `name` | `array<LocalizedText>` | Ordered list of localized strings giving the name of this page. The text displayed is the one tha... |
| `orderInPage` | `string` | String (US-ASCII only) used to determine order of this cluster within the parent page's elements.... |
| `productId` | `array<string>` | List of products in the order they are displayed in the cluster. There should not be duplicates w... |

### `StoreLayout`

General setting for the managed Google Play store layout, currently only specifying the page to display the first time the store is opened.

| Property | Type | Description |
|----------|------|-------------|
| `homepageId` | `string` | The ID of the store page to be used as the homepage. The homepage is the first page shown in the ... |
| `storeLayoutType` | `string` | The store layout type. By default, this value is set to "basic" if the homepageId field is not se... |

### `StoreLayoutClustersListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `cluster` | `array<StoreCluster>` | A store cluster of an enterprise. |

### `StoreLayoutPagesListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `page` | `array<StorePage>` | A store page of an enterprise. |

### `StorePage`

Definition of a managed Google Play store page, made of a localized name and links to other pages. A page also contains clusters defined as a subcollection.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | Unique ID of this page. Assigned by the server. Immutable once assigned. |
| `link` | `array<string>` | Ordered list of pages a user should be able to reach from this page. The list can't include this ... |
| `name` | `array<LocalizedText>` | Ordered list of localized strings giving the name of this page. The text displayed is the one tha... |

### `TokenPagination`

Pagination information returned by a List operation when token pagination is enabled. List operations that supports paging return only one "page" of results. This protocol buffer message describes the page that has been returned. When using token pagination, clients should use the next/previous token to get another page of the result. The presence or absence of next/previous token indicates whether a next/previous page is available and provides a mean of accessing this page. ListRequest.page_token should be set to either next_page_token or previous_page_token to access another page.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Tokens to pass to the standard list field 'page_token'. Whenever available, tokens are preferred ... |
| `previousPageToken` | `string` |  |

### `TrackInfo`

Id to name association of a track.

| Property | Type | Description |
|----------|------|-------------|
| `trackAlias` | `string` | A modifiable name for a track. This is the visible name in the play developer console. |
| `trackId` | `string` | Unmodifiable, unique track identifier. This identifier is the releaseTrackId in the url of the pl... |

### `User`

A Users resource represents an account associated with an enterprise. The account may be specific to a device or to an individual user (who can then use the account across multiple devices). The account may provide access to managed Google Play only, or to other Google services, depending on the identity model: - The Google managed domain identity model requires synchronization to Google account sources (via primaryEmail). - The managed Google Play Accounts identity model provides a dynamic means for enterprises to create user or device accounts as needed. These accounts provide access to managed Google Play.

| Property | Type | Description |
|----------|------|-------------|
| `accountIdentifier` | `string` | A unique identifier you create for this user, such as "user342" or "asset#44418". Do not use pers... |
| `accountType` | `string` | The type of account that this user represents. A userAccount can be installed on multiple devices... |
| `displayName` | `string` | The name that will appear in user interfaces. Setting this property is optional when creating EMM... |
| `id` | `string` | The unique ID for the user. |
| `managementType` | `string` | The entity that manages the user. With googleManaged users, the source of truth is Google so EMMs... |
| `primaryEmail` | `string` | The user's primary email address, for example, "jsmith@example.com". Will always be set for Googl... |

### `UsersListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `user` | `array<User>` | A user of an enterprise. |

### `VariableSet`

A variable set is a key-value pair of EMM-provided placeholders and its corresponding value, which is attributed to a user. For example, $FIRSTNAME could be a placeholder, and its value could be Alice. Placeholders should start with a '$' sign and should be alphanumeric only.

| Property | Type | Description |
|----------|------|-------------|
| `placeholder` | `string` | The placeholder string; defined by EMM. |
| `userValue` | `string` | The value of the placeholder, specific to the user. |

### `WebApp`

A WebApps resource represents a web app created for an enterprise. Web apps are published to managed Google Play and can be distributed like other Android apps. On a user's device, a web app opens its specified URL.

| Property | Type | Description |
|----------|------|-------------|
| `displayMode` | `string` | The display mode of the web app. Possible values include: - "minimalUi", the device's status bar,... |
| `icons` | `array<WebAppIcon>` | A list of icons representing this website. If absent, a default icon (for create) or the current ... |
| `isPublished` | `boolean` | A flag whether the app has been published to the Play store yet. |
| `startUrl` | `string` | The start URL, i.e. the URL that should load when the user opens the application. |
| `title` | `string` | The title of the web app as displayed to the user (e.g., amongst a list of other applications, or... |
| `versionCode` | `string` | The current version of the app. Note that the version can automatically increase during the lifet... |
| `webAppId` | `string` | The ID of the application. A string of the form "app:<package name>" where the package name alway... |

### `WebAppIcon`

Icon for a web app.

| Property | Type | Description |
|----------|------|-------------|
| `imageData` | `string` | The actual bytes of the image in a base64url encoded string (c.f. RFC4648, section 5 "Base 64 Enc... |

### `WebAppsListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `webApp` | `array<WebApp>` | The manifest describing a web app. |

