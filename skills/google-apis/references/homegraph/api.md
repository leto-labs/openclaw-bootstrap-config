# HomeGraph API - API Reference

**Version**: `v1` | **Methods**: 5 | **Schemas**: 20

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `homegraph.agentUsers.delete` | DELETE | `v1/{+agentUserId}` | Unlinks the given third-party user from your smart home Action. All data related to this user wil... |
| `homegraph.devices.reportStateAndNotification` | POST | `v1/devices:reportStateAndNotification` | Reports device state and optionally sends device notifications. Called by your smart home Action ... |
| `homegraph.devices.requestSync` | POST | `v1/devices:requestSync` | Requests Google to send an `action.devices.SYNC` [intent](https://developers.home.google.com/clou... |
| `homegraph.devices.sync` | POST | `v1/devices:sync` | Gets all the devices associated with the given third-party user. The third-party user's identity ... |
| `homegraph.devices.query` | POST | `v1/devices:query` | Gets the current states in Home Graph for the given set of the third-party user's devices. The th... |

### `homegraph.agentUsers.delete`

**DELETE** `v1/{+agentUserId}`

Unlinks the given third-party user from your smart home Action. All data related to this user will be deleted. For more details on how users link their accounts, see [fulfillment and authentication](https://developers.home.google.com/cloud-to-cloud/primer/fulfillment). The third-party user's identity is passed in via the `agent_user_id` (see DeleteAgentUserRequest). This request must be authorized using service account credentials from your Actions console project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `agentUserId` | `string` | path | Yes | Required. Third-party user ID. |
| `requestId` | `string` | query | No | Request ID used for debugging. |

**Response**: `Empty`

```typescript
const res = await homegraph.agentUsers.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/homegraph`

---

### `homegraph.devices.reportStateAndNotification`

**POST** `v1/devices:reportStateAndNotification`

Reports device state and optionally sends device notifications. Called by your smart home Action when the state of a third-party device changes or you need to send a notification about the device. See [Implement Report State](https://developers.home.google.com/cloud-to-cloud/integration/report-state) for more information. This method updates the device state according to its declared [traits](https://developers.home.google.com/cloud-to-cloud/primer/device-types-and-traits). Publishing a new state value outside of these traits will result in an `INVALID_ARGUMENT` error response. The third-party user's identity is passed in via the `agent_user_id` (see ReportStateAndNotificationRequest). This request must be authorized using service account credentials from your Actions console project.

**Request body**: `ReportStateAndNotificationRequest`

**Response**: `ReportStateAndNotificationResponse`

```typescript
const res = await homegraph.devices.reportStateAndNotification({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/homegraph`

---

### `homegraph.devices.requestSync`

**POST** `v1/devices:requestSync`

Requests Google to send an `action.devices.SYNC` [intent](https://developers.home.google.com/cloud-to-cloud/intents/sync) to your smart home Action to update device metadata for the given user. The third-party user's identity is passed via the `agent_user_id` (see RequestSyncDevicesRequest). This request must be authorized using service account credentials from your Actions console project.

**Request body**: `RequestSyncDevicesRequest`

**Response**: `RequestSyncDevicesResponse`

```typescript
const res = await homegraph.devices.requestSync({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/homegraph`

---

### `homegraph.devices.sync`

**POST** `v1/devices:sync`

Gets all the devices associated with the given third-party user. The third-party user's identity is passed in via the `agent_user_id` (see SyncRequest). This request must be authorized using service account credentials from your Actions console project.

**Request body**: `SyncRequest`

**Response**: `SyncResponse`

```typescript
const res = await homegraph.devices.sync({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/homegraph`

---

### `homegraph.devices.query`

**POST** `v1/devices:query`

Gets the current states in Home Graph for the given set of the third-party user's devices. The third-party user's identity is passed in via the `agent_user_id` (see QueryRequest). This request must be authorized using service account credentials from your Actions console project.

**Request body**: `QueryRequest`

**Response**: `QueryResponse`

```typescript
const res = await homegraph.devices.query({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/homegraph`

---

## Schemas

### `AgentDeviceId`

Third-party device ID for one device.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | Third-party device ID. |

### `AgentOtherDeviceId`

Alternate third-party device ID.

| Property | Type | Description |
|----------|------|-------------|
| `agentId` | `string` | Project ID for your smart home Action. |
| `deviceId` | `string` | Unique third-party device ID. |

### `Device`

Third-party device definition.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `object` | Attributes for the traits supported by the device. |
| `customData` | `object` | Custom device attributes stored in Home Graph and provided to your smart home Action in each [QUE... |
| `deviceInfo` | `DeviceInfo` | Device manufacturer, model, hardware version, and software version. |
| `id` | `string` | Third-party device ID. |
| `name` | `DeviceNames` | Names given to this device by your smart home Action. |
| `notificationSupportedByAgent` | `boolean` | Indicates whether your smart home Action will report notifications to Google for this device via ... |
| `otherDeviceIds` | `array<AgentOtherDeviceId>` | Alternate IDs associated with this device. This is used to identify cloud synced devices enabled ... |
| `roomHint` | `string` | Suggested name for the room where this device is installed. Google attempts to use this value dur... |
| `structureHint` | `string` | Suggested name for the structure where this device is installed. Google attempts to use this valu... |
| `traits` | `array<string>` | Traits supported by the device. See [device traits](https://developers.home.google.com/cloud-to-c... |
| `type` | `string` | Hardware type of the device. See [device types](https://developers.home.google.com/cloud-to-cloud... |
| `willReportState` | `boolean` | Indicates whether your smart home Action will report state of this device to Google via ReportSta... |

### `DeviceInfo`

Device information.

| Property | Type | Description |
|----------|------|-------------|
| `hwVersion` | `string` | Device hardware version. |
| `manufacturer` | `string` | Device manufacturer. |
| `model` | `string` | Device model. |
| `swVersion` | `string` | Device software version. |

### `DeviceNames`

Identifiers used to describe the device.

| Property | Type | Description |
|----------|------|-------------|
| `defaultNames` | `array<string>` | List of names provided by the manufacturer rather than the user, such as serial numbers, SKUs, etc. |
| `name` | `string` | Primary name of the device, generally provided by the user. Names will be truncated if over the 6... |
| `nicknames` | `array<string>` | Additional names provided by the user for the device. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `QueryRequest`

Request type for the [`Query`](#google.home.graph.v1.HomeGraphApiService.Query) call.

| Property | Type | Description |
|----------|------|-------------|
| `agentUserId` | `string` | Required. Third-party user ID. |
| `inputs` | `array<QueryRequestInput>` | Required. Inputs containing third-party device IDs for which to get the device states. |
| `requestId` | `string` | Request ID used for debugging. |

### `QueryRequestInput`

Device ID inputs to QueryRequest.

| Property | Type | Description |
|----------|------|-------------|
| `payload` | `QueryRequestPayload` | Payload containing third-party device IDs. |

### `QueryRequestPayload`

Payload containing device IDs.

| Property | Type | Description |
|----------|------|-------------|
| `devices` | `array<AgentDeviceId>` | Third-party device IDs for which to get the device states. |

### `QueryResponse`

Response type for the [`Query`](#google.home.graph.v1.HomeGraphApiService.Query) call. This should follow the same format as the Google smart home `action.devices.QUERY` [response](https://developers.home.google.com/cloud-to-cloud/intents/query). Example: ```json { "requestId": "ff36a3cc-ec34-11e6-b1a0-64510650abcf", "payload": { "devices": { "123": { "on": true, "online": true }, "456": { "on": true, "online": true, "brightness": 80, "color": { "name": "cerulean", "spectrumRGB": 31655 } } } } } ```

| Property | Type | Description |
|----------|------|-------------|
| `payload` | `QueryResponsePayload` | Device states for the devices given in the request. |
| `requestId` | `string` | Request ID used for debugging. Copied from the request. |

### `QueryResponsePayload`

Payload containing device states information.

| Property | Type | Description |
|----------|------|-------------|
| `devices` | `object` | States of the devices. Map of third-party device ID to struct of device states. |

### `ReportStateAndNotificationDevice`

The states and notifications specific to a device.

| Property | Type | Description |
|----------|------|-------------|
| `notifications` | `object` | Notifications metadata for devices. See the **Device NOTIFICATIONS** section of the individual tr... |
| `states` | `object` | States of devices to update. See the **Device STATES** section of the individual trait [reference... |

### `ReportStateAndNotificationRequest`

Request type for the [`ReportStateAndNotification`](#google.home.graph.v1.HomeGraphApiService.ReportStateAndNotification) call. It may include states, notifications, or both. States and notifications are defined per `device_id` (for example, "123" and "456" in the following example). Example: ```json { "requestId": "ff36a3cc-ec34-11e6-b1a0-64510650abcf", "agentUserId": "1234", "payload": { "devices": { "states": { "123": { "on": true }, "456": { "on": true, "brightness": 10 }, }, } } } ```

| Property | Type | Description |
|----------|------|-------------|
| `agentUserId` | `string` | Required. Third-party user ID. |
| `eventId` | `string` | Unique identifier per event (for example, a doorbell press). |
| `followUpToken` | `string` | Deprecated. |
| `payload` | `StateAndNotificationPayload` | Required. State of devices to update and notification metadata for devices. |
| `requestId` | `string` | Request ID used for debugging. |

### `ReportStateAndNotificationResponse`

Response type for the [`ReportStateAndNotification`](#google.home.graph.v1.HomeGraphApiService.ReportStateAndNotification) call.

| Property | Type | Description |
|----------|------|-------------|
| `requestId` | `string` | Request ID copied from ReportStateAndNotificationRequest. |

### `RequestSyncDevicesRequest`

Request type for the [`RequestSyncDevices`](#google.home.graph.v1.HomeGraphApiService.RequestSyncDevices) call.

| Property | Type | Description |
|----------|------|-------------|
| `agentUserId` | `string` | Required. Third-party user ID. |
| `async` | `boolean` | Optional. If set, the request will be added to a queue and a response will be returned immediatel... |

### `RequestSyncDevicesResponse`

Response type for the [`RequestSyncDevices`](#google.home.graph.v1.HomeGraphApiService.RequestSyncDevices) call. Intentionally empty upon success. An HTTP response code is returned with more details upon failure.

### `StateAndNotificationPayload`

Payload containing the state and notification information for devices.

| Property | Type | Description |
|----------|------|-------------|
| `devices` | `ReportStateAndNotificationDevice` | The devices for updating state and sending notifications. |

### `SyncRequest`

Request type for the [`Sync`](#google.home.graph.v1.HomeGraphApiService.Sync) call.

| Property | Type | Description |
|----------|------|-------------|
| `agentUserId` | `string` | Required. Third-party user ID. |
| `requestId` | `string` | Request ID used for debugging. |

### `SyncResponse`

Response type for the [`Sync`](#google.home.graph.v1.HomeGraphApiService.Sync) call. This should follow the same format as the Google smart home `action.devices.SYNC` [response](https://developers.home.google.com/cloud-to-cloud/intents/sync). Example: ```json { "requestId": "ff36a3cc-ec34-11e6-b1a0-64510650abcf", "payload": { "agentUserId": "1836.15267389", "devices": [{ "id": "123", "type": "action.devices.types.OUTLET", "traits": [ "action.devices.traits.OnOff" ], "name": { "defaultNames": ["My Outlet 1234"], "name": "Night light", "nicknames": ["wall plug"] }, "willReportState": false, "deviceInfo": { "manufacturer": "lights-out-inc", "model": "hs1234", "hwVersion": "3.2", "swVersion": "11.4" }, "customData": { "fooValue": 74, "barValue": true, "bazValue": "foo" } }] } } ```

| Property | Type | Description |
|----------|------|-------------|
| `payload` | `SyncResponsePayload` | Devices associated with the third-party user. |
| `requestId` | `string` | Request ID used for debugging. Copied from the request. |

### `SyncResponsePayload`

Payload containing device information.

| Property | Type | Description |
|----------|------|-------------|
| `agentUserId` | `string` | Third-party user ID |
| `devices` | `array<Device>` | Devices associated with the third-party user. |

