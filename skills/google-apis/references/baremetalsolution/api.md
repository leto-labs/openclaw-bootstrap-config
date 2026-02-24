# Bare Metal Solution API - API Reference

**Version**: `v2` | **Methods**: 52 | **Schemas**: 71

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `baremetalsolution.projects.locations.get` | GET | `v2/{+name}` | Gets information about a location. |
| `baremetalsolution.projects.locations.list` | GET | `v2/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `baremetalsolution.projects.locations.provisioningConfigs.submit` | POST | `v2/{+parent}/provisioningConfigs:submit` | Submit a provisioning configuration for a given project. |
| `baremetalsolution.projects.locations.provisioningConfigs.create` | POST | `v2/{+parent}/provisioningConfigs` | Create new ProvisioningConfig. |
| `baremetalsolution.projects.locations.provisioningConfigs.get` | GET | `v2/{+name}` | Get ProvisioningConfig by name. |
| `baremetalsolution.projects.locations.provisioningConfigs.patch` | PATCH | `v2/{+name}` | Update existing ProvisioningConfig. |
| `baremetalsolution.projects.locations.osImages.get` | GET | `v2/{+name}` | Get details of a single OS image. |
| `baremetalsolution.projects.locations.osImages.list` | GET | `v2/{+parent}/osImages` | Retrieves the list of OS images which are currently approved. |
| `baremetalsolution.projects.locations.instances.enableHyperthreading` | POST | `v2/{+name}:enableHyperthreading` | Perform enable hyperthreading operation on a single server. |
| `baremetalsolution.projects.locations.instances.reimage` | POST | `v2/{+name}:reimage` | Perform reimage operation on a single server. |
| `baremetalsolution.projects.locations.instances.disableHyperthreading` | POST | `v2/{+name}:disableHyperthreading` | Perform disable hyperthreading operation on a single server. |
| `baremetalsolution.projects.locations.instances.patch` | PATCH | `v2/{+name}` | Update details of a single server. |
| `baremetalsolution.projects.locations.instances.start` | POST | `v2/{+name}:start` | Starts a server that was shutdown. |
| `baremetalsolution.projects.locations.instances.enableInteractiveSerialConsole` | POST | `v2/{+name}:enableInteractiveSerialConsole` | Enable the interactive serial console feature on an instance. |
| `baremetalsolution.projects.locations.instances.loadAuthInfo` | GET | `v2/{+name}:loadAuthInfo` | Load auth info for a server. |
| `baremetalsolution.projects.locations.instances.detachLun` | POST | `v2/{+instance}:detachLun` | Detach LUN from Instance. |
| `baremetalsolution.projects.locations.instances.rename` | POST | `v2/{+name}:rename` | RenameInstance sets a new name for an instance. Use with caution, previous names become immediate... |
| `baremetalsolution.projects.locations.instances.get` | GET | `v2/{+name}` | Get details about a single server. |
| `baremetalsolution.projects.locations.instances.stop` | POST | `v2/{+name}:stop` | Stop a running server. |
| `baremetalsolution.projects.locations.instances.disableInteractiveSerialConsole` | POST | `v2/{+name}:disableInteractiveSerialConsole` | Disable the interactive serial console feature on an instance. |
| `baremetalsolution.projects.locations.instances.reset` | POST | `v2/{+name}:reset` | Perform an ungraceful, hard reset on a server. Equivalent to shutting the power off and then turn... |
| `baremetalsolution.projects.locations.instances.list` | GET | `v2/{+parent}/instances` | List servers in a given project and location. |
| `baremetalsolution.projects.locations.sshKeys.list` | GET | `v2/{+parent}/sshKeys` | Lists the public SSH keys registered for the specified project. These SSH keys are used only for ... |
| `baremetalsolution.projects.locations.sshKeys.create` | POST | `v2/{+parent}/sshKeys` | Register a public SSH key in the specified project for use with the interactive serial console fe... |
| `baremetalsolution.projects.locations.sshKeys.delete` | DELETE | `v2/{+name}` | Deletes a public SSH key registered in the specified project. |
| `baremetalsolution.projects.locations.nfsShares.patch` | PATCH | `v2/{+name}` | Update details of a single NFS share. |
| `baremetalsolution.projects.locations.nfsShares.list` | GET | `v2/{+parent}/nfsShares` | List NFS shares. |
| `baremetalsolution.projects.locations.nfsShares.create` | POST | `v2/{+parent}/nfsShares` | Create an NFS share. |
| `baremetalsolution.projects.locations.nfsShares.get` | GET | `v2/{+name}` | Get details of a single NFS share. |
| `baremetalsolution.projects.locations.nfsShares.rename` | POST | `v2/{+name}:rename` | RenameNfsShare sets a new name for an nfsshare. Use with caution, previous names become immediate... |
| `baremetalsolution.projects.locations.nfsShares.delete` | DELETE | `v2/{+name}` | Delete an NFS share. The underlying volume is automatically deleted. |
| `baremetalsolution.projects.locations.networks.rename` | POST | `v2/{+name}:rename` | RenameNetwork sets a new name for a network. Use with caution, previous names become immediately ... |
| `baremetalsolution.projects.locations.networks.list` | GET | `v2/{+parent}/networks` | List network in a given project and location. |
| `baremetalsolution.projects.locations.networks.get` | GET | `v2/{+name}` | Get details of a single network. |
| `baremetalsolution.projects.locations.networks.patch` | PATCH | `v2/{+name}` | Update details of a single network. |
| `baremetalsolution.projects.locations.networks.listNetworkUsage` | GET | `v2/{+location}/networks:listNetworkUsage` | List all Networks (and used IPs for each Network) in the vendor account associated with the speci... |
| `baremetalsolution.projects.locations.provisioningQuotas.list` | GET | `v2/{+parent}/provisioningQuotas` | List the budget details to provision resources on a given project. |
| `baremetalsolution.projects.locations.volumes.get` | GET | `v2/{+name}` | Get details of a single storage volume. |
| `baremetalsolution.projects.locations.volumes.rename` | POST | `v2/{+name}:rename` | RenameVolume sets a new name for a volume. Use with caution, previous names become immediately in... |
| `baremetalsolution.projects.locations.volumes.evict` | POST | `v2/{+name}:evict` | Skips volume's cooloff and deletes it now. Volume must be in cooloff state. |
| `baremetalsolution.projects.locations.volumes.list` | GET | `v2/{+parent}/volumes` | List storage volumes in a given project and location. |
| `baremetalsolution.projects.locations.volumes.patch` | PATCH | `v2/{+name}` | Update details of a single storage volume. |
| `baremetalsolution.projects.locations.volumes.resize` | POST | `v2/{+volume}:resize` | Emergency Volume resize. |
| `baremetalsolution.projects.locations.volumes.snapshots.delete` | DELETE | `v2/{+name}` | Deletes a volume snapshot. Returns INVALID_ARGUMENT if called for a non-boot volume. |
| `baremetalsolution.projects.locations.volumes.snapshots.restoreVolumeSnapshot` | POST | `v2/{+volumeSnapshot}:restoreVolumeSnapshot` | Uses the specified snapshot to restore its parent volume. Returns INVALID_ARGUMENT if called for ... |
| `baremetalsolution.projects.locations.volumes.snapshots.get` | GET | `v2/{+name}` | Returns the specified snapshot resource. Returns INVALID_ARGUMENT if called for a non-boot volume. |
| `baremetalsolution.projects.locations.volumes.snapshots.list` | GET | `v2/{+parent}/snapshots` | Retrieves the list of snapshots for the specified volume. Returns a response with an empty list o... |
| `baremetalsolution.projects.locations.volumes.snapshots.create` | POST | `v2/{+parent}/snapshots` | Takes a snapshot of a boot volume. Returns INVALID_ARGUMENT if called for a non-boot volume. |
| `baremetalsolution.projects.locations.volumes.luns.evict` | POST | `v2/{+name}:evict` | Skips lun's cooloff and deletes it now. Lun must be in cooloff state. |
| `baremetalsolution.projects.locations.volumes.luns.get` | GET | `v2/{+name}` | Get details of a single storage logical unit number(LUN). |
| `baremetalsolution.projects.locations.volumes.luns.list` | GET | `v2/{+parent}/luns` | List storage volume luns for given storage volume. |
| `baremetalsolution.projects.locations.operations.get` | GET | `v2/{+name}` | Get details about an operation. |

### `baremetalsolution.projects.locations.get`

**GET** `v2/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await baremetalsolution.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.list`

**GET** `v2/{+name}/locations`

Lists information about the supported locations for this service. This method can be called in two ways: * **List all public locations:** Use the path `GET /v1/locations`. * **List project-visible locations:** Use the path `GET /v1/projects/{project_id}/locations`. This may include public locations as well as private or other locations specifically visible to the project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource that owns the locations collection, if applicable. |
| `extraLocationTypes` | `string` | query | No | Optional. Do not use this field. It is unsupported and is ignored unless explicitly documented otherwise. This is pri... |
| `filter` | `string` | query | No | A filter to narrow down results to a preferred subset. The filtering language accepts strings like `"displayName=toky... |
| `pageSize` | `integer` | query | No | The maximum number of results to return. If not set, the service selects a default. |
| `pageToken` | `string` | query | No | A page token received from the `next_page_token` field in the response. Send that page token to receive the subsequen... |

**Response**: `ListLocationsResponse`

```typescript
const res = await baremetalsolution.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.provisioningConfigs.submit`

**POST** `v2/{+parent}/provisioningConfigs:submit`

Submit a provisioning configuration for a given project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent project and location containing the ProvisioningConfig. |

**Request body**: `SubmitProvisioningConfigRequest`

**Response**: `SubmitProvisioningConfigResponse`

```typescript
const res = await baremetalsolution.provisioningConfigs.submit({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.provisioningConfigs.create`

**POST** `v2/{+parent}/provisioningConfigs`

Create new ProvisioningConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent project and location containing the ProvisioningConfig. |
| `email` | `string` | query | No | Optional. Email provided to send a confirmation with provisioning config to. |

**Request body**: `ProvisioningConfig`

**Response**: `ProvisioningConfig`

```typescript
const res = await baremetalsolution.provisioningConfigs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.provisioningConfigs.get`

**GET** `v2/{+name}`

Get ProvisioningConfig by name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the ProvisioningConfig. |

**Response**: `ProvisioningConfig`

```typescript
const res = await baremetalsolution.provisioningConfigs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.provisioningConfigs.patch`

**PATCH** `v2/{+name}`

Update existing ProvisioningConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The system-generated name of the provisioning config. This follows the UUID format. |
| `email` | `string` | query | No | Optional. Email provided to send a confirmation with provisioning config to. |
| `updateMask` | `string` | query | No | Required. The list of fields to update. |

**Request body**: `ProvisioningConfig`

**Response**: `ProvisioningConfig`

```typescript
const res = await baremetalsolution.provisioningConfigs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.osImages.get`

**GET** `v2/{+name}`

Get details of a single OS image.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the OS image. |

**Response**: `OSImage`

```typescript
const res = await baremetalsolution.osImages.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.osImages.list`

**GET** `v2/{+parent}/osImages`

Retrieves the list of OS images which are currently approved.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value for ListOSImagesRequest. |
| `pageSize` | `integer` | query | No | Requested page size. The server might return fewer items than requested. If unspecified, server will pick an appropri... |
| `pageToken` | `string` | query | No | A token identifying a page of results from the server. |

**Response**: `ListOSImagesResponse`

```typescript
const res = await baremetalsolution.osImages.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.instances.enableHyperthreading`

**POST** `v2/{+name}:enableHyperthreading`

Perform enable hyperthreading operation on a single server.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The `name` field is used to identify the instance. Format: projects/{project}/locations/{location}/instance... |

**Request body**: `EnableHyperthreadingRequest`

**Response**: `Operation`

```typescript
const res = await baremetalsolution.instances.enableHyperthreading({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.instances.reimage`

**POST** `v2/{+name}:reimage`

Perform reimage operation on a single server.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The `name` field is used to identify the instance. Format: projects/{project}/locations/{location}/instance... |

**Request body**: `ReimageInstanceRequest`

**Response**: `Operation`

```typescript
const res = await baremetalsolution.instances.reimage({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.instances.disableHyperthreading`

**POST** `v2/{+name}:disableHyperthreading`

Perform disable hyperthreading operation on a single server.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The `name` field is used to identify the instance. Format: projects/{project}/locations/{location}/instance... |

**Request body**: `DisableHyperthreadingRequest`

**Response**: `Operation`

```typescript
const res = await baremetalsolution.instances.disableHyperthreading({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.instances.patch`

**PATCH** `v2/{+name}`

Update details of a single server.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The resource name of this `Instance`. Resource names are schemeless URIs that follow the conventions in ht... |
| `updateMask` | `string` | query | No | The list of fields to update. The currently supported fields are: `labels` `hyperthreading_enabled` `os_image` `ssh_k... |

**Request body**: `Instance`

**Response**: `Operation`

```typescript
const res = await baremetalsolution.instances.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.instances.start`

**POST** `v2/{+name}:start`

Starts a server that was shutdown.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. |

**Request body**: `StartInstanceRequest`

**Response**: `Operation`

```typescript
const res = await baremetalsolution.instances.start({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.instances.enableInteractiveSerialConsole`

**POST** `v2/{+name}:enableInteractiveSerialConsole`

Enable the interactive serial console feature on an instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. |

**Request body**: `EnableInteractiveSerialConsoleRequest`

**Response**: `Operation`

```typescript
const res = await baremetalsolution.instances.enableInteractiveSerialConsole({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.instances.loadAuthInfo`

**GET** `v2/{+name}:loadAuthInfo`

Load auth info for a server.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the server. |

**Response**: `LoadInstanceAuthInfoResponse`

```typescript
const res = await baremetalsolution.instances.loadAuthInfo({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.instances.detachLun`

**POST** `v2/{+instance}:detachLun`

Detach LUN from Instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `instance` | `string` | path | Yes | Required. Name of the instance. |

**Request body**: `DetachLunRequest`

**Response**: `Operation`

```typescript
const res = await baremetalsolution.instances.detachLun({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.instances.rename`

**POST** `v2/{+name}:rename`

RenameInstance sets a new name for an instance. Use with caution, previous names become immediately invalidated.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The `name` field is used to identify the instance. Format: projects/{project}/locations/{location}/instance... |

**Request body**: `RenameInstanceRequest`

**Response**: `Instance`

```typescript
const res = await baremetalsolution.instances.rename({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.instances.get`

**GET** `v2/{+name}`

Get details about a single server.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. |

**Response**: `Instance`

```typescript
const res = await baremetalsolution.instances.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.instances.stop`

**POST** `v2/{+name}:stop`

Stop a running server.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. |

**Request body**: `StopInstanceRequest`

**Response**: `Operation`

```typescript
const res = await baremetalsolution.instances.stop({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.instances.disableInteractiveSerialConsole`

**POST** `v2/{+name}:disableInteractiveSerialConsole`

Disable the interactive serial console feature on an instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. |

**Request body**: `DisableInteractiveSerialConsoleRequest`

**Response**: `Operation`

```typescript
const res = await baremetalsolution.instances.disableInteractiveSerialConsole({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.instances.reset`

**POST** `v2/{+name}:reset`

Perform an ungraceful, hard reset on a server. Equivalent to shutting the power off and then turning it back on.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. |

**Request body**: `ResetInstanceRequest`

**Response**: `Operation`

```typescript
const res = await baremetalsolution.instances.reset({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.instances.list`

**GET** `v2/{+parent}/instances`

List servers in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value for ListInstancesRequest. |
| `filter` | `string` | query | No | List filter. |
| `pageSize` | `integer` | query | No | Requested page size. Server may return fewer items than requested. If unspecified, the server will pick an appropriat... |
| `pageToken` | `string` | query | No | A token identifying a page of results from the server. |

**Response**: `ListInstancesResponse`

```typescript
const res = await baremetalsolution.instances.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.sshKeys.list`

**GET** `v2/{+parent}/sshKeys`

Lists the public SSH keys registered for the specified project. These SSH keys are used only for the interactive serial console feature.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent containing the SSH keys. Currently, the only valid value for the location is "global". |
| `pageSize` | `integer` | query | No | The maximum number of items to return. |
| `pageToken` | `string` | query | No | The next_page_token value returned from a previous List request, if any. |

**Response**: `ListSSHKeysResponse`

```typescript
const res = await baremetalsolution.sshKeys.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.sshKeys.create`

**POST** `v2/{+parent}/sshKeys`

Register a public SSH key in the specified project for use with the interactive serial console feature.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent containing the SSH keys. |
| `sshKeyId` | `string` | query | No | Required. The ID to use for the key, which will become the final component of the key's resource name. This value mus... |

**Request body**: `SSHKey`

**Response**: `SSHKey`

```typescript
const res = await baremetalsolution.sshKeys.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.sshKeys.delete`

**DELETE** `v2/{+name}`

Deletes a public SSH key registered in the specified project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the SSH key to delete. Currently, the only valid value for the location is "global". |

**Response**: `Empty`

```typescript
const res = await baremetalsolution.sshKeys.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.nfsShares.patch`

**PATCH** `v2/{+name}`

Update details of a single NFS share.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The name of the NFS share. |
| `updateMask` | `string` | query | No | The list of fields to update. The only currently supported fields are: `labels` `allowed_clients` |

**Request body**: `NfsShare`

**Response**: `Operation`

```typescript
const res = await baremetalsolution.nfsShares.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.nfsShares.list`

**GET** `v2/{+parent}/nfsShares`

List NFS shares.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value for ListNfsSharesRequest. |
| `filter` | `string` | query | No | List filter. |
| `pageSize` | `integer` | query | No | Requested page size. The server might return fewer items than requested. If unspecified, server will pick an appropri... |
| `pageToken` | `string` | query | No | A token identifying a page of results from the server. |

**Response**: `ListNfsSharesResponse`

```typescript
const res = await baremetalsolution.nfsShares.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.nfsShares.create`

**POST** `v2/{+parent}/nfsShares`

Create an NFS share.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent project and location. |

**Request body**: `NfsShare`

**Response**: `Operation`

```typescript
const res = await baremetalsolution.nfsShares.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.nfsShares.get`

**GET** `v2/{+name}`

Get details of a single NFS share.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. |

**Response**: `NfsShare`

```typescript
const res = await baremetalsolution.nfsShares.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.nfsShares.rename`

**POST** `v2/{+name}:rename`

RenameNfsShare sets a new name for an nfsshare. Use with caution, previous names become immediately invalidated.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The `name` field is used to identify the nfsshare. Format: projects/{project}/locations/{location}/nfsshare... |

**Request body**: `RenameNfsShareRequest`

**Response**: `NfsShare`

```typescript
const res = await baremetalsolution.nfsShares.rename({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.nfsShares.delete`

**DELETE** `v2/{+name}`

Delete an NFS share. The underlying volume is automatically deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the NFS share to delete. |

**Response**: `Operation`

```typescript
const res = await baremetalsolution.nfsShares.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.networks.rename`

**POST** `v2/{+name}:rename`

RenameNetwork sets a new name for a network. Use with caution, previous names become immediately invalidated.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The `name` field is used to identify the network. Format: projects/{project}/locations/{location}/networks/... |

**Request body**: `RenameNetworkRequest`

**Response**: `Network`

```typescript
const res = await baremetalsolution.networks.rename({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.networks.list`

**GET** `v2/{+parent}/networks`

List network in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value for ListNetworksRequest. |
| `filter` | `string` | query | No | List filter. |
| `pageSize` | `integer` | query | No | Requested page size. The server might return fewer items than requested. If unspecified, server will pick an appropri... |
| `pageToken` | `string` | query | No | A token identifying a page of results from the server. |

**Response**: `ListNetworksResponse`

```typescript
const res = await baremetalsolution.networks.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.networks.get`

**GET** `v2/{+name}`

Get details of a single network.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. |

**Response**: `Network`

```typescript
const res = await baremetalsolution.networks.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.networks.patch`

**PATCH** `v2/{+name}`

Update details of a single network.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The resource name of this `Network`. Resource names are schemeless URIs that follow the conventions in h... |
| `updateMask` | `string` | query | No | The list of fields to update. The only currently supported fields are: `labels`, `reservations`, `vrf.vlan_attachments` |

**Request body**: `Network`

**Response**: `Operation`

```typescript
const res = await baremetalsolution.networks.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.networks.listNetworkUsage`

**GET** `v2/{+location}/networks:listNetworkUsage`

List all Networks (and used IPs for each Network) in the vendor account associated with the specified project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `location` | `string` | path | Yes | Required. Parent value (project and location). |

**Response**: `ListNetworkUsageResponse`

```typescript
const res = await baremetalsolution.networks.listNetworkUsage({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.provisioningQuotas.list`

**GET** `v2/{+parent}/provisioningQuotas`

List the budget details to provision resources on a given project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value for ListProvisioningQuotasRequest. |
| `pageSize` | `integer` | query | No | Requested page size. The server might return fewer items than requested. If unspecified, server will pick an appropri... |
| `pageToken` | `string` | query | No | A token identifying a page of results from the server. |

**Response**: `ListProvisioningQuotasResponse`

```typescript
const res = await baremetalsolution.provisioningQuotas.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.volumes.get`

**GET** `v2/{+name}`

Get details of a single storage volume.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. |

**Response**: `Volume`

```typescript
const res = await baremetalsolution.volumes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.volumes.rename`

**POST** `v2/{+name}:rename`

RenameVolume sets a new name for a volume. Use with caution, previous names become immediately invalidated.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The `name` field is used to identify the volume. Format: projects/{project}/locations/{location}/volumes/{v... |

**Request body**: `RenameVolumeRequest`

**Response**: `Volume`

```typescript
const res = await baremetalsolution.volumes.rename({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.volumes.evict`

**POST** `v2/{+name}:evict`

Skips volume's cooloff and deletes it now. Volume must be in cooloff state.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Volume. |

**Request body**: `EvictVolumeRequest`

**Response**: `Operation`

```typescript
const res = await baremetalsolution.volumes.evict({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.volumes.list`

**GET** `v2/{+parent}/volumes`

List storage volumes in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value for ListVolumesRequest. |
| `filter` | `string` | query | No | List filter. |
| `pageSize` | `integer` | query | No | Requested page size. The server might return fewer items than requested. If unspecified, server will pick an appropri... |
| `pageToken` | `string` | query | No | A token identifying a page of results from the server. |

**Response**: `ListVolumesResponse`

```typescript
const res = await baremetalsolution.volumes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.volumes.patch`

**PATCH** `v2/{+name}`

Update details of a single storage volume.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The resource name of this `Volume`. Resource names are schemeless URIs that follow the conventions in ht... |
| `updateMask` | `string` | query | No | The list of fields to update. The only currently supported fields are: 'labels' |

**Request body**: `Volume`

**Response**: `Operation`

```typescript
const res = await baremetalsolution.volumes.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.volumes.resize`

**POST** `v2/{+volume}:resize`

Emergency Volume resize.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `volume` | `string` | path | Yes | Required. Volume to resize. |

**Request body**: `ResizeVolumeRequest`

**Response**: `Operation`

```typescript
const res = await baremetalsolution.volumes.resize({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.volumes.snapshots.delete`

**DELETE** `v2/{+name}`

Deletes a volume snapshot. Returns INVALID_ARGUMENT if called for a non-boot volume.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the snapshot to delete. |

**Response**: `Empty`

```typescript
const res = await baremetalsolution.snapshots.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.volumes.snapshots.restoreVolumeSnapshot`

**POST** `v2/{+volumeSnapshot}:restoreVolumeSnapshot`

Uses the specified snapshot to restore its parent volume. Returns INVALID_ARGUMENT if called for a non-boot volume.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `volumeSnapshot` | `string` | path | Yes | Required. Name of the snapshot which will be used to restore its parent volume. |

**Request body**: `RestoreVolumeSnapshotRequest`

**Response**: `Operation`

```typescript
const res = await baremetalsolution.snapshots.restoreVolumeSnapshot({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.volumes.snapshots.get`

**GET** `v2/{+name}`

Returns the specified snapshot resource. Returns INVALID_ARGUMENT if called for a non-boot volume.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the snapshot. |

**Response**: `VolumeSnapshot`

```typescript
const res = await baremetalsolution.snapshots.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.volumes.snapshots.list`

**GET** `v2/{+parent}/snapshots`

Retrieves the list of snapshots for the specified volume. Returns a response with an empty list of snapshots if called for a non-boot volume.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value for ListVolumesRequest. |
| `pageSize` | `integer` | query | No | Requested page size. The server might return fewer items than requested. If unspecified, server will pick an appropri... |
| `pageToken` | `string` | query | No | A token identifying a page of results from the server. |

**Response**: `ListVolumeSnapshotsResponse`

```typescript
const res = await baremetalsolution.snapshots.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.volumes.snapshots.create`

**POST** `v2/{+parent}/snapshots`

Takes a snapshot of a boot volume. Returns INVALID_ARGUMENT if called for a non-boot volume.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The volume to snapshot. |

**Request body**: `VolumeSnapshot`

**Response**: `VolumeSnapshot`

```typescript
const res = await baremetalsolution.snapshots.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.volumes.luns.evict`

**POST** `v2/{+name}:evict`

Skips lun's cooloff and deletes it now. Lun must be in cooloff state.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the lun. |

**Request body**: `EvictLunRequest`

**Response**: `Operation`

```typescript
const res = await baremetalsolution.luns.evict({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.volumes.luns.get`

**GET** `v2/{+name}`

Get details of a single storage logical unit number(LUN).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. |

**Response**: `Lun`

```typescript
const res = await baremetalsolution.luns.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.volumes.luns.list`

**GET** `v2/{+parent}/luns`

List storage volume luns for given storage volume.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value for ListLunsRequest. |
| `pageSize` | `integer` | query | No | Requested page size. The server might return fewer items than requested. If unspecified, server will pick an appropri... |
| `pageToken` | `string` | query | No | A token identifying a page of results from the server. |

**Response**: `ListLunsResponse`

```typescript
const res = await baremetalsolution.luns.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `baremetalsolution.projects.locations.operations.get`

**GET** `v2/{+name}`

Get details about an operation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await baremetalsolution.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AllowedClient`

Represents an 'access point' for the share.

| Property | Type | Description |
|----------|------|-------------|
| `allowDev` | `boolean` | Allow dev flag. Which controls whether to allow creation of devices. |
| `allowSuid` | `boolean` | Allow the setuid flag. |
| `allowedClientsCidr` | `string` | The subnet of IP addresses permitted to access the share. |
| `mountPermissions` | `string` | Mount permissions. |
| `network` | `string` | The network the access point sits on. |
| `nfsPath` | `string` | Output only. The path to access NFS, in format shareIP:/InstanceID InstanceID is the generated ID... |
| `noRootSquash` | `boolean` | Disable root squashing, which is a feature of NFS. Root squash is a special mapping of the remote... |
| `shareIp` | `string` | Output only. The IP address of the share on this network. Assigned automatically during provision... |

### `DetachLunRequest`

Message for detach specific LUN from an Instance.

| Property | Type | Description |
|----------|------|-------------|
| `lun` | `string` | Required. Name of the Lun to detach. |
| `skipReboot` | `boolean` | If true, performs lun unmapping without instance reboot. |

### `DisableHyperthreadingRequest`

Message requesting to perform disable hyperthreading operation on a server.

### `DisableInteractiveSerialConsoleRequest`

Message for disabling the interactive serial console on an instance.

### `DisableInteractiveSerialConsoleResponse`

Message for response of DisableInteractiveSerialConsole.

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `EnableHyperthreadingRequest`

Message requesting to perform enable hyperthreading operation on a server.

### `EnableInteractiveSerialConsoleRequest`

Message for enabling the interactive serial console on an instance.

### `EnableInteractiveSerialConsoleResponse`

Message for response of EnableInteractiveSerialConsole.

### `EvictLunRequest`

Request for skip lun cooloff and delete it.

### `EvictVolumeRequest`

Request for skip volume cooloff and delete it.

### `GoogleCloudBaremetalsolutionV2LogicalInterface`

Each logical interface represents a logical abstraction of the underlying physical interface (for eg. bond, nic) of the instance. Each logical interface can effectively map to multiple network-IP pairs and still be mapped to one underlying physical interface.

| Property | Type | Description |
|----------|------|-------------|
| `interfaceIndex` | `integer` | The index of the logical interface mapping to the index of the hardware bond or nic on the chosen... |
| `logicalNetworkInterfaces` | `array<LogicalNetworkInterface>` | List of logical network interfaces within a logical interface. |
| `name` | `string` | Interface name. This is of syntax or and forms part of the network template name. |

### `GoogleCloudBaremetalsolutionV2ServerNetworkTemplateLogicalInterface`

Logical interface.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Interface name. This is not a globally unique identifier. Name is unique only inside the ServerNe... |
| `required` | `boolean` | If true, interface must have network connected. |
| `type` | `string` | Interface type. |

### `Instance`

A server.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Create a time stamp. |
| `firmwareVersion` | `string` | Output only. The firmware version for the instance. |
| `hyperthreadingEnabled` | `boolean` | True if you enable hyperthreading for the server, otherwise false. The default value is false. |
| `id` | `string` | Output only. An identifier for the `Instance`, generated by the backend. |
| `interactiveSerialConsoleEnabled` | `boolean` | Output only. True if the interactive serial console feature is enabled for the instance, false ot... |
| `kmsKeyVersion` | `string` | Optional. Name of the KMS crypto key version used to encrypt the initial passwords. The key has t... |
| `labels` | `object` | Labels as key value pairs. |
| `logicalInterfaces` | `array<GoogleCloudBaremetalsolutionV2LogicalInterface>` | List of logical interfaces for the instance. The number of logical interfaces will be the same as... |
| `loginInfo` | `string` | Output only. Text field about info for logging in. |
| `luns` | `array<Lun>` | Immutable. List of LUNs associated with this server. |
| `machineType` | `string` | Immutable. The server type. [Available server types](https://cloud.google.com/bare-metal/docs/bms... |
| `name` | `string` | Immutable. The resource name of this `Instance`. Resource names are schemeless URIs that follow t... |
| `networkTemplate` | `string` | Instance network template name. For eg, bondaa-bondaa, bondab-nic, etc. Generally, the template n... |
| `networks` | `array<Network>` | Output only. List of networks associated with this server. |
| `osImage` | `string` | The OS image currently installed on the server. |
| `pod` | `string` | Immutable. Pod name. Pod is an independent part of infrastructure. Instance can only be connected... |
| `sshKeys` | `array<string>` | Optional. List of SSH Keys used during instance provisioning. |
| `state` | `string` | Output only. The state of the server. |
| `updateTime` | `string` | Output only. Update a time stamp. |
| `volumes` | `array<Volume>` | Input only. List of Volumes to attach to this Instance on creation. This field won't be populated... |
| `workloadProfile` | `string` | The workload profile for the instance. |

### `InstanceConfig`

Configuration parameters for a new instance.

| Property | Type | Description |
|----------|------|-------------|
| `accountNetworksEnabled` | `boolean` | If true networks can be from different projects of the same vendor account. |
| `clientNetwork` | `NetworkAddress` | Client network address. Filled if InstanceConfig.multivlan_config is false. |
| `hyperthreading` | `boolean` | Whether the instance should be provisioned with Hyperthreading enabled. |
| `id` | `string` | A transient unique identifier to identify an instance within an ProvisioningConfig request. |
| `instanceType` | `string` | Instance type. [Available types](https://cloud.google.com/bare-metal/docs/bms-planning#server_con... |
| `kmsKeyVersion` | `string` | Name of the KMS crypto key version used to encrypt the initial passwords. The key has to have ASY... |
| `logicalInterfaces` | `array<GoogleCloudBaremetalsolutionV2LogicalInterface>` | List of logical interfaces for the instance. The number of logical interfaces will be the same as... |
| `name` | `string` | The name of the instance config. |
| `networkConfig` | `string` | The type of network configuration on the instance. |
| `networkTemplate` | `string` | Server network template name. Filled if InstanceConfig.multivlan_config is true. |
| `osImage` | `string` | OS image to initialize the instance. [Available images](https://cloud.google.com/bare-metal/docs/... |
| `privateNetwork` | `NetworkAddress` | Private network address, if any. Filled if InstanceConfig.multivlan_config is false. |
| `sshKeyNames` | `array<string>` | Optional. List of names of ssh keys used to provision the instance. |
| `userNote` | `string` | User note field, it can be used by customers to add additional information for the BMS Ops team . |

### `InstanceQuota`

A resource budget.

| Property | Type | Description |
|----------|------|-------------|
| `availableMachineCount` | `integer` | Number of machines than can be created for the given location and instance_type. |
| `gcpService` | `string` | The gcp service of the provisioning quota. |
| `instanceType` | `string` | Instance type. Deprecated: use gcp_service. |
| `location` | `string` | Location where the quota applies. |
| `name` | `string` | Output only. The name of the instance quota. |

### `IntakeVlanAttachment`

A GCP vlan attachment.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | Identifier of the VLAN attachment. |
| `pairingKey` | `string` | Attachment pairing key. |

### `ListInstancesResponse`

Response message for the list of servers.

| Property | Type | Description |
|----------|------|-------------|
| `instances` | `array<Instance>` | The list of servers. |
| `nextPageToken` | `string` | A token identifying a page of results from the server. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListLocationsResponse`

The response message for Locations.ListLocations.

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<Location>` | A list of locations that matches the specified filter in the request. |
| `nextPageToken` | `string` | The standard List next-page token. |

### `ListLunsResponse`

Response message containing the list of storage volume luns.

| Property | Type | Description |
|----------|------|-------------|
| `luns` | `array<Lun>` | The list of luns. |
| `nextPageToken` | `string` | A token identifying a page of results from the server. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListNetworkUsageResponse`

Response with Networks with IPs

| Property | Type | Description |
|----------|------|-------------|
| `networks` | `array<NetworkUsage>` | Networks with IPs. |

### `ListNetworksResponse`

Response message containing the list of networks.

| Property | Type | Description |
|----------|------|-------------|
| `networks` | `array<Network>` | The list of networks. |
| `nextPageToken` | `string` | A token identifying a page of results from the server. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListNfsSharesResponse`

Response message containing the list of NFS shares.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token identifying a page of results from the server. |
| `nfsShares` | `array<NfsShare>` | The list of NFS shares. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListOSImagesResponse`

Request for getting all available OS images.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |
| `osImages` | `array<OSImage>` | The OS images available. |

### `ListProvisioningQuotasResponse`

Response message for the list of provisioning quotas.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |
| `provisioningQuotas` | `array<ProvisioningQuota>` | The provisioning quotas registered in this project. |

### `ListSSHKeysResponse`

Message for response of ListSSHKeys.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |
| `sshKeys` | `array<SSHKey>` | The SSH keys registered in the project. |

### `ListVolumeSnapshotsResponse`

Response message containing the list of volume snapshots.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token identifying a page of results from the server. |
| `unreachable` | `array<string>` | Locations that could not be reached. |
| `volumeSnapshots` | `array<VolumeSnapshot>` | The list of snapshots. |

### `ListVolumesResponse`

Response message containing the list of storage volumes.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token identifying a page of results from the server. |
| `unreachable` | `array<string>` | Locations that could not be reached. |
| `volumes` | `array<Volume>` | The list of storage volumes. |

### `LoadInstanceAuthInfoResponse`

Response for LoadInstanceAuthInfo.

| Property | Type | Description |
|----------|------|-------------|
| `sshKeys` | `array<SSHKey>` | List of ssh keys. |
| `userAccounts` | `object` | Map of username to the user account info. |

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

### `LogicalNetworkInterface`

Each logical network interface is effectively a network and IP pair.

| Property | Type | Description |
|----------|------|-------------|
| `defaultGateway` | `boolean` | Whether this interface is the default gateway for the instance. Only one interface can be the def... |
| `id` | `string` | An identifier for the `Network`, generated by the backend. |
| `ipAddress` | `string` | IP address in the network |
| `network` | `string` | Name of the network |
| `networkType` | `string` | Type of network. |

### `Lun`

A storage volume logical unit number (LUN).

| Property | Type | Description |
|----------|------|-------------|
| `bootLun` | `boolean` | Display if this LUN is a boot LUN. |
| `expireTime` | `string` | Output only. Time after which LUN will be fully deleted. It is filled only for LUNs in COOL_OFF s... |
| `id` | `string` | An identifier for the LUN, generated by the backend. |
| `instances` | `array<string>` | Output only. Instances this Lun is attached to. |
| `multiprotocolType` | `string` | The LUN multiprotocol type ensures the characteristics of the LUN are optimized for each operatin... |
| `name` | `string` | Output only. The name of the LUN. |
| `shareable` | `boolean` | Display if this LUN can be shared between multiple physical servers. |
| `sizeGb` | `string` | The size of this LUN, in GiB. |
| `state` | `string` | The state of this storage volume. |
| `storageType` | `string` | The storage type for this LUN. |
| `storageVolume` | `string` | Display the storage volume for this LUN. |
| `wwid` | `string` | The WWID for this LUN. |

### `LunRange`

A LUN(Logical Unit Number) range.

| Property | Type | Description |
|----------|------|-------------|
| `quantity` | `integer` | Number of LUNs to create. |
| `sizeGb` | `integer` | The requested size of each LUN, in GB. |

### `Network`

A Network.

| Property | Type | Description |
|----------|------|-------------|
| `cidr` | `string` | The cidr of the Network. |
| `gatewayIp` | `string` | Output only. Gateway ip address. |
| `id` | `string` | An identifier for the `Network`, generated by the backend. |
| `ipAddress` | `string` | IP address configured. |
| `jumboFramesEnabled` | `boolean` | Whether network uses standard frames or jumbo ones. |
| `labels` | `object` | Labels as key value pairs. |
| `macAddress` | `array<string>` | List of physical interfaces. |
| `mountPoints` | `array<NetworkMountPoint>` | Input only. List of mount points to attach the network to. |
| `name` | `string` | Output only. The resource name of this `Network`. Resource names are schemeless URIs that follow ... |
| `pod` | `string` | Immutable. Pod name. Pod is an independent part of infrastructure. Network can only be connected ... |
| `reservations` | `array<NetworkAddressReservation>` | List of IP address reservations in this network. When updating this field, an error will be gener... |
| `servicesCidr` | `string` | IP range for reserved for services (e.g. NFS). |
| `state` | `string` | The Network state. |
| `type` | `string` | The type of this network. |
| `vlanId` | `string` | The vlan id of the Network. |
| `vrf` | `VRF` | The Vrf for the Network. Use this only if a new Vrf needs to be created. |
| `vrfAttachment` | `string` | Optional. The name of a pre-existing Vrf that the network should be attached to. Format is `vrfs/... |

### `NetworkAddress`

A network.

| Property | Type | Description |
|----------|------|-------------|
| `address` | `string` | IPv4 address to be assigned to the server. |
| `existingNetworkId` | `string` | Name of the existing network to use. |
| `networkId` | `string` | Id of the network to use, within the same ProvisioningConfig request. |

### `NetworkAddressReservation`

A reservation of one or more addresses in a network.

| Property | Type | Description |
|----------|------|-------------|
| `endAddress` | `string` | The last address of this reservation block, inclusive. I.e., for cases when reservations are only... |
| `note` | `string` | A note about this reservation, intended for human consumption. |
| `startAddress` | `string` | The first address of this reservation block. Must be specified as a single IPv4 address, e.g. 10.... |

### `NetworkConfig`

Configuration parameters for a new network.

| Property | Type | Description |
|----------|------|-------------|
| `bandwidth` | `string` | Interconnect bandwidth. Set only when type is CLIENT. |
| `cidr` | `string` | CIDR range of the network. |
| `gcpService` | `string` | The GCP service of the network. Available gcp_service are in https://cloud.google.com/bare-metal/... |
| `id` | `string` | A transient unique identifier to identify a volume within an ProvisioningConfig request. |
| `jumboFramesEnabled` | `boolean` | The JumboFramesEnabled option for customer to set. |
| `name` | `string` | Output only. The name of the network config. |
| `serviceCidr` | `string` | Service CIDR, if any. |
| `type` | `string` | The type of this network, either Client or Private. |
| `userNote` | `string` | User note field, it can be used by customers to add additional information for the BMS Ops team . |
| `vlanAttachments` | `array<IntakeVlanAttachment>` | List of VLAN attachments. As of now there are always 2 attachments, but it is going to change in ... |
| `vlanSameProject` | `boolean` | Whether the VLAN attachment pair is located in the same project. |
| `vrf` | `string` | Optional. The name of a pre-existing Vrf that the network should be attached to. Format is `vrfs/... |

### `NetworkMountPoint`

Mount point for a network.

| Property | Type | Description |
|----------|------|-------------|
| `defaultGateway` | `boolean` | Network should be a default gateway. |
| `instance` | `string` | Instance to attach network to. |
| `ipAddress` | `string` | Ip address of the server. |
| `logicalInterface` | `string` | Logical interface to detach from. |

### `NetworkUsage`

Network with all used IP addresses.

| Property | Type | Description |
|----------|------|-------------|
| `network` | `Network` | Network. |
| `usedIps` | `array<string>` | All used IP addresses in this network. |

### `NfsExport`

A NFS export entry.

| Property | Type | Description |
|----------|------|-------------|
| `allowDev` | `boolean` | Allow dev flag in NfsShare AllowedClientsRequest. |
| `allowSuid` | `boolean` | Allow the setuid flag. |
| `cidr` | `string` | A CIDR range. |
| `machineId` | `string` | Either a single machine, identified by an ID, or a comma-separated list of machine IDs. |
| `networkId` | `string` | Network to use to publish the export. |
| `noRootSquash` | `boolean` | Disable root squashing, which is a feature of NFS. Root squash is a special mapping of the remote... |
| `permissions` | `string` | Export permissions. |

### `NfsShare`

An NFS share.

| Property | Type | Description |
|----------|------|-------------|
| `allowedClients` | `array<AllowedClient>` | List of allowed access points. |
| `id` | `string` | Output only. An identifier for the NFS share, generated by the backend. This is the same value as... |
| `labels` | `object` | Labels as key value pairs. |
| `name` | `string` | Immutable. The name of the NFS share. |
| `nfsShareId` | `string` | Output only. An identifier for the NFS share, generated by the backend. This field will be deprec... |
| `pod` | `string` | Immutable. Pod name. Pod is an independent part of infrastructure. NFSShare can only be connected... |
| `requestedSizeGib` | `string` | The requested size, in GiB. |
| `state` | `string` | Output only. The state of the NFS share. |
| `storageType` | `string` | Immutable. The storage type of the underlying volume. |
| `volume` | `string` | Output only. The underlying volume of the share. Created automatically during provisioning. |

### `OSImage`

Operation System image.

| Property | Type | Description |
|----------|------|-------------|
| `applicableInstanceTypes` | `array<string>` | Instance types this image is applicable to. [Available types](https://cloud.google.com/bare-metal... |
| `code` | `string` | OS Image code. |
| `description` | `string` | OS Image description. |
| `name` | `string` | Output only. OS Image's unique name. |
| `supportedNetworkTemplates` | `array<string>` | Network templates that can be used with this OS Image. |

### `Operation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `Status` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `ProvisioningConfig`

A provisioning configuration.

| Property | Type | Description |
|----------|------|-------------|
| `cloudConsoleUri` | `string` | Output only. URI to Cloud Console UI view of this provisioning config. |
| `customId` | `string` | Optional. The user-defined identifier of the provisioning config. |
| `email` | `string` | Email provided to send a confirmation with provisioning config to. Deprecated in favour of email ... |
| `handoverServiceAccount` | `string` | A service account to enable customers to access instance credentials upon handover. |
| `instances` | `array<InstanceConfig>` | Instances to be created. |
| `location` | `string` | Optional. Location name of this ProvisioningConfig. It is optional only for Intake UI transition ... |
| `name` | `string` | Output only. The system-generated name of the provisioning config. This follows the UUID format. |
| `networks` | `array<NetworkConfig>` | Networks to be created. |
| `pod` | `string` | Optional. Pod name. Pod is an independent part of infrastructure. Instance can be connected to th... |
| `state` | `string` | Output only. State of ProvisioningConfig. |
| `statusMessage` | `string` | Optional status messages associated with the FAILED state. |
| `ticketId` | `string` | A generated ticket id to track provisioning request. |
| `updateTime` | `string` | Output only. Last update timestamp. |
| `volumes` | `array<VolumeConfig>` | Volumes to be created. |
| `vpcScEnabled` | `boolean` | If true, VPC SC is enabled for the cluster. |

### `ProvisioningQuota`

A provisioning quota for a given project.

| Property | Type | Description |
|----------|------|-------------|
| `assetType` | `string` | The asset type of this provisioning quota. |
| `availableCount` | `integer` | The available count of the provisioning quota. |
| `gcpService` | `string` | The gcp service of the provisioning quota. |
| `instanceQuota` | `InstanceQuota` | Instance quota. |
| `location` | `string` | The specific location of the provisioining quota. |
| `name` | `string` | Output only. The name of the provisioning quota. |
| `networkBandwidth` | `string` | Network bandwidth, Gbps |
| `serverCount` | `string` | Server count. |
| `storageGib` | `string` | Storage size (GB). |

### `QosPolicy`

QOS policy parameters.

| Property | Type | Description |
|----------|------|-------------|
| `bandwidthGbps` | `number` | The bandwidth permitted by the QOS policy, in gbps. |

### `ReimageInstanceRequest`

Message requesting to perform reimage operation on a server.

| Property | Type | Description |
|----------|------|-------------|
| `kmsKeyVersion` | `string` | Optional. Name of the KMS crypto key version used to encrypt the initial passwords. The key has t... |
| `osImage` | `string` | Required. The OS image code of the image which will be used in the reimage operation. |
| `sshKeys` | `array<string>` | Optional. List of SSH Keys used during reimaging an instance. |

### `RenameInstanceRequest`

Message requesting rename of a server.

| Property | Type | Description |
|----------|------|-------------|
| `newInstanceId` | `string` | Required. The new `id` of the instance. |

### `RenameNetworkRequest`

Message requesting rename of a server.

| Property | Type | Description |
|----------|------|-------------|
| `newNetworkId` | `string` | Required. The new `id` of the network. |

### `RenameNfsShareRequest`

Message requesting rename of a server.

| Property | Type | Description |
|----------|------|-------------|
| `newNfsshareId` | `string` | Required. The new `id` of the nfsshare. |

### `RenameVolumeRequest`

Message requesting rename of a server.

| Property | Type | Description |
|----------|------|-------------|
| `newVolumeId` | `string` | Required. The new `id` of the volume. |

### `ResetInstanceRequest`

Message requesting to reset a server.

### `ResetInstanceResponse`

Response message from resetting a server.

### `ResizeVolumeRequest`

Request for emergency resize Volume.

| Property | Type | Description |
|----------|------|-------------|
| `sizeGib` | `string` | New Volume size, in GiB. |

### `RestoreVolumeSnapshotRequest`

Message for restoring a volume snapshot.

### `SSHKey`

An SSH key, used for authorizing with the interactive serial console feature.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Output only. The name of this SSH key. Currently, the only valid value for the location is "global". |
| `publicKey` | `string` | The public SSH key. This must be in OpenSSH .authorized_keys format. |

### `ServerNetworkTemplate`

Network template.

| Property | Type | Description |
|----------|------|-------------|
| `applicableInstanceTypes` | `array<string>` | Instance types this template is applicable to. |
| `logicalInterfaces` | `array<GoogleCloudBaremetalsolutionV2ServerNetworkTemplateLogicalInterface>` | Logical interfaces. |
| `name` | `string` | Output only. Template's unique name. The full resource name follows the pattern: `projects/{proje... |

### `SnapshotReservationDetail`

Details about snapshot space reservation and usage on the storage volume.

| Property | Type | Description |
|----------|------|-------------|
| `reservedSpaceGib` | `string` | The space on this storage volume reserved for snapshots, shown in GiB. |
| `reservedSpacePercent` | `integer` | Percent of the total Volume size reserved for snapshot copies. Enabling snapshots requires reserv... |
| `reservedSpaceRemainingGib` | `string` | The amount, in GiB, of available space in this storage volume's reserved snapshot space. |
| `reservedSpaceUsedPercent` | `integer` | The percent of snapshot space on this storage volume actually being used by the snapshot copies. ... |

### `StartInstanceRequest`

Message requesting to start a server.

### `StartInstanceResponse`

Response message from starting a server.

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `StopInstanceRequest`

Message requesting to stop a server.

### `StopInstanceResponse`

Response message from stopping a server.

### `SubmitProvisioningConfigRequest`

Request for SubmitProvisioningConfig.

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | Optional. Email provided to send a confirmation with provisioning config to. |
| `provisioningConfig` | `ProvisioningConfig` | Required. The ProvisioningConfig to create. |

### `SubmitProvisioningConfigResponse`

Response for SubmitProvisioningConfig.

| Property | Type | Description |
|----------|------|-------------|
| `provisioningConfig` | `ProvisioningConfig` | The submitted provisioning config. |

### `UserAccount`

User account provisioned for the customer.

| Property | Type | Description |
|----------|------|-------------|
| `encryptedPassword` | `string` | Encrypted initial password value. |
| `kmsKeyVersion` | `string` | KMS CryptoKey Version used to encrypt the password. |

### `VRF`

A network VRF.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The name of the VRF. |
| `qosPolicy` | `QosPolicy` | The QOS policy applied to this VRF. The value is only meaningful when all the vlan attachments ha... |
| `state` | `string` | The possible state of VRF. |
| `vlanAttachments` | `array<VlanAttachment>` | The list of VLAN attachments for the VRF. |

### `VlanAttachment`

VLAN attachment details.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | Immutable. The identifier of the attachment within vrf. |
| `interconnectAttachment` | `string` | Optional. The name of the vlan attachment within vrf. This is of the form projects/{project_numbe... |
| `pairingKey` | `string` | Input only. Pairing key. |
| `peerIp` | `string` | The peer IP of the attachment. |
| `peerVlanId` | `string` | The peer vlan ID of the attachment. |
| `qosPolicy` | `QosPolicy` | The QOS policy applied to this VLAN attachment. This value should be preferred to using qos at vr... |
| `routerIp` | `string` | The router IP of the attachment. |

### `Volume`

A storage volume.

| Property | Type | Description |
|----------|------|-------------|
| `attached` | `boolean` | Output only. Is the Volume attached at at least one instance. This field is a lightweight counter... |
| `autoGrownSizeGib` | `string` | The size, in GiB, that this storage volume has expanded as a result of an auto grow policy. In th... |
| `bootVolume` | `boolean` | Output only. Whether this volume is a boot volume. A boot volume is one which contains a boot LUN. |
| `currentSizeGib` | `string` | The current size of this storage volume, in GiB, including space reserved for snapshots. This siz... |
| `emergencySizeGib` | `string` | Additional emergency size that was requested for this Volume, in GiB. current_size_gib includes t... |
| `expireTime` | `string` | Output only. Time after which volume will be fully deleted. It is filled only for volumes in COOL... |
| `id` | `string` | An identifier for the `Volume`, generated by the backend. |
| `instances` | `array<string>` | Output only. Instances this Volume is attached to. This field is set only in Get requests. |
| `labels` | `object` | Labels as key value pairs. |
| `maxSizeGib` | `string` | Maximum size volume can be expanded to in case of evergency, in GiB. |
| `name` | `string` | Output only. The resource name of this `Volume`. Resource names are schemeless URIs that follow t... |
| `notes` | `string` | Input only. User-specified notes for new Volume. Used to provision Volumes that require manual in... |
| `originallyRequestedSizeGib` | `string` | Originally requested size, in GiB. |
| `performanceTier` | `string` | Immutable. Performance tier of the Volume. Default is SHARED. |
| `pod` | `string` | Immutable. Pod name. Pod is an independent part of infrastructure. Volume can only be connected t... |
| `protocol` | `string` | Output only. Storage protocol for the Volume. |
| `remainingSpaceGib` | `string` | The space remaining in the storage volume for new LUNs, in GiB, excluding space reserved for snap... |
| `requestedSizeGib` | `string` | The requested size of this storage volume, in GiB. |
| `snapshotAutoDeleteBehavior` | `string` | The behavior to use when snapshot reserved space is full. |
| `snapshotEnabled` | `boolean` | Whether snapshots are enabled. |
| `snapshotReservationDetail` | `SnapshotReservationDetail` | Details about snapshot space reservation and usage on the storage volume. |
| `state` | `string` | The state of this storage volume. |
| `storageType` | `string` | The storage type for this volume. |
| `workloadProfile` | `string` | The workload profile for the volume. |

### `VolumeConfig`

Configuration parameters for a new volume.

| Property | Type | Description |
|----------|------|-------------|
| `gcpService` | `string` | The GCP service of the storage volume. Available gcp_service are in https://cloud.google.com/bare... |
| `id` | `string` | A transient unique identifier to identify a volume within an ProvisioningConfig request. |
| `lunRanges` | `array<LunRange>` | LUN ranges to be configured. Set only when protocol is PROTOCOL_FC. |
| `machineIds` | `array<string>` | Machine ids connected to this volume. Set only when protocol is PROTOCOL_FC. |
| `name` | `string` | Output only. The name of the volume config. |
| `nfsExports` | `array<NfsExport>` | NFS exports. Set only when protocol is PROTOCOL_NFS. |
| `performanceTier` | `string` | Performance tier of the Volume. Default is SHARED. |
| `protocol` | `string` | Volume protocol. |
| `sizeGb` | `integer` | The requested size of this volume, in GB. |
| `snapshotsEnabled` | `boolean` | Whether snapshots should be enabled. |
| `type` | `string` | The type of this Volume. |
| `userNote` | `string` | User note field, it can be used by customers to add additional information for the BMS Ops team . |

### `VolumeSnapshot`

A snapshot of a volume. Only boot volumes can have snapshots.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The creation time of the snapshot. |
| `description` | `string` | The description of the snapshot. |
| `id` | `string` | Output only. An identifier for the snapshot, generated by the backend. |
| `name` | `string` | The name of the snapshot. |
| `storageVolume` | `string` | Output only. The name of the volume which this snapshot belongs to. |
| `type` | `string` | Output only. The type of the snapshot which indicates whether it was scheduled or manual/ad-hoc. |

