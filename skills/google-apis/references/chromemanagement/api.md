# Chrome Management API - API Reference

**Version**: `v1` | **Methods**: 44 | **Schemas**: 138

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `chromemanagement.customers.apps.countChromeAppRequests` | GET | `v1/{+customer}/apps:countChromeAppRequests` | Generate summary of app installation requests. |
| `chromemanagement.customers.apps.fetchDevicesRequestingExtension` | GET | `v1/{+customer}/apps:fetchDevicesRequestingExtension` | Get a list of devices that have requested to install an extension. |
| `chromemanagement.customers.apps.fetchUsersRequestingExtension` | GET | `v1/{+customer}/apps:fetchUsersRequestingExtension` | Get a list of users that have requested to install an extension. |
| `chromemanagement.customers.apps.chrome.get` | GET | `v1/{+name}` | Get a specific app for a customer by its resource name. |
| `chromemanagement.customers.apps.android.get` | GET | `v1/{+name}` | Get a specific app for a customer by its resource name. |
| `chromemanagement.customers.apps.web.get` | GET | `v1/{+name}` | Get a specific app for a customer by its resource name. |
| `chromemanagement.customers.reports.countChromeDevicesReachingAutoExpirationDate` | GET | `v1/{+customer}/reports:countChromeDevicesReachingAutoExpirationDate` | Generate report of the number of devices expiring in each month of the selected time frame. Devic... |
| `chromemanagement.customers.reports.countChromeDevicesThatNeedAttention` | GET | `v1/{+customer}/reports:countChromeDevicesThatNeedAttention` | Counts of ChromeOS devices that have not synced policies or have lacked user activity in the past... |
| `chromemanagement.customers.reports.countChromeBrowsersNeedingAttention` | GET | `v1/{+customer}/reports:countChromeBrowsersNeedingAttention` | Count of Chrome Browsers that have been recently enrolled, have new policy to be synced, or have ... |
| `chromemanagement.customers.reports.countChromeHardwareFleetDevices` | GET | `v1/{+customer}/reports:countChromeHardwareFleetDevices` | Counts of devices with a specific hardware specification from the requested hardware type (for ex... |
| `chromemanagement.customers.reports.countInstalledApps` | GET | `v1/{+customer}/reports:countInstalledApps` | Generate report of app installations. |
| `chromemanagement.customers.reports.findInstalledAppDevices` | GET | `v1/{+customer}/reports:findInstalledAppDevices` | Generate report of managed Chrome browser devices that have a specified app installed. |
| `chromemanagement.customers.reports.countChromeVersions` | GET | `v1/{+customer}/reports:countChromeVersions` | Generate report of installed Chrome versions. |
| `chromemanagement.customers.reports.countPrintJobsByUser` | GET | `v1/{+customer}/reports:countPrintJobsByUser` | Get a summary of printing done by each user. |
| `chromemanagement.customers.reports.countPrintJobsByPrinter` | GET | `v1/{+customer}/reports:countPrintJobsByPrinter` | Get a summary of printing done by each printer. |
| `chromemanagement.customers.reports.enumeratePrintJobs` | GET | `v1/{+customer}/reports:enumeratePrintJobs` | Get a list of print jobs. |
| `chromemanagement.customers.reports.countChromeCrashEvents` | GET | `v1/{+customer}/reports:countChromeCrashEvents` | Get a count of Chrome crash events. |
| `chromemanagement.customers.reports.countActiveDevices` | GET | `v1/{+customer}/reports:countActiveDevices` | Get a count of active devices per set time frames. |
| `chromemanagement.customers.reports.countDevicesPerReleaseChannel` | GET | `v1/{+customer}/reports:countDevicesPerReleaseChannel` | Get a count of devices per channel. |
| `chromemanagement.customers.reports.countDevicesPerBootType` | GET | `v1/{+customer}/reports:countDevicesPerBootType` | Get a count of devices per boot type. |
| `chromemanagement.customers.telemetry.devices.list` | GET | `v1/{+parent}/telemetry/devices` | List all telemetry devices. |
| `chromemanagement.customers.telemetry.devices.get` | GET | `v1/{+name}` | Get telemetry device. |
| `chromemanagement.customers.telemetry.events.list` | GET | `v1/{+parent}/telemetry/events` | List telemetry events. |
| `chromemanagement.customers.telemetry.users.list` | GET | `v1/{+parent}/telemetry/users` | List all telemetry users. |
| `chromemanagement.customers.telemetry.users.get` | GET | `v1/{+name}` | Get telemetry user. |
| `chromemanagement.customers.telemetry.notificationConfigs.list` | GET | `v1/{+parent}/telemetry/notificationConfigs` | List all telemetry notification configs. |
| `chromemanagement.customers.telemetry.notificationConfigs.create` | POST | `v1/{+parent}/telemetry/notificationConfigs` | Create a telemetry notification config. |
| `chromemanagement.customers.telemetry.notificationConfigs.delete` | DELETE | `v1/{+name}` | Delete a telemetry notification config. |
| `chromemanagement.customers.profiles.get` | GET | `v1/{+name}` | Gets a Chrome browser profile with customer ID and profile permanent ID. |
| `chromemanagement.customers.profiles.list` | GET | `v1/{+parent}/profiles` | Lists Chrome browser profiles of a customer based on the given search and sorting criteria. |
| `chromemanagement.customers.profiles.delete` | DELETE | `v1/{+name}` | Deletes the data collected from a Chrome browser profile. |
| `chromemanagement.customers.profiles.commands.create` | POST | `v1/{+parent}/commands` | Creates a Chrome browser profile remote command. |
| `chromemanagement.customers.profiles.commands.get` | GET | `v1/{+name}` | Gets a Chrome browser profile remote command. |
| `chromemanagement.customers.profiles.commands.list` | GET | `v1/{+parent}/commands` | Lists remote commands of a Chrome browser profile. |
| `chromemanagement.customers.certificateProvisioningProcesses.claim` | POST | `v1/{+name}:claim` | Claims a certificate provisioning process. For each certificate provisioning process, this operat... |
| `chromemanagement.customers.certificateProvisioningProcesses.get` | GET | `v1/{+name}` | Retrieves a certificate provisioning process. |
| `chromemanagement.customers.certificateProvisioningProcesses.signData` | POST | `v1/{+name}:signData` | Requests the client that initiated a certificate provisioning process to sign data. This should o... |
| `chromemanagement.customers.certificateProvisioningProcesses.uploadCertificate` | POST | `v1/{+name}:uploadCertificate` | Uploads a successfully issued certificate for a certificate provisioning process. |
| `chromemanagement.customers.certificateProvisioningProcesses.setFailure` | POST | `v1/{+name}:setFailure` | Marks a certificate provisioning process as failed. |
| `chromemanagement.customers.certificateProvisioningProcesses.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `chromemanagement.customers.thirdPartyProfileUsers.move` | POST | `v1/{+name}:move` | Moves a third party chrome profile user to a destination OU. All profiles associated to that user... |
| `chromemanagement.operations.list` | GET | `v1/{+name}` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `chromemanagement.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `chromemanagement.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |

### `chromemanagement.customers.apps.countChromeAppRequests`

**GET** `v1/{+customer}/apps:countChromeAppRequests`

Generate summary of app installation requests.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customer` | `string` | path | Yes | Required. Customer id or "my_customer" to use the customer associated to the account making the request. |
| `orderBy` | `string` | query | No | Field used to order results. Supported fields: * request_count * latest_request_time |
| `orgUnitId` | `string` | query | No | The ID of the organizational unit. |
| `pageSize` | `integer` | query | No | Maximum number of results to return. Maximum and default are 50, anything above will be coerced to 50. |
| `pageToken` | `string` | query | No | Token to specify the page of the request to be returned. |

**Response**: `GoogleChromeManagementV1CountChromeAppRequestsResponse`

```typescript
const res = await chromemanagement.apps.countChromeAppRequests({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.appdetails.readonly`

---

### `chromemanagement.customers.apps.fetchDevicesRequestingExtension`

**GET** `v1/{+customer}/apps:fetchDevicesRequestingExtension`

Get a list of devices that have requested to install an extension.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customer` | `string` | path | Yes | Required. The customer ID or "my_customer" prefixed with "customers/". |
| `extensionId` | `string` | query | No | Required. The extension for which we want to find requesting devices. |
| `orgUnitId` | `string` | query | No | The ID of the organizational unit. Only consider devices that directly belong to this org unit, i.e. sub-orgunits are... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of results to return. Maximum and default are 50. Any page size larger than 50 will be coerc... |
| `pageToken` | `string` | query | No | Optional. Token to specify the page of the request to be returned. Token expires after 1 day. |

**Response**: `GoogleChromeManagementV1FetchDevicesRequestingExtensionResponse`

```typescript
const res = await chromemanagement.apps.fetchDevicesRequestingExtension({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.appdetails.readonly`

---

### `chromemanagement.customers.apps.fetchUsersRequestingExtension`

**GET** `v1/{+customer}/apps:fetchUsersRequestingExtension`

Get a list of users that have requested to install an extension.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customer` | `string` | path | Yes | Required. The customer ID or "my_customer" prefixed with "customers/". |
| `extensionId` | `string` | query | No | Required. The extension for which we want to find the requesting users. |
| `orgUnitId` | `string` | query | No | The ID of the organizational unit. Only consider devices that directly belong to this org unit, i.e. sub-orgunits are... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of results to return. Maximum and default are 50. Any page size larger than 50 will be coerc... |
| `pageToken` | `string` | query | No | Optional. Token to specify the page of the request to be returned. Token expires after 1 day. |

**Response**: `GoogleChromeManagementV1FetchUsersRequestingExtensionResponse`

```typescript
const res = await chromemanagement.apps.fetchUsersRequestingExtension({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.appdetails.readonly`

---

### `chromemanagement.customers.apps.chrome.get`

**GET** `v1/{+name}`

Get a specific app for a customer by its resource name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The app for which details are being queried. Examples: "customers/my_customer/apps/chrome/gmbmikajjgmnabigl... |

**Response**: `GoogleChromeManagementV1AppDetails`

```typescript
const res = await chromemanagement.chrome.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.appdetails.readonly`

---

### `chromemanagement.customers.apps.android.get`

**GET** `v1/{+name}`

Get a specific app for a customer by its resource name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The app for which details are being queried. Examples: "customers/my_customer/apps/chrome/gmbmikajjgmnabigl... |

**Response**: `GoogleChromeManagementV1AppDetails`

```typescript
const res = await chromemanagement.android.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.appdetails.readonly`

---

### `chromemanagement.customers.apps.web.get`

**GET** `v1/{+name}`

Get a specific app for a customer by its resource name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The app for which details are being queried. Examples: "customers/my_customer/apps/chrome/gmbmikajjgmnabigl... |

**Response**: `GoogleChromeManagementV1AppDetails`

```typescript
const res = await chromemanagement.web.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.appdetails.readonly`

---

### `chromemanagement.customers.reports.countChromeDevicesReachingAutoExpirationDate`

**GET** `v1/{+customer}/reports:countChromeDevicesReachingAutoExpirationDate`

Generate report of the number of devices expiring in each month of the selected time frame. Devices are grouped by auto update expiration date and model. Further information can be found [here](https://support.google.com/chrome/a/answer/10564947).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customer` | `string` | path | Yes | Required. The customer ID or "my_customer" prefixed with "customers/". |
| `maxAueDate` | `string` | query | No | Optional. Maximum expiration date in format yyyy-mm-dd in UTC timezone. If included returns all devices that have alr... |
| `minAueDate` | `string` | query | No | Optional. Maximum expiration date in format yyyy-mm-dd in UTC timezone. If included returns all devices that have alr... |
| `orgUnitId` | `string` | query | No | Optional. The organizational unit ID, if omitted, will return data for all organizational units. |

**Response**: `GoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse`

```typescript
const res = await chromemanagement.reports.countChromeDevicesReachingAutoExpirationDate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.reports.readonly`

---

### `chromemanagement.customers.reports.countChromeDevicesThatNeedAttention`

**GET** `v1/{+customer}/reports:countChromeDevicesThatNeedAttention`

Counts of ChromeOS devices that have not synced policies or have lacked user activity in the past 28 days, are out of date, or are not complaint. Further information can be found here https://support.google.com/chrome/a/answer/10564947

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customer` | `string` | path | Yes | Required. The customer ID or "my_customer" prefixed with "customers/". |
| `orgUnitId` | `string` | query | No | Optional. The ID of the organizational unit. If omitted, all data will be returned. |
| `readMask` | `string` | query | No | Required. Mask of the fields that should be populated in the returned report. |

**Response**: `GoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse`

```typescript
const res = await chromemanagement.reports.countChromeDevicesThatNeedAttention({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.reports.readonly`

---

### `chromemanagement.customers.reports.countChromeBrowsersNeedingAttention`

**GET** `v1/{+customer}/reports:countChromeBrowsersNeedingAttention`

Count of Chrome Browsers that have been recently enrolled, have new policy to be synced, or have no recent activity.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customer` | `string` | path | Yes | Required. The customer ID or "my_customer" prefixed with "customers/". |
| `orgUnitId` | `string` | query | No | Optional. The ID of the organizational unit. If omitted, all data will be returned. |

**Response**: `GoogleChromeManagementV1CountChromeBrowsersNeedingAttentionResponse`

```typescript
const res = await chromemanagement.reports.countChromeBrowsersNeedingAttention({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.reports.readonly`

---

### `chromemanagement.customers.reports.countChromeHardwareFleetDevices`

**GET** `v1/{+customer}/reports:countChromeHardwareFleetDevices`

Counts of devices with a specific hardware specification from the requested hardware type (for example model name, processor type). Further information can be found here https://support.google.com/chrome/a/answer/10564947

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customer` | `string` | path | Yes | Required. The customer ID or "my_customer". |
| `orgUnitId` | `string` | query | No | Optional. The ID of the organizational unit. If omitted, all data will be returned. |
| `readMask` | `string` | query | No | Required. Mask of the fields that should be populated in the returned report. |

**Response**: `GoogleChromeManagementV1CountChromeHardwareFleetDevicesResponse`

```typescript
const res = await chromemanagement.reports.countChromeHardwareFleetDevices({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.reports.readonly`

---

### `chromemanagement.customers.reports.countInstalledApps`

**GET** `v1/{+customer}/reports:countInstalledApps`

Generate report of app installations.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customer` | `string` | path | Yes | Required. Customer id or "my_customer" to use the customer associated to the account making the request. |
| `filter` | `string` | query | No | Query string to filter results, AND-separated fields in EBNF syntax. Note: OR operations are not supported in this fi... |
| `orderBy` | `string` | query | No | Field used to order results. Supported order by fields: * app_name * app_type * install_type * number_of_permissions ... |
| `orgUnitId` | `string` | query | No | The ID of the organizational unit. |
| `pageSize` | `integer` | query | No | Maximum number of results to return. Maximum and default are 100. |
| `pageToken` | `string` | query | No | Token to specify the page of the request to be returned. |

**Response**: `GoogleChromeManagementV1CountInstalledAppsResponse`

```typescript
const res = await chromemanagement.reports.countInstalledApps({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.reports.readonly`

---

### `chromemanagement.customers.reports.findInstalledAppDevices`

**GET** `v1/{+customer}/reports:findInstalledAppDevices`

Generate report of managed Chrome browser devices that have a specified app installed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customer` | `string` | path | Yes | Required. Customer id or "my_customer" to use the customer associated to the account making the request. |
| `appId` | `string` | query | No | Unique identifier of the app. For Chrome apps and extensions, the 32-character id (e.g. ehoadneljpdggcbbknedodolkkjod... |
| `appType` | `string` | query | No | Type of the app. Optional. If not provided, an app type will be inferred from the format of the app ID. |
| `filter` | `string` | query | No | Query string to filter results, AND-separated fields in EBNF syntax. Note: OR operations are not supported in this fi... |
| `orderBy` | `string` | query | No | Field used to order results. Supported order by fields: * machine * device_id |
| `orgUnitId` | `string` | query | No | The ID of the organizational unit. |
| `pageSize` | `integer` | query | No | Maximum number of results to return. Maximum and default are 100. |
| `pageToken` | `string` | query | No | Token to specify the page of the request to be returned. |

**Response**: `GoogleChromeManagementV1FindInstalledAppDevicesResponse`

```typescript
const res = await chromemanagement.reports.findInstalledAppDevices({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.reports.readonly`

---

### `chromemanagement.customers.reports.countChromeVersions`

**GET** `v1/{+customer}/reports:countChromeVersions`

Generate report of installed Chrome versions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customer` | `string` | path | Yes | Required. Customer id or "my_customer" to use the customer associated to the account making the request. |
| `filter` | `string` | query | No | Query string to filter results, AND-separated fields in EBNF syntax. Note: OR operations are not supported in this fi... |
| `orgUnitId` | `string` | query | No | The ID of the organizational unit. |
| `pageSize` | `integer` | query | No | Maximum number of results to return. Maximum and default are 100. |
| `pageToken` | `string` | query | No | Token to specify the page of the request to be returned. |

**Response**: `GoogleChromeManagementV1CountChromeVersionsResponse`

```typescript
const res = await chromemanagement.reports.countChromeVersions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.reports.readonly`

---

### `chromemanagement.customers.reports.countPrintJobsByUser`

**GET** `v1/{+customer}/reports:countPrintJobsByUser`

Get a summary of printing done by each user.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customer` | `string` | path | Yes | Required. Customer ID prefixed with "customers/" or "customers/my_customer" to use the customer associated to the acc... |
| `filter` | `string` | query | No | Query string to filter results, AND-separated fields in EBNF syntax. Note: OR operations are not supported in this fi... |
| `orderBy` | `string` | query | No | Field used to order results. If omitted, results will be ordered in ascending order of the 'user_email' field. Suppor... |
| `pageSize` | `integer` | query | No | Maximum number of results to return. Maximum and default are 100. |
| `pageToken` | `string` | query | No | Token to specify the page of the response to be returned. |
| `printerOrgUnitId` | `string` | query | No | The ID of the organizational unit for printers. If specified, only print jobs initiated with printers from the specif... |

**Response**: `GoogleChromeManagementV1CountPrintJobsByUserResponse`

```typescript
const res = await chromemanagement.reports.countPrintJobsByUser({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.reports.readonly`

---

### `chromemanagement.customers.reports.countPrintJobsByPrinter`

**GET** `v1/{+customer}/reports:countPrintJobsByPrinter`

Get a summary of printing done by each printer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customer` | `string` | path | Yes | Required. Customer ID prefixed with "customers/" or "customers/my_customer" to use the customer associated to the acc... |
| `filter` | `string` | query | No | Query string to filter results, AND-separated fields in EBNF syntax. Note: OR operations are not supported in this fi... |
| `orderBy` | `string` | query | No | Field used to order results. If omitted, results will be ordered in ascending order of the 'printer' field. Supported... |
| `pageSize` | `integer` | query | No | Maximum number of results to return. Maximum and default are 100. |
| `pageToken` | `string` | query | No | Token to specify the page of the response to be returned. |
| `printerOrgUnitId` | `string` | query | No | The ID of the organizational unit for printers. If specified, only data for printers from the specified organizationa... |

**Response**: `GoogleChromeManagementV1CountPrintJobsByPrinterResponse`

```typescript
const res = await chromemanagement.reports.countPrintJobsByPrinter({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.reports.readonly`

---

### `chromemanagement.customers.reports.enumeratePrintJobs`

**GET** `v1/{+customer}/reports:enumeratePrintJobs`

Get a list of print jobs.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customer` | `string` | path | Yes | Required. Customer ID prefixed with "customers/" or "customers/my_customer" to use the customer associated to the acc... |
| `filter` | `string` | query | No | Query string to filter results, AND-separated fields in EBNF syntax. Note: OR operations are not supported in this fi... |
| `orderBy` | `string` | query | No | Field used to order results. If not specified, results will be ordered in descending order of the `complete_time` fie... |
| `pageSize` | `integer` | query | No | The number of print jobs in the page from 0 to 100 inclusive, if page_size is not specified or zero, the size will be... |
| `pageToken` | `string` | query | No | A page token received from a previous `EnumeratePrintJobs` call. Provide this to retrieve the subsequent page. If omi... |
| `printerOrgUnitId` | `string` | query | No | The ID of the organizational unit for printers. If specified, only print jobs submitted to printers from the specifie... |

**Response**: `GoogleChromeManagementV1EnumeratePrintJobsResponse`

```typescript
const res = await chromemanagement.reports.enumeratePrintJobs({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.reports.readonly`

---

### `chromemanagement.customers.reports.countChromeCrashEvents`

**GET** `v1/{+customer}/reports:countChromeCrashEvents`

Get a count of Chrome crash events.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customer` | `string` | path | Yes | Customer ID. |
| `filter` | `string` | query | No | Query string to filter results, AND-separated fields in EBNF syntax. Supported filter fields: * major_browser_version... |
| `orderBy` | `string` | query | No | Field used to order results. Supported order by fields: * browser_version * count * date |
| `orgUnitId` | `string` | query | No | If specified, only count the number of crash events of the devices in this organizational unit. |

**Response**: `GoogleChromeManagementV1CountChromeCrashEventsResponse`

```typescript
const res = await chromemanagement.reports.countChromeCrashEvents({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.reports.readonly`

---

### `chromemanagement.customers.reports.countActiveDevices`

**GET** `v1/{+customer}/reports:countActiveDevices`

Get a count of active devices per set time frames.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customer` | `string` | path | Yes | Required. Obfuscated customer ID prefixed with "customers/C" or "customers/my_customer". |
| `date.day` | `integer` | query | No | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and... |
| `date.month` | `integer` | query | No | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `date.year` | `integer` | query | No | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

**Response**: `GoogleChromeManagementV1CountActiveDevicesResponse`

```typescript
const res = await chromemanagement.reports.countActiveDevices({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.reports.readonly`

---

### `chromemanagement.customers.reports.countDevicesPerReleaseChannel`

**GET** `v1/{+customer}/reports:countDevicesPerReleaseChannel`

Get a count of devices per channel.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customer` | `string` | path | Yes | Required. Obfuscated customer ID prefixed with "customers/C" or "customers/my_customer". |
| `date.day` | `integer` | query | No | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and... |
| `date.month` | `integer` | query | No | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `date.year` | `integer` | query | No | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

**Response**: `GoogleChromeManagementV1CountDevicesPerReleaseChannelResponse`

```typescript
const res = await chromemanagement.reports.countDevicesPerReleaseChannel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.reports.readonly`

---

### `chromemanagement.customers.reports.countDevicesPerBootType`

**GET** `v1/{+customer}/reports:countDevicesPerBootType`

Get a count of devices per boot type.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customer` | `string` | path | Yes | Required. Obfuscated customer ID prefixed with "customers/C" or "customers/my_customer". |
| `date.day` | `integer` | query | No | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and... |
| `date.month` | `integer` | query | No | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `date.year` | `integer` | query | No | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

**Response**: `GoogleChromeManagementV1CountDevicesPerBootTypeResponse`

```typescript
const res = await chromemanagement.reports.countDevicesPerBootType({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.reports.readonly`

---

### `chromemanagement.customers.telemetry.devices.list`

**GET** `v1/{+parent}/telemetry/devices`

List all telemetry devices.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Customer id or "my_customer" to use the customer associated to the account making the request. |
| `filter` | `string` | query | No | Optional. Only include resources that match the filter. Requests that don't specify a "reports_timestamp" value will ... |
| `pageSize` | `integer` | query | No | Maximum number of results to return. Default value is 100. Maximum value is 1000. |
| `pageToken` | `string` | query | No | Token to specify next page in the list. |
| `readMask` | `string` | query | No | Required. Read mask to specify which fields to return. Supported read_mask paths are: - name - org_unit_id - device_i... |

**Response**: `GoogleChromeManagementV1ListTelemetryDevicesResponse`

```typescript
const res = await chromemanagement.devices.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.telemetry.readonly`

---

### `chromemanagement.customers.telemetry.devices.get`

**GET** `v1/{+name}`

Get telemetry device.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the `TelemetryDevice` to return. |
| `readMask` | `string` | query | No | Required. Read mask to specify which fields to return. Supported read_mask paths are: - name - org_unit_id - device_i... |

**Response**: `GoogleChromeManagementV1TelemetryDevice`

```typescript
const res = await chromemanagement.devices.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.telemetry.readonly`

---

### `chromemanagement.customers.telemetry.events.list`

**GET** `v1/{+parent}/telemetry/events`

List telemetry events.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Customer id or "my_customer" to use the customer associated to the account making the request. |
| `filter` | `string` | query | No | Optional. Only include resources that match the filter. Although this parameter is currently optional, this parameter... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of results to return. Default value is 100. Maximum value is 1000. |
| `pageToken` | `string` | query | No | Optional. Token to specify next page in the list. |
| `readMask` | `string` | query | No | Required. Read mask to specify which fields to return. Although currently required, this field will become optional, ... |

**Response**: `GoogleChromeManagementV1ListTelemetryEventsResponse`

```typescript
const res = await chromemanagement.events.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.telemetry.readonly`

---

### `chromemanagement.customers.telemetry.users.list`

**GET** `v1/{+parent}/telemetry/users`

List all telemetry users.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Customer id or "my_customer" to use the customer associated to the account making the request. |
| `filter` | `string` | query | No | Only include resources that match the filter. Supported filter fields: - user_id - user_org_unit_id |
| `pageSize` | `integer` | query | No | Maximum number of results to return. Default value is 100. Maximum value is 1000. |
| `pageToken` | `string` | query | No | Token to specify next page in the list. |
| `readMask` | `string` | query | No | Read mask to specify which fields to return. Supported read_mask paths are: - name - org_unit_id - user_id - user_ema... |

**Response**: `GoogleChromeManagementV1ListTelemetryUsersResponse`

```typescript
const res = await chromemanagement.users.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.telemetry.readonly`

---

### `chromemanagement.customers.telemetry.users.get`

**GET** `v1/{+name}`

Get telemetry user.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the `TelemetryUser` to return. |
| `readMask` | `string` | query | No | Read mask to specify which fields to return. Supported read_mask paths are: - name - org_unit_id - user_id - user_ema... |

**Response**: `GoogleChromeManagementV1TelemetryUser`

```typescript
const res = await chromemanagement.users.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.telemetry.readonly`

---

### `chromemanagement.customers.telemetry.notificationConfigs.list`

**GET** `v1/{+parent}/telemetry/notificationConfigs`

List all telemetry notification configs.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent which owns the notification configs. |
| `pageSize` | `integer` | query | No | The maximum number of notification configs to return. The service may return fewer than this value. If unspecified, a... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListTelemetryNotificationConfigs` call. Provide this to retrieve the subseque... |

**Response**: `GoogleChromeManagementV1ListTelemetryNotificationConfigsResponse`

```typescript
const res = await chromemanagement.notificationConfigs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.telemetry.readonly`

---

### `chromemanagement.customers.telemetry.notificationConfigs.create`

**POST** `v1/{+parent}/telemetry/notificationConfigs`

Create a telemetry notification config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where this notification config will be created. Format: `customers/{customer}` |

**Request body**: `GoogleChromeManagementV1TelemetryNotificationConfig`

**Response**: `GoogleChromeManagementV1TelemetryNotificationConfig`

```typescript
const res = await chromemanagement.notificationConfigs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.telemetry.readonly`

---

### `chromemanagement.customers.telemetry.notificationConfigs.delete`

**DELETE** `v1/{+name}`

Delete a telemetry notification config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the notification config to delete. Format: `customers/{customer}/telemetry/notificationConfigs/... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await chromemanagement.notificationConfigs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.telemetry.readonly`

---

### `chromemanagement.customers.profiles.get`

**GET** `v1/{+name}`

Gets a Chrome browser profile with customer ID and profile permanent ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Format: customers/{customer_id}/profiles/{profile_permanent_id} |

**Response**: `GoogleChromeManagementVersionsV1ChromeBrowserProfile`

```typescript
const res = await chromemanagement.profiles.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.profiles`
- `https://www.googleapis.com/auth/chrome.management.profiles.readonly`

---

### `chromemanagement.customers.profiles.list`

**GET** `v1/{+parent}/profiles`

Lists Chrome browser profiles of a customer based on the given search and sorting criteria.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Format: customers/{customer_id} |
| `filter` | `string` | query | No | Optional. The filter used to filter profiles. The following fields can be used in the filter: - profile_id - display_... |
| `orderBy` | `string` | query | No | Optional. The fields used to specify the ordering of the results. The supported fields are: - profile_id - display_na... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of profiles to return. The default page size is 100 if page_size is unspecified, and the... |
| `pageToken` | `string` | query | No | Optional. The page token used to retrieve a specific page of the listing request. |

**Response**: `GoogleChromeManagementVersionsV1ListChromeBrowserProfilesResponse`

```typescript
const res = await chromemanagement.profiles.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.profiles`
- `https://www.googleapis.com/auth/chrome.management.profiles.readonly`

---

### `chromemanagement.customers.profiles.delete`

**DELETE** `v1/{+name}`

Deletes the data collected from a Chrome browser profile.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Format: customers/{customer_id}/profiles/{profile_permanent_id} |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await chromemanagement.profiles.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.profiles`

---

### `chromemanagement.customers.profiles.commands.create`

**POST** `v1/{+parent}/commands`

Creates a Chrome browser profile remote command.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Format: customers/{customer_id}/profiles/{profile_permanent_id} |

**Request body**: `GoogleChromeManagementVersionsV1ChromeBrowserProfileCommand`

**Response**: `GoogleChromeManagementVersionsV1ChromeBrowserProfileCommand`

```typescript
const res = await chromemanagement.commands.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.profiles`

---

### `chromemanagement.customers.profiles.commands.get`

**GET** `v1/{+name}`

Gets a Chrome browser profile remote command.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Format: customers/{customer_id}/profiles/{profile_permanent_id}/commands/{command_id} |

**Response**: `GoogleChromeManagementVersionsV1ChromeBrowserProfileCommand`

```typescript
const res = await chromemanagement.commands.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.profiles`
- `https://www.googleapis.com/auth/chrome.management.profiles.readonly`

---

### `chromemanagement.customers.profiles.commands.list`

**GET** `v1/{+parent}/commands`

Lists remote commands of a Chrome browser profile.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Format: customers/{customer_id}/profiles/{profile_permanent_id} |
| `pageSize` | `integer` | query | No | Optional. The maximum number of commands to return. The default page size is 100 if page_size is unspecified, and the... |
| `pageToken` | `string` | query | No | Optional. The page token used to retrieve a specific page of the listing request. |

**Response**: `GoogleChromeManagementVersionsV1ListChromeBrowserProfileCommandsResponse`

```typescript
const res = await chromemanagement.commands.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.profiles`
- `https://www.googleapis.com/auth/chrome.management.profiles.readonly`

---

### `chromemanagement.customers.certificateProvisioningProcesses.claim`

**POST** `v1/{+name}:claim`

Claims a certificate provisioning process. For each certificate provisioning process, this operation can succeed only for one `caller_instance_id`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the `CertificateProvisioningProcess` to claim. The name pattern is given as `customers/{cu... |

**Request body**: `GoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessRequest`

**Response**: `GoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessResponse`

```typescript
const res = await chromemanagement.certificateProvisioningProcesses.claim({
  // parameters
});
```

---

### `chromemanagement.customers.certificateProvisioningProcesses.get`

**GET** `v1/{+name}`

Retrieves a certificate provisioning process.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the `CertificateProvisioningProcess` to return. The name pattern is given as `customers/{c... |

**Response**: `GoogleChromeManagementVersionsV1CertificateProvisioningProcess`

```typescript
const res = await chromemanagement.certificateProvisioningProcesses.get({
  // parameters
});
```

---

### `chromemanagement.customers.certificateProvisioningProcesses.signData`

**POST** `v1/{+name}:signData`

Requests the client that initiated a certificate provisioning process to sign data. This should only be called after `ClaimCertificateProvisioningProcess` has been successfully executed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the `CertificateProvisioningProcess` to return. The name pattern is given as `customers/{c... |

**Request body**: `GoogleChromeManagementVersionsV1SignDataRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await chromemanagement.certificateProvisioningProcesses.signData({
  // parameters
});
```

---

### `chromemanagement.customers.certificateProvisioningProcesses.uploadCertificate`

**POST** `v1/{+name}:uploadCertificate`

Uploads a successfully issued certificate for a certificate provisioning process.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the `CertificateProvisioningProcess` to return. The name pattern is given as `customers/{c... |

**Request body**: `GoogleChromeManagementVersionsV1UploadCertificateRequest`

**Response**: `GoogleChromeManagementVersionsV1UploadCertificateResponse`

```typescript
const res = await chromemanagement.certificateProvisioningProcesses.uploadCertificate({
  // parameters
});
```

---

### `chromemanagement.customers.certificateProvisioningProcesses.setFailure`

**POST** `v1/{+name}:setFailure`

Marks a certificate provisioning process as failed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the `CertificateProvisioningProcess` to return. The name pattern is given as `customers/{c... |

**Request body**: `GoogleChromeManagementVersionsV1SetFailureRequest`

**Response**: `GoogleChromeManagementVersionsV1SetFailureResponse`

```typescript
const res = await chromemanagement.certificateProvisioningProcesses.setFailure({
  // parameters
});
```

---

### `chromemanagement.customers.certificateProvisioningProcesses.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await chromemanagement.operations.get({
  // parameters
});
```

---

### `chromemanagement.customers.thirdPartyProfileUsers.move`

**POST** `v1/{+name}:move`

Moves a third party chrome profile user to a destination OU. All profiles associated to that user will be moved to the destination OU.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Format: customers/{customer_id}/thirdPartyProfileUsers/{third_party_profile_user_id} |

**Request body**: `GoogleChromeManagementVersionsV1MoveThirdPartyProfileUserRequest`

**Response**: `GoogleChromeManagementVersionsV1MoveThirdPartyProfileUserResponse`

```typescript
const res = await chromemanagement.thirdPartyProfileUsers.move({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.profiles`

---

### `chromemanagement.operations.list`

**GET** `v1/{+name}`

Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation's parent resource. |
| `filter` | `string` | query | No | The standard list filter. |
| `pageSize` | `integer` | query | No | The standard list page size. |
| `pageToken` | `string` | query | No | The standard list page token. |
| `returnPartialSuccess` | `boolean` | query | No | When set to `true`, operations that are reachable are returned as normal, and those that are unreachable are returned... |

**Response**: `GoogleLongrunningListOperationsResponse`

```typescript
const res = await chromemanagement.operations.list({
  // parameters
});
```

---

### `chromemanagement.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await chromemanagement.operations.delete({
  // parameters
});
```

---

### `chromemanagement.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `GoogleLongrunningCancelOperationRequest`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await chromemanagement.operations.cancel({
  // parameters
});
```

---

## Schemas

### `GoogleChromeManagementV1AndroidAppInfo`

Android app information.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<GoogleChromeManagementV1AndroidAppPermission>` | Output only. Permissions requested by an Android app. |

### `GoogleChromeManagementV1AndroidAppPermission`

Permission requested by an Android app.

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | Output only. The type of the permission. |

### `GoogleChromeManagementV1AppDetails`

Resource representing app details.

| Property | Type | Description |
|----------|------|-------------|
| `androidAppInfo` | `GoogleChromeManagementV1AndroidAppInfo` | Output only. Android app information. |
| `appId` | `string` | Output only. Unique store identifier for the item. Examples: "gmbmikajjgmnabiglmofipeabaddhgne" f... |
| `chromeAppInfo` | `GoogleChromeManagementV1ChromeAppInfo` | Output only. Chrome Web Store app information. |
| `description` | `string` | Output only. App's description. |
| `detailUri` | `string` | Output only. The uri for the detail page of the item. |
| `displayName` | `string` | Output only. App's display name. |
| `firstPublishTime` | `string` | Output only. First published time. |
| `homepageUri` | `string` | Output only. Home page or Website uri. |
| `iconUri` | `string` | Output only. A link to an image that can be used as an icon for the product. |
| `isPaidApp` | `boolean` | Output only. Indicates if the app has to be paid for OR has paid content. |
| `latestPublishTime` | `string` | Output only. Latest published time. |
| `name` | `string` | Output only. Format: name=customers/{customer_id}/apps/{chrome|android|web}/{app_id}@{version} |
| `privacyPolicyUri` | `string` | Output only. The URI pointing to the privacy policy of the app, if it was provided by the develop... |
| `publisher` | `string` | Output only. The publisher of the item. |
| `reviewNumber` | `string` | Output only. Number of reviews received. Chrome Web Store review information will always be for t... |
| `reviewRating` | `number` | Output only. The rating of the app (on 5 stars). Chrome Web Store review information will always ... |
| `revisionId` | `string` | Output only. App version. A new revision is committed whenever a new version of the app is publis... |
| `serviceError` | `GoogleRpcStatus` | Output only. Information about a partial service error if applicable. |
| `type` | `string` | Output only. App type. |

### `GoogleChromeManagementV1AppReport`

App report.

| Property | Type | Description |
|----------|------|-------------|
| `reportTime` | `string` | Timestamp when the report was collected. |
| `usageData` | `array<GoogleChromeManagementV1AppUsageData>` | App usage data. |

### `GoogleChromeManagementV1AppUsageData`

App usage data.

| Property | Type | Description |
|----------|------|-------------|
| `appId` | `string` | App id. |
| `appInstanceId` | `string` | Application instance id. This will be unique per window/instance. |
| `appType` | `string` | Type of app. |
| `runningDuration` | `string` | App foreground running time. |

### `GoogleChromeManagementV1AudioStatusReport`

Status data for storage. * This field is telemetry information and this will change over time as the device is utilized. * Data for this field is controlled via policy: [ReportDeviceAudioStatus](https://chromeenterprise.google/policies/#ReportDeviceAudioStatus) * Data Collection Frequency: 10 minutes * Default Data Reporting Frequency: 3 hours - Policy Controlled: Yes * Cache: If the device is offline, the collected data is stored locally, and will be reported when the device is next online: No * Reported for affiliated users only: N/A * Granular permission needed: TELEMETRY_API_AUDIO_REPORT

| Property | Type | Description |
|----------|------|-------------|
| `inputDevice` | `string` | Output only. Active input device's name. |
| `inputGain` | `integer` | Output only. Active input device's gain in [0, 100]. |
| `inputMute` | `boolean` | Output only. Is active input device mute or not. |
| `outputDevice` | `string` | Output only. Active output device's name. |
| `outputMute` | `boolean` | Output only. Is active output device mute or not. |
| `outputVolume` | `integer` | Output only. Active output device's volume in [0, 100]. |
| `reportTime` | `string` | Output only. Timestamp of when the sample was collected on device. |

### `GoogleChromeManagementV1BatteryInfo`

Information about the battery. * This field provides device information, which is static and will not change over time. * Data for this field is controlled via policy: [ReportDevicePowerStatus](https://chromeenterprise.google/policies/#ReportDevicePowerStatus) * Data Collection Frequency: Only at Upload * Default Data Reporting Frequency: 3 hours - Policy Controlled: Yes * Cache: If the device is offline, the collected data is stored locally, and will be reported when the device is next online: No * Reported for affiliated users only: N/A * Granular permission needed: TELEMETRY_API_BATTERY_INFO

| Property | Type | Description |
|----------|------|-------------|
| `designCapacity` | `string` | Output only. Design capacity (mAmpere-hours). |
| `designMinVoltage` | `integer` | Output only. Designed minimum output voltage (mV) |
| `manufactureDate` | `GoogleTypeDate` | Output only. The date the battery was manufactured. |
| `manufacturer` | `string` | Output only. Battery manufacturer. |
| `serialNumber` | `string` | Output only. Battery serial number. |
| `technology` | `string` | Output only. Technology of the battery. Example: Li-ion |

### `GoogleChromeManagementV1BatterySampleReport`

Sampling data for battery. * This field is telemetry information and this will change over time as the device is utilized. * Data for this field is controlled via policy: [ReportDevicePowerStatus](https://chromeenterprise.google/policies/#ReportDevicePowerStatus) * Data Collection Frequency: Only at Upload * Default Data Reporting Frequency: 3 hours - Policy Controlled: Yes * Cache: If the device is offline, the collected data is stored locally, and will be reported when the device is next online: No * Reported for affiliated users only: N/A

| Property | Type | Description |
|----------|------|-------------|
| `chargeRate` | `integer` | Output only. Battery charge percentage. |
| `current` | `string` | Output only. Battery current (mA). |
| `dischargeRate` | `integer` | Output only. The battery discharge rate measured in mW. Positive if the battery is being discharg... |
| `remainingCapacity` | `string` | Output only. Battery remaining capacity (mAmpere-hours). |
| `reportTime` | `string` | Output only. Timestamp of when the sample was collected on device |
| `status` | `string` | Output only. Battery status read from sysfs. Example: Discharging |
| `temperature` | `integer` | Output only. Temperature in Celsius degrees. |
| `voltage` | `string` | Output only. Battery voltage (millivolt). |

### `GoogleChromeManagementV1BatteryStatusReport`

Status data for battery. * This field is telemetry information and this will change over time as the device is utilized. * Data for this field is controlled via policy: [ReportDevicePowerStatus](https://chromeenterprise.google/policies/#ReportDevicePowerStatus) * Data Collection Frequency: Only at Upload * Default Data Reporting Frequency: 3 hours - Policy Controlled: Yes * Cache: If the device is offline, the collected data is stored locally, and will be reported when the device is next online: No * Reported for affiliated users only: N/A * Granular permission needed: TELEMETRY_API_BATTERY_REPORT

| Property | Type | Description |
|----------|------|-------------|
| `batteryHealth` | `string` | Output only. Battery health. |
| `cycleCount` | `integer` | Output only. Cycle count. |
| `fullChargeCapacity` | `string` | Output only. Full charge capacity (mAmpere-hours). |
| `reportTime` | `string` | Output only. Timestamp of when the sample was collected on device |
| `sample` | `array<GoogleChromeManagementV1BatterySampleReport>` | Output only. Sampling data for the battery sorted in a decreasing order of report_time. |
| `serialNumber` | `string` | Output only. Battery serial number. |

### `GoogleChromeManagementV1BootPerformanceReport`

Boot performance report of a device. * This field is telemetry information and this will change over time as the device is utilized. * Data for this field is controlled via policy: [ReportDeviceBootMode](https://chromeenterprise.google/policies/#ReportDeviceBootMode) * Data Collection Frequency: On every boot up event * Default Data Reporting Frequency: 3 hours - Policy Controlled: Yes * Cache: If the device is offline, the collected data is stored locally, and will be reported when the device is next online: Yes * Reported for affiliated users only: N/A * Granular permission needed: TELEMETRY_API_OS_REPORT

| Property | Type | Description |
|----------|------|-------------|
| `bootUpDuration` | `string` | Total time to boot up. |
| `bootUpTime` | `string` | The timestamp when power came on. |
| `reportTime` | `string` | Timestamp when the report was collected. |
| `shutdownDuration` | `string` | Total time since shutdown start to power off. |
| `shutdownReason` | `string` | The shutdown reason. |
| `shutdownTime` | `string` | The timestamp when shutdown. |

### `GoogleChromeManagementV1BrowserVersion`

Describes a browser version and its install count.

| Property | Type | Description |
|----------|------|-------------|
| `channel` | `string` | Output only. The release channel of the installed browser. |
| `count` | `string` | Output only. Count grouped by device_system and major version |
| `deviceOsVersion` | `string` | Output only. Version of the system-specified operating system. |
| `system` | `string` | Output only. The device operating system. |
| `version` | `string` | Output only. The full version of the installed browser. |

### `GoogleChromeManagementV1ChromeAppInfo`

Chrome Web Store app information.

| Property | Type | Description |
|----------|------|-------------|
| `googleOwned` | `boolean` | Output only. Whether the app or extension is built and maintained by Google. Version-specific fie... |
| `isCwsHosted` | `boolean` | Output only. Whether the app or extension is in a published state in the Chrome Web Store. |
| `isExtensionPolicySupported` | `boolean` | Output only. Whether an app supports policy for extensions. |
| `isKioskOnly` | `boolean` | Output only. Whether the app is only for Kiosk mode on ChromeOS devices |
| `isTheme` | `boolean` | Output only. Whether the app or extension is a theme. |
| `kioskEnabled` | `boolean` | Output only. Whether this app is enabled for Kiosk mode on ChromeOS devices |
| `manifestVersion` | `string` | Output only. The version of this extension's manifest. |
| `minUserCount` | `integer` | Output only. The minimum number of users using this app. |
| `permissions` | `array<GoogleChromeManagementV1ChromeAppPermission>` | Output only. Every custom permission requested by the app. Version-specific field that will only ... |
| `siteAccess` | `array<GoogleChromeManagementV1ChromeAppSiteAccess>` | Output only. Every permission giving access to domains or broad host patterns. ( e.g. www.google.... |
| `supportEnabled` | `boolean` | Output only. The app developer has enabled support for their app. Version-specific field that wil... |
| `type` | `string` | Output only. Types of an item in the Chrome Web Store |

### `GoogleChromeManagementV1ChromeAppPermission`

Permission requested by a Chrome app or extension.

| Property | Type | Description |
|----------|------|-------------|
| `accessUserData` | `boolean` | Output only. If available, whether this permissions grants the app/extension access to user data. |
| `documentationUri` | `string` | Output only. If available, a URI to a page that has documentation for the current permission. |
| `type` | `string` | Output only. The type of the permission. |

### `GoogleChromeManagementV1ChromeAppRequest`

Details of an app installation request.

| Property | Type | Description |
|----------|------|-------------|
| `appDetails` | `string` | Output only. Format: app_details=customers/{customer_id}/apps/chrome/{app_id} |
| `appId` | `string` | Output only. Unique store identifier for the app. Example: "gmbmikajjgmnabiglmofipeabaddhgne" for... |
| `detailUri` | `string` | Output only. The uri for the detail page of the item. |
| `displayName` | `string` | Output only. App's display name. |
| `iconUri` | `string` | Output only. A link to an image that can be used as an icon for the product. |
| `latestRequestTime` | `string` | Output only. The timestamp of the most recently made request for this app. |
| `requestCount` | `string` | Output only. Total count of requests for this app. |

### `GoogleChromeManagementV1ChromeAppSiteAccess`

Represent one host permission.

| Property | Type | Description |
|----------|------|-------------|
| `hostMatch` | `string` | Output only. This can contain very specific hosts, or patterns like "*.com" for instance. |

### `GoogleChromeManagementV1CountActiveDevicesResponse`

Response containing the number of active devices.

| Property | Type | Description |
|----------|------|-------------|
| `sevenDaysCount` | `string` | Number of active devices in the 7 days leading up to the date specified in the request. |
| `thirtyDaysCount` | `string` | Number of active devices in the 30 days leading up to the date specified in the request. |

### `GoogleChromeManagementV1CountChromeAppRequestsResponse`

Response containing summary of requested app installations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to specify the next page in the list. |
| `requestedApps` | `array<GoogleChromeManagementV1ChromeAppRequest>` | Count of requested apps matching request. |
| `totalSize` | `integer` | Total number of matching app requests. |

### `GoogleChromeManagementV1CountChromeBrowsersNeedingAttentionResponse`

Response containing counts for browsers that need attention.

| Property | Type | Description |
|----------|------|-------------|
| `noRecentActivityCount` | `string` | Number of browsers that haven’t had any recent activity |
| `pendingBrowserUpdateCount` | `string` | Number of browsers that are pending an OS update |
| `recentlyEnrolledCount` | `string` | Number of browsers that have been recently enrolled |

### `GoogleChromeManagementV1CountChromeCrashEventsResponse`

Response contains a list of CrashEventCountByVersionPerDay which count the chrome crash at the certain date.

| Property | Type | Description |
|----------|------|-------------|
| `crashEventCounts` | `array<GoogleChromeManagementV1CountChromeCrashEventsResponseCrashEventCount>` | Crash event counts grouped by date and browser version. |

### `GoogleChromeManagementV1CountChromeCrashEventsResponseCrashEventCount`

The `count` of the Chrome crash events at the `date`.

| Property | Type | Description |
|----------|------|-------------|
| `browserVersion` | `string` | Browser version this is counting. |
| `count` | `string` | Total count of crash events. |
| `date` | `GoogleTypeDate` | Date of the crash event. |

### `GoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse`

Response containing a list of devices expiring in each month of a selected time frame. Counts are grouped by model and Auto Update Expiration date.

| Property | Type | Description |
|----------|------|-------------|
| `deviceAueCountReports` | `array<GoogleChromeManagementV1DeviceAueCountReport>` | The list of reports sorted by auto update expiration date in ascending order. |

### `GoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse`

Response containing counts for devices that need attention.

| Property | Type | Description |
|----------|------|-------------|
| `noRecentPolicySyncCount` | `string` | Number of ChromeOS devices have not synced policies in the past 28 days. |
| `noRecentUserActivityCount` | `string` | Number of ChromeOS devices that have not seen any user activity in the past 28 days. |
| `osVersionNotCompliantCount` | `string` | Number of devices whose OS version is not compliant. |
| `pendingUpdate` | `string` | Number of devices that are pending an OS update. |
| `unsupportedPolicyCount` | `string` | Number of devices that are unable to apply a policy due to an OS version mismatch. |

### `GoogleChromeManagementV1CountChromeHardwareFleetDevicesResponse`

Response containing a list of devices with a specific type of hardware specification from the requested hardware type.

| Property | Type | Description |
|----------|------|-------------|
| `cpuReports` | `array<GoogleChromeManagementV1DeviceHardwareCountReport>` | The DeviceHardwareCountReport for device cpu type (for example Intel(R) Core(TM) i7-10610U CPU @ ... |
| `memoryReports` | `array<GoogleChromeManagementV1DeviceHardwareCountReport>` | The DeviceHardwareCountReport for device memory amount in gigabytes (for example 16). |
| `modelReports` | `array<GoogleChromeManagementV1DeviceHardwareCountReport>` | The DeviceHardwareCountReport for device model type (for example Acer C7 Chromebook). |
| `storageReports` | `array<GoogleChromeManagementV1DeviceHardwareCountReport>` | The DeviceHardwareCountReport for device storage amount in gigabytes (for example 128). |

### `GoogleChromeManagementV1CountChromeVersionsResponse`

Response containing requested browser versions details and counts.

| Property | Type | Description |
|----------|------|-------------|
| `browserVersions` | `array<GoogleChromeManagementV1BrowserVersion>` | List of all browser versions and their install counts. |
| `nextPageToken` | `string` | Token to specify the next page of the request. |
| `totalSize` | `integer` | Total number browser versions matching request. |

### `GoogleChromeManagementV1CountDevicesPerBootTypeResponse`

Response containing the number of devices with the given boot type.

| Property | Type | Description |
|----------|------|-------------|
| `devBootTypeCount` | `string` | Number of devices with dev boot type. |
| `unreportedBootTypeCount` | `string` | Number of devices with unreported boot type. |
| `verifiedBootTypeCount` | `string` | Number of devices with verified boot type. |

### `GoogleChromeManagementV1CountDevicesPerReleaseChannelResponse`

Response containing the number of devices with the given channel.

| Property | Type | Description |
|----------|------|-------------|
| `betaChannelCount` | `string` | Number of devices with beta release channel. |
| `canaryChannelCount` | `string` | Number of devices with canary release channel. |
| `devChannelCount` | `string` | Number of devices with dev release channel. |
| `ltcChannelCount` | `string` | Number of devices with ltc release channel. |
| `ltsChannelCount` | `string` | Number of devices with lts release channel. |
| `stableChannelCount` | `string` | Number of devices with stable release channel. |
| `unreportedChannelCount` | `string` | Number of devices with an unreported release channel. |
| `unsupportedChannelCount` | `string` | Number of devices with unsupported release channel. |

### `GoogleChromeManagementV1CountInstalledAppsResponse`

Response containing details of queried installed apps.

| Property | Type | Description |
|----------|------|-------------|
| `installedApps` | `array<GoogleChromeManagementV1InstalledApp>` | List of installed apps matching request. |
| `nextPageToken` | `string` | Token to specify the next page of the request. |
| `totalSize` | `integer` | Total number of installed apps matching request. |

### `GoogleChromeManagementV1CountPrintJobsByPrinterResponse`

Response containing a summary printing report for each printer from the specified organizational unit for the requested time interval.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Pagination token for requesting the next page. |
| `printerReports` | `array<GoogleChromeManagementV1PrinterReport>` | List of PrinterReports matching request. |
| `totalSize` | `string` | Total number of printers matching request. |

### `GoogleChromeManagementV1CountPrintJobsByUserResponse`

Response containing a summary printing report for each user that has initiated a print job with a printer from the specified organizational unit during the requested time interval.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Pagination token for requesting the next page. |
| `totalSize` | `string` | Total number of users matching request. |
| `userPrintReports` | `array<GoogleChromeManagementV1UserPrintReport>` | List of UserPrintReports matching request. |

### `GoogleChromeManagementV1CpuInfo`

CPU specifications for the device * This field provides device information, which is static and will not change over time. * Data for this field is controlled via policy: [ReportDeviceCpuInfo](https://chromeenterprise.google/policies/#ReportDeviceCpuInfo) * Data Collection Frequency: Only at Upload * Default Data Reporting Frequency: 3 hours - Policy Controlled: Yes * Cache: If the device is offline, the collected data is stored locally, and will be reported when the device is next online: No * Reported for affiliated users only: N/A * Granular permission needed: TELEMETRY_API_CPU_INFO

| Property | Type | Description |
|----------|------|-------------|
| `architecture` | `string` | Output only. Architecture type for the CPU. * This field provides device information, which is st... |
| `keylockerConfigured` | `boolean` | Output only. Whether keylocker is configured.`TRUE` = Enabled; `FALSE` = disabled. Only reported ... |
| `keylockerSupported` | `boolean` | Output only. Whether keylocker is supported. |
| `maxClockSpeed` | `integer` | Output only. The max CPU clock speed in kHz. |
| `model` | `string` | Output only. The CPU model name. Example: Intel(R) Core(TM) i5-8250U CPU @ 1.60GHz |

### `GoogleChromeManagementV1CpuStatusReport`

Provides information about the status of the CPU. * This field is telemetry information and this will change over time as the device is utilized. * Data for this field is controlled via policy: [ReportDeviceCpuInfo](https://chromeenterprise.google/policies/#ReportDeviceCpuInfo) * Data Collection Frequency: Every 10 minutes * Default Data Reporting Frequency: 3 hours - Policy Controlled: Yes * Cache: If the device is offline, the collected data is stored locally, and will be reported when the device is next online: No * Reported for affiliated users only: N/A * Granular permission needed: TELEMETRY_API_CPU_REPORT

| Property | Type | Description |
|----------|------|-------------|
| `cpuTemperatureInfo` | `array<GoogleChromeManagementV1CpuTemperatureInfo>` | Output only. CPU temperature sample info per CPU core in Celsius |
| `cpuUtilizationPct` | `integer` | Output only. Sample of CPU utilization (0-100 percent). |
| `reportTime` | `string` | Output only. The timestamp in milliseconds representing time at which this report was sampled. |
| `sampleFrequency` | `string` | Output only. Frequency the report is sampled. |

### `GoogleChromeManagementV1CpuTemperatureInfo`

CPU temperature of a device. Sampled per CPU core in Celsius. * This field is telemetry information and this will change over time as the device is utilized. * Data for this field is controlled via policy: [ReportDeviceCpuInfo](https://chromeenterprise.google/policies/#ReportDeviceCpuInfo) * Data Collection Frequency: Every 10 minutes * Default Data Reporting Frequency: 3 hours - Policy Controlled: Yes * Cache: If the device is offline, the collected data is stored locally, and will be reported when the device is next online: No * Reported for affiliated users only: N/A

| Property | Type | Description |
|----------|------|-------------|
| `label` | `string` | Output only. CPU label. Example: Core 0 |
| `temperatureCelsius` | `integer` | Output only. CPU temperature in Celsius. |

### `GoogleChromeManagementV1Device`

Describes a device reporting Chrome browser information.

| Property | Type | Description |
|----------|------|-------------|
| `deviceId` | `string` | Output only. The ID of the device that reported this Chrome browser information. |
| `machine` | `string` | Output only. The name of the machine within its local network. |

### `GoogleChromeManagementV1DeviceActivityReport`

Device activity report. * Granular permission needed: TELEMETRY_API_DEVICE_ACTIVITY_REPORT

| Property | Type | Description |
|----------|------|-------------|
| `deviceActivityState` | `string` | Output only. Device activity state. |
| `reportTime` | `string` | Output only. Timestamp of when the report was collected. |

### `GoogleChromeManagementV1DeviceAueCountReport`

Report for CountChromeDevicesPerAueDateResponse, contains the count of devices of a specific model and auto update expiration range.

| Property | Type | Description |
|----------|------|-------------|
| `aueMonth` | `string` | Enum value of month corresponding to the auto update expiration date in UTC time zone. If the dev... |
| `aueYear` | `string` | Int value of year corresponding to the Auto Update Expiration date in UTC time zone. If the devic... |
| `count` | `string` | Count of devices of this model. |
| `expired` | `boolean` | Boolean value for whether or not the device has already expired. |
| `model` | `string` | Public model name of the devices. |

### `GoogleChromeManagementV1DeviceHardwareCountReport`

Report for CountChromeDevicesPerHardwareSpecResponse, contains the count of devices with a unique hardware specification.

| Property | Type | Description |
|----------|------|-------------|
| `bucket` | `string` | Public name of the hardware specification. |
| `count` | `string` | Count of devices with a unique hardware specification. |

### `GoogleChromeManagementV1DeviceRequestingExtensionDetails`

Details of a device requesting an extension, including the name of the device and the justification of the request.

| Property | Type | Description |
|----------|------|-------------|
| `deviceName` | `string` | The name of a device that has requested the extension. |
| `justification` | `string` | Request justification as entered by the user. |

### `GoogleChromeManagementV1DiskInfo`

Status of the single storage device.

| Property | Type | Description |
|----------|------|-------------|
| `bytesReadThisSession` | `string` | Output only. Number of bytes read since last boot. |
| `bytesWrittenThisSession` | `string` | Output only. Number of bytes written since last boot. |
| `discardTimeThisSession` | `string` | Output only. Time spent discarding since last boot. Discarding is writing to clear blocks which a... |
| `health` | `string` | Output only. Disk health. |
| `ioTimeThisSession` | `string` | Output only. Counts the time the disk and queue were busy, so unlike the fields above, parallel r... |
| `manufacturer` | `string` | Output only. Disk manufacturer. |
| `model` | `string` | Output only. Disk model. |
| `readTimeThisSession` | `string` | Output only. Time spent reading from disk since last boot. |
| `serialNumber` | `string` | Output only. Disk serial number. |
| `sizeBytes` | `string` | Output only. Disk size. |
| `type` | `string` | Output only. Disk type: eMMC / NVMe / ATA / SCSI. |
| `volumeIds` | `array<string>` | Output only. Disk volumes. |
| `writeTimeThisSession` | `string` | Output only. Time spent writing to disk since last boot. |

### `GoogleChromeManagementV1DisplayDevice`

Information of a display device.

| Property | Type | Description |
|----------|------|-------------|
| `displayHeightMm` | `integer` | Output only. Display height in millimeters. |
| `displayName` | `string` | Output only. Display device name. |
| `displayWidthMm` | `integer` | Output only. Display width in millimeters. |
| `edidVersion` | `string` | Output only. EDID version. |
| `internal` | `boolean` | Output only. Is display internal or not. |
| `manufactureYear` | `integer` | Output only. Year of manufacture. |
| `manufacturerId` | `string` | Output only. Three letter manufacturer ID. |
| `modelId` | `integer` | Output only. Manufacturer product code. |
| `serialNumber` | `integer` | Output only. Serial number. |

### `GoogleChromeManagementV1DisplayInfo`

Information for a display.

| Property | Type | Description |
|----------|------|-------------|
| `deviceId` | `string` | Output only. Represents the graphics card device id. |
| `displayName` | `string` | Output only. Display device name. |
| `edidVersion` | `string` | Output only. EDID version. |
| `isInternal` | `boolean` | Output only. Indicates if display is internal or not. |
| `refreshRate` | `integer` | Output only. Refresh rate in Hz. |
| `resolutionHeight` | `integer` | Output only. Resolution height in pixels. |
| `resolutionWidth` | `integer` | Output only. Resolution width in pixels. |
| `serialNumber` | `integer` | Output only. Serial number. |

### `GoogleChromeManagementV1EnumeratePrintJobsResponse`

Response containing a list of print jobs.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be used in a subsequent request to retrieve the next page. If this field is om... |
| `printJobs` | `array<GoogleChromeManagementV1PrintJob>` | List of requested print jobs. |
| `totalSize` | `string` | Total number of print jobs matching request. |

### `GoogleChromeManagementV1FetchDevicesRequestingExtensionResponse`

Response containing a list of devices that have requested the queried extension.

| Property | Type | Description |
|----------|------|-------------|
| `deviceDetails` | `array<GoogleChromeManagementV1DeviceRequestingExtensionDetails>` | Details of devices that have requested the queried extension. |
| `nextPageToken` | `string` | Optional. Token to specify the next page in the list. Token expires after 1 day. |
| `totalSize` | `integer` | Optional. Total number of devices in response. |

### `GoogleChromeManagementV1FetchUsersRequestingExtensionResponse`

Response containing a list of users that have requested the queried extension.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to specify the next page in the list. |
| `totalSize` | `integer` | Total number of users in response. |
| `userDetails` | `array<GoogleChromeManagementV1UserRequestingExtensionDetails>` | Details of users that have requested the queried extension. |

### `GoogleChromeManagementV1FindInstalledAppDevicesResponse`

Response containing a list of devices with queried app installed.

| Property | Type | Description |
|----------|------|-------------|
| `devices` | `array<GoogleChromeManagementV1Device>` | A list of devices which have the app installed. Sorted in ascending alphabetical order on the Dev... |
| `nextPageToken` | `string` | Token to specify the next page of the request. |
| `totalSize` | `integer` | Total number of devices matching request. |

### `GoogleChromeManagementV1GraphicsAdapterInfo`

Information of a graphics adapter (GPU).

| Property | Type | Description |
|----------|------|-------------|
| `adapter` | `string` | Output only. Adapter name. Example: Mesa DRI Intel(R) UHD Graphics 620 (Kabylake GT2). |
| `deviceId` | `string` | Output only. Represents the graphics card device id. |
| `driverVersion` | `string` | Output only. Version of the GPU driver. |

### `GoogleChromeManagementV1GraphicsInfo`

Information of the graphics subsystem. * This field provides device information, which is static and will not change over time. * Data for this field is controlled via policy: [ReportDeviceGraphicsStatus](https://chromeenterprise.google/policies/#ReportDeviceGraphicsStatus) * Data Collection Frequency: Only at Upload * Default Data Reporting Frequency: 3 hours - Policy Controlled: Yes * Cache: If the device is offline, the collected data is stored locally, and will be reported when the device is next online: No * Reported for affiliated users only: N/A * Granular permission needed: TELEMETRY_API_GRAPHICS_INFO

| Property | Type | Description |
|----------|------|-------------|
| `adapterInfo` | `GoogleChromeManagementV1GraphicsAdapterInfo` | Output only. Information about the graphics adapter (GPU). |
| `displayDevices` | `array<GoogleChromeManagementV1DisplayDevice>` | Output only. Information about the display(s) of the device. |
| `eprivacySupported` | `boolean` | Output only. Is ePrivacy screen supported or not. |
| `touchScreenInfo` | `GoogleChromeManagementV1TouchScreenInfo` | Output only. Information about the internal touch screen(s) of the device. |

### `GoogleChromeManagementV1GraphicsStatusReport`

Information of the graphics subsystem. * This field is telemetry information and this will change over time as the device is utilized. * Data for this field is controlled via policy: [ReportDeviceGraphicsInfo](https://chromeenterprise.google/policies/#ReportDeviceGraphicsInfo) * Data Collection Frequency: 3 hours. * Default Data Reporting Frequency: 3 hours - Policy Controlled: Yes * Cache: If the device is offline, the collected data is stored locally, and will be reported when the device is next online: No * Reported for affiliated users only: N/A * Granular permission needed: TELEMETRY_API_GRAPHICS_REPORT

| Property | Type | Description |
|----------|------|-------------|
| `displays` | `array<GoogleChromeManagementV1DisplayInfo>` | Output only. Information about the displays for the device. |
| `reportTime` | `string` | Output only. Time at which the graphics data was reported. |

### `GoogleChromeManagementV1HeartbeatStatusReport`

Heartbeat status report of a device. * Available for Kiosks * This field provides online/offline/unknown status of a device and will only be included if the status has changed (e.g. Online -> Offline) * Data for this field is controlled via policy: [HeartbeatEnabled](https://chromeenterprise.google/policies/#HeartbeatEnabled) [More Info](https://support.google.com/chrome/a/answer/6179663#:~:text=On%20the%20Chrome,device%20status%20alerts) * Heartbeat Frequency: 2 mins * Note: If a device goes offline, it can take up to 12 minutes for the online status of the device to be updated * Cache: If the device is offline, the collected data is stored locally, and will be reported when the device is next online: N/A * Reported for affiliated users only: N/A * Granular permission needed: TELEMETRY_API_DEVICE_ACTIVITY_REPORT

| Property | Type | Description |
|----------|------|-------------|
| `reportTime` | `string` | Timestamp of when status changed was detected |
| `state` | `string` | State the device changed to |

### `GoogleChromeManagementV1HttpsLatencyRoutineData`

Data that describes the result of the HTTPS latency diagnostics routine, with the HTTPS requests issued to Google websites.

| Property | Type | Description |
|----------|------|-------------|
| `latency` | `string` | Output only. HTTPS latency if routine succeeded or failed because of HIGH_LATENCY or VERY_HIGH_LA... |
| `problem` | `string` | Output only. HTTPS latency routine problem if a problem occurred. |

### `GoogleChromeManagementV1InstalledApp`

Describes an installed app.

| Property | Type | Description |
|----------|------|-------------|
| `appId` | `string` | Output only. Unique identifier of the app. For Chrome apps and extensions, the 32-character id (e... |
| `appInstallType` | `string` | Output only. How the app was installed. |
| `appSource` | `string` | Output only. Source of the installed app. |
| `appType` | `string` | Output only. Type of the app. |
| `browserDeviceCount` | `string` | Output only. Count of browser devices with this app installed. |
| `description` | `string` | Output only. Description of the installed app. |
| `disabled` | `boolean` | Output only. Whether the app is disabled. |
| `displayName` | `string` | Output only. Name of the installed app. |
| `homepageUri` | `string` | Output only. Homepage uri of the installed app. |
| `osUserCount` | `string` | Output only. Count of ChromeOS users with this app installed. |
| `permissions` | `array<string>` | Output only. Permissions of the installed app. |
| `riskAssessment` | `GoogleChromeManagementV1RiskAssessmentData` | Output only. If available, the risk assessment data about this extension. |

### `GoogleChromeManagementV1KioskAppStatusReport`

Kiosk app status report of a device. * Available for Kiosks * This field provides the app id and version number running on a kiosk device and the timestamp of when the report was last updated * Data for this field is controlled via policy: [ReportDeviceSessionStatus](https://chromeenterprise.google/policies/#ReportDeviceSessionStatus) * Data Collection Frequency: Only at Upload * Default Data Reporting Frequency: 3 hours - Policy Controlled: Yes * Cache: If the device is offline, the collected data is stored locally, and will be reported when the device is next online: No * Reported for affiliated users only: N/A * Granular permission needed: TELEMETRY_API_APPS_REPORT

| Property | Type | Description |
|----------|------|-------------|
| `appId` | `string` | App id of kiosk app for example "mdmkkicfmmkgmpkmkdikhlbggogpicma" |
| `appVersion` | `string` | App version number of kiosk app for example "1.10.118" |
| `reportTime` | `string` | Timestamp of when report was collected |

### `GoogleChromeManagementV1ListTelemetryDevicesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `devices` | `array<GoogleChromeManagementV1TelemetryDevice>` | Telemetry devices returned in the response. |
| `nextPageToken` | `string` | Token to specify next page in the list. |

### `GoogleChromeManagementV1ListTelemetryEventsResponse`

Response message for listing telemetry events for a customer.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to specify next page in the list. |
| `telemetryEvents` | `array<GoogleChromeManagementV1TelemetryEvent>` | Telemetry events returned in the response. |

### `GoogleChromeManagementV1ListTelemetryNotificationConfigsResponse`

Response message for listing notification configs for a customer.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `telemetryNotificationConfigs` | `array<GoogleChromeManagementV1TelemetryNotificationConfig>` | The telemetry notification configs from the specified customer. |

### `GoogleChromeManagementV1ListTelemetryUsersResponse`

Response message for listing telemetry users for a customer.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to specify next page in the list. |
| `telemetryUsers` | `array<GoogleChromeManagementV1TelemetryUser>` | Telemetry users returned in the response. |

### `GoogleChromeManagementV1MemoryInfo`

Memory information of a device. * This field has both telemetry and device information: - `totalRamBytes` - Device information - `availableRamBytes` - Telemetry information - `totalMemoryEncryption` - Device information * Data for this field is controlled via policy: [ReportDeviceMemoryInfo](https://chromeenterprise.google/policies/#ReportDeviceMemoryInfo) * Data Collection Frequency: - `totalRamBytes` - Only at upload - `availableRamBytes` - Every 10 minutes - `totalMemoryEncryption` - at device startup * Default Data Reporting Frequency: - `totalRamBytes` - 3 hours - `availableRamBytes` - 3 hours - `totalMemoryEncryption` - at device startup - Policy Controlled: Yes * Cache: If the device is offline, the collected data is stored locally, and will be reported when the device is next online: only for `totalMemoryEncryption` * Reported for affiliated users only: N/A * Granular permission needed: TELEMETRY_API_MEMORY_INFO

| Property | Type | Description |
|----------|------|-------------|
| `availableRamBytes` | `string` | Output only. Amount of available RAM in bytes. |
| `totalMemoryEncryption` | `GoogleChromeManagementV1TotalMemoryEncryptionInfo` | Output only. Total memory encryption info for the device. |
| `totalRamBytes` | `string` | Output only. Total RAM in bytes. |

### `GoogleChromeManagementV1MemoryStatusReport`

Contains samples of memory status reports. * This field is telemetry information and this will change over time as the device is utilized. * Data for this field is controlled via policy: [ReportDeviceMemoryInfo](https://chromeenterprise.google/policies/#ReportDeviceMemoryInfo) * Data Collection Frequency: Only at upload, SystemRamFreeByes is collected every 10 minutes * Default Data Reporting Frequency: Every 3 hours - Policy Controlled: Yes * Cache: If the device is offline, the collected data is stored locally, and will be reported when the device is next online: No * Reported for affiliated users only: N/A * Granular permission needed: TELEMETRY_API_MEMORY_REPORT

| Property | Type | Description |
|----------|------|-------------|
| `pageFaults` | `integer` | Output only. Number of page faults during this collection |
| `reportTime` | `string` | Output only. The timestamp in milliseconds representing time at which this report was sampled. |
| `sampleFrequency` | `string` | Output only. Frequency the report is sampled. |
| `systemRamFreeBytes` | `string` | Output only. Amount of free RAM in bytes (unreliable due to Garbage Collection). |

### `GoogleChromeManagementV1NetworkBandwidthReport`

Network bandwidth report. * Granular permission needed: TELEMETRY_API_NETWORK_REPORT

| Property | Type | Description |
|----------|------|-------------|
| `downloadSpeedKbps` | `string` | Output only. Download speed in kilobits per second. |
| `reportTime` | `string` | Output only. Timestamp of when the report was collected. |

### `GoogleChromeManagementV1NetworkDevice`

Details about the network device. * This field provides device information, which is static and will not change over time. * Data for this field is controlled via policy: [ReportNetworkDeviceConfiguration](https://chromeenterprise.google/policies/#ReportNetworkDeviceConfiguration) * Data Collection Frequency: At device startup * Default Data Reporting Frequency: At device startup - Policy Controlled: Yes * Cache: If the device is offline, the collected data is stored locally, and will be reported when the device is next online: Yes * Reported for affiliated users only: N/A

| Property | Type | Description |
|----------|------|-------------|
| `iccid` | `string` | Output only. The integrated circuit card ID associated with the device's sim card. |
| `imei` | `string` | Output only. IMEI (if applicable) of the corresponding network device. |
| `macAddress` | `string` | Output only. MAC address (if applicable) of the corresponding network device. |
| `mdn` | `string` | Output only. The mobile directory number associated with the device's sim card. |
| `meid` | `string` | Output only. MEID (if applicable) of the corresponding network device. |
| `type` | `string` | Output only. Network device type. |

### `GoogleChromeManagementV1NetworkDiagnosticsReport`

Network testing results to determine the health of the device's network connection, for example whether the HTTPS latency is high or normal. * Granular permission needed: TELEMETRY_API_NETWORK_REPORT

| Property | Type | Description |
|----------|------|-------------|
| `httpsLatencyData` | `GoogleChromeManagementV1HttpsLatencyRoutineData` | Output only. HTTPS latency test data. |
| `reportTime` | `string` | Output only. Timestamp of when the diagnostics were collected. |

### `GoogleChromeManagementV1NetworkInfo`

Network device information. * This field provides device information, which is static and will not change over time. * Data for this field is controlled via policy: [ReportNetworkDeviceConfiguration](https://chromeenterprise.google/policies/#ReportNetworkDeviceConfiguration) * Data Collection Frequency: At device startup * Default Data Reporting Frequency: At device startup - Policy Controlled: Yes * Cache: If the device is offline, the collected data is stored locally, and will be reported when the device is next online: Yes * Reported for affiliated users only: N/A * Granular permission needed: TELEMETRY_API_NETWORK_INFO

| Property | Type | Description |
|----------|------|-------------|
| `networkDevices` | `array<GoogleChromeManagementV1NetworkDevice>` | Output only. List of network devices. |

### `GoogleChromeManagementV1NetworkStatusReport`

State of visible/configured networks. * This field is telemetry information and this will change over time as the device is utilized. * Data for this field is controlled via policy: [ReportNetworkStatus](https://chromeenterprise.google/policies/#ReportNetworkStatus) * Data Collection Frequency: 60 minutes * Default Data Reporting Frequency: 3 hours - Policy Controlled: Yes * Cache: If the device is offline, the collected data is stored locally, and will be reported when the device is next online: Yes * Reported for affiliated users only: Yes * Granular permission needed: TELEMETRY_API_NETWORK_REPORT

| Property | Type | Description |
|----------|------|-------------|
| `connectionState` | `string` | Output only. Current connection state of the network. |
| `connectionType` | `string` | Output only. Network connection type. |
| `encryptionOn` | `boolean` | Output only. Whether the wifi encryption key is turned off. |
| `gatewayIpAddress` | `string` | Output only. Gateway IP address. |
| `gatewayIpv6Address` | `string` | Output only. The gateway IPv6 for this interface, if detected |
| `guid` | `string` | Output only. Network connection guid. |
| `ipv6Address` | `array<string>` | Output only. IPv6 addresses assigned to this network, if any. Each address is a string in standar... |
| `lanIpAddress` | `string` | Output only. LAN IP address. |
| `linkDownSpeedKbps` | `string` | Output only. The maximum downstream bandwidth in Kilobits per second (Kbps), if reported by the n... |
| `metered` | `boolean` | Output only. Whether the network was detected as metered. |
| `receivingBitRateMbps` | `string` | Output only. Receiving bit rate measured in Megabits per second. |
| `reportTime` | `string` | Output only. Time at which the network state was reported. |
| `sampleFrequency` | `string` | Output only. Frequency the report is sampled. |
| `signalStrengthDbm` | `integer` | Output only. Signal strength for wireless networks measured in decibels. |
| `transmissionBitRateMbps` | `string` | Output only. Transmission bit rate measured in Megabits per second. |
| `transmissionPowerDbm` | `integer` | Output only. Transmission power measured in decibels. |
| `wifiLinkQuality` | `string` | Output only. Wifi link quality. Value ranges from [0, 70]. 0 indicates no signal and 70 indicates... |
| `wifiPowerManagementEnabled` | `boolean` | Output only. Wifi power management enabled |

### `GoogleChromeManagementV1OsUpdateStatus`

Contains information regarding the current OS update status. * This field is telemetry information and this will change over time as the device is utilized. * Data for this field is controlled via policy: [ReportDeviceOsUpdateStatus](https://chromeenterprise.google/policies/#ReportDeviceOsUpdateStatus) * Data Collection Frequency: Only at Upload * Default Data Reporting Frequency: 3 hours - Policy Controlled: Yes * Cache: If the device is offline, the collected data is stored locally, and will be reported when the device is next online: No * Reported for affiliated users only: N/A * Granular permission needed: TELEMETRY_API_OS_REPORT

| Property | Type | Description |
|----------|------|-------------|
| `lastRebootTime` | `string` | Output only. Timestamp of the last reboot. |
| `lastUpdateCheckTime` | `string` | Output only. Timestamp of the last update check. |
| `lastUpdateTime` | `string` | Output only. Timestamp of the last successful update. |
| `newPlatformVersion` | `string` | Output only. New platform version of the os image being downloaded and applied. It is only set wh... |
| `newRequestedPlatformVersion` | `string` | Output only. New requested platform version from the pending updated kiosk app. |
| `updateState` | `string` | Output only. Current state of the os update. |

### `GoogleChromeManagementV1PeripheralsReport`

Peripherals report. * Granular permission needed: TELEMETRY_API_PERIPHERALS_REPORT

| Property | Type | Description |
|----------|------|-------------|
| `reportTime` | `string` | Output only. Timestamp of when the report was collected. |
| `usbPeripheralReport` | `array<GoogleChromeManagementV1UsbPeripheralReport>` | Reports of all usb connected devices. |

### `GoogleChromeManagementV1PrintJob`

Represents a request to print a document that has been submitted to a printer.

| Property | Type | Description |
|----------|------|-------------|
| `colorMode` | `string` | Color mode. |
| `completeTime` | `string` | Print job completion timestamp. |
| `copyCount` | `integer` | Number of copies. |
| `createTime` | `string` | Print job creation timestamp. |
| `documentPageCount` | `integer` | Number of pages in the document. |
| `duplexMode` | `string` | Duplex mode. |
| `id` | `string` | Unique ID of the print job. |
| `printer` | `string` | Name of the printer used for printing. |
| `printerId` | `string` | API ID of the printer used for printing. |
| `state` | `string` | The final state of the job. |
| `title` | `string` | The title of the document. |
| `userEmail` | `string` | The primary e-mail address of the user who submitted the print job. |
| `userId` | `string` | The unique Directory API ID of the user who submitted the print job. |

### `GoogleChromeManagementV1PrinterReport`

Report for CountPrintJobsByPrinter, contains statistics on printer usage. Contains the total number of print jobs initiated with this printer, the number of users and the number of devices that have initiated at least one print job with this printer.

| Property | Type | Description |
|----------|------|-------------|
| `deviceCount` | `string` | Number of chrome devices that have been used to send print jobs to the specified printer. |
| `jobCount` | `string` | Number of print jobs sent to the printer. |
| `printer` | `string` | Printer name. |
| `printerId` | `string` | Printer API ID. |
| `printerModel` | `string` | Printer model. |
| `userCount` | `string` | Number of users that have sent print jobs to the printer. |

### `GoogleChromeManagementV1RiskAssessment`

Risk assessment for a Chrome extension.

| Property | Type | Description |
|----------|------|-------------|
| `assessment` | `string` | Risk assessment for the extension. Currently, this is a numerical value, and its interpretation i... |
| `detailsUrl` | `string` | A URL that a user can navigate to for more information about the risk assessment. |
| `version` | `string` | The version of the extension that this assessment applies to. |

### `GoogleChromeManagementV1RiskAssessmentData`

Risk assessment data about an extension/app.

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<GoogleChromeManagementV1RiskAssessmentEntry>` | Individual risk assessments. |
| `overallRiskLevel` | `string` | Overall assessed risk level across all entries. This will be the highest risk level from all entr... |

### `GoogleChromeManagementV1RiskAssessmentEntry`

One risk assessment entry.

| Property | Type | Description |
|----------|------|-------------|
| `provider` | `string` | Output only. The risk assessment provider from which this entry comes from. |
| `riskAssessment` | `GoogleChromeManagementV1RiskAssessment` | Output only. The details of the provider's risk assessment. |
| `riskLevel` | `string` | Output only. The bucketed risk level for the risk assessment. |

### `GoogleChromeManagementV1RuntimeCountersReport`

Runtime counters retrieved from CPU. Currently the runtime counters telemetry is only supported by Intel vPro PSR on Gen 14+.

| Property | Type | Description |
|----------|------|-------------|
| `enterHibernationCount` | `string` | Number of times that the device has entered into the hibernation state. Currently obtained via th... |
| `enterPoweroffCount` | `string` | Number of times that the device has entered into the power-off state. Currently obtained via the ... |
| `enterSleepCount` | `string` | Number of times that the device has entered into the sleep state. Currently obtained via the PSR,... |
| `reportTime` | `string` | Timestamp when the report was collected. |
| `uptimeRuntimeDuration` | `string` | Total lifetime runtime. Currently always S0 runtime from Intel vPro PSR. |

### `GoogleChromeManagementV1StorageInfo`

Status data for storage. * This field is telemetry information and this will change over time as the device is utilized. * Data for this field is controlled via policy: [ReportDeviceStorageStatus](https://chromeenterprise.google/policies/#ReportDeviceStorageStatus) * Data Collection Frequency: Only at Upload * Default Data Reporting Frequency: 3 hours - Policy Controlled: Yes * Cache: If the device is offline, the collected data is stored locally, and will be reported when the device is next online: No * Reported for affiliated users only: N/A * Granular permission needed: TELEMETRY_API_STORAGE_INFO

| Property | Type | Description |
|----------|------|-------------|
| `availableDiskBytes` | `string` | The available space for user data storage in the device in bytes. |
| `totalDiskBytes` | `string` | The total space for user data storage in the device in bytes. |
| `volume` | `array<GoogleChromeManagementV1StorageInfoDiskVolume>` | Information for disk volumes |

### `GoogleChromeManagementV1StorageInfoDiskVolume`

Information for disk volumes

| Property | Type | Description |
|----------|------|-------------|
| `storageFreeBytes` | `string` | Free storage space in bytes. |
| `storageTotalBytes` | `string` | Total storage space in bytes. |
| `volumeId` | `string` | Disk volume id. |

### `GoogleChromeManagementV1StorageStatusReport`

Status data for storage. * This field is telemetry information and this will change over time as the device is utilized. * Data for this field is controlled via policy: [ReportDeviceStorageStatus](https://chromeenterprise.google/policies/#ReportDeviceStorageStatus) * Data Collection Frequency: Only at Upload * Default Data Reporting Frequency: 3 hours - Policy Controlled: Yes * Cache: If the device is offline, the collected data is stored locally, and will be reported when the device is next online: No * Reported for affiliated users only: N/A * Granular permission needed: TELEMETRY_API_STORAGE_REPORT

| Property | Type | Description |
|----------|------|-------------|
| `disk` | `array<GoogleChromeManagementV1DiskInfo>` | Output only. Reports on disk. |
| `reportTime` | `string` | Output only. Timestamp of when the sample was collected on device |

### `GoogleChromeManagementV1TelemetryAppInstallEvent`

App installation data.

| Property | Type | Description |
|----------|------|-------------|
| `appId` | `string` | App id. For PWAs this is the start URL, and for extensions this is the extension id. |
| `appInstallReason` | `string` | App installation reason. |
| `appInstallSource` | `string` | App installation source. |
| `appInstallTime` | `string` | App installation time depending on the app lifecycle. |
| `appType` | `string` | Type of app. |

### `GoogleChromeManagementV1TelemetryAppLaunchEvent`

App launch data.

| Property | Type | Description |
|----------|------|-------------|
| `appId` | `string` | App id. For PWAs this is the start URL, and for extensions this is the extension id. |
| `appLaunchSource` | `string` | App launch source. |
| `appType` | `string` | Type of app. |

### `GoogleChromeManagementV1TelemetryAppUninstallEvent`

App uninstall data.

| Property | Type | Description |
|----------|------|-------------|
| `appId` | `string` | App id. For PWAs this is the start URL, and for extensions this is the extension id. |
| `appType` | `string` | Type of app. |
| `appUninstallSource` | `string` | App uninstall source. |

### `GoogleChromeManagementV1TelemetryAudioSevereUnderrunEvent`

`TelemetryAudioSevereUnderrunEvent` is triggered when a audio devices run out of buffer data for more than 5 seconds. * Granular permission needed: TELEMETRY_API_AUDIO_REPORT

### `GoogleChromeManagementV1TelemetryDevice`

Telemetry data collected from a managed device. * Granular permission needed: TELEMETRY_API_DEVICE

| Property | Type | Description |
|----------|------|-------------|
| `appReport` | `array<GoogleChromeManagementV1AppReport>` | Output only. App reports collected periodically sorted in a decreasing order of report_time. |
| `audioStatusReport` | `array<GoogleChromeManagementV1AudioStatusReport>` | Output only. Audio reports collected periodically sorted in a decreasing order of report_time. |
| `batteryInfo` | `array<GoogleChromeManagementV1BatteryInfo>` | Output only. Information on battery specs for the device. |
| `batteryStatusReport` | `array<GoogleChromeManagementV1BatteryStatusReport>` | Output only. Battery reports collected periodically. |
| `bootPerformanceReport` | `array<GoogleChromeManagementV1BootPerformanceReport>` | Output only. Boot performance reports of the device. |
| `cpuInfo` | `array<GoogleChromeManagementV1CpuInfo>` | Output only. Information regarding CPU specs for the device. |
| `cpuStatusReport` | `array<GoogleChromeManagementV1CpuStatusReport>` | Output only. CPU status reports collected periodically sorted in a decreasing order of report_time. |
| `customer` | `string` | Output only. Google Workspace Customer whose enterprise enrolled the device. |
| `deviceId` | `string` | Output only. The unique Directory API ID of the device. This value is the same as the Admin Conso... |
| `graphicsInfo` | `GoogleChromeManagementV1GraphicsInfo` | Output only. Contains information regarding Graphic peripherals for the device. |
| `graphicsStatusReport` | `array<GoogleChromeManagementV1GraphicsStatusReport>` | Output only. Graphics reports collected periodically. |
| `heartbeatStatusReport` | `array<GoogleChromeManagementV1HeartbeatStatusReport>` | Output only. Heartbeat status report containing timestamps periodically sorted in decreasing orde... |
| `kioskAppStatusReport` | `array<GoogleChromeManagementV1KioskAppStatusReport>` | Output only. Kiosk app status report for the kiosk device |
| `memoryInfo` | `GoogleChromeManagementV1MemoryInfo` | Output only. Information regarding memory specs for the device. |
| `memoryStatusReport` | `array<GoogleChromeManagementV1MemoryStatusReport>` | Output only. Memory status reports collected periodically sorted decreasing by report_time. |
| `name` | `string` | Output only. Resource name of the device. |
| `networkBandwidthReport` | `array<GoogleChromeManagementV1NetworkBandwidthReport>` | Output only. Network bandwidth reports collected periodically sorted in a decreasing order of rep... |
| `networkDiagnosticsReport` | `array<GoogleChromeManagementV1NetworkDiagnosticsReport>` | Output only. Network diagnostics collected periodically. |
| `networkInfo` | `GoogleChromeManagementV1NetworkInfo` | Output only. Network devices information. |
| `networkStatusReport` | `array<GoogleChromeManagementV1NetworkStatusReport>` | Output only. Network specs collected periodically. |
| `orgUnitId` | `string` | Output only. Organization unit ID of the device. |
| `osUpdateStatus` | `array<GoogleChromeManagementV1OsUpdateStatus>` | Output only. Contains relevant information regarding ChromeOS update status. |
| `peripheralsReport` | `array<GoogleChromeManagementV1PeripheralsReport>` | Output only. Peripherals reports collected periodically sorted in a decreasing order of report_time. |
| `runtimeCountersReport` | `array<GoogleChromeManagementV1RuntimeCountersReport>` | Output only. Runtime counters reports collected device lifetime runtime, as well as the counts of... |
| `serialNumber` | `string` | Output only. Device serial number. This value is the same as the Admin Console's Serial Number in... |
| `storageInfo` | `GoogleChromeManagementV1StorageInfo` | Output only. Information of storage specs for the device. |
| `storageStatusReport` | `array<GoogleChromeManagementV1StorageStatusReport>` | Output only. Storage reports collected periodically. |
| `thunderboltInfo` | `array<GoogleChromeManagementV1ThunderboltInfo>` | Output only. Information on Thunderbolt bus. |

### `GoogleChromeManagementV1TelemetryDeviceInfo`

Information about a device associated with telemetry data. * Granular Permission needed: TELEMETRY_API_DEVICE

| Property | Type | Description |
|----------|------|-------------|
| `deviceId` | `string` | Output only. The unique Directory API ID of the device. This value is the same as the Admin Conso... |
| `orgUnitId` | `string` | Output only. Organization unit ID of the device. |

### `GoogleChromeManagementV1TelemetryEvent`

Telemetry data reported by a managed device.

| Property | Type | Description |
|----------|------|-------------|
| `appInstallEvent` | `GoogleChromeManagementV1TelemetryAppInstallEvent` | Output only. Payload for app install event. Present only when `event_type` is `APP_INSTALLED`. |
| `appLaunchEvent` | `GoogleChromeManagementV1TelemetryAppLaunchEvent` | Output only. Payload for app launch event.Present only when `event_type` is `APP_LAUNCHED`. |
| `appUninstallEvent` | `GoogleChromeManagementV1TelemetryAppUninstallEvent` | Output only. Payload for app uninstall event. Present only when `event_type` is `APP_UNINSTALLED`. |
| `audioSevereUnderrunEvent` | `GoogleChromeManagementV1TelemetryAudioSevereUnderrunEvent` | Output only. Payload for audio severe underrun event. Present only when the `event_type` field is... |
| `device` | `GoogleChromeManagementV1TelemetryDeviceInfo` | Output only. Information about the device associated with the event. |
| `eventType` | `string` | The event type of the current event. |
| `externalDisplaysEvent` | `GoogleChromeManagementV1TelemetryExternalDisplayEvent` | Output only. Payload for external display connected/disconnected event. Present only when `event_... |
| `httpsLatencyChangeEvent` | `GoogleChromeManagementV1TelemetryHttpsLatencyChangeEvent` | Output only. Payload for HTTPS latency change event. Present only when `event_type` is `NETWORK_H... |
| `name` | `string` | Output only. Resource name of the event. |
| `networkStateChangeEvent` | `GoogleChromeManagementV1TelemetryNetworkConnectionStateChangeEvent` | Output only. Payload for network connection state change event. Present only when `event_type` is... |
| `osCrashEvent` | `GoogleChromeManagementV1TelemetryOsCrashEvent` | Output only. Payload for OS crash event. Present only when `event_type` is `OS_CRASH`. |
| `reportTime` | `string` | Timestamp that represents when the event was reported. |
| `usbPeripheralsEvent` | `GoogleChromeManagementV1TelemetryUsbPeripheralsEvent` | Output only. Payload for usb peripherals event. Present only when the `event_type` field is eithe... |
| `user` | `GoogleChromeManagementV1TelemetryUserInfo` | Output only. Information about the user associated with the event. |
| `vpnConnectionStateChangeEvent` | `GoogleChromeManagementV1TelemetryNetworkConnectionStateChangeEvent` | Output only. Payload for VPN connection state change event. Present only when `event_type` is `VP... |
| `wifiSignalStrengthEvent` | `GoogleChromeManagementV1TelemetryNetworkSignalStrengthEvent` | Output only. Payload for WiFi signal strength events. Present only when `event_type` is `WIFI_SIG... |

### `GoogleChromeManagementV1TelemetryEventNotificationFilter`

Configures how the telemetry events should be filtered.

| Property | Type | Description |
|----------|------|-------------|
| `eventTypes` | `array<string>` | Only sends the notifications for events of these types. Must not be empty. |

### `GoogleChromeManagementV1TelemetryExternalDisplayData`

External display data.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The display name. |
| `edidVersion` | `string` | The EDID version. |
| `refreshRate` | `string` | The refresh rate. |
| `resolutionHorizontal` | `integer` | The horizontal resolution. |
| `resolutionVertical` | `integer` | The vertical resolution. |
| `serialNumber` | `integer` | The serial number. |

### `GoogleChromeManagementV1TelemetryExternalDisplayEvent`

External display connected/disconnected event payload.

| Property | Type | Description |
|----------|------|-------------|
| `externalDisplayData` | `array<GoogleChromeManagementV1TelemetryExternalDisplayData>` | List of external displays that were connected/disconnected. |

### `GoogleChromeManagementV1TelemetryHttpsLatencyChangeEvent`

Https latency routine is run periodically and `TelemetryHttpsLatencyChangeEvent` is triggered if a latency problem was detected or if the device has recovered from a latency problem. * Granular permission needed: TELEMETRY_API_NETWORK_REPORT

| Property | Type | Description |
|----------|------|-------------|
| `httpsLatencyRoutineData` | `GoogleChromeManagementV1HttpsLatencyRoutineData` | HTTPS latency routine data that triggered the event. |
| `httpsLatencyState` | `string` | Current HTTPS latency state. |

### `GoogleChromeManagementV1TelemetryNetworkConnectionStateChangeEvent`

`TelemetryNetworkConnectionStateChangeEvent` is triggered on network connection state changes. * Granular permission needed: TELEMETRY_API_NETWORK_REPORT

| Property | Type | Description |
|----------|------|-------------|
| `connectionState` | `string` | Current connection state of the network. |
| `guid` | `string` | Unique identifier of the network. |

### `GoogleChromeManagementV1TelemetryNetworkSignalStrengthEvent`

`TelemetryNetworkSignalStrengthEvent` is triggered on WiFi signal strength events. * Granular permission needed: TELEMETRY_API_NETWORK_REPORT

| Property | Type | Description |
|----------|------|-------------|
| `guid` | `string` | Unique identifier of the network. |
| `signalStrengthDbm` | `integer` | Signal strength RSSI value. |

### `GoogleChromeManagementV1TelemetryNotificationConfig`

Configuration to receive notifications of telemetry data.

| Property | Type | Description |
|----------|------|-------------|
| `customer` | `string` | Output only. Google Workspace customer that owns the resource. |
| `filter` | `GoogleChromeManagementV1TelemetryNotificationFilter` | Only send notifications for telemetry data matching this filter. |
| `googleCloudPubsubTopic` | `string` | The pubsub topic to which notifications are published to. |
| `name` | `string` | Output only. Resource name of the notification configuration. |

### `GoogleChromeManagementV1TelemetryNotificationFilter`

Configures how the telemetry data should be filtered.

| Property | Type | Description |
|----------|------|-------------|
| `deviceId` | `string` | If set, only sends notifications for telemetry data coming from this device. |
| `deviceOrgUnitId` | `string` | If set, only sends notifications for telemetry data coming from devices in this org unit. |
| `telemetryEventNotificationFilter` | `GoogleChromeManagementV1TelemetryEventNotificationFilter` | Only sends notifications for the telemetry events matching this filter. |
| `userEmail` | `string` | If set, only sends notifications for telemetry data coming from devices owned by this user. |
| `userOrgUnitId` | `string` | If set, only sends notifications for telemetry data coming from devices owned by users in this or... |

### `GoogleChromeManagementV1TelemetryOsCrashEvent`

OS crash data.

| Property | Type | Description |
|----------|------|-------------|
| `crashId` | `string` | Crash id. |
| `crashType` | `string` | Crash type. |
| `sessionType` | `string` | Session type. |

### `GoogleChromeManagementV1TelemetryUsbPeripheralsEvent`

`TelemetryUsbPeripheralsEvent` is triggered USB devices are either added or removed. * Granular permission needed: TELEMETRY_API_PERIPHERALS_REPORT

| Property | Type | Description |
|----------|------|-------------|
| `usbPeripheralReport` | `array<GoogleChromeManagementV1UsbPeripheralReport>` | List of usb devices that were either added or removed. |

### `GoogleChromeManagementV1TelemetryUser`

Telemetry data collected from a managed user. * Granular permission needed: TELEMETRY_API_USER

| Property | Type | Description |
|----------|------|-------------|
| `customer` | `string` | G Suite Customer whose enterprise enrolled the device. |
| `name` | `string` | Resource name of the user. |
| `orgUnitId` | `string` | Organization unit of the user. |
| `userDevice` | `array<GoogleChromeManagementV1TelemetryUserDevice>` | Telemetry data collected from a managed user and device. |
| `userEmail` | `string` | Email address of the user. |
| `userId` | `string` | Directory ID of the user. |

### `GoogleChromeManagementV1TelemetryUserDevice`

Telemetry data collected for a managed user and device. * Granular permission needed: TELEMETRY_API_DEVICE

| Property | Type | Description |
|----------|------|-------------|
| `appReport` | `array<GoogleChromeManagementV1AppReport>` | Output only. App reports collected periodically sorted in a decreasing order of report_time. |
| `audioStatusReport` | `array<GoogleChromeManagementV1AudioStatusReport>` | Output only. Audio reports collected periodically sorted in a decreasing order of report_time. |
| `deviceActivityReport` | `array<GoogleChromeManagementV1DeviceActivityReport>` | Output only. Device activity reports collected periodically sorted in a decreasing order of repor... |
| `deviceId` | `string` | The unique Directory API ID of the device. This value is the same as the Admin Console's Director... |
| `networkBandwidthReport` | `array<GoogleChromeManagementV1NetworkBandwidthReport>` | Output only. Network bandwidth reports collected periodically sorted in a decreasing order of rep... |
| `peripheralsReport` | `array<GoogleChromeManagementV1PeripheralsReport>` | Output only. Peripherals reports collected periodically sorted in a decreasing order of report_time. |

### `GoogleChromeManagementV1TelemetryUserInfo`

Information about a user associated with telemetry data. * Granular permission needed: TELEMETRY_API_USER

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | Output only. User's email. |
| `orgUnitId` | `string` | Output only. Organization unit ID of the user. |

### `GoogleChromeManagementV1ThunderboltInfo`

Thunderbolt bus info. * This field provides device information, which is static and will not change over time. * Data for this field is controlled via policy: [ReportDeviceSecurityStatus](https://chromeenterprise.google/policies/#ReportDeviceSecurityStatus) * Data Collection Frequency: At device startup * Default Data Reporting Frequency: At device startup - Policy Controlled: No * Cache: If the device is offline, the collected data is stored locally, and will be reported when the device is next online: Yes * Reported for affiliated users only: N/A * Granular permission needed: TELEMETRY_API_BUS_DEVICE_INFO

| Property | Type | Description |
|----------|------|-------------|
| `securityLevel` | `string` | Security level of the Thunderbolt bus. |

### `GoogleChromeManagementV1TotalMemoryEncryptionInfo`

Memory encryption information of a device. * This field provides device information, which is static and will not change over time. * Data for this field is controlled via policy: [ReportDeviceMemoryInfo](https://chromeenterprise.google/policies/#ReportDeviceMemoryInfo) * Data Collection Frequency: At device startup * Default Data Reporting Frequency: At device startup - Policy Controlled: Yes * Cache: If the device is offline, the collected data is stored locally, and will be reported when the device is next online: Yes * Reported for affiliated users only: N/A

| Property | Type | Description |
|----------|------|-------------|
| `encryptionAlgorithm` | `string` | Memory encryption algorithm. |
| `encryptionState` | `string` | The state of memory encryption on the device. |
| `keyLength` | `string` | The length of the encryption keys. |
| `maxKeys` | `string` | The maximum number of keys that can be used for encryption. |

### `GoogleChromeManagementV1TouchScreenDevice`

Information of an internal touch screen device.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Output only. Touch screen device display name. |
| `stylusCapable` | `boolean` | Output only. Touch screen device is stylus capable or not. |
| `touchPointCount` | `integer` | Output only. Number of touch points supported on the device. |

### `GoogleChromeManagementV1TouchScreenInfo`

Information on the device touch screen.

| Property | Type | Description |
|----------|------|-------------|
| `devices` | `array<GoogleChromeManagementV1TouchScreenDevice>` | Output only. List of the internal touch screen devices. |
| `touchpadLibrary` | `string` | Output only. Touchpad library name used by the input stack. |

### `GoogleChromeManagementV1UsbPeripheralReport`

USB connected peripheral report.

| Property | Type | Description |
|----------|------|-------------|
| `categories` | `array<string>` | Output only. Categories the device belongs to https://www.usb.org/defined-class-codes |
| `classId` | `integer` | Output only. Class ID https://www.usb.org/defined-class-codes |
| `firmwareVersion` | `string` | Output only. Firmware version |
| `name` | `string` | Output only. Device name, model name, or product name |
| `pid` | `integer` | Output only. Product ID |
| `subclassId` | `integer` | Output only. Subclass ID https://www.usb.org/defined-class-codes |
| `vendor` | `string` | Output only. Vendor name |
| `vid` | `integer` | Output only. Vendor ID |

### `GoogleChromeManagementV1UserPrintReport`

Report for CountPrintJobsByUser, contains printing statistics for a user. Contains the number of printers, the number of devices used to initiate print jobs, and the number of print jobs initiated.

| Property | Type | Description |
|----------|------|-------------|
| `deviceCount` | `string` | Number of chrome devices that have been used to initiate print jobs by the user. |
| `jobCount` | `string` | Number of print jobs initiated by the user. |
| `printerCount` | `string` | Number of printers used by the user. |
| `userEmail` | `string` | The primary e-mail address of the user. |
| `userId` | `string` | The unique Directory API ID of the user. |

### `GoogleChromeManagementV1UserRequestingExtensionDetails`

Details of a user requesting an extension, including the email and the justification.

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | The e-mail address of a user that has requested the extension. |
| `justification` | `string` | Request justification as entered by the user. |

### `GoogleChromeManagementVersionsV1AttestationCredential`

Information of public key associated with a Chrome browser profile.

| Property | Type | Description |
|----------|------|-------------|
| `keyRotationTime` | `string` | Output only. Latest rotation timestamp of the public key rotation. |
| `keyTrustLevel` | `string` | Output only. Trust level of the public key. |
| `keyType` | `string` | Output only. Type of the public key. |
| `publicKey` | `string` | Output only. Value of the public key. |

### `GoogleChromeManagementVersionsV1CertificateProvisioningProcess`

A certificate provisioning process.

| Property | Type | Description |
|----------|------|-------------|
| `chromeOsDevice` | `GoogleChromeManagementVersionsV1ChromeOsDevice` | Output only. The client certificate is being provisioned for a ChromeOS device. This contains inf... |
| `chromeOsUserSession` | `GoogleChromeManagementVersionsV1ChromeOsUserSession` | Output only. The client certificate is being provisioned for a ChromeOS user. This contains infor... |
| `failureMessage` | `string` | Output only. A message describing why this `CertificateProvisioningProcess` has failed. Presence ... |
| `genericCaConnection` | `GoogleChromeManagementVersionsV1GenericCaConnection` | Output only. The CA connection is a generic CA connection. |
| `genericProfile` | `GoogleChromeManagementVersionsV1GenericProfile` | Output only. The profile is a generic certificate provisioning profile. |
| `issuedCertificate` | `string` | Output only. The issued certificate for this `CertificateProvisioningProcess` in PEM format. |
| `name` | `string` | Identifier. Resource name of the `CertificateProvisioningProcess`. The name pattern is given as `... |
| `provisioningProfileId` | `string` | Output only. The ID of the certificate provisioning profile. |
| `scepCaConnection` | `GoogleChromeManagementVersionsV1ScepCaConnection` | Output only. The CA connection is a SCEP CA connection. |
| `scepProfile` | `GoogleChromeManagementVersionsV1ScepProfile` | Output only. The profile is a SCEP certificate provisioning profile. |
| `signData` | `string` | Output only. The data that the client was asked to sign. This field is only present after the `Si... |
| `signature` | `string` | Output only. The signature of `signature_algorithm`, generated using the client's private key usi... |
| `signatureAlgorithm` | `string` | Output only. The signature algorithm that the client and backend components use when processing `... |
| `startTime` | `string` | Output only. Server-generated timestamp of when the certificate provisioning process has been cre... |
| `subjectPublicKeyInfo` | `string` | Output only. The public key for which a certificate should be provisioned. Represented as a DER-e... |

### `GoogleChromeManagementVersionsV1ChromeBrowserProfile`

A representation of a Chrome browser profile.

| Property | Type | Description |
|----------|------|-------------|
| `affiliationState` | `string` | Output only. The specific affiliation state of the profile. |
| `annotatedLocation` | `string` | Optional. Location of the profile annotated by the admin. |
| `annotatedUser` | `string` | Optional. User of the profile annotated by the admin. |
| `attestationCredential` | `GoogleChromeManagementVersionsV1AttestationCredential` | Output only. Attestation credential information of the profile. |
| `browserChannel` | `string` | Output only. Channel of the browser on which the profile exists. |
| `browserVersion` | `string` | Output only. Version of the browser on which the profile exists. |
| `deviceInfo` | `GoogleChromeManagementVersionsV1DeviceInfo` | Output only. Basic information of the device on which the profile exists. This information is onl... |
| `displayName` | `string` | Output only. Profile display name set by client. |
| `etag` | `string` | Output only. Etag of this ChromeBrowserProfile resource. This etag can be used with UPDATE operat... |
| `extensionCount` | `string` | Output only. Number of extensions installed on the profile. |
| `firstEnrollmentTime` | `string` | Output only. Timestamp of the first enrollment of the profile. |
| `identityProvider` | `string` | Output only. Identify provider of the profile. |
| `lastActivityTime` | `string` | Output only. Timestamp of the latest activity by the profile. |
| `lastPolicyFetchTime` | `string` | Output only. Timestamp of the latest policy fetch by the profile. |
| `lastPolicySyncTime` | `string` | Output only. Timestamp of the latest policy sync by the profile. |
| `lastStatusReportTime` | `string` | Output only. Timestamp of the latest status report by the profile. |
| `name` | `string` | Identifier. Format: customers/{customer_id}/profiles/{profile_permanent_id} |
| `osPlatformType` | `string` | Output only. OS platform of the device on which the profile exists. |
| `osPlatformVersion` | `string` | Output only. Major OS platform version of the device on which the profile exists, from profile re... |
| `osVersion` | `string` | Output only. OS version of the device on which the profile exists. |
| `policyCount` | `string` | Output only. Number of policies applied on the profile. |
| `profileId` | `string` | Output only. Chrome client side profile ID. |
| `profilePermanentId` | `string` | Output only. Profile permanent ID is the unique identifier of a profile within one customer. |
| `reportingData` | `GoogleChromeManagementVersionsV1ReportingData` | Output only. Detailed reporting data of the profile. This information is only available when the ... |
| `supportsFcmNotifications` | `boolean` | Output only. Whether the profile supports FCM notifications. |
| `userEmail` | `string` | Output only. Email address of the user to which the profile belongs. |
| `userId` | `string` | Output only. Unique Directory API ID of the user that can be used in Admin SDK Users API. |

### `GoogleChromeManagementVersionsV1ChromeBrowserProfileCommand`

A representation of a remote command for a Chrome browser profile.

| Property | Type | Description |
|----------|------|-------------|
| `commandResult` | `GoogleChromeManagementVersionsV1ChromeBrowserProfileCommandCommandResult` | Output only. Result of the remote command. |
| `commandState` | `string` | Output only. State of the remote command. |
| `commandType` | `string` | Required. Type of the remote command. The only supported command_type is "clearBrowsingData". |
| `issueTime` | `string` | Output only. Timestamp of the issurance of the remote command. |
| `name` | `string` | Identifier. Format: customers/{customer_id}/profiles/{profile_permanent_id}/commands/{command_id} |
| `payload` | `object` | Required. Payload of the remote command. The payload for "clearBrowsingData" command supports: - ... |
| `validDuration` | `string` | Output only. Valid duration of the remote command. |

### `GoogleChromeManagementVersionsV1ChromeBrowserProfileCommandCommandResult`

Result of the execution of a command.

| Property | Type | Description |
|----------|------|-------------|
| `clientExecutionTime` | `string` | Output only. Timestamp of the client execution of the remote command. |
| `resultCode` | `string` | Output only. Result code that indicates the type of error or success of the command. |
| `resultType` | `string` | Output only. Result type of the remote command. |

### `GoogleChromeManagementVersionsV1ChromeOsDevice`

Describes the ChromeOS device that a `CertificateProvisioningProcess` belongs to.

| Property | Type | Description |
|----------|------|-------------|
| `deviceDirectoryApiId` | `string` | Output only. The unique Directory API ID of the device. This value is the same as the Admin Conso... |
| `serialNumber` | `string` | Output only. Device serial number. This value is the same as the Admin Console's Serial Number in... |

### `GoogleChromeManagementVersionsV1ChromeOsUserSession`

Describes the ChromeOS user session that a `CertificateProvisioningProcess` belongs to.

| Property | Type | Description |
|----------|------|-------------|
| `chromeOsDevice` | `GoogleChromeManagementVersionsV1ChromeOsDevice` | Output only. This field contains information about the ChromeOS device that the user session is r... |
| `userDirectoryApiId` | `string` | Output only. The unique Directory API ID of the user. |
| `userPrimaryEmail` | `string` | Output only. The primary e-mail address of the user. |

### `GoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessRequest`

Request message for claiming a certificate provisioning process.

| Property | Type | Description |
|----------|------|-------------|
| `callerInstanceId` | `string` | Required. The instance id of the caller. |

### `GoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessResponse`

Response message for claiming a certificate provisioning process.

### `GoogleChromeManagementVersionsV1DeviceInfo`

Information of a device that runs a Chrome browser profile.

| Property | Type | Description |
|----------|------|-------------|
| `affiliatedDeviceId` | `string` | Output only. Device ID that identifies the affiliated device on which the profile exists. If the ... |
| `deviceType` | `string` | Output only. Type of the device on which the profile exists. |
| `hostname` | `string` | Output only. Hostname of the device on which the profile exists. |
| `machine` | `string` | Output only. Machine name of the device on which the profile exists. On platforms which do not re... |

### `GoogleChromeManagementVersionsV1GenericCaConnection`

Describes a generic Certificate Authority Connection.

| Property | Type | Description |
|----------|------|-------------|
| `caConnectionAdapterConfigReference` | `string` | Output only. A string that references the administrator-provided configuration for the certificat... |

### `GoogleChromeManagementVersionsV1GenericProfile`

Describes a generic certificate provisioning profile.

| Property | Type | Description |
|----------|------|-------------|
| `profileAdapterConfigReference` | `string` | Output only. A string that references the administrator-provided configuration for the certificat... |

### `GoogleChromeManagementVersionsV1ListChromeBrowserProfileCommandsResponse`

Response to ListChromeBrowserProfileCommands method.

| Property | Type | Description |
|----------|------|-------------|
| `chromeBrowserProfileCommands` | `array<GoogleChromeManagementVersionsV1ChromeBrowserProfileCommand>` | The list of commands returned. |
| `nextPageToken` | `string` | The pagination token that can be used to list the next page. |
| `totalSize` | `string` | Total size represents an estimated number of resources returned. |

### `GoogleChromeManagementVersionsV1ListChromeBrowserProfilesResponse`

Response to ListChromeBrowserProfiles method.

| Property | Type | Description |
|----------|------|-------------|
| `chromeBrowserProfiles` | `array<GoogleChromeManagementVersionsV1ChromeBrowserProfile>` | The list of profiles returned. |
| `nextPageToken` | `string` | The pagination token that can be used to list the next page. |
| `totalSize` | `string` | Total size represents an estimated number of resources returned. Not guaranteed to be accurate ab... |

### `GoogleChromeManagementVersionsV1MoveThirdPartyProfileUserRequest`

Request to MoveThirdPartyProfileUser method.

| Property | Type | Description |
|----------|------|-------------|
| `destinationOrgUnit` | `string` | Required. Destination organizational unit where the third party chrome profile user will be moved... |

### `GoogleChromeManagementVersionsV1MoveThirdPartyProfileUserResponse`

Response for MoveThirdPartyProfileUser method.

| Property | Type | Description |
|----------|------|-------------|
| `thirdPartyProfileUser` | `GoogleChromeManagementVersionsV1ThirdPartyProfileUser` | Output only. The moved third party profile user. |

### `GoogleChromeManagementVersionsV1ReportingData`

Reporting data of a Chrome browser profile.

| Property | Type | Description |
|----------|------|-------------|
| `browserExecutablePath` | `string` | Output only. Executable path of the installed Chrome browser. A valid path is included only in af... |
| `extensionData` | `array<GoogleChromeManagementVersionsV1ReportingDataExtensionData>` | Output only. Information of the extensions installed on the profile. |
| `extensionPolicyData` | `array<GoogleChromeManagementVersionsV1ReportingDataExtensionPolicyData>` | Output only. Information of the policies applied on the extensions. |
| `installedBrowserVersion` | `string` | Output only. Updated version of a browser, if it is different from the active browser version. |
| `policyData` | `array<GoogleChromeManagementVersionsV1ReportingDataPolicyData>` | Output only. Information of the policies applied on the profile. |
| `profilePath` | `string` | Output only. Path of the profile. A valid path is included only in affiliated profiles. |

### `GoogleChromeManagementVersionsV1ReportingDataConflictingPolicyData`

Information of conflicting policy applied on a Chrome browser profile.

| Property | Type | Description |
|----------|------|-------------|
| `source` | `string` | Output only. Source of the policy. |

### `GoogleChromeManagementVersionsV1ReportingDataExtensionData`

Information of an extension installed on a Chrome browser profile.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Output only. Description of the extension. |
| `extensionId` | `string` | Output only. ID of the extension. |
| `extensionType` | `string` | Output only. Type of the extension. |
| `homepageUri` | `string` | Output only. The URL of the homepage of the extension. |
| `installationType` | `string` | Output only. Installation type of the extension. |
| `isDisabled` | `boolean` | Output only. Represents whether the user disabled the extension. |
| `isWebstoreExtension` | `boolean` | Output only. Represents whether the extension is from the webstore. |
| `manifestVersion` | `integer` | Output only. Manifest version of the extension. |
| `name` | `string` | Output only. Name of the extension. |
| `permissions` | `array<string>` | Output only. Permissions requested by the extension. |
| `version` | `string` | Output only. Version of the extension. |

### `GoogleChromeManagementVersionsV1ReportingDataExtensionPolicyData`

Information of the policies applied on an extension.

| Property | Type | Description |
|----------|------|-------------|
| `extensionId` | `string` | Output only. ID of the extension. |
| `extensionName` | `string` | Output only. Name of the extension. |
| `policyData` | `array<GoogleChromeManagementVersionsV1ReportingDataPolicyData>` | Output only. Information of the policies applied on the extension. |

### `GoogleChromeManagementVersionsV1ReportingDataPolicyData`

Information of a policy applied on a Chrome browser profile.

| Property | Type | Description |
|----------|------|-------------|
| `conflicts` | `array<GoogleChromeManagementVersionsV1ReportingDataConflictingPolicyData>` | Output only. Conflicting policy information. |
| `error` | `string` | Output only. Error message of the policy, if any. |
| `name` | `string` | Output only. Name of the policy. |
| `source` | `string` | Output only. Source of the policy. |
| `value` | `string` | Output only. Value of the policy. |

### `GoogleChromeManagementVersionsV1ScepCaConnection`

Describes a SCEP Certificate Authority Connection.

| Property | Type | Description |
|----------|------|-------------|
| `caConnectionAdapterConfigReference` | `string` | Output only. A string that references the administrator-provided configuration for the certificat... |

### `GoogleChromeManagementVersionsV1ScepProfile`

Describes a SCEP certificate provisioning profile.

| Property | Type | Description |
|----------|------|-------------|
| `certificateTemplateName` | `string` | Output only. The certificate template name as defined by the admin on their on-prem infrastructur... |
| `country` | `string` | Output only. The country of the subject. |
| `keyUsages` | `array<string>` | Output only. The allowed key usages for certificate's key. |
| `locality` | `string` | Output only. The locality of the subject. |
| `organization` | `string` | Output only. The name of the organization the subject belongs to. |
| `organizationalUnits` | `array<string>` | Output only. The organizational units of the subject. |
| `state` | `string` | Output only. The state of the subject. |
| `subjectAltNames` | `array<GoogleChromeManagementVersionsV1SubjectAltName>` | Output only. The subject alternative names. |
| `subjectCommonName` | `string` | Output only. The common name of the subject. |

### `GoogleChromeManagementVersionsV1SetFailureRequest`

Request message for marking a certificate provisioning process as failed.

| Property | Type | Description |
|----------|------|-------------|
| `errorMessage` | `string` | Required. A message describing the failure details. It is displayed on the ChromeOS client device. |

### `GoogleChromeManagementVersionsV1SetFailureResponse`

Response message for publishing a failure for a certificate provisioning process.

### `GoogleChromeManagementVersionsV1SignDataMetadata`

Metadata for the long-running operation returned by signData.

| Property | Type | Description |
|----------|------|-------------|
| `startTime` | `string` | Output only. Start time of the SignData operation. |

### `GoogleChromeManagementVersionsV1SignDataRequest`

Request message for requesting a signature from the client that initated a certificate provisioning process.

| Property | Type | Description |
|----------|------|-------------|
| `signData` | `string` | Required. The data that the client was asked to sign. |
| `signatureAlgorithm` | `string` | Required. The signature algorithm that the adapter expects the client and backend components to u... |

### `GoogleChromeManagementVersionsV1SignDataResponse`

Response message for requesting a signature from the client that initated a certificate provisioning process.

| Property | Type | Description |
|----------|------|-------------|
| `certificateProvisioningProcess` | `GoogleChromeManagementVersionsV1CertificateProvisioningProcess` | Output only. The certificate provisioning process. The signature generated by the client will be ... |

### `GoogleChromeManagementVersionsV1SubjectAltName`

Describes a subject alternative name.

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | Output only. The type of the SubjectAltName extension. |
| `value` | `string` | Output only. The value of the subject alternative name with respect to the `type`. |

### `GoogleChromeManagementVersionsV1ThirdPartyProfileUser`

A representation of non-Google (third party) user that is associated with a managed Chrome profile.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Identifier. Format: customers/{customer_id}/thirdPartyProfileUsers/{third_party_profile_user_id} |
| `orgUnitId` | `string` | Output only. The ID of the organizational unit assigned to the user. |

### `GoogleChromeManagementVersionsV1UploadCertificateRequest`

Request message for uploading an issued certificate for a certificate provisioning process.

| Property | Type | Description |
|----------|------|-------------|
| `certificatePem` | `string` | Required. The issued certificate in PEM format. |

### `GoogleChromeManagementVersionsV1UploadCertificateResponse`

Response message for publishing an issued certificate for a certificate provisioning process.

### `GoogleLongrunningCancelOperationRequest`

The request message for Operations.CancelOperation.

### `GoogleLongrunningListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<GoogleLongrunningOperation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `GoogleLongrunningOperation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `GoogleRpcStatus` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `GoogleProtobufEmpty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `GoogleRpcStatus`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `GoogleTypeDate`

Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by ... |
| `month` | `integer` | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `year` | `integer` | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

