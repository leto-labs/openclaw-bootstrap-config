# Cloud Memorystore for Memcached API - API Reference

**Version**: `v1` | **Methods**: 17 | **Schemas**: 48

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `memcache.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `memcache.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `memcache.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `memcache.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `memcache.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `memcache.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `memcache.projects.locations.instances.updateParameters` | PATCH | `v1/{+name}:updateParameters` | Updates the defined Memcached parameters for an existing instance. This method only stages the pa... |
| `memcache.projects.locations.instances.delete` | DELETE | `v1/{+name}` | Deletes a single Instance. |
| `memcache.projects.locations.instances.applyParameters` | POST | `v1/{+name}:applyParameters` | `ApplyParameters` restarts the set of specified nodes in order to update them to the current set ... |
| `memcache.projects.locations.instances.getTags` | GET | `v1/{+name}:getTags` | Returns tags directly bound to a GCP resource. |
| `memcache.projects.locations.instances.create` | POST | `v1/{+parent}/instances` | Creates a new Instance in a given location. |
| `memcache.projects.locations.instances.setTags` | POST | `v1/{+name}:setTags` | Updates tags directly bound to a GCP resource. |
| `memcache.projects.locations.instances.rescheduleMaintenance` | POST | `v1/{+instance}:rescheduleMaintenance` | Reschedules upcoming maintenance event. |
| `memcache.projects.locations.instances.get` | GET | `v1/{+name}` | Gets details of a single Instance. |
| `memcache.projects.locations.instances.upgrade` | POST | `v1/{+name}:upgrade` | Upgrades the Memcache instance to a newer memcached engine version specified in the request. |
| `memcache.projects.locations.instances.list` | GET | `v1/{+parent}/instances` | Lists Instances in a given location. |
| `memcache.projects.locations.instances.patch` | PATCH | `v1/{+name}` | Updates an existing Instance in a given project and location. |

### `memcache.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await memcache.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `memcache.projects.locations.list`

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
const res = await memcache.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `memcache.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await memcache.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `memcache.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await memcache.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `memcache.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await memcache.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `memcache.projects.locations.operations.list`

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
const res = await memcache.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `memcache.projects.locations.instances.updateParameters`

**PATCH** `v1/{+name}:updateParameters`

Updates the defined Memcached parameters for an existing instance. This method only stages the parameters, it must be followed by `ApplyParameters` to apply the parameters to nodes of the Memcached instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the Memcached instance for which the parameters should be updated. |

**Request body**: `UpdateParametersRequest`

**Response**: `Operation`

```typescript
const res = await memcache.instances.updateParameters({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `memcache.projects.locations.instances.delete`

**DELETE** `v1/{+name}`

Deletes a single Instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Memcached instance resource name in the format: `projects/{project_id}/locations/{location_id}/instances/{i... |

**Response**: `Operation`

```typescript
const res = await memcache.instances.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `memcache.projects.locations.instances.applyParameters`

**POST** `v1/{+name}:applyParameters`

`ApplyParameters` restarts the set of specified nodes in order to update them to the current set of parameters for the Memcached Instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the Memcached instance for which parameter group updates should be applied. |

**Request body**: `ApplyParametersRequest`

**Response**: `Operation`

```typescript
const res = await memcache.instances.applyParameters({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `memcache.projects.locations.instances.getTags`

**GET** `v1/{+name}:getTags`

Returns tags directly bound to a GCP resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the service resource. |

**Response**: `GetTagsResponse`

```typescript
const res = await memcache.instances.getTags({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `memcache.projects.locations.instances.create`

**POST** `v1/{+parent}/instances`

Creates a new Instance in a given location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the instance location using the form: `projects/{project_id}/locations/{location_id}` ... |
| `instanceId` | `string` | query | No | Required. The logical name of the Memcached instance in the user project with the following restrictions: * Must cont... |

**Request body**: `Instance`

**Response**: `Operation`

```typescript
const res = await memcache.instances.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `memcache.projects.locations.instances.setTags`

**POST** `v1/{+name}:setTags`

Updates tags directly bound to a GCP resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the service resource. |

**Request body**: `SetTagsRequest`

**Response**: `SetTagsResponse`

```typescript
const res = await memcache.instances.setTags({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `memcache.projects.locations.instances.rescheduleMaintenance`

**POST** `v1/{+instance}:rescheduleMaintenance`

Reschedules upcoming maintenance event.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `instance` | `string` | path | Yes | Required. Memcache instance resource name using the form: `projects/{project_id}/locations/{location_id}/instances/{i... |

**Request body**: `RescheduleMaintenanceRequest`

**Response**: `Operation`

```typescript
const res = await memcache.instances.rescheduleMaintenance({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `memcache.projects.locations.instances.get`

**GET** `v1/{+name}`

Gets details of a single Instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Memcached instance resource name in the format: `projects/{project_id}/locations/{location_id}/instances/{i... |

**Response**: `Instance`

```typescript
const res = await memcache.instances.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `memcache.projects.locations.instances.upgrade`

**POST** `v1/{+name}:upgrade`

Upgrades the Memcache instance to a newer memcached engine version specified in the request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Memcache instance resource name using the form: `projects/{project}/locations/{location}/instances/{instanc... |

**Request body**: `GoogleCloudMemcacheV1UpgradeInstanceRequest`

**Response**: `Operation`

```typescript
const res = await memcache.instances.upgrade({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `memcache.projects.locations.instances.list`

**GET** `v1/{+parent}/instances`

Lists Instances in a given location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the instance location using the form: `projects/{project_id}/locations/{location_id}` ... |
| `filter` | `string` | query | No | List filter. For example, exclude all Memcached instances with name as my-instance by specifying `"name != my-instanc... |
| `orderBy` | `string` | query | No | Sort results. Supported values are "name", "name desc" or "" (unsorted). |
| `pageSize` | `integer` | query | No | The maximum number of items to return. If not specified, a default value of 1000 will be used by the service. Regardl... |
| `pageToken` | `string` | query | No | The `next_page_token` value returned from a previous List request, if any. |

**Response**: `ListInstancesResponse`

```typescript
const res = await memcache.instances.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `memcache.projects.locations.instances.patch`

**PATCH** `v1/{+name}`

Updates an existing Instance in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Unique name of the resource in this scope including project and location using the form: `projects/{project... |
| `updateMask` | `string` | query | No | Required. Mask of fields to update. * `displayName` |

**Request body**: `Instance`

**Response**: `Operation`

```typescript
const res = await memcache.instances.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `ApplyParametersRequest`

Request for ApplyParameters.

| Property | Type | Description |
|----------|------|-------------|
| `applyAll` | `boolean` | Whether to apply instance-level parameter group to all nodes. If set to true, users are restricte... |
| `nodeIds` | `array<string>` | Nodes to which the instance-level parameter group is applied. |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `DailyCycle`

Time window specified for daily operations.

| Property | Type | Description |
|----------|------|-------------|
| `duration` | `string` | Output only. Duration of the time window, set by service producer. |
| `startTime` | `TimeOfDay` | Time within the day to start the operations. |

### `Date`

Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by ... |
| `month` | `integer` | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `year` | `integer` | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

### `DenyMaintenancePeriod`

DenyMaintenancePeriod definition. Maintenance is forbidden within the deny period. The start_date must be less than the end_date.

| Property | Type | Description |
|----------|------|-------------|
| `endDate` | `Date` | Deny period end date. This can be: * A full date, with non-zero year, month and day values. * A m... |
| `startDate` | `Date` | Deny period start date. This can be: * A full date, with non-zero year, month and day values. * A... |
| `time` | `TimeOfDay` | Time in UTC when the Blackout period starts on start_date and ends on end_date. This can be: * Fu... |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `GetTagsRequest`

Request message for GetTags.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. The full resource name of the service resource. |

### `GetTagsResponse`

Response message for GetTags.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | A checksum based on the current bindings. This field is always set in server responses. |
| `name` | `string` | Required. The full resource name of the service resource. |
| `tags` | `object` | Required. Tag keys/values directly bound to this resource. Each item in the map must be expressed... |

### `GoogleCloudMemcacheV1LocationMetadata`

Metadata for the given google.cloud.location.Location.

| Property | Type | Description |
|----------|------|-------------|
| `availableZones` | `object` | Output only. The set of available zones in the location. The map is keyed by the lowercase ID of ... |

### `GoogleCloudMemcacheV1MaintenancePolicy`

Maintenance policy per instance.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time when the policy was created. |
| `description` | `string` | Description of what this policy is for. Create/Update methods return INVALID_ARGUMENT if the leng... |
| `updateTime` | `string` | Output only. The time when the policy was updated. |
| `weeklyMaintenanceWindow` | `array<WeeklyMaintenanceWindow>` | Required. Maintenance window that is applied to resources covered by this policy. Minimum 1. For ... |

### `GoogleCloudMemcacheV1OperationMetadata`

Represents the metadata of a long-running operation.

| Property | Type | Description |
|----------|------|-------------|
| `apiVersion` | `string` | Output only. API version used to start the operation. |
| `cancelRequested` | `boolean` | Output only. Identifies whether the user has requested cancellation of the operation. Operations ... |
| `createTime` | `string` | Output only. Time when the operation was created. |
| `endTime` | `string` | Output only. Time when the operation finished running. |
| `statusDetail` | `string` | Output only. Human-readable status of the operation, if any. |
| `target` | `string` | Output only. Server-defined resource path for the target of the operation. |
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

### `GoogleCloudMemcacheV1UpgradeInstanceRequest`

Request for UpgradeInstance.

| Property | Type | Description |
|----------|------|-------------|
| `memcacheVersion` | `string` | Required. Specifies the target version of memcached engine to upgrade to. |

### `GoogleCloudMemcacheV1ZoneMetadata`

### `GoogleCloudSaasacceleratorManagementProvidersV1Instance`

Instance represents the interface for SLM services to actuate the state of control plane resources. Example Instance in JSON, where consumer-project-number=123456, producer-project-id=cloud-sql: ```json Instance: { "name": "projects/123456/locations/us-east1/instances/prod-instance", "create_time": { "seconds": 1526406431, }, "labels": { "env": "prod", "foo": "bar" }, "state": READY, "software_versions": { "software_update": "cloud-sql-09-28-2018", }, "maintenance_policy_names": { "UpdatePolicy": "projects/123456/locations/us-east1/maintenancePolicies/prod-update-policy", } "tenant_project_id": "cloud-sql-test-tenant", "producer_metadata": { "cloud-sql-tier": "basic", "cloud-sql-instance-size": "1G", }, "provisioned_resources": [ { "resource-type": "compute-instance", "resource-url": "https://www.googleapis.com/compute/v1/projects/cloud-sql/zones/us-east1-b/instances/vm-1", } ], "maintenance_schedules": { "csa_rollout": { "start_time": { "seconds": 1526406431, }, "end_time": { "seconds": 1535406431, }, }, "ncsa_rollout": { "start_time": { "seconds": 1526406431, }, "end_time": { "seconds": 1535406431, }, } }, "consumer_defined_name": "my-sql-instance1", } ``` LINT.IfChange

| Property | Type | Description |
|----------|------|-------------|
| `consumerDefinedName` | `string` | consumer_defined_name is the name of the instance set by the service consumers. Generally this is... |
| `consumerProjectNumber` | `string` | Optional. The consumer_project_number associated with this Apigee instance. This field is added s... |
| `createTime` | `string` | Output only. Timestamp when the resource was created. |
| `instanceType` | `string` | Optional. The instance_type of this instance of format: projects/{project_number}/locations/{loca... |
| `labels` | `object` | Optional. Resource labels to represent user provided metadata. Each label is a key-value pair, wh... |
| `maintenancePolicyNames` | `object` | Optional. The MaintenancePolicies that have been attached to the instance. The key must be of the... |
| `maintenanceSchedules` | `object` | The MaintenanceSchedule contains the scheduling information of published maintenance schedule wit... |
| `maintenanceSettings` | `GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings` | Optional. The MaintenanceSettings associated with instance. |
| `name` | `string` | Unique name of the resource. It uses the form: `projects/{project_number}/locations/{location_id}... |
| `notificationParameters` | `object` | Optional. notification_parameter are information that service producers may like to include that ... |
| `producerMetadata` | `object` | Output only. Custom string attributes used primarily to expose producer-specific information in m... |
| `provisionedResources` | `array<GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource>` | Output only. The list of data plane resources provisioned for this instance, e.g. compute VMs. Se... |
| `slmInstanceTemplate` | `string` | Link to the SLM instance template. Only populated when updating SLM instances via SSA's Actuation... |
| `sloMetadata` | `GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata` | Output only. SLO metadata for instance classification in the Standardized dataplane SLO platform.... |
| `softwareVersions` | `object` | Software versions that are used to deploy this instance. This can be mutated by rollout services. |
| `state` | `string` | Output only. Current lifecycle state of the resource (e.g. if it's being created or ready to use). |
| `tenantProjectId` | `string` | Output only. ID of the associated GCP tenant project. See go/get-instance-metadata. |
| `updateTime` | `string` | Output only. Timestamp when the resource was last modified. |

### `GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule`

Maintenance schedule which is exposed to customer and potentially end user, indicating published upcoming future maintenance schedule

| Property | Type | Description |
|----------|------|-------------|
| `canReschedule` | `boolean` | This field is deprecated, and will be always set to true since reschedule can happen multiple tim... |
| `endTime` | `string` | The scheduled end time for the maintenance. |
| `rolloutManagementPolicy` | `string` | The rollout management policy this maintenance schedule is associated with. When doing reschedule... |
| `scheduleDeadlineTime` | `string` | schedule_deadline_time is the time deadline any schedule start time cannot go beyond, including r... |
| `startTime` | `string` | The scheduled start time for the maintenance. |

### `GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings`

Maintenance settings associated with instance. Allows service producers and end users to assign settings that controls maintenance on this instance.

| Property | Type | Description |
|----------|------|-------------|
| `exclude` | `boolean` | Optional. Exclude instance from maintenance. When true, rollout service will not attempt maintena... |
| `isRollback` | `boolean` | Optional. If the update call is triggered from rollback, set the value as true. |
| `maintenancePolicies` | `object` | Optional. The MaintenancePolicies that have been attached to the instance. The key must be of the... |

### `GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata`

Node information for custom per-node SLO implementations. SSA does not support per-node SLO, but producers can populate per-node information in SloMetadata for custom precomputations. SSA Eligibility Exporter will emit per-node metric based on this information.

| Property | Type | Description |
|----------|------|-------------|
| `location` | `string` | The location of the node, if different from instance location. |
| `nodeId` | `string` | The id of the node. This should be equal to SaasInstanceNode.node_id. |
| `perSliEligibility` | `GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility` | If present, this will override eligibility for the node coming from instance or exclusions for sp... |

### `GoogleCloudSaasacceleratorManagementProvidersV1NotificationParameter`

Contains notification related data.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<string>` | Optional. Array of string values. e.g. instance's replica information. |

### `GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility`

PerSliSloEligibility is a mapping from an SLI name to eligibility.

| Property | Type | Description |
|----------|------|-------------|
| `eligibilities` | `object` | An entry in the eligibilities map specifies an eligibility for a particular SLI for the given ins... |

### `GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource`

Describes provisioned dataplane resources.

| Property | Type | Description |
|----------|------|-------------|
| `resourceType` | `string` | Type of the resource. This can be either a GCP resource or a custom one (e.g. another cloud provi... |
| `resourceUrl` | `string` | URL identifying the resource, e.g. "https://www.googleapis.com/compute/v1/projects/...)". |

### `GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility`

SloEligibility is a tuple containing eligibility value: true if an instance is eligible for SLO calculation or false if it should be excluded from all SLO-related calculations along with a user-defined reason.

| Property | Type | Description |
|----------|------|-------------|
| `eligible` | `boolean` | Whether an instance is eligible or ineligible. |
| `reason` | `string` | User-defined reason for the current value of instance eligibility. Usually, this can be directly ... |

### `GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata`

SloMetadata contains resources required for proper SLO classification of the instance.

| Property | Type | Description |
|----------|------|-------------|
| `nodes` | `array<GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata>` | Optional. List of nodes. Some producers need to use per-node metadata to calculate SLO. This fiel... |
| `perSliEligibility` | `GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility` | Optional. Multiple per-instance SLI eligibilities which apply for individual SLIs. |
| `tier` | `string` | Name of the SLO tier the Instance belongs to. This name will be expected to match the tiers speci... |

### `Instance`

A Memorystore for Memcached instance

| Property | Type | Description |
|----------|------|-------------|
| `authorizedNetwork` | `string` | The full name of the Google Compute Engine [network](/compute/docs/networks-and-firewalls#network... |
| `availableMaintenanceVersions` | `array<string>` | Output only. The available maintenance versions that can be applied to the instance. |
| `createTime` | `string` | Output only. The time the instance was created. |
| `discoveryEndpoint` | `string` | Output only. Endpoint for the Discovery API. |
| `displayName` | `string` | User provided name for the instance, which is only used for display purposes. Cannot be more than... |
| `effectiveMaintenanceVersion` | `string` | Output only. The effective maintenance version of the instance. |
| `instanceMessages` | `array<InstanceMessage>` | List of messages that describe the current state of the Memcached instance. |
| `labels` | `object` | Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for m... |
| `maintenancePolicy` | `GoogleCloudMemcacheV1MaintenancePolicy` | The maintenance policy for the instance. If not provided, the maintenance event will be performed... |
| `maintenanceSchedule` | `MaintenanceSchedule` | Output only. Published maintenance schedule. |
| `maintenanceVersion` | `string` | Optional. Last self service update maintenance version triggered by the customer. If it is empty,... |
| `memcacheFullVersion` | `string` | Output only. The full version of memcached server running on this instance. System automatically ... |
| `memcacheNodes` | `array<Node>` | Output only. List of Memcached nodes. Refer to Node message for more details. |
| `memcacheVersion` | `string` | The major version of Memcached software. If not provided, latest supported version will be used. ... |
| `name` | `string` | Required. Unique name of the resource in this scope including project and location using the form... |
| `nodeConfig` | `NodeConfig` | Required. Configuration for Memcached nodes. |
| `nodeCount` | `integer` | Required. Number of nodes in the Memcached instance. |
| `parameters` | `MemcacheParameters` | User defined parameters to apply to the memcached process on each node. |
| `reservedIpRangeId` | `array<string>` | Optional. Contains the id of allocated IP address ranges associated with the private service acce... |
| `satisfiesPzi` | `boolean` | Optional. Output only. Reserved for future use. |
| `satisfiesPzs` | `boolean` | Optional. Output only. Reserved for future use. |
| `state` | `string` | Output only. The state of this Memcached instance. |
| `updateTime` | `string` | Output only. The time the instance was updated. |
| `zones` | `array<string>` | Zones in which Memcached nodes should be provisioned. Memcached nodes will be equally distributed... |

### `InstanceMessage`

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | A code that correspond to one type of user-facing message. |
| `message` | `string` | Message on memcached instance which will be exposed to users. |

### `ListInstancesResponse`

Response for ListInstances.

| Property | Type | Description |
|----------|------|-------------|
| `instances` | `array<Instance>` | A list of Memcached instances in the project in the specified location, or across all locations. ... |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |
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

### `LocationMetadata`

Metadata for the given google.cloud.location.Location.

| Property | Type | Description |
|----------|------|-------------|
| `availableZones` | `object` | Output only. The set of available zones in the location. The map is keyed by the lowercase ID of ... |

### `MaintenancePolicy`

Defines policies to service maintenance events.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time when the resource was created. |
| `description` | `string` | Optional. Description of what this policy is for. Create/Update methods return INVALID_ARGUMENT i... |
| `labels` | `object` | Optional. Resource labels to represent user provided metadata. Each label is a key-value pair, wh... |
| `name` | `string` | Required. MaintenancePolicy name using the form: `projects/{project_id}/locations/{location_id}/m... |
| `state` | `string` | Optional. The state of the policy. |
| `updatePolicy` | `UpdatePolicy` | Maintenance policy applicable to instance update. |
| `updateTime` | `string` | Output only. The time when the resource was updated. |

### `MaintenanceSchedule`

Upcoming maintenance schedule.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | Output only. The end time of any upcoming scheduled maintenance for this instance. |
| `scheduleDeadlineTime` | `string` | Output only. The deadline that the maintenance schedule start time can not go beyond, including r... |
| `startTime` | `string` | Output only. The start time of any upcoming scheduled maintenance for this instance. |

### `MaintenanceWindow`

MaintenanceWindow definition.

| Property | Type | Description |
|----------|------|-------------|
| `dailyCycle` | `DailyCycle` | Daily cycle. |
| `weeklyCycle` | `WeeklyCycle` | Weekly cycle. |

### `MemcacheParameters`

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | Output only. The unique ID associated with this set of parameters. Users can use this id to deter... |
| `params` | `object` | User defined set of parameters to use in the memcached process. |

### `Node`

| Property | Type | Description |
|----------|------|-------------|
| `host` | `string` | Output only. Hostname or IP address of the Memcached node used by the clients to connect to the M... |
| `memcacheFullVersion` | `string` | Output only. The full version of memcached server running on this node. e.g. - memcached-1.5.16 |
| `memcacheVersion` | `string` | Output only. Major version of memcached server running on this node, e.g. MEMCACHE_1_5 |
| `nodeId` | `string` | Output only. Identifier of the Memcached node. The node id does not include project or location l... |
| `parameters` | `MemcacheParameters` | User defined parameters currently applied to the node. |
| `port` | `integer` | Output only. The port number of the Memcached server on this node. |
| `state` | `string` | Output only. Current state of the Memcached node. |
| `zone` | `string` | Output only. Location (GCP Zone) for the Memcached node. |

### `NodeConfig`

Configuration for a Memcached Node.

| Property | Type | Description |
|----------|------|-------------|
| `cpuCount` | `integer` | Required. Number of cpus per Memcached node. |
| `memorySizeMb` | `integer` | Required. Memory size in MiB for each Memcached node. |

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
| `apiVersion` | `string` | Output only. API version used to start the operation. |
| `cancelRequested` | `boolean` | Output only. Identifies whether the user has requested cancellation of the operation. Operations ... |
| `createTime` | `string` | Output only. Time when the operation was created. |
| `endTime` | `string` | Output only. Time when the operation finished running. |
| `statusDetail` | `string` | Output only. Human-readable status of the operation, if any. |
| `target` | `string` | Output only. Server-defined resource path for the target of the operation. |
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

### `RescheduleMaintenanceRequest`

Request for RescheduleMaintenance.

| Property | Type | Description |
|----------|------|-------------|
| `rescheduleType` | `string` | Required. If reschedule type is SPECIFIC_TIME, must set up schedule_time as well. |
| `scheduleTime` | `string` | Timestamp when the maintenance shall be rescheduled to if reschedule_type=SPECIFIC_TIME, in RFC 3... |

### `Schedule`

Configure the schedule.

| Property | Type | Description |
|----------|------|-------------|
| `day` | `string` | Allows to define schedule that runs specified day of the week. |
| `duration` | `string` | Output only. Duration of the time window, set by service producer. |
| `startTime` | `TimeOfDay` | Time within the window to start the operations. |

### `SetTagsRequest`

Request message for SetTags.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Optional. A checksum based on the current bindings which can be passed to prevent race conditions... |
| `name` | `string` | Required. The full resource name of the service resource. |
| `requestId` | `string` | Optional. A unique identifier for this request. Must be a valid UUID. This request is only idempo... |
| `tags` | `object` | Required. These bindings will override any bindings previously set and will be effective immediat... |

### `SetTagsResponse`

Response message for SetTags.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | A checksum based on the current bindings. This field is always set in server responses. |
| `name` | `string` | Required. The full resource name of the service resource. |
| `tags` | `object` | Required. Tag keys/values directly bound to this resource. Each item in the map must be expressed... |

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

### `UpdateParametersRequest`

Request for UpdateParameters.

| Property | Type | Description |
|----------|------|-------------|
| `parameters` | `MemcacheParameters` | The parameters to apply to the instance. |
| `updateMask` | `string` | Required. Mask of fields to update. |

### `UpdatePolicy`

Maintenance policy applicable to instance updates.

| Property | Type | Description |
|----------|------|-------------|
| `channel` | `string` | Optional. Relative scheduling channel applied to resource. |
| `denyMaintenancePeriods` | `array<DenyMaintenancePeriod>` | Deny Maintenance Period that is applied to resource to indicate when maintenance is forbidden. Th... |
| `window` | `MaintenanceWindow` | Optional. Maintenance window that is applied to resources covered by this policy. |

### `WeeklyCycle`

Time window specified for weekly operations.

| Property | Type | Description |
|----------|------|-------------|
| `schedule` | `array<Schedule>` | User can specify multiple windows in a week. Minimum of 1 window. |

### `WeeklyMaintenanceWindow`

Time window specified for weekly operations.

| Property | Type | Description |
|----------|------|-------------|
| `day` | `string` | Required. Allows to define schedule that runs specified day of the week. |
| `duration` | `string` | Required. Duration of the time window. |
| `startTime` | `TimeOfDay` | Required. Start time of the window in UTC. |

### `ZoneMetadata`

