# Contact Center AI Platform API - API Reference

**Version**: `v1alpha1` | **Methods**: 13 | **Schemas**: 39

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `contactcenteraiplatform.projects.locations.generateShifts` | POST | `v1alpha1/{+parent}:generateShifts` | Generates shifts constrained by various parameters. |
| `contactcenteraiplatform.projects.locations.list` | GET | `v1alpha1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `contactcenteraiplatform.projects.locations.queryContactCenterQuota` | GET | `v1alpha1/{+parent}:queryContactCenterQuota` | Queries the contact center quota, an aggregation over all the projects, that belongs to the billi... |
| `contactcenteraiplatform.projects.locations.get` | GET | `v1alpha1/{+name}` | Gets information about a location. |
| `contactcenteraiplatform.projects.locations.operations.list` | GET | `v1alpha1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `contactcenteraiplatform.projects.locations.operations.get` | GET | `v1alpha1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `contactcenteraiplatform.projects.locations.operations.delete` | DELETE | `v1alpha1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `contactcenteraiplatform.projects.locations.operations.cancel` | POST | `v1alpha1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `contactcenteraiplatform.projects.locations.contactCenters.create` | POST | `v1alpha1/{+parent}/contactCenters` | Creates a new ContactCenter in a given project and location. |
| `contactcenteraiplatform.projects.locations.contactCenters.get` | GET | `v1alpha1/{+name}` | Gets details of a single ContactCenter. |
| `contactcenteraiplatform.projects.locations.contactCenters.patch` | PATCH | `v1alpha1/{+name}` | Updates the parameters of a single ContactCenter. |
| `contactcenteraiplatform.projects.locations.contactCenters.list` | GET | `v1alpha1/{+parent}/contactCenters` | Lists ContactCenters in a given project and location. |
| `contactcenteraiplatform.projects.locations.contactCenters.delete` | DELETE | `v1alpha1/{+name}` | Deletes a single ContactCenter. |

### `contactcenteraiplatform.projects.locations.generateShifts`

**POST** `v1alpha1/{+parent}:generateShifts`

Generates shifts constrained by various parameters.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the parent resource associated with the request. Format: projects/{project}/locations/{location} |

**Request body**: `GenerateShiftsRequest`

**Response**: `Operation`

```typescript
const res = await contactcenteraiplatform.locations.generateShifts({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenteraiplatform.projects.locations.list`

**GET** `v1alpha1/{+name}/locations`

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
const res = await contactcenteraiplatform.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenteraiplatform.projects.locations.queryContactCenterQuota`

**GET** `v1alpha1/{+parent}:queryContactCenterQuota`

Queries the contact center quota, an aggregation over all the projects, that belongs to the billing account, which the input project belongs to.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent project resource id. |

**Response**: `ContactCenterQuota`

```typescript
const res = await contactcenteraiplatform.locations.queryContactCenterQuota({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenteraiplatform.projects.locations.get`

**GET** `v1alpha1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await contactcenteraiplatform.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenteraiplatform.projects.locations.operations.list`

**GET** `v1alpha1/{+name}/operations`

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
const res = await contactcenteraiplatform.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenteraiplatform.projects.locations.operations.get`

**GET** `v1alpha1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await contactcenteraiplatform.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenteraiplatform.projects.locations.operations.delete`

**DELETE** `v1alpha1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await contactcenteraiplatform.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenteraiplatform.projects.locations.operations.cancel`

**POST** `v1alpha1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await contactcenteraiplatform.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenteraiplatform.projects.locations.contactCenters.create`

**POST** `v1alpha1/{+parent}/contactCenters`

Creates a new ContactCenter in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Value for parent. |
| `contactCenterId` | `string` | query | No | Required. Id of the requesting object If auto-generating Id server-side, remove this field and contact_center_id from... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Request body**: `ContactCenter`

**Response**: `Operation`

```typescript
const res = await contactcenteraiplatform.contactCenters.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenteraiplatform.projects.locations.contactCenters.get`

**GET** `v1alpha1/{+name}`

Gets details of a single ContactCenter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource |

**Response**: `ContactCenter`

```typescript
const res = await contactcenteraiplatform.contactCenters.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenteraiplatform.projects.locations.contactCenters.patch`

**PATCH** `v1alpha1/{+name}`

Updates the parameters of a single ContactCenter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | name of resource |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the ContactCenter resource by the update. The... |

**Request body**: `ContactCenter`

**Response**: `Operation`

```typescript
const res = await contactcenteraiplatform.contactCenters.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenteraiplatform.projects.locations.contactCenters.list`

**GET** `v1alpha1/{+parent}/contactCenters`

Lists ContactCenters in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value for ListContactCentersRequest |
| `filter` | `string` | query | No | Filtering results |
| `orderBy` | `string` | query | No | Hint for how to order the results |
| `pageSize` | `integer` | query | No | Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appropriate de... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. |

**Response**: `ListContactCentersResponse`

```typescript
const res = await contactcenteraiplatform.contactCenters.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenteraiplatform.projects.locations.contactCenters.delete`

**DELETE** `v1alpha1/{+name}`

Deletes a single ContactCenter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `Operation`

```typescript
const res = await contactcenteraiplatform.contactCenters.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AdminUser`

Message storing info about the first admin user. Next ID: 3

| Property | Type | Description |
|----------|------|-------------|
| `familyName` | `string` | Optional. Last/family name of the first admin user. |
| `givenName` | `string` | Optional. First/given name of the first admin user. |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `Component`

Defines a logical CCAIP component that e.g. “EMAIL”, "CRM". For more information see go/ccaip-private-path-v2. Each logical component is associated with a list of service attachments.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Name of the component. |
| `serviceAttachmentNames` | `array<string>` | Associated service attachments. The service attachment names that will be used for sending privat... |

### `ContactCenter`

Message describing ContactCenter object

| Property | Type | Description |
|----------|------|-------------|
| `adminUser` | `AdminUser` | Optional. Info about the first admin user, such as given name and family name. |
| `advancedReportingEnabled` | `boolean` | Optional. Whether the advanced reporting feature is enabled. |
| `ccaipManagedUsers` | `boolean` | Optional. Whether to enable users to be created in the CCAIP-instance concurrently to having user... |
| `createTime` | `string` | Output only. [Output only] Create time stamp |
| `critical` | `Critical` | Optional. Critical release channel. |
| `customerDomainPrefix` | `string` | Required. Immutable. At least 2 and max 16 char long, must conform to [RFC 1035](https://www.ietf... |
| `deleteTime` | `string` | Output only. Timestamp in UTC of when this resource was soft-deleted. |
| `displayName` | `string` | Required. A user friendly name for the ContactCenter. |
| `early` | `Early` | Optional. Early release channel. |
| `expireTime` | `string` | Output only. Timestamp in UTC of when this resource is considered expired. |
| `featureConfig` | `FeatureConfig` | Optional. Feature configuration to populate the feature flags. |
| `instanceConfig` | `InstanceConfig` | The configuration of this instance, it is currently immutable once created. |
| `kmsKey` | `string` | Immutable. The KMS key name to encrypt the user input (`ContactCenter`). |
| `labels` | `object` | Labels as key value pairs |
| `name` | `string` | name of resource |
| `normal` | `Normal` | Optional. Normal release channel. |
| `privateAccess` | `PrivateAccess` | Optional. VPC-SC related networking configuration. |
| `privateComponents` | `array<string>` | Output only. TODO(b/283407860) Deprecate this field. |
| `purgeTime` | `string` | Output only. Timestamp in UTC of when this resource is going to be hard-deleted. |
| `releaseVersion` | `string` | Output only. UJET release version, unique for each new release. |
| `samlParams` | `SAMLParams` | Optional. Params that sets up Google as IdP. |
| `state` | `string` | Output only. The state of this contact center. |
| `updateTime` | `string` | Output only. [Output only] Update time stamp |
| `uris` | `URIs` | Output only. URIs to access the deployed ContactCenters. |
| `userEmail` | `string` | Optional. Email address of the first admin user. |

### `ContactCenterQuota`

Represents a quota for contact centers.

| Property | Type | Description |
|----------|------|-------------|
| `contactCenterCountLimit` | `integer` | Deprecated: Use the Quota fields instead. Reflects the count limit of contact centers on a billin... |
| `contactCenterCountSum` | `integer` | Deprecated: Use the Quota fields instead. Reflects the count sum of contact centers on a billing ... |
| `quotas` | `array<Quota>` | Quota details per contact center instance type. |

### `Critical`

Instances in this Channel will receive updates after all instances in `Normal` were updated. They also will only be updated outside of their peak hours.

| Property | Type | Description |
|----------|------|-------------|
| `peakHours` | `array<WeeklySchedule>` | Required. Hours during which the instance should not be updated. |

### `Date`

Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by ... |
| `month` | `integer` | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `year` | `integer` | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

### `DateList`

List of dates.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<Date>` | Optional. Values in the list. |

### `DateTime`

Represents civil time (or occasionally physical time). This type can represent a civil time in one of a few possible ways: * When utc_offset is set and time_zone is unset: a civil time on a calendar day with a particular offset from UTC. * When time_zone is set and utc_offset is unset: a civil time on a calendar day in a particular time zone. * When neither time_zone nor utc_offset is set: a civil time on a calendar day in local time. The date is relative to the Proleptic Gregorian Calendar. If year, month, or day are 0, the DateTime is considered not to have a specific year, month, or day respectively. This type may also be used to represent a physical time if all the date and time fields are set and either case of the `time_offset` oneof is set. Consider using `Timestamp` message for physical time instead. If your use case also would like to store the user's timezone, that can be done in another field. This type is more flexible than some applications may want. Make sure to document and validate your application's limitations.

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Optional. Day of month. Must be from 1 to 31 and valid for the year and month, or 0 if specifying... |
| `hours` | `integer` | Optional. Hours of day in 24 hour format. Should be from 0 to 23, defaults to 0 (midnight). An AP... |
| `minutes` | `integer` | Optional. Minutes of hour of day. Must be from 0 to 59, defaults to 0. |
| `month` | `integer` | Optional. Month of year. Must be from 1 to 12, or 0 if specifying a datetime without a month. |
| `nanos` | `integer` | Optional. Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999, defaults to 0. |
| `seconds` | `integer` | Optional. Seconds of minutes of the time. Must normally be from 0 to 59, defaults to 0. An API ma... |
| `timeZone` | `TimeZone` | Time zone. |
| `utcOffset` | `string` | UTC offset. Must be whole seconds, between -18 hours and +18 hours. For example, a UTC offset of ... |
| `year` | `integer` | Optional. Year of date. Must be from 1 to 9999, or 0 if specifying a datetime without a year. |

### `Early`

LINT.IfChange First Channel to receive the updates. Meant to dev/test instances

### `EmployeeInfo`

Information about a particular employee for planning purposes.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | Required. Unique ID of this employee. |
| `unwantedEventIntervals` | `array<UnwantedEventInterval>` | Optional. A list of unwanted event intervals for this employee. The start time of the interval mu... |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `EventTemplate`

Template specifying rules for generating a single event that occurs during a shift. An event may represent a meeting, break, lunch, etc.

| Property | Type | Description |
|----------|------|-------------|
| `durationMinutes` | `integer` | Required. Fixed duration in minutes of this event. |
| `id` | `string` | Required. Unique ID of this template. |
| `maximumMinutesAfterShiftStart` | `integer` | Optional. Maximum number of minutes after the beginning of a shift that this event can start. |
| `minimumMinutesAfterShiftStart` | `integer` | Optional. Minimum number of minutes after the beginning of a shift that this event can start. |
| `startTimeIncrementMinutes` | `integer` | Required. The time increment (in minutes) used to generate the set of possible event start times ... |

### `FeatureConfig`

| Property | Type | Description |
|----------|------|-------------|
| `agentDesktopEnabled` | `boolean` | Optional. If true - enables the agent desktop feature. Default is false. |

### `GenerateShiftsRequest`

Request with constraints for generating shifts. The shifts generated must adhere to these constraints.

| Property | Type | Description |
|----------|------|-------------|
| `employeeInfo` | `array<EmployeeInfo>` | Optional. Employee information that should be considered when generating shifts. |
| `planningHorizon` | `PlanningHorizon` | Required. The solver will generate the maximum number of shifts per shift template. |
| `shiftTemplates` | `array<ShiftTemplate>` | Required. Set of shift templates specifying rules for generating shifts. A shift template can be ... |
| `solverConfig` | `SolverConfig` | Required. Parameters for the solver. |
| `workforceDemands` | `WorkforceDemandList` | Required. All the workforce demands that the generated shifts need to cover. The planning horizon... |

### `GoogleCloudCommonOperationMetadata`

Represents the metadata of the long-running operation.

| Property | Type | Description |
|----------|------|-------------|
| `apiVersion` | `string` | Output only. API version used to start the operation. |
| `cancelRequested` | `boolean` | Output only. Identifies whether the user has requested cancellation of the operation. Operations ... |
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `statusDetail` | `string` | Output only. Human-readable status of the operation, if any. |
| `target` | `string` | Output only. Server-defined resource path for the target of the operation. |
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

### `InstanceConfig`

Message storing the instance configuration.

| Property | Type | Description |
|----------|------|-------------|
| `instanceSize` | `string` | The instance size of this the instance configuration. |

### `ListContactCentersResponse`

Message for response to listing ContactCenters

| Property | Type | Description |
|----------|------|-------------|
| `contactCenters` | `array<ContactCenter>` | The list of ContactCenter |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
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

### `Normal`

Instances in this Channel will receive updates after all instances in `Early` were updated + 2 days.

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
| `apiVersion` | `string` | Output only. API version used to start the operation. |
| `contactCenter` | `ContactCenter` | Contact center information for this request |
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `requestedCancellation` | `boolean` | Output only. Identifies whether the user has requested cancellation of the operation. Operations ... |
| `statusMessage` | `string` | Output only. Human-readable status of the operation, if any. |
| `target` | `string` | Output only. Server-defined resource path for the target of the operation. |
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

### `PlanningHorizon`

Specifies the time interval during which the solver should generate shifts. The start time must be before the end time.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `DateTime` | Required. End of the time interval for the given demand (exclusive). These values are read down t... |
| `startTime` | `DateTime` | Required. Start of the time interval for the given demand (inclusive). These values are read down... |

### `PrivateAccess`

Defines ingress and egress private traffic settings for CCAIP instances.

| Property | Type | Description |
|----------|------|-------------|
| `egressSettings` | `array<Component>` | List of egress components that should not be accessed via the Internet. For more information see ... |
| `ingressSettings` | `array<Component>` | List of ingress components that should not be accessed via the Internet. For more information see... |
| `pscSetting` | `PscSetting` | Private service connect settings. |

### `PscSetting`

Private service connect settings.

| Property | Type | Description |
|----------|------|-------------|
| `allowedConsumerProjectIds` | `array<string>` | The list of project ids that are allowed to send traffic to the service attachment. This field sh... |
| `producerProjectIds` | `array<string>` | Output only. The CCAIP tenant project ids. |

### `Quota`

Quota details.

| Property | Type | Description |
|----------|------|-------------|
| `contactCenterCountLimit` | `integer` | Reflects the count limit of contact centers on a billing account. |
| `contactCenterCountSum` | `integer` | Reflects the count sum of contact centers on a billing account. |
| `contactCenterInstanceSize` | `string` | Contact center instance type. |

### `SAMLParams`

Message storing SAML params to enable Google as IDP.

| Property | Type | Description |
|----------|------|-------------|
| `authenticationContexts` | `array<string>` | Additional contexts used for authentication. |
| `certificate` | `string` | SAML certificate |
| `emailMapping` | `string` | IdP field that maps to the user’s email address |
| `entityId` | `string` | Entity id URL |
| `ssoUri` | `string` | Single sign-on URL |
| `userEmail` | `string` | Email address of the first admin users. |

### `ShiftTemplate`

Template specifying rules for generating shifts. A shift is a unit of work that specifies a start time, end time, and may contain events (e.g. lunch, breaks etc.). Shifts will be assigned to specific dates in the response.

| Property | Type | Description |
|----------|------|-------------|
| `assignableEmployeeIds` | `array<string>` | Optional. A list of specific employee IDs that can be assigned to shifts generated by this templa... |
| `daysOffCountPerWeek` | `integer` | Optional. Fixed number of days off per week. An employee has a given day off if they are not assi... |
| `daysOffDates` | `DateList` | Optional. Fixed dates when shifts from this template should not be generated. |
| `durationMinutes` | `integer` | Required. Fixed duration of a shift generated by this template. |
| `earliestStartTime` | `TimeOfDay` | Required. Earliest time in the day that a shift can start. This value is specified with hours and... |
| `eventTemplates` | `array<EventTemplate>` | Optional. Rules for generating events for each shift. Exactly one event will be included in each ... |
| `id` | `string` | Required. Unique ID of this template. |
| `latestStartTime` | `TimeOfDay` | Required. Latest time in the day that a shift can start. This value is specified with hours and m... |
| `maximumEmployeeCount` | `integer` | Required. Maximum number of employees that can be assigned to all shifts generated by this templa... |
| `minimumEmployeeCount` | `integer` | Optional. Minimum number of employees that can be assigned to all shifts generated by this templa... |
| `minimumIntereventGapMinutes` | `integer` | Optional. Minimum minutes between the end of one event and the start of the next. |
| `startTimeIncrementMinutes` | `integer` | Optional. The time increment (in minutes) used to generate the set of possible start times betwee... |

### `SolverConfig`

Specifies additional parameters for the solver generating shifts.

| Property | Type | Description |
|----------|------|-------------|
| `maximumProcessingDuration` | `string` | Optional. Maximum time the solver should spend on the problem. If not set, defaults to 1 minute. ... |
| `scheduleType` | `string` | Required. Specifies the type of schedule to generate. |

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

### `TimeZone`

Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/time-zones).

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | IANA Time Zone Database time zone. For example "America/New_York". |
| `version` | `string` | Optional. IANA Time Zone Database version number. For example "2019a". |

### `URIs`

Message storing the URIs of the ContactCenter.

| Property | Type | Description |
|----------|------|-------------|
| `chatBotUri` | `string` | Chat Bot Uri of the ContactCenter |
| `mediaUri` | `string` | Media Uri of the ContactCenter. |
| `rootUri` | `string` | Root Uri of the ContactCenter. |
| `virtualAgentStreamingServiceUri` | `string` | Virtual Agent Streaming Service Uri of the ContactCenter. |

### `UnwantedEventInterval`

Specifies a time interval during which the overlap with events (generated from event templates) should be minimal.

| Property | Type | Description |
|----------|------|-------------|
| `durationMinutes` | `integer` | Required. Duration of the event. |
| `startTime` | `DateTime` | Required. Start time of the event. |

### `WeeklySchedule`

Message representing a weekly schedule.

| Property | Type | Description |
|----------|------|-------------|
| `days` | `array<string>` | Required. Days of the week this schedule applies to. |
| `duration` | `string` | Optional. Duration of the schedule. |
| `endTime` | `TimeOfDay` | Optional. Daily end time of the schedule. If `end_time` is before `start_time`, the schedule will... |
| `startTime` | `TimeOfDay` | Required. Daily start time of the schedule. |

### `WorkforceDemand`

Specifies the number of employees required to cover the demand in the given time interval. The length of the interval must be strictly positive.

| Property | Type | Description |
|----------|------|-------------|
| `employeeCount` | `integer` | Optional. Number of employees needed to cover the demand for this interval. |
| `endTime` | `DateTime` | Required. End of the time interval for the given demand (exclusive). These values are read down t... |
| `startTime` | `DateTime` | Required. Start of the time interval for the given demand (inclusive). These values are read down... |

### `WorkforceDemandList`

List of workforce demands.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<WorkforceDemand>` | Optional. Values in the list. |

