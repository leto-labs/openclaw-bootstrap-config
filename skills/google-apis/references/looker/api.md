# Looker (Google Cloud core) API - API Reference

**Version**: `v1` | **Methods**: 19 | **Schemas**: 33

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `looker.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `looker.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `looker.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `looker.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `looker.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `looker.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `looker.projects.locations.instances.delete` | DELETE | `v1/{+name}` | Delete instance. |
| `looker.projects.locations.instances.get` | GET | `v1/{+name}` | Gets details of a single Instance. |
| `looker.projects.locations.instances.export` | POST | `v1/{+name}:export` | Export instance. |
| `looker.projects.locations.instances.restore` | POST | `v1/{+name}:restore` | Restore Looker instance. |
| `looker.projects.locations.instances.patch` | PATCH | `v1/{+name}` | Update Instance. |
| `looker.projects.locations.instances.restart` | POST | `v1/{+name}:restart` | Restart instance. |
| `looker.projects.locations.instances.list` | GET | `v1/{+parent}/instances` | Lists Instances in a given project and location. |
| `looker.projects.locations.instances.import` | POST | `v1/{+name}:import` | Import instance. |
| `looker.projects.locations.instances.create` | POST | `v1/{+parent}/instances` | Creates a new Instance in a given project and location. |
| `looker.projects.locations.instances.backups.create` | POST | `v1/{+parent}/backups` | Backup Looker instance. |
| `looker.projects.locations.instances.backups.get` | GET | `v1/{+name}` |  |
| `looker.projects.locations.instances.backups.list` | GET | `v1/{+parent}/backups` | List backups of Looker instance. |
| `looker.projects.locations.instances.backups.delete` | DELETE | `v1/{+name}` | Delete backup. |

### `looker.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await looker.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `looker.projects.locations.list`

**GET** `v1/{+name}/locations`

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
const res = await looker.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `looker.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await looker.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `looker.projects.locations.operations.list`

**GET** `v1/{+name}/operations`

Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation's parent resource. |
| `filter` | `string` | query | No | The standard list filter. |
| `pageSize` | `integer` | query | No | The standard list page size. |
| `pageToken` | `string` | query | No | The standard list page token. |
| `returnPartialSuccess` | `boolean` | query | No | When set to `true`, operations that are reachable are returned as normal, and those that are unreachable are returned... |

**Response**: `ListOperationsResponse`

```typescript
const res = await looker.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `looker.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await looker.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `looker.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await looker.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `looker.projects.locations.instances.delete`

**DELETE** `v1/{+name}`

Delete instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Format: `projects/{project}/locations/{location}/instances/{instance}`. |
| `force` | `boolean` | query | No | Whether to force cascading delete. |

**Response**: `Operation`

```typescript
const res = await looker.instances.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `looker.projects.locations.instances.get`

**GET** `v1/{+name}`

Gets details of a single Instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Format: `projects/{project}/locations/{location}/instances/{instance}`. |

**Response**: `Instance`

```typescript
const res = await looker.instances.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `looker.projects.locations.instances.export`

**POST** `v1/{+name}:export`

Export instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Format: `projects/{project}/locations/{location}/instances/{instance}`. |

**Request body**: `ExportInstanceRequest`

**Response**: `Operation`

```typescript
const res = await looker.instances.export({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `looker.projects.locations.instances.restore`

**POST** `v1/{+name}:restore`

Restore Looker instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Instance being restored Format: projects/{project}/locations/{location}/instances/{instance} |

**Request body**: `RestoreInstanceRequest`

**Response**: `Operation`

```typescript
const res = await looker.instances.restore({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `looker.projects.locations.instances.patch`

**PATCH** `v1/{+name}`

Update Instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Format: `projects/{project}/locations/{location}/instances/{instance}`. |
| `updateMask` | `string` | query | No | Required. Field mask used to specify the fields to be overwritten in the Instance resource by the update. The fields ... |

**Request body**: `Instance`

**Response**: `Operation`

```typescript
const res = await looker.instances.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `looker.projects.locations.instances.restart`

**POST** `v1/{+name}:restart`

Restart instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Format: `projects/{project}/locations/{location}/instances/{instance}`. |

**Request body**: `RestartInstanceRequest`

**Response**: `Operation`

```typescript
const res = await looker.instances.restart({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `looker.projects.locations.instances.list`

**GET** `v1/{+parent}/instances`

Lists Instances in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Format: `projects/{project}/locations/{location}`. |
| `pageSize` | `integer` | query | No | The maximum number of instances to return. If unspecified at most 256 will be returned. The maximum possible value is... |
| `pageToken` | `string` | query | No | A page token received from a previous ListInstancesRequest. |

**Response**: `ListInstancesResponse`

```typescript
const res = await looker.instances.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `looker.projects.locations.instances.import`

**POST** `v1/{+name}:import`

Import instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Format: `projects/{project}/locations/{location}/instances/{instance}`. |

**Request body**: `ImportInstanceRequest`

**Response**: `Operation`

```typescript
const res = await looker.instances.import({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `looker.projects.locations.instances.create`

**POST** `v1/{+parent}/instances`

Creates a new Instance in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Format: `projects/{project}/locations/{location}`. |
| `instanceId` | `string` | query | No | Required. The unique instance identifier. Must contain only lowercase letters, numbers, or hyphens, with the first ch... |

**Request body**: `Instance`

**Response**: `Operation`

```typescript
const res = await looker.instances.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `looker.projects.locations.instances.backups.create`

**POST** `v1/{+parent}/backups`

Backup Looker instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Format: projects/{project}/locations/{location}/instances/{instance} |

**Request body**: `InstanceBackup`

**Response**: `Operation`

```typescript
const res = await looker.backups.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `looker.projects.locations.instances.backups.get`

**GET** `v1/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Format: `projects/{project}/locations/{location}/instances/{instance}/backups/{backup}`. |

**Response**: `InstanceBackup`

```typescript
const res = await looker.backups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `looker.projects.locations.instances.backups.list`

**GET** `v1/{+parent}/backups`

List backups of Looker instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Format: projects/{project}/locations/{location}/instances/{instance}. |
| `orderBy` | `string` | query | No | Sort results. Default order is "create_time desc". Other supported fields are "state" and "expire_time". https://goog... |
| `pageSize` | `integer` | query | No | The maximum number of instances to return. |
| `pageToken` | `string` | query | No | A page token received from a previous ListInstances request. |

**Response**: `ListInstanceBackupsResponse`

```typescript
const res = await looker.backups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `looker.projects.locations.instances.backups.delete`

**DELETE** `v1/{+name}`

Delete backup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Format: projects/{project}/locations/{location}/instances/{instance}/backups/{backup} |

**Response**: `Operation`

```typescript
const res = await looker.backups.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AdminSettings`

Looker instance Admin settings fields.

| Property | Type | Description |
|----------|------|-------------|
| `allowedEmailDomains` | `array<string>` | Email domain allowlist for the instance. |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `ControlledEgressConfig`

Controlled egress configuration.

| Property | Type | Description |
|----------|------|-------------|
| `egressFqdns` | `array<string>` | Optional. List of fully qualified domain names to be added to the allowlist for outbound traffic. |
| `marketplaceEnabled` | `boolean` | Optional. Whether marketplace is enabled. |
| `webProxyIps` | `array<string>` | Output only. The list of IP addresses used by Secure Web Proxy for outbound traffic. |

### `CustomDomain`

Custom domain information.

| Property | Type | Description |
|----------|------|-------------|
| `domain` | `string` | Domain name. |
| `state` | `string` | Domain state. |

### `Date`

Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by ... |
| `month` | `integer` | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `year` | `integer` | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

### `DenyMaintenancePeriod`

Specifies the maintenance denial period.

| Property | Type | Description |
|----------|------|-------------|
| `endDate` | `Date` | Required. End date of the deny maintenance period. |
| `startDate` | `Date` | Required. Start date of the deny maintenance period. |
| `time` | `TimeOfDay` | Required. Time in UTC when the period starts and ends. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `EncryptionConfig`

Encryption configuration (i.e. CMEK).

| Property | Type | Description |
|----------|------|-------------|
| `kmsKeyName` | `string` | Name of the CMEK key in KMS (input parameter). |
| `kmsKeyNameVersion` | `string` | Output only. Full name and version of the CMEK key currently in use to encrypt Looker data. Forma... |
| `kmsKeyState` | `string` | Output only. Status of the CMEK key. |

### `ExportEncryptionConfig`

Configuration for Encryption - e.g. CMEK.

| Property | Type | Description |
|----------|------|-------------|
| `kmsKeyName` | `string` | Required. Name of the CMEK key in KMS. |

### `ExportInstanceRequest`

Request options for exporting data of an Instance.

| Property | Type | Description |
|----------|------|-------------|
| `encryptionConfig` | `ExportEncryptionConfig` | Required. Encryption configuration (CMEK). For CMEK enabled instances it should be same as looker... |
| `gcsUri` | `string` | The path to the folder in Google Cloud Storage where the export will be stored. The URI is in the... |

### `ExportMetadata`

ExportMetadata represents the metadata of the exported artifacts. The metadata.json file in export artifact can be parsed as this message

| Property | Type | Description |
|----------|------|-------------|
| `exportEncryptionKey` | `ExportMetadataEncryptionKey` | Encryption key that was used to encrypt the export artifacts. |
| `filePaths` | `array<string>` | List of files created as part of export artifact (excluding the metadata). The paths are relative... |
| `lookerEncryptionKey` | `string` | Looker encryption key, encrypted with the provided export encryption key. This value will only be... |
| `lookerInstance` | `string` | Name of the exported instance. Format: projects/{project}/locations/{location}/instances/{instance} |
| `lookerPlatformEdition` | `string` | Platform edition of the exported instance. |
| `lookerVersion` | `string` | Version of instance when the export was created. |
| `source` | `string` | The source type of the migration. |

### `ExportMetadataEncryptionKey`

Encryption key details for the exported artifact.

| Property | Type | Description |
|----------|------|-------------|
| `cmek` | `string` | Name of the CMEK. |
| `version` | `string` | Version of the CMEK. |

### `ImportInstanceRequest`

Requestion options for importing looker data to an Instance

| Property | Type | Description |
|----------|------|-------------|
| `gcsUri` | `string` | Path to the import folder in Google Cloud Storage, in the form `gs://bucketName/folderName`. |

### `Instance`

A Looker instance.

| Property | Type | Description |
|----------|------|-------------|
| `adminSettings` | `AdminSettings` | Looker Instance Admin settings. |
| `classType` | `string` | Optional. Storage class of the instance. |
| `consumerNetwork` | `string` | Network name in the consumer project. Format: `projects/{project}/global/networks/{network}`. Not... |
| `controlledEgressConfig` | `ControlledEgressConfig` | Optional. Controlled egress configuration. |
| `controlledEgressEnabled` | `boolean` | Optional. Whether controlled egress is enabled on the Looker instance. |
| `createTime` | `string` | Output only. The time when the Looker instance provisioning was first requested. |
| `customDomain` | `CustomDomain` | Custom domain configuration for the instance. |
| `denyMaintenancePeriod` | `DenyMaintenancePeriod` | Maintenance denial period for this instance. |
| `egressPublicIp` | `string` | Output only. Public Egress IP (IPv4). |
| `encryptionConfig` | `EncryptionConfig` | Encryption configuration (CMEK). Only set if CMEK has been enabled on the instance. |
| `fipsEnabled` | `boolean` | Optional. Whether FIPS is enabled on the Looker instance. |
| `geminiEnabled` | `boolean` | Optional. Whether Gemini feature is enabled on the Looker instance or not. |
| `ingressPrivateIp` | `string` | Output only. Private Ingress IP (IPv4). |
| `ingressPublicIp` | `string` | Output only. Public Ingress IP (IPv4). |
| `lastDenyMaintenancePeriod` | `DenyMaintenancePeriod` | Output only. Last computed maintenance denial period for this instance. |
| `linkedLspProjectNumber` | `string` | Optional. Linked Google Cloud Project Number for Looker Studio Pro. |
| `lookerUri` | `string` | Output only. Looker instance URI which can be used to access the Looker Instance UI. |
| `lookerVersion` | `string` | Output only. The Looker version that the instance is using. |
| `maintenanceSchedule` | `MaintenanceSchedule` | Maintenance schedule for this instance. |
| `maintenanceWindow` | `MaintenanceWindow` | Maintenance window for this instance. |
| `name` | `string` | Output only. Format: `projects/{project}/locations/{location}/instances/{instance}`. |
| `oauthConfig` | `OAuthConfig` | Looker instance OAuth login settings. |
| `periodicExportConfig` | `PeriodicExportConfig` | Optional. Configuration for periodic export. |
| `platformEdition` | `string` | Platform edition. |
| `privateIpEnabled` | `boolean` | Whether private IP is enabled on the Looker instance. |
| `pscConfig` | `PscConfig` | Optional. PSC configuration. Used when `psc_enabled` is true. |
| `pscEnabled` | `boolean` | Optional. Whether to use Private Service Connect (PSC) for private IP connectivity. If true, neit... |
| `publicIpEnabled` | `boolean` | Whether public IP is enabled on the Looker instance. |
| `reservedRange` | `string` | Name of a reserved IP address range within the Instance.consumer_network, to be used for private ... |
| `satisfiesPzi` | `boolean` | Output only. Reserved for future use. |
| `satisfiesPzs` | `boolean` | Output only. Reserved for future use. |
| `state` | `string` | Output only. The state of the instance. |
| `updateTime` | `string` | Output only. The time when the Looker instance was last updated. |
| `userMetadata` | `UserMetadata` | Optional. User metadata. |

### `InstanceBackup`

The details of a backup resource.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time when the backup was started. |
| `encryptionConfig` | `EncryptionConfig` | Output only. Current status of the CMEK encryption |
| `expireTime` | `string` | Output only. The time when the backup will be deleted. |
| `name` | `string` | Immutable. The relative resource name of the backup, in the following form: `projects/{project_nu... |
| `state` | `string` | Output only. The current state of the backup. |

### `ListInstanceBackupsResponse`

Response from listing Looker instance backups.

| Property | Type | Description |
|----------|------|-------------|
| `instanceBackups` | `array<InstanceBackup>` | The list of instances matching the request filters, up to the requested `page_size`. |
| `nextPageToken` | `string` | If provided, a page token that can look up the next `page_size` results. If empty, the results li... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListInstancesResponse`

Response from ListInstances.

| Property | Type | Description |
|----------|------|-------------|
| `instances` | `array<Instance>` | The list of instances matching the request filters, up to the requested ListInstancesRequest.page... |
| `nextPageToken` | `string` | If provided, a page token that can look up the next ListInstancesRequest.pageSize results. If emp... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListLocationsResponse`

The response message for Locations.ListLocations.

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<Location>` | A list of locations that matches the specified filter in the request. |
| `nextPageToken` | `string` | The standard List next-page token. |

### `ListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<Operation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

### `MaintenanceSchedule`

Published upcoming future maintenance schedule.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | The scheduled end time for the maintenance. |
| `startTime` | `string` | The scheduled start time for the maintenance. |

### `MaintenanceWindow`

Specifies the recurring maintenance window.

| Property | Type | Description |
|----------|------|-------------|
| `dayOfWeek` | `string` | Required. Day of the week for this MaintenanceWindow (in UTC). |
| `startTime` | `TimeOfDay` | Required. Time in UTC when the period starts. Maintenance will be scheduled within 60 minutes. |

### `OAuthConfig`

Looker instance OAuth login settings.

| Property | Type | Description |
|----------|------|-------------|
| `clientId` | `string` | Input only. Client ID from an external OAuth application. This is an input-only field, and thus w... |
| `clientSecret` | `string` | Input only. Client secret from an external OAuth application. This is an input-only field, and th... |
| `sharedOauthClientEnabled` | `boolean` | Optional. Whether to use the shared OAuth client. Instances specifying this field do not need to ... |

### `Operation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `Status` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `OperationMetadata`

Represents the metadata of the long-running operation.

| Property | Type | Description |
|----------|------|-------------|
| `apiVersion` | `string` | API version used to start the operation. |
| `createTime` | `string` | The time the operation was created. |
| `endTime` | `string` | The time the operation finished running. |
| `requestedCancellation` | `boolean` | Identifies whether the user has requested cancellation of the operation. Operations that have suc... |
| `statusMessage` | `string` | Human-readable status of the operation, if any. |
| `target` | `string` | Server-defined resource path for the target of the operation. |
| `verb` | `string` | Name of the verb executed by the operation. |

### `PeriodicExportConfig`

Configuration for periodic export.

| Property | Type | Description |
|----------|------|-------------|
| `gcsUri` | `string` | Required. Cloud Storage bucket URI for periodic export. Format: gs://{bucket_name} |
| `kmsKey` | `string` | Required. Name of the CMEK key in KMS. Format: projects/{project}/locations/{location}/keyRings/{... |
| `startTime` | `TimeOfDay` | Required. Time in UTC to start the periodic export job. |

### `PscConfig`

Information for Private Service Connect (PSC) setup for a Looker instance.

| Property | Type | Description |
|----------|------|-------------|
| `allowedVpcs` | `array<string>` | Optional. List of VPCs that are allowed ingress into looker. Format: projects/{project}/global/ne... |
| `lookerServiceAttachmentUri` | `string` | Output only. URI of the Looker service attachment. |
| `serviceAttachments` | `array<ServiceAttachment>` | Optional. List of egress service attachment configurations. |

### `RestartInstanceRequest`

Request options for restarting an instance.

### `RestoreInstanceRequest`

Request options for restoring an instance

| Property | Type | Description |
|----------|------|-------------|
| `backup` | `string` | Required. Backup being used to restore the instance Format: projects/{project}/locations/{locatio... |

### `ServiceAttachment`

Service attachment configuration.

| Property | Type | Description |
|----------|------|-------------|
| `connectionStatus` | `string` | Output only. Connection status. |
| `failureReason` | `string` | Output only. Reason the service attachment creation failed. This value will only be populated if ... |
| `localFqdn` | `string` | Optional. Fully qualified domain name that will be used in the private DNS record created for the... |
| `localFqdns` | `array<string>` | Optional. List of fully qualified domain names that will be used in the private DNS record create... |
| `targetServiceAttachmentUri` | `string` | Required. URI of the service attachment to connect to. Format: projects/{project}/regions/{region... |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `TimeOfDay`

Represents a time of day. The date and time zone are either not significant or are specified elsewhere. An API may choose to allow leap seconds. Related types are google.type.Date and `google.protobuf.Timestamp`.

| Property | Type | Description |
|----------|------|-------------|
| `hours` | `integer` | Hours of a day in 24 hour format. Must be greater than or equal to 0 and typically must be less t... |
| `minutes` | `integer` | Minutes of an hour. Must be greater than or equal to 0 and less than or equal to 59. |
| `nanos` | `integer` | Fractions of seconds, in nanoseconds. Must be greater than or equal to 0 and less than or equal t... |
| `seconds` | `integer` | Seconds of a minute. Must be greater than or equal to 0 and typically must be less than or equal ... |

### `UserMetadata`

Metadata about users for a Looker instance.

| Property | Type | Description |
|----------|------|-------------|
| `additionalDeveloperUserCount` | `integer` | Optional. The number of additional developer users the instance owner has purchased. |
| `additionalStandardUserCount` | `integer` | Optional. The number of additional standard users the instance owner has purchased. |
| `additionalViewerUserCount` | `integer` | Optional. The number of additional viewer users the instance owner has purchased. |

