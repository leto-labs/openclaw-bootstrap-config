# Network Connectivity API - API Reference

**Version**: `v1` | **Methods**: 101 | **Schemas**: 99

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `networkconnectivity.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `networkconnectivity.projects.locations.checkConsumerConfig` | POST | `v1/{+location}:checkConsumerConfig` | CheckConsumerConfig validates the consumer network and project for potential PSC connection creat... |
| `networkconnectivity.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `networkconnectivity.projects.locations.serviceConnectionPolicies.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single ServiceConnectionPolicy. |
| `networkconnectivity.projects.locations.serviceConnectionPolicies.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `networkconnectivity.projects.locations.serviceConnectionPolicies.get` | GET | `v1/{+name}` | Gets details of a single ServiceConnectionPolicy. |
| `networkconnectivity.projects.locations.serviceConnectionPolicies.delete` | DELETE | `v1/{+name}` | Deletes a single ServiceConnectionPolicy. |
| `networkconnectivity.projects.locations.serviceConnectionPolicies.list` | GET | `v1/{+parent}/serviceConnectionPolicies` | Lists ServiceConnectionPolicies in a given project and location. |
| `networkconnectivity.projects.locations.serviceConnectionPolicies.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `networkconnectivity.projects.locations.serviceConnectionPolicies.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `networkconnectivity.projects.locations.serviceConnectionPolicies.create` | POST | `v1/{+parent}/serviceConnectionPolicies` | Creates a new ServiceConnectionPolicy in a given project and location. |
| `networkconnectivity.projects.locations.serviceConnectionTokens.create` | POST | `v1/{+parent}/serviceConnectionTokens` | Creates a new ServiceConnectionToken in a given project and location. |
| `networkconnectivity.projects.locations.serviceConnectionTokens.list` | GET | `v1/{+parent}/serviceConnectionTokens` | Lists ServiceConnectionTokens in a given project and location. |
| `networkconnectivity.projects.locations.serviceConnectionTokens.get` | GET | `v1/{+name}` | Gets details of a single ServiceConnectionToken. |
| `networkconnectivity.projects.locations.serviceConnectionTokens.delete` | DELETE | `v1/{+name}` | Deletes a single ServiceConnectionToken. |
| `networkconnectivity.projects.locations.global.policyBasedRoutes.get` | GET | `v1/{+name}` | Gets details of a single policy-based route. |
| `networkconnectivity.projects.locations.global.policyBasedRoutes.list` | GET | `v1/{+parent}/policyBasedRoutes` | Lists policy-based routes in a given project and location. |
| `networkconnectivity.projects.locations.global.policyBasedRoutes.delete` | DELETE | `v1/{+name}` | Deletes a single policy-based route. |
| `networkconnectivity.projects.locations.global.policyBasedRoutes.create` | POST | `v1/{+parent}/policyBasedRoutes` | Creates a new policy-based route in a given project and location. |
| `networkconnectivity.projects.locations.global.policyBasedRoutes.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `networkconnectivity.projects.locations.global.policyBasedRoutes.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `networkconnectivity.projects.locations.global.policyBasedRoutes.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `networkconnectivity.projects.locations.global.hubs.acceptSpokeUpdate` | POST | `v1/{+name}:acceptSpokeUpdate` | Accepts a proposal to update a Network Connectivity Center spoke in a hub. |
| `networkconnectivity.projects.locations.global.hubs.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `networkconnectivity.projects.locations.global.hubs.queryStatus` | GET | `v1/{+name}:queryStatus` | Query the Private Service Connect propagation status of a Network Connectivity Center hub. |
| `networkconnectivity.projects.locations.global.hubs.get` | GET | `v1/{+name}` | Gets details about a Network Connectivity Center hub. |
| `networkconnectivity.projects.locations.global.hubs.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `networkconnectivity.projects.locations.global.hubs.rejectSpoke` | POST | `v1/{+name}:rejectSpoke` | Rejects a Network Connectivity Center spoke from being attached to a hub. If the spoke was previo... |
| `networkconnectivity.projects.locations.global.hubs.rejectSpokeUpdate` | POST | `v1/{+name}:rejectSpokeUpdate` | Rejects a proposal to update a Network Connectivity Center spoke in a hub. |
| `networkconnectivity.projects.locations.global.hubs.delete` | DELETE | `v1/{+name}` | Deletes a Network Connectivity Center hub. |
| `networkconnectivity.projects.locations.global.hubs.acceptSpoke` | POST | `v1/{+name}:acceptSpoke` | Accepts a proposal to attach a Network Connectivity Center spoke to a hub. |
| `networkconnectivity.projects.locations.global.hubs.create` | POST | `v1/{+parent}/hubs` | Creates a new Network Connectivity Center hub in the specified project. |
| `networkconnectivity.projects.locations.global.hubs.list` | GET | `v1/{+parent}/hubs` | Lists the Network Connectivity Center hubs associated with a given project. |
| `networkconnectivity.projects.locations.global.hubs.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `networkconnectivity.projects.locations.global.hubs.patch` | PATCH | `v1/{+name}` | Updates the description and/or labels of a Network Connectivity Center hub. |
| `networkconnectivity.projects.locations.global.hubs.listSpokes` | GET | `v1/{+name}:listSpokes` | Lists the Network Connectivity Center spokes associated with a specified hub and location. The li... |
| `networkconnectivity.projects.locations.global.hubs.routeTables.get` | GET | `v1/{+name}` | Gets details about a Network Connectivity Center route table. |
| `networkconnectivity.projects.locations.global.hubs.routeTables.list` | GET | `v1/{+parent}/routeTables` | Lists route tables in a given hub. |
| `networkconnectivity.projects.locations.global.hubs.routeTables.routes.get` | GET | `v1/{+name}` | Gets details about the specified route. |
| `networkconnectivity.projects.locations.global.hubs.routeTables.routes.list` | GET | `v1/{+parent}/routes` | Lists routes in a given route table. |
| `networkconnectivity.projects.locations.global.hubs.groups.get` | GET | `v1/{+name}` | Gets details about a Network Connectivity Center group. |
| `networkconnectivity.projects.locations.global.hubs.groups.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `networkconnectivity.projects.locations.global.hubs.groups.patch` | PATCH | `v1/{+name}` | Updates the parameters of a Network Connectivity Center group. |
| `networkconnectivity.projects.locations.global.hubs.groups.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `networkconnectivity.projects.locations.global.hubs.groups.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `networkconnectivity.projects.locations.global.hubs.groups.list` | GET | `v1/{+parent}/groups` | Lists groups in a given hub. |
| `networkconnectivity.projects.locations.automatedDnsRecords.delete` | DELETE | `v1/{+name}` | Deletes a single AutomatedDnsRecord. |
| `networkconnectivity.projects.locations.automatedDnsRecords.get` | GET | `v1/{+name}` | Gets details of a single AutomatedDnsRecord. |
| `networkconnectivity.projects.locations.automatedDnsRecords.create` | POST | `v1/{+parent}/automatedDnsRecords` | Creates a new AutomatedDnsRecord in a given project and location. |
| `networkconnectivity.projects.locations.automatedDnsRecords.list` | GET | `v1/{+parent}/automatedDnsRecords` | Lists AutomatedDnsRecords in a given project and location. |
| `networkconnectivity.projects.locations.serviceConnectionMaps.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single ServiceConnectionMap. |
| `networkconnectivity.projects.locations.serviceConnectionMaps.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `networkconnectivity.projects.locations.serviceConnectionMaps.delete` | DELETE | `v1/{+name}` | Deletes a single ServiceConnectionMap. |
| `networkconnectivity.projects.locations.serviceConnectionMaps.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `networkconnectivity.projects.locations.serviceConnectionMaps.get` | GET | `v1/{+name}` | Gets details of a single ServiceConnectionMap. |
| `networkconnectivity.projects.locations.serviceConnectionMaps.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `networkconnectivity.projects.locations.serviceConnectionMaps.create` | POST | `v1/{+parent}/serviceConnectionMaps` | Creates a new ServiceConnectionMap in a given project and location. |
| `networkconnectivity.projects.locations.serviceConnectionMaps.list` | GET | `v1/{+parent}/serviceConnectionMaps` | Lists ServiceConnectionMaps in a given project and location. |
| `networkconnectivity.projects.locations.regionalEndpoints.delete` | DELETE | `v1/{+name}` | Deletes a single RegionalEndpoint. |
| `networkconnectivity.projects.locations.regionalEndpoints.create` | POST | `v1/{+parent}/regionalEndpoints` | Creates a new RegionalEndpoint in a given project and location. |
| `networkconnectivity.projects.locations.regionalEndpoints.list` | GET | `v1/{+parent}/regionalEndpoints` | Lists RegionalEndpoints in a given project and location. |
| `networkconnectivity.projects.locations.regionalEndpoints.get` | GET | `v1/{+name}` | Gets details of a single RegionalEndpoint. |
| `networkconnectivity.projects.locations.internalRanges.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `networkconnectivity.projects.locations.internalRanges.list` | GET | `v1/{+parent}/internalRanges` | Lists internal ranges in a given project and location. |
| `networkconnectivity.projects.locations.internalRanges.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `networkconnectivity.projects.locations.internalRanges.delete` | DELETE | `v1/{+name}` | Deletes a single internal range. |
| `networkconnectivity.projects.locations.internalRanges.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single internal range. |
| `networkconnectivity.projects.locations.internalRanges.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `networkconnectivity.projects.locations.internalRanges.create` | POST | `v1/{+parent}/internalRanges` | Creates a new internal range in a given project and location. |
| `networkconnectivity.projects.locations.internalRanges.get` | GET | `v1/{+name}` | Gets details of a single internal range. |
| `networkconnectivity.projects.locations.serviceClasses.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single ServiceClass. |
| `networkconnectivity.projects.locations.serviceClasses.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `networkconnectivity.projects.locations.serviceClasses.list` | GET | `v1/{+parent}/serviceClasses` | Lists ServiceClasses in a given project and location. |
| `networkconnectivity.projects.locations.serviceClasses.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `networkconnectivity.projects.locations.serviceClasses.get` | GET | `v1/{+name}` | Gets details of a single ServiceClass. |
| `networkconnectivity.projects.locations.serviceClasses.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `networkconnectivity.projects.locations.serviceClasses.delete` | DELETE | `v1/{+name}` | Deletes a single ServiceClass. |
| `networkconnectivity.projects.locations.spokes.get` | GET | `v1/{+name}` | Gets details about a Network Connectivity Center spoke. |
| `networkconnectivity.projects.locations.spokes.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `networkconnectivity.projects.locations.spokes.delete` | DELETE | `v1/{+name}` | Deletes a Network Connectivity Center spoke. |
| `networkconnectivity.projects.locations.spokes.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `networkconnectivity.projects.locations.spokes.patch` | PATCH | `v1/{+name}` | Updates the parameters of a Network Connectivity Center spoke. |
| `networkconnectivity.projects.locations.spokes.create` | POST | `v1/{+parent}/spokes` | Creates a Network Connectivity Center spoke. |
| `networkconnectivity.projects.locations.spokes.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `networkconnectivity.projects.locations.spokes.list` | GET | `v1/{+parent}/spokes` | Lists the Network Connectivity Center spokes in a specified project and location. |
| `networkconnectivity.projects.locations.multicloudDataTransferConfigs.get` | GET | `v1/{+name}` | Gets the details of a `MulticloudDataTransferConfig` resource. |
| `networkconnectivity.projects.locations.multicloudDataTransferConfigs.delete` | DELETE | `v1/{+name}` | Deletes a `MulticloudDataTransferConfig` resource. |
| `networkconnectivity.projects.locations.multicloudDataTransferConfigs.create` | POST | `v1/{+parent}/multicloudDataTransferConfigs` | Creates a `MulticloudDataTransferConfig` resource in a specified project and location. |
| `networkconnectivity.projects.locations.multicloudDataTransferConfigs.list` | GET | `v1/{+parent}/multicloudDataTransferConfigs` | Lists the `MulticloudDataTransferConfig` resources in a specified project and location. |
| `networkconnectivity.projects.locations.multicloudDataTransferConfigs.patch` | PATCH | `v1/{+name}` | Updates a `MulticloudDataTransferConfig` resource in a specified project and location. |
| `networkconnectivity.projects.locations.multicloudDataTransferConfigs.destinations.create` | POST | `v1/{+parent}/destinations` | Creates a `Destination` resource in a specified project and location. |
| `networkconnectivity.projects.locations.multicloudDataTransferConfigs.destinations.list` | GET | `v1/{+parent}/destinations` | Lists the `Destination` resources in a specified project and location. |
| `networkconnectivity.projects.locations.multicloudDataTransferConfigs.destinations.delete` | DELETE | `v1/{+name}` | Deletes a `Destination` resource. |
| `networkconnectivity.projects.locations.multicloudDataTransferConfigs.destinations.patch` | PATCH | `v1/{+name}` | Updates a `Destination` resource in a specified project and location. |
| `networkconnectivity.projects.locations.multicloudDataTransferConfigs.destinations.get` | GET | `v1/{+name}` | Gets the details of a `Destination` resource. |
| `networkconnectivity.projects.locations.multicloudDataTransferSupportedServices.get` | GET | `v1/{+name}` | Gets the details of a service that is supported for Data Transfer Essentials. |
| `networkconnectivity.projects.locations.multicloudDataTransferSupportedServices.list` | GET | `v1/{+parent}/multicloudDataTransferSupportedServices` | Lists the services in the project for a region that are supported for Data Transfer Essentials. |
| `networkconnectivity.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `networkconnectivity.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `networkconnectivity.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `networkconnectivity.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |

### `networkconnectivity.projects.locations.list`

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
const res = await networkconnectivity.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.checkConsumerConfig`

**POST** `v1/{+location}:checkConsumerConfig`

CheckConsumerConfig validates the consumer network and project for potential PSC connection creation. This method performs several checks, including: - Validating the existence and permissions of the service class. - Ensuring the consumer network exists and is accessible. - Verifying XPN relationships if applicable. - Checking for compatible IP versions between the consumer network and the requested version. This method performs a dynamic IAM check for the `networkconnectivity.serviceClasses.use` permission on the service class resource in the Prepare phase.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `location` | `string` | path | Yes | Required. The location resource path. Example: - projects/{project}/locations/{location} |

**Request body**: `CheckConsumerConfigRequest`

**Response**: `CheckConsumerConfigResponse`

```typescript
const res = await networkconnectivity.locations.checkConsumerConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await networkconnectivity.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.serviceConnectionPolicies.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single ServiceConnectionPolicy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The name of a ServiceConnectionPolicy. Format: projects/{project}/locations/{location}/serviceConnectionPo... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the ServiceConnectionPolicy resource by the u... |

**Request body**: `ServiceConnectionPolicy`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await networkconnectivity.serviceConnectionPolicies.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.serviceConnectionPolicies.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await networkconnectivity.serviceConnectionPolicies.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.serviceConnectionPolicies.get`

**GET** `v1/{+name}`

Gets details of a single ServiceConnectionPolicy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the ServiceConnectionPolicy to get. |

**Response**: `ServiceConnectionPolicy`

```typescript
const res = await networkconnectivity.serviceConnectionPolicies.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.serviceConnectionPolicies.delete`

**DELETE** `v1/{+name}`

Deletes a single ServiceConnectionPolicy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the ServiceConnectionPolicy to delete. |
| `etag` | `string` | query | No | Optional. The etag is computed by the server, and may be sent on update and delete requests to ensure the client has ... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await networkconnectivity.serviceConnectionPolicies.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.serviceConnectionPolicies.list`

**GET** `v1/{+parent}/serviceConnectionPolicies`

Lists ServiceConnectionPolicies in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource's name. ex. projects/123/locations/us-east1 |
| `filter` | `string` | query | No | A filter expression that filters the results listed in the response. |
| `orderBy` | `string` | query | No | Sort the results by a certain order. |
| `pageSize` | `integer` | query | No | The maximum number of results per page that should be returned. |
| `pageToken` | `string` | query | No | The page token. |

**Response**: `ListServiceConnectionPoliciesResponse`

```typescript
const res = await networkconnectivity.serviceConnectionPolicies.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.serviceConnectionPolicies.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await networkconnectivity.serviceConnectionPolicies.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.serviceConnectionPolicies.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await networkconnectivity.serviceConnectionPolicies.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.serviceConnectionPolicies.create`

**POST** `v1/{+parent}/serviceConnectionPolicies`

Creates a new ServiceConnectionPolicy in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource's name of the ServiceConnectionPolicy. ex. projects/123/locations/us-east1 |
| `autoSubnetworkConfig.allocRangeSpace` | `string` | query | No | Optional. The space where we search for a free range to create a subnetwork. It can be narrow down or pick a differen... |
| `autoSubnetworkConfig.ipStack` | `string` | query | No | Optional. The requested IP stack for the subnetwork. If not specified, IPv4 is used. |
| `autoSubnetworkConfig.prefixLength` | `integer` | query | No | Optional. The desired prefix length for the subnet's IP address range. E.g., 24 for a /24. The actual range is alloca... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `serviceConnectionPolicyId` | `string` | query | No | Optional. Resource ID (i.e. 'foo' in '[...]/projects/p/locations/l/serviceConnectionPolicies/foo') See https://google... |
| `subnetworkMode` | `string` | query | No | Optional. If this field is not set, USER_PROVIDED is the inferred value to use. |

**Request body**: `ServiceConnectionPolicy`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await networkconnectivity.serviceConnectionPolicies.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.serviceConnectionTokens.create`

**POST** `v1/{+parent}/serviceConnectionTokens`

Creates a new ServiceConnectionToken in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource's name of the ServiceConnectionToken. ex. projects/123/locations/us-east1 |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `serviceConnectionTokenId` | `string` | query | No | Optional. Resource ID (i.e. 'foo' in '[...]/projects/p/locations/l/ServiceConnectionTokens/foo') See https://google.a... |

**Request body**: `ServiceConnectionToken`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await networkconnectivity.serviceConnectionTokens.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.serviceConnectionTokens.list`

**GET** `v1/{+parent}/serviceConnectionTokens`

Lists ServiceConnectionTokens in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource's name. ex. projects/123/locations/us-east1 |
| `filter` | `string` | query | No | A filter expression that filters the results listed in the response. |
| `orderBy` | `string` | query | No | Sort the results by a certain order. |
| `pageSize` | `integer` | query | No | The maximum number of results per page that should be returned. |
| `pageToken` | `string` | query | No | The page token. |

**Response**: `ListServiceConnectionTokensResponse`

```typescript
const res = await networkconnectivity.serviceConnectionTokens.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.serviceConnectionTokens.get`

**GET** `v1/{+name}`

Gets details of a single ServiceConnectionToken.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the ServiceConnectionToken to get. |

**Response**: `ServiceConnectionToken`

```typescript
const res = await networkconnectivity.serviceConnectionTokens.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.serviceConnectionTokens.delete`

**DELETE** `v1/{+name}`

Deletes a single ServiceConnectionToken.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the ServiceConnectionToken to delete. |
| `etag` | `string` | query | No | Optional. The etag is computed by the server, and may be sent on update and delete requests to ensure the client has ... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await networkconnectivity.serviceConnectionTokens.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.global.policyBasedRoutes.get`

**GET** `v1/{+name}`

Gets details of a single policy-based route.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the PolicyBasedRoute resource to get. |

**Response**: `PolicyBasedRoute`

```typescript
const res = await networkconnectivity.policyBasedRoutes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.global.policyBasedRoutes.list`

**GET** `v1/{+parent}/policyBasedRoutes`

Lists policy-based routes in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource's name. |
| `filter` | `string` | query | No | A filter expression that filters the results listed in the response. |
| `orderBy` | `string` | query | No | Sort the results by a certain order. |
| `pageSize` | `integer` | query | No | The maximum number of results per page that should be returned. |
| `pageToken` | `string` | query | No | The page token. |

**Response**: `ListPolicyBasedRoutesResponse`

```typescript
const res = await networkconnectivity.policyBasedRoutes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.global.policyBasedRoutes.delete`

**DELETE** `v1/{+name}`

Deletes a single policy-based route.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the policy-based route resource to delete. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await networkconnectivity.policyBasedRoutes.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.global.policyBasedRoutes.create`

**POST** `v1/{+parent}/policyBasedRoutes`

Creates a new policy-based route in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource's name of the PolicyBasedRoute. |
| `policyBasedRouteId` | `string` | query | No | Required. Unique id for the policy-based route to create. Provided by the client when the resource is created. The na... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Request body**: `PolicyBasedRoute`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await networkconnectivity.policyBasedRoutes.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.global.policyBasedRoutes.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await networkconnectivity.policyBasedRoutes.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.global.policyBasedRoutes.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await networkconnectivity.policyBasedRoutes.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.global.policyBasedRoutes.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await networkconnectivity.policyBasedRoutes.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.global.hubs.acceptSpokeUpdate`

**POST** `v1/{+name}:acceptSpokeUpdate`

Accepts a proposal to update a Network Connectivity Center spoke in a hub.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the hub to accept spoke update. |

**Request body**: `AcceptSpokeUpdateRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await networkconnectivity.hubs.acceptSpokeUpdate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.global.hubs.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await networkconnectivity.hubs.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.global.hubs.queryStatus`

**GET** `v1/{+name}:queryStatus`

Query the Private Service Connect propagation status of a Network Connectivity Center hub.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the hub. |
| `filter` | `string` | query | No | Optional. An expression that filters the list of results. The filter can be used to filter the results by the followi... |
| `groupBy` | `string` | query | No | Optional. Aggregate the results by the specified fields. A comma-separated list of any of these fields: * `psc_propag... |
| `orderBy` | `string` | query | No | Optional. Sort the results in ascending order by the specified fields. A comma-separated list of any of these fields:... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return per page. |
| `pageToken` | `string` | query | No | Optional. The page token. |

**Response**: `QueryHubStatusResponse`

```typescript
const res = await networkconnectivity.hubs.queryStatus({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.global.hubs.get`

**GET** `v1/{+name}`

Gets details about a Network Connectivity Center hub.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the hub resource to get. |

**Response**: `Hub`

```typescript
const res = await networkconnectivity.hubs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.global.hubs.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await networkconnectivity.hubs.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.global.hubs.rejectSpoke`

**POST** `v1/{+name}:rejectSpoke`

Rejects a Network Connectivity Center spoke from being attached to a hub. If the spoke was previously in the `ACTIVE` state, it transitions to the `INACTIVE` state and is no longer able to connect to other spokes that are attached to the hub.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the hub from which to reject the spoke. |

**Request body**: `RejectHubSpokeRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await networkconnectivity.hubs.rejectSpoke({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.global.hubs.rejectSpokeUpdate`

**POST** `v1/{+name}:rejectSpokeUpdate`

Rejects a proposal to update a Network Connectivity Center spoke in a hub.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the hub to reject spoke update. |

**Request body**: `RejectSpokeUpdateRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await networkconnectivity.hubs.rejectSpokeUpdate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.global.hubs.delete`

**DELETE** `v1/{+name}`

Deletes a Network Connectivity Center hub.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the hub to delete. |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await networkconnectivity.hubs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.global.hubs.acceptSpoke`

**POST** `v1/{+name}:acceptSpoke`

Accepts a proposal to attach a Network Connectivity Center spoke to a hub.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the hub into which to accept the spoke. |

**Request body**: `AcceptHubSpokeRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await networkconnectivity.hubs.acceptSpoke({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.global.hubs.create`

**POST** `v1/{+parent}/hubs`

Creates a new Network Connectivity Center hub in the specified project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource. |
| `hubId` | `string` | query | No | Required. A unique identifier for the hub. |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |

**Request body**: `Hub`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await networkconnectivity.hubs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.global.hubs.list`

**GET** `v1/{+parent}/hubs`

Lists the Network Connectivity Center hubs associated with a given project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource's name. |
| `filter` | `string` | query | No | An expression that filters the list of results. |
| `orderBy` | `string` | query | No | Sort the results by a certain order. |
| `pageSize` | `integer` | query | No | The maximum number of results per page to return. |
| `pageToken` | `string` | query | No | The page token. |

**Response**: `ListHubsResponse`

```typescript
const res = await networkconnectivity.hubs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.global.hubs.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await networkconnectivity.hubs.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.global.hubs.patch`

**PATCH** `v1/{+name}`

Updates the description and/or labels of a Network Connectivity Center hub.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The name of the hub. Hub names must be unique. They use the following form: `projects/{project_number}/loc... |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `updateMask` | `string` | query | No | Optional. In the case of an update to an existing hub, field mask is used to specify the fields to be overwritten. Th... |

**Request body**: `Hub`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await networkconnectivity.hubs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.global.hubs.listSpokes`

**GET** `v1/{+name}:listSpokes`

Lists the Network Connectivity Center spokes associated with a specified hub and location. The list includes both spokes that are attached to the hub and spokes that have been proposed but not yet accepted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the hub. |
| `filter` | `string` | query | No | An expression that filters the list of results. |
| `orderBy` | `string` | query | No | Sort the results by name or create_time. |
| `pageSize` | `integer` | query | No | The maximum number of results to return per page. |
| `pageToken` | `string` | query | No | The page token. |
| `spokeLocations` | `string` | query | No | A list of locations. Specify one of the following: `[global]`, a single region (for example, `[us-central1]`), or a c... |
| `view` | `string` | query | No | The view of the spoke to return. The view that you use determines which spoke fields are included in the response. |

**Response**: `ListHubSpokesResponse`

```typescript
const res = await networkconnectivity.hubs.listSpokes({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.global.hubs.routeTables.get`

**GET** `v1/{+name}`

Gets details about a Network Connectivity Center route table.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the route table resource. |

**Response**: `RouteTable`

```typescript
const res = await networkconnectivity.routeTables.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.global.hubs.routeTables.list`

**GET** `v1/{+parent}/routeTables`

Lists route tables in a given hub.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource's name. |
| `filter` | `string` | query | No | An expression that filters the list of results. |
| `orderBy` | `string` | query | No | Sort the results by a certain order. |
| `pageSize` | `integer` | query | No | The maximum number of results to return per page. |
| `pageToken` | `string` | query | No | The page token. |

**Response**: `ListRouteTablesResponse`

```typescript
const res = await networkconnectivity.routeTables.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.global.hubs.routeTables.routes.get`

**GET** `v1/{+name}`

Gets details about the specified route.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the route resource. |

**Response**: `Route`

```typescript
const res = await networkconnectivity.routes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.global.hubs.routeTables.routes.list`

**GET** `v1/{+parent}/routes`

Lists routes in a given route table.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource's name. |
| `filter` | `string` | query | No | An expression that filters the list of results. |
| `orderBy` | `string` | query | No | Sort the results by a certain order. |
| `pageSize` | `integer` | query | No | The maximum number of results to return per page. |
| `pageToken` | `string` | query | No | The page token. |

**Response**: `ListRoutesResponse`

```typescript
const res = await networkconnectivity.routes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.global.hubs.groups.get`

**GET** `v1/{+name}`

Gets details about a Network Connectivity Center group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the route table resource. |

**Response**: `Group`

```typescript
const res = await networkconnectivity.groups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.global.hubs.groups.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await networkconnectivity.groups.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.global.hubs.groups.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a Network Connectivity Center group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The name of the group. Group names must be unique. They use the following form: `projects/{project_number}... |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `updateMask` | `string` | query | No | Optional. In the case of an update to an existing group, field mask is used to specify the fields to be overwritten. ... |

**Request body**: `Group`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await networkconnectivity.groups.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.global.hubs.groups.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await networkconnectivity.groups.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.global.hubs.groups.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await networkconnectivity.groups.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.global.hubs.groups.list`

**GET** `v1/{+parent}/groups`

Lists groups in a given hub.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource's name. |
| `filter` | `string` | query | No | An expression that filters the list of results. |
| `orderBy` | `string` | query | No | Sort the results by a certain order. |
| `pageSize` | `integer` | query | No | The maximum number of results to return per page. |
| `pageToken` | `string` | query | No | The page token. |

**Response**: `ListGroupsResponse`

```typescript
const res = await networkconnectivity.groups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.automatedDnsRecords.delete`

**DELETE** `v1/{+name}`

Deletes a single AutomatedDnsRecord.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the AutomatedDnsRecord to delete. |
| `deleteMode` | `string` | query | No | Optional. Delete mode when deleting AutomatedDnsRecord. If set to DEPROGRAM, the record will be deprogrammed in Cloud... |
| `etag` | `string` | query | No | Optional. The etag is computed by the server, and may be sent on update and delete requests to ensure the client has ... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await networkconnectivity.automatedDnsRecords.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.automatedDnsRecords.get`

**GET** `v1/{+name}`

Gets details of a single AutomatedDnsRecord.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the AutomatedDnsRecord to get. Format: projects/{project}/locations/{location}/automatedDnsRecords/... |

**Response**: `AutomatedDnsRecord`

```typescript
const res = await networkconnectivity.automatedDnsRecords.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.automatedDnsRecords.create`

**POST** `v1/{+parent}/automatedDnsRecords`

Creates a new AutomatedDnsRecord in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource's name of the AutomatedDnsRecord. ex. projects/123/locations/us-east1 |
| `automatedDnsRecordId` | `string` | query | No | Optional. Resource ID (i.e. 'foo' in '[...]/projects/p/locations/l/automatedDnsRecords/foo') See https://google.aip.d... |
| `insertMode` | `string` | query | No | Optional. The insert mode when creating AutomatedDnsRecord. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Request body**: `AutomatedDnsRecord`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await networkconnectivity.automatedDnsRecords.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.automatedDnsRecords.list`

**GET** `v1/{+parent}/automatedDnsRecords`

Lists AutomatedDnsRecords in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource's name. ex. projects/123/locations/us-east1 |
| `filter` | `string` | query | No | A filter expression that filters the results listed in the response. |
| `orderBy` | `string` | query | No | Sort the results by a certain order. |
| `pageSize` | `integer` | query | No | The maximum number of results per page that should be returned. |
| `pageToken` | `string` | query | No | The page token. |

**Response**: `ListAutomatedDnsRecordsResponse`

```typescript
const res = await networkconnectivity.automatedDnsRecords.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.serviceConnectionMaps.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single ServiceConnectionMap.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The name of a ServiceConnectionMap. Format: projects/{project}/locations/{location}/serviceConnectionMaps/... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the ServiceConnectionMap resource by the upda... |

**Request body**: `ServiceConnectionMap`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await networkconnectivity.serviceConnectionMaps.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.serviceConnectionMaps.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await networkconnectivity.serviceConnectionMaps.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.serviceConnectionMaps.delete`

**DELETE** `v1/{+name}`

Deletes a single ServiceConnectionMap.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the ServiceConnectionMap to delete. |
| `etag` | `string` | query | No | Optional. The etag is computed by the server, and may be sent on update and delete requests to ensure the client has ... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await networkconnectivity.serviceConnectionMaps.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.serviceConnectionMaps.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await networkconnectivity.serviceConnectionMaps.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.serviceConnectionMaps.get`

**GET** `v1/{+name}`

Gets details of a single ServiceConnectionMap.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the ServiceConnectionMap to get. |

**Response**: `ServiceConnectionMap`

```typescript
const res = await networkconnectivity.serviceConnectionMaps.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.serviceConnectionMaps.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await networkconnectivity.serviceConnectionMaps.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.serviceConnectionMaps.create`

**POST** `v1/{+parent}/serviceConnectionMaps`

Creates a new ServiceConnectionMap in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource's name of the ServiceConnectionMap. ex. projects/123/locations/us-east1 |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `serviceConnectionMapId` | `string` | query | No | Optional. Resource ID (i.e. 'foo' in '[...]/projects/p/locations/l/serviceConnectionMaps/foo') See https://google.aip... |

**Request body**: `ServiceConnectionMap`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await networkconnectivity.serviceConnectionMaps.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.serviceConnectionMaps.list`

**GET** `v1/{+parent}/serviceConnectionMaps`

Lists ServiceConnectionMaps in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource's name. ex. projects/123/locations/us-east1 |
| `filter` | `string` | query | No | A filter expression that filters the results listed in the response. |
| `orderBy` | `string` | query | No | Sort the results by a certain order. |
| `pageSize` | `integer` | query | No | The maximum number of results per page that should be returned. |
| `pageToken` | `string` | query | No | The page token. |

**Response**: `ListServiceConnectionMapsResponse`

```typescript
const res = await networkconnectivity.serviceConnectionMaps.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.regionalEndpoints.delete`

**DELETE** `v1/{+name}`

Deletes a single RegionalEndpoint.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the RegionalEndpoint to delete. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await networkconnectivity.regionalEndpoints.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.regionalEndpoints.create`

**POST** `v1/{+parent}/regionalEndpoints`

Creates a new RegionalEndpoint in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource's name of the RegionalEndpoint. |
| `regionalEndpointId` | `string` | query | No | Required. Unique id of the Regional Endpoint to be created. @pattern: ^[-a-z0-9](?:[-a-z0-9]{0,44})[a-z0-9]$ |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Request body**: `RegionalEndpoint`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await networkconnectivity.regionalEndpoints.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.regionalEndpoints.list`

**GET** `v1/{+parent}/regionalEndpoints`

Lists RegionalEndpoints in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource's name of the RegionalEndpoint. |
| `filter` | `string` | query | No | A filter expression that filters the results listed in the response. |
| `orderBy` | `string` | query | No | Sort the results by a certain order. |
| `pageSize` | `integer` | query | No | Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appropriate de... |
| `pageToken` | `string` | query | No | A page token. |

**Response**: `ListRegionalEndpointsResponse`

```typescript
const res = await networkconnectivity.regionalEndpoints.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.regionalEndpoints.get`

**GET** `v1/{+name}`

Gets details of a single RegionalEndpoint.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the RegionalEndpoint resource to get. Format: `projects/{project}/locations/{location}/regionalEndp... |

**Response**: `RegionalEndpoint`

```typescript
const res = await networkconnectivity.regionalEndpoints.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.internalRanges.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await networkconnectivity.internalRanges.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.internalRanges.list`

**GET** `v1/{+parent}/internalRanges`

Lists internal ranges in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource's name. |
| `filter` | `string` | query | No | A filter expression that filters the results listed in the response. |
| `orderBy` | `string` | query | No | Sort the results by a certain order. |
| `pageSize` | `integer` | query | No | The maximum number of results per page that should be returned. |
| `pageToken` | `string` | query | No | The page token. |

**Response**: `ListInternalRangesResponse`

```typescript
const res = await networkconnectivity.internalRanges.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.internalRanges.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await networkconnectivity.internalRanges.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.internalRanges.delete`

**DELETE** `v1/{+name}`

Deletes a single internal range.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the internal range to delete. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await networkconnectivity.internalRanges.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.internalRanges.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single internal range.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The name of an internal range. Format: projects/{project}/locations/{location}/internalRanges/{internal_r... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the InternalRange resource by the update. The... |

**Request body**: `InternalRange`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await networkconnectivity.internalRanges.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.internalRanges.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await networkconnectivity.internalRanges.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.internalRanges.create`

**POST** `v1/{+parent}/internalRanges`

Creates a new internal range in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource's name of the internal range. |
| `internalRangeId` | `string` | query | No | Optional. Resource ID (i.e. 'foo' in '[...]/projects/p/locations/l/internalRanges/foo') See https://google.aip.dev/12... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Request body**: `InternalRange`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await networkconnectivity.internalRanges.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.internalRanges.get`

**GET** `v1/{+name}`

Gets details of a single internal range.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the InternalRange to get. |

**Response**: `InternalRange`

```typescript
const res = await networkconnectivity.internalRanges.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.serviceClasses.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single ServiceClass.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The name of a ServiceClass resource. Format: projects/{project}/locations/{location}/serviceClasses/{servi... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the ServiceClass resource by the update. The ... |

**Request body**: `ServiceClass`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await networkconnectivity.serviceClasses.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.serviceClasses.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await networkconnectivity.serviceClasses.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.serviceClasses.list`

**GET** `v1/{+parent}/serviceClasses`

Lists ServiceClasses in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource's name. ex. projects/123/locations/us-east1 |
| `filter` | `string` | query | No | A filter expression that filters the results listed in the response. |
| `orderBy` | `string` | query | No | Sort the results by a certain order. |
| `pageSize` | `integer` | query | No | The maximum number of results per page that should be returned. |
| `pageToken` | `string` | query | No | The page token. |

**Response**: `ListServiceClassesResponse`

```typescript
const res = await networkconnectivity.serviceClasses.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.serviceClasses.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await networkconnectivity.serviceClasses.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.serviceClasses.get`

**GET** `v1/{+name}`

Gets details of a single ServiceClass.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the ServiceClass to get. |

**Response**: `ServiceClass`

```typescript
const res = await networkconnectivity.serviceClasses.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.serviceClasses.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await networkconnectivity.serviceClasses.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.serviceClasses.delete`

**DELETE** `v1/{+name}`

Deletes a single ServiceClass.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the ServiceClass to delete. |
| `etag` | `string` | query | No | Optional. The etag is computed by the server, and may be sent on update and delete requests to ensure the client has ... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await networkconnectivity.serviceClasses.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.spokes.get`

**GET** `v1/{+name}`

Gets details about a Network Connectivity Center spoke.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the spoke resource. |

**Response**: `Spoke`

```typescript
const res = await networkconnectivity.spokes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.spokes.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await networkconnectivity.spokes.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.spokes.delete`

**DELETE** `v1/{+name}`

Deletes a Network Connectivity Center spoke.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the spoke to delete. |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await networkconnectivity.spokes.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.spokes.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await networkconnectivity.spokes.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.spokes.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a Network Connectivity Center spoke.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The name of the spoke. Spoke names must be unique. They use the following form: `projects/{project_number}... |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `updateMask` | `string` | query | No | Optional. In the case of an update to an existing spoke, field mask is used to specify the fields to be overwritten. ... |

**Request body**: `Spoke`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await networkconnectivity.spokes.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.spokes.create`

**POST** `v1/{+parent}/spokes`

Creates a Network Connectivity Center spoke.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource. |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `spokeId` | `string` | query | No | Required. Unique id for the spoke to create. |

**Request body**: `Spoke`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await networkconnectivity.spokes.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.spokes.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await networkconnectivity.spokes.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.spokes.list`

**GET** `v1/{+parent}/spokes`

Lists the Network Connectivity Center spokes in a specified project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource. |
| `filter` | `string` | query | No | An expression that filters the list of results. |
| `orderBy` | `string` | query | No | Sort the results by a certain order. |
| `pageSize` | `integer` | query | No | The maximum number of results to return per page. |
| `pageToken` | `string` | query | No | The page token. |

**Response**: `ListSpokesResponse`

```typescript
const res = await networkconnectivity.spokes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.multicloudDataTransferConfigs.get`

**GET** `v1/{+name}`

Gets the details of a `MulticloudDataTransferConfig` resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the `MulticloudDataTransferConfig` resource to get. |

**Response**: `MulticloudDataTransferConfig`

```typescript
const res = await networkconnectivity.multicloudDataTransferConfigs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.multicloudDataTransferConfigs.delete`

**DELETE** `v1/{+name}`

Deletes a `MulticloudDataTransferConfig` resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the `MulticloudDataTransferConfig` resource to delete. |
| `etag` | `string` | query | No | Optional. The etag is computed by the server, and might be sent with update and delete requests so that the client ha... |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await networkconnectivity.multicloudDataTransferConfigs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.multicloudDataTransferConfigs.create`

**POST** `v1/{+parent}/multicloudDataTransferConfigs`

Creates a `MulticloudDataTransferConfig` resource in a specified project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent resource. |
| `multicloudDataTransferConfigId` | `string` | query | No | Required. The ID to use for the `MulticloudDataTransferConfig` resource, which becomes the final component of the `Mu... |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |

**Request body**: `MulticloudDataTransferConfig`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await networkconnectivity.multicloudDataTransferConfigs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.multicloudDataTransferConfigs.list`

**GET** `v1/{+parent}/multicloudDataTransferConfigs`

Lists the `MulticloudDataTransferConfig` resources in a specified project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent resource. |
| `filter` | `string` | query | No | Optional. An expression that filters the results listed in the response. |
| `orderBy` | `string` | query | No | Optional. The sort order of the results. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results listed per page. |
| `pageToken` | `string` | query | No | Optional. The page token. |
| `returnPartialSuccess` | `boolean` | query | No | Optional. If `true`, allows partial responses for multi-regional aggregated list requests. |

**Response**: `ListMulticloudDataTransferConfigsResponse`

```typescript
const res = await networkconnectivity.multicloudDataTransferConfigs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.multicloudDataTransferConfigs.patch`

**PATCH** `v1/{+name}`

Updates a `MulticloudDataTransferConfig` resource in a specified project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The name of the `MulticloudDataTransferConfig` resource. Format: `projects/{project}/locations/{location}... |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `updateMask` | `string` | query | No | Optional. `FieldMask` is used to specify the fields in the `MulticloudDataTransferConfig` resource to be overwritten ... |

**Request body**: `MulticloudDataTransferConfig`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await networkconnectivity.multicloudDataTransferConfigs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.multicloudDataTransferConfigs.destinations.create`

**POST** `v1/{+parent}/destinations`

Creates a `Destination` resource in a specified project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent resource. |
| `destinationId` | `string` | query | No | Required. The ID to use for the `Destination` resource, which becomes the final component of the `Destination` resour... |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |

**Request body**: `Destination`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await networkconnectivity.destinations.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.multicloudDataTransferConfigs.destinations.list`

**GET** `v1/{+parent}/destinations`

Lists the `Destination` resources in a specified project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent resource. |
| `filter` | `string` | query | No | Optional. An expression that filters the results listed in the response. |
| `orderBy` | `string` | query | No | Optional. The sort order of the results. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results listed per page. |
| `pageToken` | `string` | query | No | Optional. The page token. |
| `returnPartialSuccess` | `boolean` | query | No | Optional. If `true`, allow partial responses for multi-regional aggregated list requests. |

**Response**: `ListDestinationsResponse`

```typescript
const res = await networkconnectivity.destinations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.multicloudDataTransferConfigs.destinations.delete`

**DELETE** `v1/{+name}`

Deletes a `Destination` resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the `Destination` resource to delete. |
| `etag` | `string` | query | No | Optional. The etag is computed by the server, and might be sent with update and delete requests so that the client ha... |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await networkconnectivity.destinations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.multicloudDataTransferConfigs.destinations.patch`

**PATCH** `v1/{+name}`

Updates a `Destination` resource in a specified project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The name of the `Destination` resource. Format: `projects/{project}/locations/{location}/multicloudDataTr... |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `updateMask` | `string` | query | No | Optional. `FieldMask is used to specify the fields to be overwritten in the `Destination` resource by the update. The... |

**Request body**: `Destination`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await networkconnectivity.destinations.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.multicloudDataTransferConfigs.destinations.get`

**GET** `v1/{+name}`

Gets the details of a `Destination` resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the `Destination` resource to get. |

**Response**: `Destination`

```typescript
const res = await networkconnectivity.destinations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.multicloudDataTransferSupportedServices.get`

**GET** `v1/{+name}`

Gets the details of a service that is supported for Data Transfer Essentials.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the service. |

**Response**: `MulticloudDataTransferSupportedService`

```typescript
const res = await networkconnectivity.multicloudDataTransferSupportedServices.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.multicloudDataTransferSupportedServices.list`

**GET** `v1/{+parent}/multicloudDataTransferSupportedServices`

Lists the services in the project for a region that are supported for Data Transfer Essentials.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent resource. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results listed per page. |
| `pageToken` | `string` | query | No | Optional. The page token. |

**Response**: `ListMulticloudDataTransferSupportedServicesResponse`

```typescript
const res = await networkconnectivity.multicloudDataTransferSupportedServices.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `GoogleLongrunningCancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await networkconnectivity.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await networkconnectivity.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.operations.list`

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

**Response**: `GoogleLongrunningListOperationsResponse`

```typescript
const res = await networkconnectivity.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkconnectivity.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await networkconnectivity.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AcceptHubSpokeRequest`

The request for HubService.AcceptHubSpoke.

| Property | Type | Description |
|----------|------|-------------|
| `requestId` | `string` | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retr... |
| `spokeUri` | `string` | Required. The URI of the spoke to accept into the hub. |

### `AcceptHubSpokeResponse`

The response for HubService.AcceptHubSpoke.

| Property | Type | Description |
|----------|------|-------------|
| `spoke` | `Spoke` | The spoke that was operated on. |

### `AcceptSpokeUpdateRequest`

The request for HubService.AcceptSpokeUpdate.

| Property | Type | Description |
|----------|------|-------------|
| `requestId` | `string` | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retr... |
| `spokeEtag` | `string` | Required. The etag of the spoke to accept update. |
| `spokeUri` | `string` | Required. The URI of the spoke to accept update. |

### `AllocationOptions`

Range auto-allocation options, to be optionally used when CIDR block is not explicitly set.

| Property | Type | Description |
|----------|------|-------------|
| `allocationStrategy` | `string` | Optional. Allocation strategy Not setting this field when the allocation is requested means an im... |
| `firstAvailableRangesLookupSize` | `integer` | Optional. This field must be set only when allocation_strategy is set to RANDOM_FIRST_N_AVAILABLE... |

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

### `AutoAccept`

The auto-accept setting for a group controls whether proposed spokes are automatically attached to the hub. If auto-accept is enabled, the spoke immediately is attached to the hub and becomes part of the group. In this case, the new spoke is in the ACTIVE state. If auto-accept is disabled, the spoke goes to the INACTIVE state, and it must be reviewed and accepted by a hub administrator.

| Property | Type | Description |
|----------|------|-------------|
| `autoAcceptProjects` | `array<string>` | Optional. A list of project ids or project numbers for which you want to enable auto-accept. The ... |

### `AutoCreatedSubnetworkInfo`

Information for the automatically created subnetwork and its associated IR.

| Property | Type | Description |
|----------|------|-------------|
| `delinked` | `boolean` | Output only. Indicates whether the subnetwork is delinked from the Service Connection Policy. Onl... |
| `internalRange` | `string` | Output only. URI of the automatically created Internal Range. Only set if the subnetwork mode is ... |
| `internalRangeRef` | `string` | Output only. URI of the automatically created Internal Range reference. Only set if the subnetwor... |
| `subnetwork` | `string` | Output only. URI of the automatically created subnetwork. Only set if the subnetwork mode is AUTO... |
| `subnetworkRef` | `string` | Output only. URI of the automatically created subnetwork reference. Only set if the subnetwork mo... |

### `AutomatedDnsCreationSpec`

The specification for automatically creating a DNS record.

| Property | Type | Description |
|----------|------|-------------|
| `dnsSuffix` | `string` | Required. The DNS suffix to use for the DNS record. Must end with a dot. This should be a valid D... |
| `hostname` | `string` | Required. The hostname (the first label of the FQDN) to use for the DNS record. This should be a ... |
| `ttl` | `string` | Optional. The Time To Live for the DNS record, in seconds. If not provided, a default of 30 secon... |

### `AutomatedDnsRecord`

Represents a DNS record managed by the AutomatedDnsRecord API.

| Property | Type | Description |
|----------|------|-------------|
| `consumerNetwork` | `string` | Required. Immutable. The full resource path of the consumer network this AutomatedDnsRecord is vi... |
| `createTime` | `string` | Output only. The timestamp of when the record was created. |
| `creationMode` | `string` | Required. Immutable. The creation mode of the AutomatedDnsRecord. This field is immutable. |
| `currentConfig` | `Config` | Output only. The current settings for this record as identified by (`hostname`, `dns_suffix`, `ty... |
| `description` | `string` | A human-readable description of the record. |
| `dnsSuffix` | `string` | Required. Immutable. The dns suffix for this record to use in longest-suffix matching. Requires a... |
| `dnsZone` | `string` | Output only. DnsZone is the DNS zone managed by automation. Format: projects/{project}/managedZon... |
| `etag` | `string` | Optional. The etag is computed by the server, and may be sent on update and delete requests to en... |
| `fqdn` | `string` | Output only. The FQDN created by combining the hostname and dns suffix. Should include a trailing... |
| `hostname` | `string` | Required. Immutable. The hostname for the DNS record. This value will be prepended to the `dns_su... |
| `labels` | `object` | Optional. User-defined labels. |
| `name` | `string` | Immutable. Identifier. The name of an AutomatedDnsRecord. Format: projects/{project}/locations/{l... |
| `originalConfig` | `Config` | Required. Immutable. The configuration settings used to create this DNS record. These settings de... |
| `recordType` | `string` | Required. Immutable. The identifier of a supported record type. |
| `serviceClass` | `string` | Required. Immutable. The service class identifier which authorizes this AutomatedDnsRecord. Any A... |
| `state` | `string` | Output only. The current operational state of this AutomatedDnsRecord as managed by Service Conne... |
| `stateDetails` | `string` | Output only. A human-readable message providing more context about the current state, such as an ... |
| `updateTime` | `string` | Output only. The timestamp of when the record was updated. |

### `Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `CheckConsumerConfigRequest`

Request for CheckConsumerConfig.

| Property | Type | Description |
|----------|------|-------------|
| `consumerNetwork` | `string` | Required. Full resource name of the consumer network. Example: - projects/{project}/global/networ... |
| `endpointProject` | `string` | The project number or ID where the PSC endpoint is to be created. |
| `requestedIpVersion` | `string` | The requested IP Version |
| `serviceClass` | `string` | Required. The service class identifier of the producer. |

### `CheckConsumerConfigResponse`

Response for CheckConsumerConfig.

| Property | Type | Description |
|----------|------|-------------|
| `errors` | `array<string>` | List of validation errors. If the list is empty, the consumer config is valid. |

### `Config`

Defines the configuration of a DNS record.

| Property | Type | Description |
|----------|------|-------------|
| `rrdatas` | `array<string>` | Required. The list of resource record data strings. The content and format of these strings depen... |
| `ttl` | `string` | Required. Number of seconds that this DNS record can be cached by resolvers. |

### `ConsumerPscConfig`

Allow the producer to specify which consumers can connect to it.

| Property | Type | Description |
|----------|------|-------------|
| `consumerInstanceProject` | `string` | Required. The project ID or project number of the consumer project. This project is the one that ... |
| `disableGlobalAccess` | `boolean` | This is used in PSC consumer ForwardingRule to control whether the PSC endpoint can be accessed f... |
| `ipVersion` | `string` | The requested IP version for the PSC connection. |
| `network` | `string` | The resource path of the consumer network where PSC connections are allowed to be created in. Not... |
| `producerInstanceId` | `string` | Immutable. Deprecated. Use producer_instance_metadata instead. An immutable identifier for the pr... |
| `producerInstanceMetadata` | `object` | Immutable. An immutable map for the producer instance metadata. |
| `project` | `string` | The consumer project where PSC connections are allowed to be created in. |
| `serviceAttachmentIpAddressMap` | `object` | Optional. A map to store mapping between customer vip and target service attachment. This field c... |
| `state` | `string` | Output only. Overall state of PSC Connections management for this consumer psc config. |

### `ConsumerPscConnection`

PSC connection details on consumer side.

| Property | Type | Description |
|----------|------|-------------|
| `dnsAutomationStatus` | `DnsAutomationStatus` | Output only. The status of DNS automation for this PSC connection. |
| `error` | `GoogleRpcStatus` | The most recent error during operating this connection. |
| `errorInfo` | `GoogleRpcErrorInfo` | Output only. The error info for the latest error during operating this connection. |
| `errorType` | `string` | The error type indicates whether the error is consumer facing, producer facing or system internal. |
| `forwardingRule` | `string` | The URI of the consumer forwarding rule created. Example: projects/{projectNumOrId}/regions/us-ea... |
| `gceOperation` | `string` | The last Compute Engine operation to setup PSC connection. |
| `ip` | `string` | The IP literal allocated on the consumer network for the PSC forwarding rule that is created to c... |
| `ipVersion` | `string` | The requested IP version for the PSC connection. |
| `network` | `string` | The consumer network whose PSC forwarding rule is connected to the service attachments in this se... |
| `producerInstanceId` | `string` | Immutable. Deprecated. Use producer_instance_metadata instead. An immutable identifier for the pr... |
| `producerInstanceMetadata` | `object` | Immutable. An immutable map for the producer instance metadata. |
| `project` | `string` | The consumer project whose PSC forwarding rule is connected to the service attachments in this se... |
| `pscConnectionId` | `string` | The PSC connection id of the PSC forwarding rule connected to the service attachments in this ser... |
| `selectedSubnetwork` | `string` | Output only. The URI of the selected subnetwork selected to allocate IP address for this connection. |
| `serviceAttachmentUri` | `string` | The URI of a service attachment which is the target of the PSC connection. |
| `state` | `string` | The state of the PSC connection. |

### `Destination`

The `Destination` resource. It specifies the IP prefix and the associated autonomous system numbers (ASN) that you want to include in a `MulticloudDataTransferConfig` resource.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Time when the `Destination` resource was created. |
| `description` | `string` | Optional. A description of this resource. |
| `endpoints` | `array<DestinationEndpoint>` | Required. Unordered list. The list of `DestinationEndpoint` resources configured for the IP prefix. |
| `etag` | `string` | The etag is computed by the server, and might be sent with update and delete requests so that the... |
| `ipPrefix` | `string` | Required. Immutable. The IP prefix that represents your workload on another CSP. |
| `labels` | `object` | Optional. User-defined labels. |
| `name` | `string` | Identifier. The name of the `Destination` resource. Format: `projects/{project}/locations/{locati... |
| `stateTimeline` | `StateTimeline` | Output only. The timeline of the expected `Destination` states or the current rest state. If a st... |
| `uid` | `string` | Output only. The Google-generated unique ID for the `Destination` resource. This value is unique ... |
| `updateTime` | `string` | Output only. Time when the `Destination` resource was updated. |

### `DestinationEndpoint`

The metadata for a `DestinationEndpoint` resource.

| Property | Type | Description |
|----------|------|-------------|
| `asn` | `string` | Required. The ASN of the remote IP prefix. |
| `csp` | `string` | Required. The CSP of the remote IP prefix. |
| `state` | `string` | Output only. The state of the `DestinationEndpoint` resource. |
| `updateTime` | `string` | Output only. Time when the `DestinationEndpoint` resource was updated. |

### `DnsAutomationStatus`

The status of DNS automation for a PSC connection.

| Property | Type | Description |
|----------|------|-------------|
| `error` | `GoogleRpcStatus` | Output only. The error details if the state is CREATE_FAILED or DELETE_FAILED. |
| `fqdn` | `string` | Output only. The fully qualified domain name of the DNS record. |
| `state` | `string` | Output only. The current state of DNS automation. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `Filter`

Filter matches L4 traffic.

| Property | Type | Description |
|----------|------|-------------|
| `destRange` | `string` | Optional. The destination IP range of outgoing packets that this policy-based route applies to. D... |
| `ipProtocol` | `string` | Optional. The IP protocol that this policy-based route applies to. Valid values are 'TCP', 'UDP',... |
| `protocolVersion` | `string` | Required. Internet protocol versions this policy-based route applies to. IPV4 and IPV6 is supported. |
| `srcRange` | `string` | Optional. The source IP range of outgoing packets that this policy-based route applies to. Defaul... |

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

### `GoogleRpcErrorInfo`

Describes the cause of the error with structured details. Example of an error when contacting the "pubsub.googleapis.com" API when it is not enabled: { "reason": "API_DISABLED" "domain": "googleapis.com" "metadata": { "resource": "projects/123", "service": "pubsub.googleapis.com" } } This response indicates that the pubsub.googleapis.com API is not enabled. Example of an error that is returned when attempting to create a Spanner instance in a region that is out of stock: { "reason": "STOCKOUT" "domain": "spanner.googleapis.com", "metadata": { "availableRegions": "us-central1,us-east2" } }

| Property | Type | Description |
|----------|------|-------------|
| `domain` | `string` | The logical grouping to which the "reason" belongs. The error domain is typically the registered ... |
| `metadata` | `object` | Additional structured details about this error. Keys must match a regular expression of `a-z+` bu... |
| `reason` | `string` | The reason of the error. This is a constant value that identifies the proximate cause of the erro... |

### `GoogleRpcStatus`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `Group`

A group represents a subset of spokes attached to a hub.

| Property | Type | Description |
|----------|------|-------------|
| `autoAccept` | `AutoAccept` | Optional. The auto-accept setting for this group. |
| `createTime` | `string` | Output only. The time the group was created. |
| `description` | `string` | Optional. The description of the group. |
| `labels` | `object` | Optional. Labels in key-value pair format. For more information about labels, see [Requirements f... |
| `name` | `string` | Immutable. The name of the group. Group names must be unique. They use the following form: `proje... |
| `routeTable` | `string` | Output only. The name of the route table that corresponds to this group. They use the following f... |
| `state` | `string` | Output only. The current lifecycle state of this group. |
| `uid` | `string` | Output only. The Google-generated UUID for the group. This value is unique across all group resou... |
| `updateTime` | `string` | Output only. The time the group was last updated. |

### `Hub`

A Network Connectivity Center hub is a global management resource to which you attach spokes. A single hub can contain spokes from multiple regions. However, if any of a hub's spokes use the site-to-site data transfer feature, the resources associated with those spokes must all be in the same VPC network. Spokes that do not use site-to-site data transfer can be associated with any VPC network in your project.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the hub was created. |
| `description` | `string` | Optional. An optional description of the hub. |
| `exportPsc` | `boolean` | Optional. Whether Private Service Connect connection propagation is enabled for the hub. If true,... |
| `labels` | `object` | Optional labels in key-value pair format. For more information about labels, see [Requirements fo... |
| `name` | `string` | Immutable. The name of the hub. Hub names must be unique. They use the following form: `projects/... |
| `policyMode` | `string` | Optional. The policy mode of this hub. This field can be either PRESET or CUSTOM. If unspecified,... |
| `presetTopology` | `string` | Optional. The topology implemented in this hub. Currently, this field is only used when policy_mo... |
| `routeTables` | `array<string>` | Output only. The route tables that belong to this hub. They use the following form: `projects/{pr... |
| `routingVpcs` | `array<RoutingVPC>` | Output only. The VPC networks associated with this hub's spokes. This field is read-only. Network... |
| `spokeSummary` | `SpokeSummary` | Output only. A summary of the spokes associated with a hub. The summary includes a count of spoke... |
| `state` | `string` | Output only. The current lifecycle state of this hub. |
| `uniqueId` | `string` | Output only. The Google-generated UUID for the hub. This value is unique across all hub resources... |
| `updateTime` | `string` | Output only. The time the hub was last updated. |

### `HubStatusEntry`

A hub status entry represents the status of a set of propagated Private Service Connect connections grouped by certain fields.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `integer` | The number of propagated Private Service Connect connections with this status. If the `group_by` ... |
| `groupBy` | `string` | The fields that this entry is grouped by. This has the same value as the `group_by` field in the ... |
| `pscPropagationStatus` | `PscPropagationStatus` | The Private Service Connect propagation status. |

### `InterconnectAttachment`

InterconnectAttachment that this route applies to.

| Property | Type | Description |
|----------|------|-------------|
| `region` | `string` | Optional. Cloud region to install this policy-based route on interconnect attachment. Use `all` t... |

### `InternalRange`

The internal range resource for IPAM operations within a VPC network. Used to represent a private address range along with behavioral characteristics of that range (its usage and peering behavior). Networking resources can link to this range if they are created as belonging to it.

| Property | Type | Description |
|----------|------|-------------|
| `allocationOptions` | `AllocationOptions` | Optional. Range auto-allocation options, may be set only when auto-allocation is selected by not ... |
| `createTime` | `string` | Output only. Time when the internal range was created. |
| `description` | `string` | Optional. A description of this resource. |
| `excludeCidrRanges` | `array<string>` | Optional. ExcludeCidrRanges flag. Specifies a set of CIDR blocks that allows exclusion of particu... |
| `immutable` | `boolean` | Optional. Immutable ranges cannot have their fields modified, except for labels and description. |
| `ipCidrRange` | `string` | Optional. The IP range that this internal range defines. NOTE: IPv6 ranges are limited to usage=E... |
| `labels` | `object` | User-defined labels. |
| `migration` | `Migration` | Optional. Must be present if usage is set to FOR_MIGRATION. |
| `name` | `string` | Identifier. The name of an internal range. Format: projects/{project}/locations/{location}/intern... |
| `network` | `string` | Immutable. The URL or resource ID of the network in which to reserve the internal range. The netw... |
| `overlaps` | `array<string>` | Optional. Types of resources that are allowed to overlap with the current internal range. |
| `peering` | `string` | Optional. The type of peering set for this internal range. |
| `prefixLength` | `integer` | Optional. An alternate to ip_cidr_range. Can be set when trying to create an IPv4 reservation tha... |
| `targetCidrRange` | `array<string>` | Optional. Can be set to narrow down or pick a different address space while searching for a free ... |
| `updateTime` | `string` | Output only. Time when the internal range was updated. |
| `usage` | `string` | Optional. The type of usage set for this InternalRange. |
| `users` | `array<string>` | Output only. The list of resources that refer to this internal range. Resources that use the inte... |

### `LinkedInterconnectAttachments`

A collection of VLAN attachment resources. These resources should be redundant attachments that all advertise the same prefixes to Google Cloud. Alternatively, in active/passive configurations, all attachments should be capable of advertising the same prefixes.

| Property | Type | Description |
|----------|------|-------------|
| `includeImportRanges` | `array<string>` | Optional. Hub routes fully encompassed by include import ranges are included during import from hub. |
| `siteToSiteDataTransfer` | `boolean` | A value that controls whether site-to-site data transfer is enabled for these resources. Data tra... |
| `uris` | `array<string>` | The URIs of linked interconnect attachment resources |
| `vpcNetwork` | `string` | Output only. The VPC network where these VLAN attachments are located. |

### `LinkedProducerVpcNetwork`

| Property | Type | Description |
|----------|------|-------------|
| `excludeExportRanges` | `array<string>` | Optional. IP ranges encompassing the subnets to be excluded from peering. |
| `includeExportRanges` | `array<string>` | Optional. IP ranges allowed to be included from peering. |
| `network` | `string` | Immutable. The URI of the Service Consumer VPC that the Producer VPC is peered with. |
| `peering` | `string` | Immutable. The name of the VPC peering between the Service Consumer VPC and the Producer VPC (def... |
| `producerNetwork` | `string` | Output only. The URI of the Producer VPC. |
| `proposedExcludeExportRanges` | `array<string>` | Output only. The proposed exclude export IP ranges waiting for hub administrator's approval. |
| `proposedIncludeExportRanges` | `array<string>` | Output only. The proposed include export IP ranges waiting for hub administrator's approval. |
| `serviceConsumerVpcSpoke` | `string` | Output only. The Service Consumer Network spoke. |

### `LinkedRouterApplianceInstances`

A collection of router appliance instances. If you configure multiple router appliance instances to receive data from the same set of sites outside of Google Cloud, we recommend that you associate those instances with the same spoke.

| Property | Type | Description |
|----------|------|-------------|
| `includeImportRanges` | `array<string>` | Optional. Hub routes fully encompassed by include import ranges are included during import from hub. |
| `instances` | `array<RouterApplianceInstance>` | The list of router appliance instances. |
| `siteToSiteDataTransfer` | `boolean` | A value that controls whether site-to-site data transfer is enabled for these resources. Data tra... |
| `vpcNetwork` | `string` | Output only. The VPC network where these router appliance instances are located. |

### `LinkedVpcNetwork`

An existing VPC network.

| Property | Type | Description |
|----------|------|-------------|
| `excludeExportRanges` | `array<string>` | Optional. IP ranges encompassing the subnets to be excluded from peering. |
| `includeExportRanges` | `array<string>` | Optional. IP ranges allowed to be included from peering. |
| `producerVpcSpokes` | `array<string>` | Output only. The list of Producer VPC spokes that this VPC spoke is a service consumer VPC spoke ... |
| `proposedExcludeExportRanges` | `array<string>` | Output only. The proposed exclude export IP ranges waiting for hub administrator's approval. |
| `proposedIncludeExportRanges` | `array<string>` | Output only. The proposed include export IP ranges waiting for hub administrator's approval. |
| `uri` | `string` | Required. The URI of the VPC network resource. |

### `LinkedVpnTunnels`

A collection of Cloud VPN tunnel resources. These resources should be redundant HA VPN tunnels that all advertise the same prefixes to Google Cloud. Alternatively, in a passive/active configuration, all tunnels should be capable of advertising the same prefixes.

| Property | Type | Description |
|----------|------|-------------|
| `includeImportRanges` | `array<string>` | Optional. Hub routes fully encompassed by include import ranges are included during import from hub. |
| `siteToSiteDataTransfer` | `boolean` | A value that controls whether site-to-site data transfer is enabled for these resources. Data tra... |
| `uris` | `array<string>` | The URIs of linked VPN tunnel resources. |
| `vpcNetwork` | `string` | Output only. The VPC network where these VPN tunnels are located. |

### `ListAutomatedDnsRecordsResponse`

Response for ListAutomatedDnsRecords.

| Property | Type | Description |
|----------|------|-------------|
| `automatedDnsRecords` | `array<AutomatedDnsRecord>` | AutomatedDnsRecords to be returned. |
| `nextPageToken` | `string` | The next pagination token in the List response. It should be used as page_token for the following... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListDestinationsResponse`

Response message to list `Destination` resources.

| Property | Type | Description |
|----------|------|-------------|
| `destinations` | `array<Destination>` | The list of `Destination` resources to be listed. |
| `nextPageToken` | `string` | The next page token. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListGroupsResponse`

Response for HubService.ListGroups method.

| Property | Type | Description |
|----------|------|-------------|
| `groups` | `array<Group>` | The requested groups. |
| `nextPageToken` | `string` | The token for the next page of the response. To see more results, use this value as the page_toke... |
| `unreachable` | `array<string>` | Hubs that could not be reached. |

### `ListHubSpokesResponse`

The response for HubService.ListHubSpokes.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The token for the next page of the response. To see more results, use this value as the page_toke... |
| `spokes` | `array<Spoke>` | The requested spokes. The spoke fields can be partially populated based on the `view` field in th... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListHubsResponse`

Response for HubService.ListHubs method.

| Property | Type | Description |
|----------|------|-------------|
| `hubs` | `array<Hub>` | The requested hubs. |
| `nextPageToken` | `string` | The token for the next page of the response. To see more results, use this value as the page_toke... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListInternalRangesResponse`

Response for InternalRange.ListInternalRanges

| Property | Type | Description |
|----------|------|-------------|
| `internalRanges` | `array<InternalRange>` | Internal ranges to be returned. |
| `nextPageToken` | `string` | The next pagination token in the List response. It should be used as page_token for the following... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListLocationsResponse`

The response message for Locations.ListLocations.

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<Location>` | A list of locations that matches the specified filter in the request. |
| `nextPageToken` | `string` | The standard List next-page token. |

### `ListMulticloudDataTransferConfigsResponse`

Response message to list `MulticloudDataTransferConfig` resources.

| Property | Type | Description |
|----------|------|-------------|
| `multicloudDataTransferConfigs` | `array<MulticloudDataTransferConfig>` | The list of `MulticloudDataTransferConfig` resources to be listed. |
| `nextPageToken` | `string` | The next page token. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListMulticloudDataTransferSupportedServicesResponse`

Response message to list the services in your project in regions that are eligible for Data Transfer Essentials configuration.

| Property | Type | Description |
|----------|------|-------------|
| `multicloudDataTransferSupportedServices` | `array<MulticloudDataTransferSupportedService>` | The list of supported services. |
| `nextPageToken` | `string` | The next page token. |

### `ListPolicyBasedRoutesResponse`

Response for PolicyBasedRoutingService.ListPolicyBasedRoutes method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The next pagination token in the List response. It should be used as page_token for the following... |
| `policyBasedRoutes` | `array<PolicyBasedRoute>` | Policy-based routes to be returned. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListRegionalEndpointsResponse`

Response for ListRegionalEndpoints.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The next pagination token in the List response. It should be used as page_token for the following... |
| `regionalEndpoints` | `array<RegionalEndpoint>` | Regional endpoints to be returned. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListRouteTablesResponse`

Response for HubService.ListRouteTables method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The token for the next page of the response. To see more results, use this value as the page_toke... |
| `routeTables` | `array<RouteTable>` | The requested route tables. |
| `unreachable` | `array<string>` | Hubs that could not be reached. |

### `ListRoutesResponse`

Response for HubService.ListRoutes method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The token for the next page of the response. To see more results, use this value as the page_toke... |
| `routes` | `array<Route>` | The requested routes. |
| `unreachable` | `array<string>` | RouteTables that could not be reached. |

### `ListServiceClassesResponse`

Response for ListServiceClasses.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The next pagination token in the List response. It should be used as page_token for the following... |
| `serviceClasses` | `array<ServiceClass>` | ServiceClasses to be returned. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListServiceConnectionMapsResponse`

Response for ListServiceConnectionMaps.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The next pagination token in the List response. It should be used as page_token for the following... |
| `serviceConnectionMaps` | `array<ServiceConnectionMap>` | ServiceConnectionMaps to be returned. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListServiceConnectionPoliciesResponse`

Response for ListServiceConnectionPolicies.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The next pagination token in the List response. It should be used as page_token for the following... |
| `serviceConnectionPolicies` | `array<ServiceConnectionPolicy>` | ServiceConnectionPolicies to be returned. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListServiceConnectionTokensResponse`

Response for ListServiceConnectionTokens.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The next pagination token in the List response. It should be used as page_token for the following... |
| `serviceConnectionTokens` | `array<ServiceConnectionToken>` | ServiceConnectionTokens to be returned. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListSpokesResponse`

The response for HubService.ListSpokes.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The token for the next page of the response. To see more results, use this value as the page_toke... |
| `spokes` | `array<Spoke>` | The requested spokes. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

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

Metadata about locations

| Property | Type | Description |
|----------|------|-------------|
| `locationFeatures` | `array<string>` | List of supported features |

### `Migration`

Specification for migration with source and target resource names.

| Property | Type | Description |
|----------|------|-------------|
| `source` | `string` | Immutable. Resource path as an URI of the source resource, for example a subnet. The project for ... |
| `target` | `string` | Immutable. Resource path of the target resource. The target project can be different, as in the c... |

### `MulticloudDataTransferConfig`

The `MulticloudDataTransferConfig` resource. It lists the services that you configure for Data Transfer Essentials billing and metering.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Time when the `MulticloudDataTransferConfig` resource was created. |
| `description` | `string` | Optional. A description of this resource. |
| `destinationsActiveCount` | `integer` | Output only. The number of `Destination` resources in use with the `MulticloudDataTransferConfig`... |
| `destinationsCount` | `integer` | Output only. The number of `Destination` resources configured for the `MulticloudDataTransferConf... |
| `etag` | `string` | The etag is computed by the server, and might be sent with update and delete requests so that the... |
| `labels` | `object` | Optional. User-defined labels. |
| `name` | `string` | Identifier. The name of the `MulticloudDataTransferConfig` resource. Format: `projects/{project}/... |
| `services` | `object` | Optional. Maps services to their current or planned states. Service names are keys, and the assoc... |
| `uid` | `string` | Output only. The Google-generated unique ID for the `MulticloudDataTransferConfig` resource. This... |
| `updateTime` | `string` | Output only. Time when the `MulticloudDataTransferConfig` resource was updated. |

### `MulticloudDataTransferSupportedService`

A service in your project in a region that is eligible for Data Transfer Essentials configuration.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Identifier. The name of the service. |
| `serviceConfigs` | `array<ServiceConfig>` | Output only. The network service tier or regional endpoint supported for the service. |

### `NextHopInterconnectAttachment`

A route next hop that leads to an interconnect attachment resource.

| Property | Type | Description |
|----------|------|-------------|
| `siteToSiteDataTransfer` | `boolean` | Indicates whether site-to-site data transfer is allowed for this interconnect attachment resource... |
| `uri` | `string` | The URI of the interconnect attachment resource. |
| `vpcNetwork` | `string` | The VPC network where this interconnect attachment is located. |

### `NextHopRouterApplianceInstance`

A route next hop that leads to a Router appliance instance.

| Property | Type | Description |
|----------|------|-------------|
| `siteToSiteDataTransfer` | `boolean` | Indicates whether site-to-site data transfer is allowed for this Router appliance instance resour... |
| `uri` | `string` | The URI of the Router appliance instance. |
| `vpcNetwork` | `string` | The VPC network where this VM is located. |

### `NextHopSpoke`

A route next hop that leads to a spoke resource.

| Property | Type | Description |
|----------|------|-------------|
| `siteToSiteDataTransfer` | `boolean` | Indicates whether site-to-site data transfer is allowed for this spoke resource. Data transfer is... |
| `uri` | `string` | The URI of the spoke resource. |

### `NextHopVPNTunnel`

A route next hop that leads to a VPN tunnel resource.

| Property | Type | Description |
|----------|------|-------------|
| `siteToSiteDataTransfer` | `boolean` | Indicates whether site-to-site data transfer is allowed for this VPN tunnel resource. Data transf... |
| `uri` | `string` | The URI of the VPN tunnel resource. |
| `vpcNetwork` | `string` | The VPC network where this VPN tunnel is located. |

### `NextHopVpcNetwork`

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` | The URI of the VPC network resource |

### `OperationMetadata`

Represents the metadata of the long-running operation.

| Property | Type | Description |
|----------|------|-------------|
| `apiVersion` | `string` | Output only. API version used to start the operation. |
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `requestedCancellation` | `boolean` | Output only. Identifies whether the user has requested cancellation of the operation. Operations ... |
| `statusMessage` | `string` | Output only. Human-readable status of the operation, if any. |
| `target` | `string` | Output only. Server-defined resource path for the target of the operation. |
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

### `Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `auditConfigs` | `array<AuditConfig>` | Specifies cloud audit logging configuration for this policy. |
| `bindings` | `array<Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `PolicyBasedRoute`

Policy-based routes route L4 network traffic based on not just destination IP address, but also source IP address, protocol, and more. If a policy-based route conflicts with other types of routes, the policy-based route always takes precedence.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Time when the policy-based route was created. |
| `description` | `string` | Optional. An optional description of this resource. Provide this field when you create the resource. |
| `filter` | `Filter` | Required. The filter to match L4 traffic. |
| `interconnectAttachment` | `InterconnectAttachment` | Optional. The interconnect attachments that this policy-based route applies to. |
| `kind` | `string` | Output only. Type of this resource. Always networkconnectivity#policyBasedRoute for policy-based ... |
| `labels` | `object` | User-defined labels. |
| `name` | `string` | Immutable. Identifier. A unique name of the resource in the form of `projects/{project_number}/lo... |
| `network` | `string` | Required. Fully-qualified URL of the network that this route applies to, for example: projects/my... |
| `nextHopIlbIp` | `string` | Optional. The IP address of a global-access-enabled L4 ILB that is the next hop for matching pack... |
| `nextHopOtherRoutes` | `string` | Optional. Other routes that will be referenced to determine the next hop of the packet. |
| `priority` | `integer` | Optional. The priority of this policy-based route. Priority is used to break ties in cases where ... |
| `selfLink` | `string` | Output only. Server-defined fully-qualified URL for this resource. |
| `updateTime` | `string` | Output only. Time when the policy-based route was updated. |
| `virtualMachine` | `VirtualMachine` | Optional. VM instances that this policy-based route applies to. |
| `warnings` | `array<Warnings>` | Output only. If potential misconfigurations are detected for this route, this field will be popul... |

### `ProducerPscConfig`

The PSC configurations on producer side.

| Property | Type | Description |
|----------|------|-------------|
| `automatedDnsCreationSpec` | `AutomatedDnsCreationSpec` | Optional. The specification for automatically creating a DNS record for this PSC connection. |
| `serviceAttachmentUri` | `string` | The resource path of a service attachment. Example: projects/{projectNumOrId}/regions/{region}/se... |

### `PscConfig`

Configuration used for Private Service Connect connections. Used when Infrastructure is PSC.

| Property | Type | Description |
|----------|------|-------------|
| `allowedGoogleProducersResourceHierarchyLevel` | `array<string>` | Optional. List of Projects, Folders, or Organizations from where the Producer instance can be wit... |
| `limit` | `string` | Optional. Max number of PSC connections for this policy. |
| `producerInstanceLocation` | `string` | Optional. ProducerInstanceLocation is used to specify which authorization mechanism to use to det... |
| `subnetworks` | `array<string>` | The resource paths of subnetworks to use for IP address management. Example: projects/{projectNum... |

### `PscConnection`

Information about a specific Private Service Connect connection.

| Property | Type | Description |
|----------|------|-------------|
| `consumerAddress` | `string` | The resource reference of the consumer address. |
| `consumerForwardingRule` | `string` | The resource reference of the PSC Forwarding Rule within the consumer VPC. |
| `consumerTargetProject` | `string` | The project where the PSC connection is created. |
| `error` | `GoogleRpcStatus` | The most recent error during operating this connection. Deprecated, please use error_info instead. |
| `errorInfo` | `GoogleRpcErrorInfo` | Output only. The error info for the latest error during operating this connection. |
| `errorType` | `string` | The error type indicates whether the error is consumer facing, producer facing or system internal. |
| `gceOperation` | `string` | The last Compute Engine operation to setup PSC connection. |
| `ipVersion` | `string` | The requested IP version for the PSC connection. |
| `producerInstanceId` | `string` | Immutable. Deprecated. Use producer_instance_metadata instead. An immutable identifier for the pr... |
| `producerInstanceMetadata` | `object` | Immutable. An immutable map for the producer instance metadata. |
| `pscConnectionId` | `string` | The PSC connection id of the PSC forwarding rule. |
| `selectedSubnetwork` | `string` | Output only. The URI of the subnetwork selected to allocate IP address for this connection. |
| `serviceClass` | `string` | Output only. [Output only] The service class associated with this PSC Connection. The value is de... |
| `state` | `string` | State of the PSC Connection |

### `PscPropagationStatus`

The status of one or more propagated Private Service Connect connections in a hub.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | The propagation status. |
| `message` | `string` | The human-readable summary of the Private Service Connect connection propagation status. |
| `sourceForwardingRule` | `string` | The name of the forwarding rule exported to the hub. |
| `sourceGroup` | `string` | The name of the group that the source spoke belongs to. |
| `sourceSpoke` | `string` | The name of the spoke that the source forwarding rule belongs to. |
| `targetGroup` | `string` | The name of the group that the target spoke belongs to. |
| `targetSpoke` | `string` | The name of the spoke that the source forwarding rule propagates to. |

### `QueryHubStatusResponse`

The response for HubService.QueryHubStatus.

| Property | Type | Description |
|----------|------|-------------|
| `hubStatusEntries` | `array<HubStatusEntry>` | The list of hub status. |
| `nextPageToken` | `string` | The token for the next page of the response. To see more results, use this value as the page_toke... |

### `RegionalEndpoint`

The RegionalEndpoint resource.

| Property | Type | Description |
|----------|------|-------------|
| `accessType` | `string` | Required. The access type of this regional endpoint. This field is reflected in the PSC Forwardin... |
| `address` | `string` | Optional. The IP Address of the Regional Endpoint. When no address is provided, an IP from the su... |
| `createTime` | `string` | Output only. Time when the RegionalEndpoint was created. |
| `description` | `string` | Optional. A description of this resource. |
| `ipAddress` | `string` | Output only. The literal IP address of the PSC Forwarding Rule created on behalf of the customer.... |
| `labels` | `object` | User-defined labels. |
| `name` | `string` | Output only. The name of a RegionalEndpoint. Pattern: `projects/{project}/locations/{location}/re... |
| `network` | `string` | Optional. The name of the VPC network for this private regional endpoint. Format: `projects/{proj... |
| `pscForwardingRule` | `string` | Output only. The resource reference of the PSC Forwarding Rule created on behalf of the customer.... |
| `subnetwork` | `string` | Optional. The name of the subnetwork from which the IP address will be allocated. Format: `projec... |
| `targetGoogleApi` | `string` | Required. The service endpoint this private regional endpoint connects to. Format: `{apiname}.{re... |
| `updateTime` | `string` | Output only. Time when the RegionalEndpoint was updated. |

### `RejectHubSpokeRequest`

The request for HubService.RejectHubSpoke.

| Property | Type | Description |
|----------|------|-------------|
| `details` | `string` | Optional. Additional information provided by the hub administrator. |
| `requestId` | `string` | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retr... |
| `spokeUri` | `string` | Required. The URI of the spoke to reject from the hub. |

### `RejectHubSpokeResponse`

The response for HubService.RejectHubSpoke.

| Property | Type | Description |
|----------|------|-------------|
| `spoke` | `Spoke` | The spoke that was operated on. |

### `RejectSpokeUpdateRequest`

The request for HubService.RejectSpokeUpdate.

| Property | Type | Description |
|----------|------|-------------|
| `details` | `string` | Optional. Additional information provided by the hub administrator. |
| `requestId` | `string` | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retr... |
| `spokeEtag` | `string` | Required. The etag of the spoke to reject update. |
| `spokeUri` | `string` | Required. The URI of the spoke to reject update. |

### `Route`

A route defines a path from VM instances within a spoke to a specific destination resource. Only VPC spokes have routes.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the route was created. |
| `description` | `string` | An optional description of the route. |
| `ipCidrRange` | `string` | The destination IP address range. |
| `labels` | `object` | Optional labels in key-value pair format. For more information about labels, see [Requirements fo... |
| `location` | `string` | Output only. The origin location of the route. Uses the following form: "projects/{project}/locat... |
| `name` | `string` | Immutable. The name of the route. Route names must be unique. Route names use the following form:... |
| `nextHopInterconnectAttachment` | `NextHopInterconnectAttachment` | Immutable. The next-hop VLAN attachment for packets on this route. |
| `nextHopRouterApplianceInstance` | `NextHopRouterApplianceInstance` | Immutable. The next-hop Router appliance instance for packets on this route. |
| `nextHopSpoke` | `NextHopSpoke` | Immutable. The next-hop spoke for packets on this route. |
| `nextHopVpcNetwork` | `NextHopVpcNetwork` | Immutable. The destination VPC network for packets on this route. |
| `nextHopVpnTunnel` | `NextHopVPNTunnel` | Immutable. The next-hop VPN tunnel for packets on this route. |
| `priority` | `string` | Output only. The priority of this route. Priority is used to break ties in cases where a destinat... |
| `spoke` | `string` | Immutable. The spoke that this route leads to. Example: projects/12345/locations/global/spokes/SPOKE |
| `state` | `string` | Output only. The current lifecycle state of the route. |
| `type` | `string` | Output only. The route's type. Its type is determined by the properties of its IP address range. |
| `uid` | `string` | Output only. The Google-generated UUID for the route. This value is unique across all Network Con... |
| `updateTime` | `string` | Output only. The time the route was last updated. |

### `RouteTable`

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the route table was created. |
| `description` | `string` | An optional description of the route table. |
| `labels` | `object` | Optional labels in key-value pair format. For more information about labels, see [Requirements fo... |
| `name` | `string` | Immutable. The name of the route table. Route table names must be unique. They use the following ... |
| `state` | `string` | Output only. The current lifecycle state of this route table. |
| `uid` | `string` | Output only. The Google-generated UUID for the route table. This value is unique across all route... |
| `updateTime` | `string` | Output only. The time the route table was last updated. |

### `RouterApplianceInstance`

A router appliance instance is a Compute Engine virtual machine (VM) instance that acts as a BGP speaker. A router appliance instance is specified by the URI of the VM and the internal IP address of one of the VM's network interfaces.

| Property | Type | Description |
|----------|------|-------------|
| `ipAddress` | `string` | The IP address on the VM to use for peering. |
| `virtualMachine` | `string` | The URI of the VM. |

### `RoutingVPC`

RoutingVPC contains information about the VPC networks associated with the spokes of a Network Connectivity Center hub.

| Property | Type | Description |
|----------|------|-------------|
| `requiredForNewSiteToSiteDataTransferSpokes` | `boolean` | Output only. If true, indicates that this VPC network is currently associated with spokes that us... |
| `uri` | `string` | The URI of the VPC network. |

### `ServiceClass`

The ServiceClass resource.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Time when the ServiceClass was created. |
| `description` | `string` | A description of this resource. |
| `etag` | `string` | Optional. The etag is computed by the server, and may be sent on update and delete requests to en... |
| `labels` | `object` | User-defined labels. |
| `name` | `string` | Immutable. The name of a ServiceClass resource. Format: projects/{project}/locations/{location}/s... |
| `serviceClass` | `string` | Output only. The generated service class name. Use this name to refer to the Service class in Ser... |
| `updateTime` | `string` | Output only. Time when the ServiceClass was updated. |

### `ServiceConfig`

Specifies eligibility information for the service.

| Property | Type | Description |
|----------|------|-------------|
| `eligibilityCriteria` | `string` | Output only. The eligibility criteria for the service. |
| `supportEndTime` | `string` | Output only. The end time for eligibility criteria support. If not specified, no planned end time... |

### `ServiceConnectionMap`

The ServiceConnectionMap resource.

| Property | Type | Description |
|----------|------|-------------|
| `consumerPscConfigs` | `array<ConsumerPscConfig>` | The PSC configurations on consumer side. |
| `consumerPscConnections` | `array<ConsumerPscConnection>` | Output only. PSC connection details on consumer side. |
| `createTime` | `string` | Output only. Time when the ServiceConnectionMap was created. |
| `description` | `string` | A description of this resource. |
| `etag` | `string` | Optional. The etag is computed by the server, and may be sent on update and delete requests to en... |
| `infrastructure` | `string` | Output only. The infrastructure used for connections between consumers/producers. |
| `labels` | `object` | User-defined labels. |
| `name` | `string` | Immutable. The name of a ServiceConnectionMap. Format: projects/{project}/locations/{location}/se... |
| `producerPscConfigs` | `array<ProducerPscConfig>` | The PSC configurations on producer side. |
| `serviceClass` | `string` | The service class identifier this ServiceConnectionMap is for. The user of ServiceConnectionMap c... |
| `serviceClassUri` | `string` | Output only. The service class uri this ServiceConnectionMap is for. |
| `token` | `string` | The token provided by the consumer. This token authenticates that the consumer can create a conne... |
| `updateTime` | `string` | Output only. Time when the ServiceConnectionMap was updated. |

### `ServiceConnectionPolicy`

The ServiceConnectionPolicy resource.

| Property | Type | Description |
|----------|------|-------------|
| `autoCreatedSubnetInfo` | `AutoCreatedSubnetworkInfo` | Output only. Information for the automatically created subnetwork and its associated IR. |
| `createTime` | `string` | Output only. Time when the ServiceConnectionPolicy was created. |
| `description` | `string` | A description of this resource. |
| `etag` | `string` | Optional. The etag is computed by the server, and may be sent on update and delete requests to en... |
| `infrastructure` | `string` | Output only. The type of underlying resources used to create the connection. |
| `labels` | `object` | User-defined labels. |
| `name` | `string` | Immutable. The name of a ServiceConnectionPolicy. Format: projects/{project}/locations/{location}... |
| `network` | `string` | The resource path of the consumer network. Example: - projects/{projectNumOrId}/global/networks/{... |
| `pscConfig` | `PscConfig` | Configuration used for Private Service Connect connections. Used when Infrastructure is PSC. |
| `pscConnections` | `array<PscConnection>` | Output only. [Output only] Information about each Private Service Connect connection. |
| `serviceClass` | `string` | The service class identifier for which this ServiceConnectionPolicy is for. The service class ide... |
| `updateTime` | `string` | Output only. Time when the ServiceConnectionPolicy was updated. |

### `ServiceConnectionToken`

The ServiceConnectionToken resource.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Time when the ServiceConnectionToken was created. |
| `description` | `string` | A description of this resource. |
| `etag` | `string` | Optional. The etag is computed by the server, and may be sent on update and delete requests to en... |
| `expireTime` | `string` | Output only. The time to which this token is valid. |
| `labels` | `object` | User-defined labels. |
| `name` | `string` | Immutable. The name of a ServiceConnectionToken. Format: projects/{project}/locations/{location}/... |
| `network` | `string` | The resource path of the network associated with this token. Example: projects/{projectNumOrId}/g... |
| `token` | `string` | Output only. The token generated by Automation. |
| `updateTime` | `string` | Output only. Time when the ServiceConnectionToken was updated. |

### `SetIamPolicyRequest`

Request message for `SetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `Policy` | REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited ... |
| `updateMask` | `string` | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mas... |

### `Spoke`

A Network Connectivity Center spoke represents one or more network connectivity resources. When you create a spoke, you associate it with a hub. You must also identify a value for exactly one of the following fields: * linked_vpn_tunnels * linked_interconnect_attachments * linked_router_appliance_instances * linked_vpc_network

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the spoke was created. |
| `description` | `string` | Optional. An optional description of the spoke. |
| `etag` | `string` | Optional. This checksum is computed by the server based on the value of other fields, and may be ... |
| `fieldPathsPendingUpdate` | `array<string>` | Optional. The list of fields waiting for hub administrator's approval. |
| `group` | `string` | Optional. The name of the group that this spoke is associated with. |
| `hub` | `string` | Immutable. The name of the hub that this spoke is attached to. |
| `labels` | `object` | Optional labels in key-value pair format. For more information about labels, see [Requirements fo... |
| `linkedInterconnectAttachments` | `LinkedInterconnectAttachments` | Optional. VLAN attachments that are associated with the spoke. |
| `linkedProducerVpcNetwork` | `LinkedProducerVpcNetwork` | Optional. The linked producer VPC that is associated with the spoke. |
| `linkedRouterApplianceInstances` | `LinkedRouterApplianceInstances` | Optional. Router appliance instances that are associated with the spoke. |
| `linkedVpcNetwork` | `LinkedVpcNetwork` | Optional. VPC network that is associated with the spoke. |
| `linkedVpnTunnels` | `LinkedVpnTunnels` | Optional. VPN tunnels that are associated with the spoke. |
| `name` | `string` | Immutable. The name of the spoke. Spoke names must be unique. They use the following form: `proje... |
| `reasons` | `array<StateReason>` | Output only. The reasons for current state of the spoke. |
| `spokeType` | `string` | Output only. The type of resource associated with the spoke. |
| `state` | `string` | Output only. The current lifecycle state of this spoke. |
| `uniqueId` | `string` | Output only. The Google-generated UUID for the spoke. This value is unique across all spoke resou... |
| `updateTime` | `string` | Output only. The time the spoke was last updated. |

### `SpokeStateCount`

The number of spokes that are in a particular state and associated with a given hub.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `string` | Output only. The total number of spokes that are in this state and associated with a given hub. |
| `state` | `string` | Output only. The state of the spokes. |

### `SpokeStateReasonCount`

The number of spokes in the hub that are inactive for this reason.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `string` | Output only. The total number of spokes that are inactive for a particular reason and associated ... |
| `stateReasonCode` | `string` | Output only. The reason that a spoke is inactive. |

### `SpokeSummary`

Summarizes information about the spokes associated with a hub. The summary includes a count of spokes according to type and according to state. If any spokes are inactive, the summary also lists the reasons they are inactive, including a count for each reason.

| Property | Type | Description |
|----------|------|-------------|
| `spokeStateCounts` | `array<SpokeStateCount>` | Output only. Counts the number of spokes that are in each state and associated with a given hub. |
| `spokeStateReasonCounts` | `array<SpokeStateReasonCount>` | Output only. Counts the number of spokes that are inactive for each possible reason and associate... |
| `spokeTypeCounts` | `array<SpokeTypeCount>` | Output only. Counts the number of spokes of each type that are associated with a specific hub. |

### `SpokeTypeCount`

The number of spokes of a given type that are associated with a specific hub. The type indicates what kind of resource is associated with the spoke.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `string` | Output only. The total number of spokes of this type that are associated with the hub. |
| `spokeType` | `string` | Output only. The type of the spokes. |

### `StateMetadata`

The state and activation time details of the resource state.

| Property | Type | Description |
|----------|------|-------------|
| `effectiveTime` | `string` | Output only. Accompanies only the transient states, which include `ADDING`, `DELETING`, and `SUSP... |
| `state` | `string` | Output only. The state of the resource. |

### `StateReason`

The reason for the current state of the spoke.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | The code associated with this reason. |
| `message` | `string` | Human-readable details about this reason. |
| `userDetails` | `string` | Additional information provided by the user in the RejectSpoke call. |

### `StateTimeline`

The timeline of the pending states for a resource.

| Property | Type | Description |
|----------|------|-------------|
| `states` | `array<StateMetadata>` | Output only. The state and activation time details of the resource state. |

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

### `VirtualMachine`

VM instances that this policy-based route applies to.

| Property | Type | Description |
|----------|------|-------------|
| `tags` | `array<string>` | Optional. A list of VM instance tags that this policy-based route applies to. VM instances that h... |

### `Warnings`

Informational warning message.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | Output only. A warning code, if applicable. |
| `data` | `object` | Output only. Metadata about this warning in key: value format. The key should provides more detai... |
| `warningMessage` | `string` | Output only. A human-readable description of the warning code. |

