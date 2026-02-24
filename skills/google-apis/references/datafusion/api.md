# Cloud Data Fusion API - API Reference

**Version**: `v1` | **Methods**: 19 | **Schemas**: 35

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `datafusion.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. |
| `datafusion.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `datafusion.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `datafusion.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `datafusion.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `datafusion.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `datafusion.projects.locations.versions.list` | GET | `v1/{+parent}/versions` | Lists possible versions for Data Fusion instances in the specified project and location. |
| `datafusion.projects.locations.instances.list` | GET | `v1/{+parent}/instances` | Lists Data Fusion instances in the specified project and location. |
| `datafusion.projects.locations.instances.get` | GET | `v1/{+name}` | Gets details of a single Data Fusion instance. |
| `datafusion.projects.locations.instances.create` | POST | `v1/{+parent}/instances` | Creates a new Data Fusion instance in the specified project and location. |
| `datafusion.projects.locations.instances.delete` | DELETE | `v1/{+name}` | Deletes a single Date Fusion instance. |
| `datafusion.projects.locations.instances.patch` | PATCH | `v1/{+name}` | Updates a single Data Fusion instance. |
| `datafusion.projects.locations.instances.restart` | POST | `v1/{+name}:restart` | Restart a single Data Fusion instance. At the end of an operation instance is fully restarted. |
| `datafusion.projects.locations.instances.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `datafusion.projects.locations.instances.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `datafusion.projects.locations.instances.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `datafusion.projects.locations.instances.dnsPeerings.create` | POST | `v1/{+parent}/dnsPeerings` | Creates DNS peering on the given resource. |
| `datafusion.projects.locations.instances.dnsPeerings.delete` | DELETE | `v1/{+name}` | Deletes DNS peering on the given resource. |
| `datafusion.projects.locations.instances.dnsPeerings.list` | GET | `v1/{+parent}/dnsPeerings` | Lists DNS peerings for a given resource. |

### `datafusion.projects.locations.list`

**GET** `v1/{+name}/locations`

Lists information about the supported locations for this service.

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
const res = await datafusion.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datafusion.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await datafusion.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datafusion.projects.locations.operations.list`

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
const res = await datafusion.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datafusion.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await datafusion.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datafusion.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await datafusion.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datafusion.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await datafusion.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datafusion.projects.locations.versions.list`

**GET** `v1/{+parent}/versions`

Lists possible versions for Data Fusion instances in the specified project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location for which to retrieve instance information in the format projects/{project}/locati... |
| `latestPatchOnly` | `boolean` | query | No | Whether or not to return the latest patch of every available minor version. If true, only the latest patch will be re... |
| `pageSize` | `integer` | query | No | The maximum number of items to return. |
| `pageToken` | `string` | query | No | The next_page_token value to use if there are additional results to retrieve for this list request. |

**Response**: `ListAvailableVersionsResponse`

```typescript
const res = await datafusion.versions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datafusion.projects.locations.instances.list`

**GET** `v1/{+parent}/instances`

Lists Data Fusion instances in the specified project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location for which to retrieve instance information in the format projects/{project}/locati... |
| `filter` | `string` | query | No | List filter. |
| `orderBy` | `string` | query | No | Sort results. Supported values are "name", "name desc", or "" (unsorted). |
| `pageSize` | `integer` | query | No | The maximum number of items to return. |
| `pageToken` | `string` | query | No | The next_page_token value to use if there are additional results to retrieve for this list request. |

**Response**: `ListInstancesResponse`

```typescript
const res = await datafusion.instances.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datafusion.projects.locations.instances.get`

**GET** `v1/{+name}`

Gets details of a single Data Fusion instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The instance resource name in the format projects/{project}/locations/{location}/instances/{instance}. |

**Response**: `Instance`

```typescript
const res = await datafusion.instances.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datafusion.projects.locations.instances.create`

**POST** `v1/{+parent}/instances`

Creates a new Data Fusion instance in the specified project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The instance's project and location in the format projects/{project}/locations/{location}. |
| `instanceId` | `string` | query | No | Required. The name of the instance to create. Instance name can only contain lowercase alphanumeric characters and hy... |

**Request body**: `Instance`

**Response**: `Operation`

```typescript
const res = await datafusion.instances.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datafusion.projects.locations.instances.delete`

**DELETE** `v1/{+name}`

Deletes a single Date Fusion instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The instance resource name in the format projects/{project}/locations/{location}/instances/{instance} |
| `force` | `boolean` | query | No | Optional. If set to true, any nested resources from this instance will also be deleted. |

**Response**: `Operation`

```typescript
const res = await datafusion.instances.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datafusion.projects.locations.instances.patch`

**PATCH** `v1/{+name}`

Updates a single Data Fusion instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The name of this instance is in the form of projects/{project}/locations/{location}/instances/{instance}. |
| `updateMask` | `string` | query | No | Field mask is used to specify the fields that the update will overwrite in an instance resource. The fields specified... |

**Request body**: `Instance`

**Response**: `Operation`

```typescript
const res = await datafusion.instances.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datafusion.projects.locations.instances.restart`

**POST** `v1/{+name}:restart`

Restart a single Data Fusion instance. At the end of an operation instance is fully restarted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the Data Fusion instance which need to be restarted in the form of projects/{project}/locations/{lo... |

**Request body**: `RestartInstanceRequest`

**Response**: `Operation`

```typescript
const res = await datafusion.instances.restart({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datafusion.projects.locations.instances.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await datafusion.instances.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datafusion.projects.locations.instances.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await datafusion.instances.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datafusion.projects.locations.instances.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await datafusion.instances.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datafusion.projects.locations.instances.dnsPeerings.create`

**POST** `v1/{+parent}/dnsPeerings`

Creates DNS peering on the given resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource on which DNS peering will be created. |
| `dnsPeeringId` | `string` | query | No | Required. The name of the peering to create. |

**Request body**: `DnsPeering`

**Response**: `DnsPeering`

```typescript
const res = await datafusion.dnsPeerings.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datafusion.projects.locations.instances.dnsPeerings.delete`

**DELETE** `v1/{+name}`

Deletes DNS peering on the given resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the DNS peering zone to delete. Format: projects/{project}/locations/{location}/instances/{inst... |

**Response**: `Empty`

```typescript
const res = await datafusion.dnsPeerings.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datafusion.projects.locations.instances.dnsPeerings.list`

**GET** `v1/{+parent}/dnsPeerings`

Lists DNS peerings for a given resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of dns peerings. Format: projects/{project}/locations/{location}/ins... |
| `pageSize` | `integer` | query | No | The maximum number of dns peerings to return. The service may return fewer than this value. If unspecified, at most 5... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListDnsPeerings` call. Provide this to retrieve the subsequent page. When pag... |

**Response**: `ListDnsPeeringsResponse`

```typescript
const res = await datafusion.dnsPeerings.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `Accelerator`

Identifies Data Fusion accelerators for an instance.

| Property | Type | Description |
|----------|------|-------------|
| `acceleratorType` | `string` | Optional. The type of an accelator for a Cloud Data Fusion instance. |
| `state` | `string` | Output only. The state of the accelerator. |

### `AuditConfig`

Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both `allServices` and a specific service, the union of the two AuditConfigs is used for that service: the log_types specified in each AuditConfig are enabled, and the exempted_members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { "audit_configs": [ { "service": "allServices", "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" }, { "log_type": "ADMIN_READ" } ] }, { "service": "sampleservice.googleapis.com", "audit_log_configs": [ { "log_type": "DATA_READ" }, { "log_type": "DATA_WRITE", "exempted_members": [ "user:aliya@example.com" ] } ] } ] } For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com` from DATA_WRITE logging.

| Property | Type | Description |
|----------|------|-------------|
| `auditLogConfigs` | `array<AuditLogConfig>` | The configuration for logging of each type of permission. |
| `service` | `string` | Specifies a service that will be enabled for audit logging. For example, `storage.googleapis.com`... |

### `AuditLogConfig`

Provides the configuration for logging a type of permissions. Example: { "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.

| Property | Type | Description |
|----------|------|-------------|
| `exemptedMembers` | `array<string>` | Specifies the identities that do not cause logging for this type of permission. Follows the same ... |
| `logType` | `string` | The log type that this config enables. |

### `Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `CryptoKeyConfig`

The crypto key configuration. This field is used by the Customer-managed encryption keys (CMEK) feature.

| Property | Type | Description |
|----------|------|-------------|
| `keyReference` | `string` | Optional. The name of the key which is used to encrypt/decrypt customer data. For key in Cloud KM... |

### `DnsPeering`

DNS peering configuration. These configurations are used to create DNS peering with the customer Cloud DNS.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Optional description of the dns zone. |
| `domain` | `string` | Required. The dns name suffix of the zone. |
| `name` | `string` | Identifier. The resource name of the dns peering zone. Format: projects/{project}/locations/{loca... |
| `targetNetwork` | `string` | Optional. Optional target network to which dns peering should happen. |
| `targetProject` | `string` | Optional. Optional target project to which dns peering should happen. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `EventPublishConfig`

Confirguration of PubSubEventWriter.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Required. Option to enable Event Publishing. |
| `topic` | `string` | Required. The resource name of the Pub/Sub topic. Format: projects/{project_id}/topics/{topic_id} |

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `Instance`

Represents a Data Fusion instance.

| Property | Type | Description |
|----------|------|-------------|
| `accelerators` | `array<Accelerator>` | Output only. List of accelerators enabled for this CDF instance. |
| `apiEndpoint` | `string` | Output only. Endpoint on which the REST APIs is accessible. |
| `availableVersion` | `array<Version>` | Output only. Available versions that the instance can be upgraded to using UpdateInstanceRequest. |
| `createTime` | `string` | Output only. The time the instance was created. |
| `cryptoKeyConfig` | `CryptoKeyConfig` | Optional. The crypto key configuration. This field is used by the Customer-Managed Encryption Key... |
| `dataplexDataLineageIntegrationEnabled` | `boolean` | Optional. Option to enable the Dataplex Lineage Integration feature. |
| `dataprocServiceAccount` | `string` | Optional. User-managed service account to set on Dataproc when Cloud Data Fusion creates Dataproc... |
| `description` | `string` | Optional. A description of this instance. |
| `disabledReason` | `array<string>` | Output only. If the instance state is DISABLED, the reason for disabling the instance. |
| `displayName` | `string` | Optional. Display name for an instance. |
| `enableRbac` | `boolean` | Optional. Option to enable granular role-based access control. |
| `enableStackdriverLogging` | `boolean` | Optional. Option to enable Dataproc Stackdriver Logging. |
| `enableStackdriverMonitoring` | `boolean` | Optional. Option to enable Stackdriver Monitoring. |
| `enableZoneSeparation` | `boolean` | Output only. Option to enable granular zone separation. |
| `eventPublishConfig` | `EventPublishConfig` | Optional. Option to enable and pass metadata for event publishing. |
| `gcsBucket` | `string` | Output only. Cloud Storage bucket generated by Data Fusion in the customer project. |
| `labels` | `object` | The resource labels for instance to use to annotate any related underlying resources such as Comp... |
| `loggingConfig` | `LoggingConfig` | Optional. The logging configuration for this instance. This field is supported only in CDF versio... |
| `maintenanceEvents` | `array<MaintenanceEvent>` | Output only. The maintenance events for this instance. |
| `maintenancePolicy` | `MaintenancePolicy` | Optional. Configure the maintenance policy for this instance. |
| `monitoringConfig` | `MonitoringConfig` | Optional. The monitoring configuration for this instance. |
| `name` | `string` | Output only. The name of this instance is in the form of projects/{project}/locations/{location}/... |
| `networkConfig` | `NetworkConfig` | Optional. Network configuration options. These are required when a private Data Fusion instance i... |
| `options` | `object` | Optional. Map of additional options used to configure the behavior of Data Fusion instance. |
| `p4ServiceAccount` | `string` | Output only. Service agent for the customer project. |
| `patchRevision` | `string` | Optional. Current patch revision of the Data Fusion. |
| `privateInstance` | `boolean` | Optional. Specifies whether the Data Fusion instance should be private. If set to true, all Data ... |
| `satisfiesPzi` | `boolean` | Output only. Reserved for future use. |
| `satisfiesPzs` | `boolean` | Output only. Reserved for future use. |
| `serviceAccount` | `string` | Output only. Deprecated. Use tenant_project_id instead to extract the tenant project ID. |
| `serviceEndpoint` | `string` | Output only. Endpoint on which the Data Fusion UI is accessible. |
| `state` | `string` | Output only. The current state of this Data Fusion instance. |
| `stateMessage` | `string` | Output only. Additional information about the current state of this Data Fusion instance if avail... |
| `tags` | `object` | Optional. Input only. Immutable. Tag keys/values directly bound to this resource. For example: "1... |
| `tenantProjectId` | `string` | Output only. The name of the tenant project. |
| `type` | `string` | Required. Instance type. |
| `updateTime` | `string` | Output only. The time the instance was last updated. |
| `version` | `string` | Optional. Current version of the Data Fusion. Only specifiable in Update. |
| `workforceIdentityServiceEndpoint` | `string` | Output only. Endpoint on which the Data Fusion UI is accessible to third-party users |
| `zone` | `string` | Optional. Name of the zone in which the Data Fusion instance will be created. Only DEVELOPER inst... |

### `ListAvailableVersionsResponse`

Response message for the list available versions request.

| Property | Type | Description |
|----------|------|-------------|
| `availableVersions` | `array<Version>` | Represents a list of versions that are supported. Deprecated: Use versions field instead. |
| `nextPageToken` | `string` | Token to retrieve the next page of results or empty if there are no more results in the list. |
| `versions` | `array<Version>` | Represents a list of all versions. |

### `ListDnsPeeringsResponse`

Response message for list DNS peerings.

| Property | Type | Description |
|----------|------|-------------|
| `dnsPeerings` | `array<DnsPeering>` | List of dns peering. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `ListInstancesResponse`

Response message for the list instance request.

| Property | Type | Description |
|----------|------|-------------|
| `instances` | `array<Instance>` | Represents a list of Data Fusion instances. |
| `nextPageToken` | `string` | Token to retrieve the next page of results or empty if there are no more results in the list. |
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

### `LoggingConfig`

Logging configuration for a Data Fusion instance.

| Property | Type | Description |
|----------|------|-------------|
| `enableInstanceV2Logs` | `boolean` | Optional. Option to enable the InstanceV2 logging for this instance. This field is supported only... |
| `instanceCloudLoggingDisabled` | `boolean` | Optional. Option to determine whether instance logs should be written to Cloud Logging. By defaul... |

### `MaintenanceEvent`

Represents a maintenance event.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | Output only. The end time of the maintenance event provided in [RFC 3339](https://www.ietf.org/rf... |
| `startTime` | `string` | Output only. The start time of the maintenance event provided in [RFC 3339](https://www.ietf.org/... |
| `state` | `string` | Output only. The state of the maintenance event. |

### `MaintenancePolicy`

Maintenance policy of the instance.

| Property | Type | Description |
|----------|------|-------------|
| `maintenanceExclusionWindow` | `TimeWindow` | Optional. The maintenance exclusion window of the instance. |
| `maintenanceWindow` | `MaintenanceWindow` | Optional. The maintenance window of the instance. |

### `MaintenanceWindow`

Maintenance window of the instance.

| Property | Type | Description |
|----------|------|-------------|
| `recurringTimeWindow` | `RecurringTimeWindow` | Required. The recurring time window of the maintenance window. |

### `MonitoringConfig`

Monitoring configuration for a Data Fusion instance.

| Property | Type | Description |
|----------|------|-------------|
| `enableInstanceV2Metrics` | `boolean` | Optional. Option to enable the instance v2 metrics for this instance. This field is supported onl... |

### `NetworkConfig`

Network configuration for a Data Fusion instance. These configurations are used for peering with the customer network. Configurations are optional when a public Data Fusion instance is to be created. However, providing these configurations allows several benefits, such as reduced network latency while accessing the customer resources from managed Data Fusion instance nodes, as well as access to the customer on-prem resources.

| Property | Type | Description |
|----------|------|-------------|
| `connectionType` | `string` | Optional. Type of connection for establishing private IP connectivity between the Data Fusion cus... |
| `ipAllocation` | `string` | Optional. The IP range in CIDR notation to use for the managed Data Fusion instance nodes. This r... |
| `network` | `string` | Optional. Name of the network in the customer project with which the Tenant Project will be peere... |
| `privateServiceConnectConfig` | `PrivateServiceConnectConfig` | Optional. Configuration for Private Service Connect. This is required only when using connection ... |

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

Represents the metadata of a long-running operation.

| Property | Type | Description |
|----------|------|-------------|
| `additionalStatus` | `object` | Map to hold any additional status info for the operation If there is an accelerator being enabled... |
| `apiVersion` | `string` | API version used to start the operation. |
| `createTime` | `string` | The time the operation was created. |
| `endTime` | `string` | The time the operation finished running. |
| `requestedCancellation` | `boolean` | Identifies whether the user has requested cancellation of the operation. Operations that have suc... |
| `statusDetail` | `string` | Human-readable status of the operation if any. |
| `target` | `string` | Server-defined resource path for the target of the operation. |
| `verb` | `string` | Name of the verb executed by the operation. |

### `Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `auditConfigs` | `array<AuditConfig>` | Specifies cloud audit logging configuration for this policy. |
| `bindings` | `array<Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `PrivateServiceConnectConfig`

Configuration for using Private Service Connect to establish connectivity between the Data Fusion consumer project and the corresponding tenant project.

| Property | Type | Description |
|----------|------|-------------|
| `effectiveUnreachableCidrBlock` | `string` | Output only. The CIDR block to which the CDF instance can't route traffic to in the consumer proj... |
| `networkAttachment` | `string` | Required. The reference to the network attachment used to establish private connectivity. It will... |
| `unreachableCidrBlock` | `string` | Optional. Input only. The CIDR block to which the CDF instance can't route traffic to in the cons... |

### `RecurringTimeWindow`

Represents an arbitrary window of time that recurs.

| Property | Type | Description |
|----------|------|-------------|
| `recurrence` | `string` | Required. An RRULE with format [RFC-5545](https://tools.ietf.org/html/rfc5545#section-3.8.5.3) fo... |
| `window` | `TimeWindow` | Required. The window representing the start and end time of recurrences. This field ignores the d... |

### `RestartInstanceRequest`

Request message for restarting a Data Fusion instance.

### `SetIamPolicyRequest`

Request message for `SetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `Policy` | REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited ... |
| `updateMask` | `string` | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mas... |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `TestIamPermissionsRequest`

Request message for `TestIamPermissions` method.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | The set of permissions to check for the `resource`. Permissions with wildcards (such as `*` or `s... |

### `TestIamPermissionsResponse`

Response message for `TestIamPermissions` method.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | A subset of `TestPermissionsRequest.permissions` that the caller is allowed. |

### `TimeWindow`

Represents an arbitrary window of time.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | Required. The end time of the time window provided in [RFC 3339](https://www.ietf.org/rfc/rfc3339... |
| `startTime` | `string` | Required. The start time of the time window provided in [RFC 3339](https://www.ietf.org/rfc/rfc33... |

### `Version`

The Data Fusion version. This proto message stores information about certain Data Fusion version, which is used for Data Fusion version upgrade.

| Property | Type | Description |
|----------|------|-------------|
| `availableFeatures` | `array<string>` | Represents a list of available feature names for a given version. |
| `defaultVersion` | `boolean` | Whether this is currently the default version for Cloud Data Fusion |
| `type` | `string` | Type represents the release availability of the version |
| `versionNumber` | `string` | The version number of the Data Fusion instance, such as '6.0.1.0'. |

