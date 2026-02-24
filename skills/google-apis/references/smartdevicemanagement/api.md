# Smart Device Management API - API Reference

**Version**: `v1` | **Methods**: 7 | **Schemas**: 9

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `smartdevicemanagement.enterprises.structures.get` | GET | `v1/{+name}` | Gets a structure managed by the enterprise. |
| `smartdevicemanagement.enterprises.structures.list` | GET | `v1/{+parent}/structures` | Lists structures managed by the enterprise. |
| `smartdevicemanagement.enterprises.structures.rooms.list` | GET | `v1/{+parent}/rooms` | Lists rooms managed by the enterprise. |
| `smartdevicemanagement.enterprises.structures.rooms.get` | GET | `v1/{+name}` | Gets a room managed by the enterprise. |
| `smartdevicemanagement.enterprises.devices.list` | GET | `v1/{+parent}/devices` | Lists devices managed by the enterprise. |
| `smartdevicemanagement.enterprises.devices.executeCommand` | POST | `v1/{+name}:executeCommand` | Executes a command to device managed by the enterprise. |
| `smartdevicemanagement.enterprises.devices.get` | GET | `v1/{+name}` | Gets a device managed by the enterprise. |

### `smartdevicemanagement.enterprises.structures.get`

**GET** `v1/{+name}`

Gets a structure managed by the enterprise.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the structure requested. For example: "enterprises/XYZ/structures/ABC". |

**Response**: `GoogleHomeEnterpriseSdmV1Structure`

```typescript
const res = await smartdevicemanagement.structures.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/sdm.service`

---

### `smartdevicemanagement.enterprises.structures.list`

**GET** `v1/{+parent}/structures`

Lists structures managed by the enterprise.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The parent enterprise to list structures under. E.g. "enterprises/XYZ". |
| `filter` | `string` | query | No | Optional filter to list structures. |

**Response**: `GoogleHomeEnterpriseSdmV1ListStructuresResponse`

```typescript
const res = await smartdevicemanagement.structures.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/sdm.service`

---

### `smartdevicemanagement.enterprises.structures.rooms.list`

**GET** `v1/{+parent}/rooms`

Lists rooms managed by the enterprise.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The parent resource name of the rooms requested. For example: "enterprises/XYZ/structures/ABC". |

**Response**: `GoogleHomeEnterpriseSdmV1ListRoomsResponse`

```typescript
const res = await smartdevicemanagement.rooms.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/sdm.service`

---

### `smartdevicemanagement.enterprises.structures.rooms.get`

**GET** `v1/{+name}`

Gets a room managed by the enterprise.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the room requested. For example: "enterprises/XYZ/structures/ABC/rooms/123". |

**Response**: `GoogleHomeEnterpriseSdmV1Room`

```typescript
const res = await smartdevicemanagement.rooms.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/sdm.service`

---

### `smartdevicemanagement.enterprises.devices.list`

**GET** `v1/{+parent}/devices`

Lists devices managed by the enterprise.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The parent enterprise to list devices under. E.g. "enterprises/XYZ". |
| `filter` | `string` | query | No | Optional filter to list devices. Filters can be done on: Device custom name (substring match): 'customName=wing' |

**Response**: `GoogleHomeEnterpriseSdmV1ListDevicesResponse`

```typescript
const res = await smartdevicemanagement.devices.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/sdm.service`

---

### `smartdevicemanagement.enterprises.devices.executeCommand`

**POST** `v1/{+name}:executeCommand`

Executes a command to device managed by the enterprise.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the device requested. For example: "enterprises/XYZ/devices/123" |

**Request body**: `GoogleHomeEnterpriseSdmV1ExecuteDeviceCommandRequest`

**Response**: `GoogleHomeEnterpriseSdmV1ExecuteDeviceCommandResponse`

```typescript
const res = await smartdevicemanagement.devices.executeCommand({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/sdm.service`

---

### `smartdevicemanagement.enterprises.devices.get`

**GET** `v1/{+name}`

Gets a device managed by the enterprise.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the device requested. For example: "enterprises/XYZ/devices/123" |

**Response**: `GoogleHomeEnterpriseSdmV1Device`

```typescript
const res = await smartdevicemanagement.devices.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/sdm.service`

---

## Schemas

### `GoogleHomeEnterpriseSdmV1Device`

Device resource represents an instance of enterprise managed device in the property.

| Property | Type | Description |
|----------|------|-------------|
| `ghpName` | `string` | Output only. The GHP device ID of the device. |
| `name` | `string` | Required. The resource name of the device. For example: "enterprises/XYZ/devices/123". |
| `parentRelations` | `array<GoogleHomeEnterpriseSdmV1ParentRelation>` | Assignee details of the device. |
| `traits` | `object` | Output only. Device traits. |
| `type` | `string` | Output only. Type of the device for general display purposes. For example: "THERMOSTAT". The devi... |

### `GoogleHomeEnterpriseSdmV1ExecuteDeviceCommandRequest`

Request message for SmartDeviceManagementService.ExecuteDeviceCommand

| Property | Type | Description |
|----------|------|-------------|
| `command` | `string` | The command name to execute, represented by the fully qualified protobuf message name. |
| `params` | `object` | The command message to execute, represented as a Struct. |

### `GoogleHomeEnterpriseSdmV1ExecuteDeviceCommandResponse`

Response message for SmartDeviceManagementService.ExecuteDeviceCommand

| Property | Type | Description |
|----------|------|-------------|
| `results` | `object` | The results of executing the command. |

### `GoogleHomeEnterpriseSdmV1ListDevicesResponse`

Response message for SmartDeviceManagementService.ListDevices

| Property | Type | Description |
|----------|------|-------------|
| `devices` | `array<GoogleHomeEnterpriseSdmV1Device>` | The list of devices. |

### `GoogleHomeEnterpriseSdmV1ListRoomsResponse`

Response message for SmartDeviceManagementService.ListRooms

| Property | Type | Description |
|----------|------|-------------|
| `rooms` | `array<GoogleHomeEnterpriseSdmV1Room>` | The list of rooms. |

### `GoogleHomeEnterpriseSdmV1ListStructuresResponse`

Response message for SmartDeviceManagementService.ListStructures

| Property | Type | Description |
|----------|------|-------------|
| `structures` | `array<GoogleHomeEnterpriseSdmV1Structure>` | The list of structures. |

### `GoogleHomeEnterpriseSdmV1ParentRelation`

Represents device relationships, for instance, structure/room to which the device is assigned to.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Output only. The custom name of the relation -- e.g., structure/room where the device is assigned... |
| `ghpParent` | `string` | Output only. The GHP name of the relation -- e.g., structure/room where the device is assigned to... |
| `parent` | `string` | Output only. The name of the relation -- e.g., structure/room where the device is assigned to. Fo... |

### `GoogleHomeEnterpriseSdmV1Room`

Room resource represents an instance of sub-space within a structure such as rooms in a hotel suite or rental apartment.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Output only. The resource name of the room. For example: "enterprises/XYZ/structures/ABC/rooms/123". |
| `traits` | `object` | Room traits. |

### `GoogleHomeEnterpriseSdmV1Structure`

Structure resource represents an instance of enterprise managed home or hotel room.

| Property | Type | Description |
|----------|------|-------------|
| `ghpName` | `string` | Output only. The unique identifier for the structure in Google Home Platform. Format: homegraph.g... |
| `name` | `string` | Output only. The resource name of the structure. For example: "enterprises/XYZ/structures/ABC". |
| `traits` | `object` | Structure traits. |

