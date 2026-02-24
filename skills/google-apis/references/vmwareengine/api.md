# VMware Engine API - API Reference

**Version**: `v1` | **Methods**: 101 | **Schemas**: 94

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `vmwareengine.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `vmwareengine.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. |
| `vmwareengine.projects.locations.getDnsBindPermission` | GET | `v1/{+name}` | Gets all the principals having bind permission on the intranet VPC associated with the consumer p... |
| `vmwareengine.projects.locations.privateClouds.getDnsForwarding` | GET | `v1/{+name}` | Gets details of the `DnsForwarding` config. |
| `vmwareengine.projects.locations.privateClouds.create` | POST | `v1/{+parent}/privateClouds` | Creates a new `PrivateCloud` resource in a given project and location. Private clouds of type `ST... |
| `vmwareengine.projects.locations.privateClouds.resetVcenterCredentials` | POST | `v1/{+privateCloud}:resetVcenterCredentials` | Resets credentials of the Vcenter appliance. |
| `vmwareengine.projects.locations.privateClouds.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `vmwareengine.projects.locations.privateClouds.delete` | DELETE | `v1/{+name}` | Schedules a `PrivateCloud` resource for deletion. A `PrivateCloud` resource scheduled for deletio... |
| `vmwareengine.projects.locations.privateClouds.showVcenterCredentials` | GET | `v1/{+privateCloud}:showVcenterCredentials` | Gets details of credentials for Vcenter appliance. |
| `vmwareengine.projects.locations.privateClouds.list` | GET | `v1/{+parent}/privateClouds` | Lists `PrivateCloud` resources in a given project and location. |
| `vmwareengine.projects.locations.privateClouds.privateCloudDeletionNow` | POST | `v1/{+name}:privateCloudDeletionNow` | Accelerates the deletion of a private cloud that is currently in soft deletion A `PrivateCloud` r... |
| `vmwareengine.projects.locations.privateClouds.showNsxCredentials` | GET | `v1/{+privateCloud}:showNsxCredentials` | Gets details of credentials for NSX appliance. |
| `vmwareengine.projects.locations.privateClouds.patch` | PATCH | `v1/{+name}` | Modifies a `PrivateCloud` resource. Only the following fields can be updated: `description`. Only... |
| `vmwareengine.projects.locations.privateClouds.undelete` | POST | `v1/{+name}:undelete` | Restores a private cloud that was previously scheduled for deletion by `DeletePrivateCloud`. A `P... |
| `vmwareengine.projects.locations.privateClouds.updateDnsForwarding` | PATCH | `v1/{+name}` | Updates the parameters of the `DnsForwarding` config, like associated domains. Only fields specif... |
| `vmwareengine.projects.locations.privateClouds.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `vmwareengine.projects.locations.privateClouds.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `vmwareengine.projects.locations.privateClouds.get` | GET | `v1/{+name}` | Retrieves a `PrivateCloud` resource by its resource name. |
| `vmwareengine.projects.locations.privateClouds.resetNsxCredentials` | POST | `v1/{+privateCloud}:resetNsxCredentials` | Resets credentials of the NSX appliance. |
| `vmwareengine.projects.locations.privateClouds.subnets.get` | GET | `v1/{+name}` | Gets details of a single subnet. |
| `vmwareengine.projects.locations.privateClouds.subnets.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single subnet. Only fields specified in `update_mask` are applied. *N... |
| `vmwareengine.projects.locations.privateClouds.subnets.list` | GET | `v1/{+parent}/subnets` | Lists subnets in a given private cloud. |
| `vmwareengine.projects.locations.privateClouds.clusters.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `vmwareengine.projects.locations.privateClouds.clusters.create` | POST | `v1/{+parent}/clusters` | Creates a new cluster in a given private cloud. Creating a new cluster provides additional nodes ... |
| `vmwareengine.projects.locations.privateClouds.clusters.unmountDatastore` | POST | `v1/{+name}:unmountDatastore` | Mounts a `Datastore` on a cluster resource Datastores are zonal resources |
| `vmwareengine.projects.locations.privateClouds.clusters.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `vmwareengine.projects.locations.privateClouds.clusters.mountDatastore` | POST | `v1/{+name}:mountDatastore` | Mounts a `Datastore` on a cluster resource Datastores are zonal resources |
| `vmwareengine.projects.locations.privateClouds.clusters.delete` | DELETE | `v1/{+name}` | Deletes a `Cluster` resource. To avoid unintended data loss, migrate or gracefully shut down any ... |
| `vmwareengine.projects.locations.privateClouds.clusters.get` | GET | `v1/{+name}` | Retrieves a `Cluster` resource by its resource name. |
| `vmwareengine.projects.locations.privateClouds.clusters.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `vmwareengine.projects.locations.privateClouds.clusters.patch` | PATCH | `v1/{+name}` | Modifies a `Cluster` resource. Only fields specified in `updateMask` are applied. During operatio... |
| `vmwareengine.projects.locations.privateClouds.clusters.list` | GET | `v1/{+parent}/clusters` | Lists `Cluster` resources in a given private cloud. |
| `vmwareengine.projects.locations.privateClouds.clusters.nodes.list` | GET | `v1/{+parent}/nodes` | Lists nodes in a given cluster. |
| `vmwareengine.projects.locations.privateClouds.clusters.nodes.get` | GET | `v1/{+name}` | Gets details of a single node. |
| `vmwareengine.projects.locations.privateClouds.managementDnsZoneBindings.create` | POST | `v1/{+parent}/managementDnsZoneBindings` | Creates a new `ManagementDnsZoneBinding` resource in a private cloud. This RPC creates the DNS bi... |
| `vmwareengine.projects.locations.privateClouds.managementDnsZoneBindings.list` | GET | `v1/{+parent}/managementDnsZoneBindings` | Lists Consumer VPCs bound to Management DNS Zone of a given private cloud. |
| `vmwareengine.projects.locations.privateClouds.managementDnsZoneBindings.delete` | DELETE | `v1/{+name}` | Deletes a `ManagementDnsZoneBinding` resource. When a management DNS zone binding is deleted, the... |
| `vmwareengine.projects.locations.privateClouds.managementDnsZoneBindings.repair` | POST | `v1/{+name}:repair` | Retries to create a `ManagementDnsZoneBinding` resource that is in failed state. |
| `vmwareengine.projects.locations.privateClouds.managementDnsZoneBindings.patch` | PATCH | `v1/{+name}` | Updates a `ManagementDnsZoneBinding` resource. Only fields specified in `update_mask` are applied. |
| `vmwareengine.projects.locations.privateClouds.managementDnsZoneBindings.get` | GET | `v1/{+name}` | Retrieves a 'ManagementDnsZoneBinding' resource by its resource name. |
| `vmwareengine.projects.locations.privateClouds.hcxActivationKeys.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `vmwareengine.projects.locations.privateClouds.hcxActivationKeys.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `vmwareengine.projects.locations.privateClouds.hcxActivationKeys.create` | POST | `v1/{+parent}/hcxActivationKeys` | Creates a new HCX activation key in a given private cloud. |
| `vmwareengine.projects.locations.privateClouds.hcxActivationKeys.get` | GET | `v1/{+name}` | Retrieves a `HcxActivationKey` resource by its resource name. |
| `vmwareengine.projects.locations.privateClouds.hcxActivationKeys.list` | GET | `v1/{+parent}/hcxActivationKeys` | Lists `HcxActivationKey` resources in a given private cloud. |
| `vmwareengine.projects.locations.privateClouds.hcxActivationKeys.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `vmwareengine.projects.locations.privateClouds.upgrades.get` | GET | `v1/{+name}` | Retrieves a private cloud `Upgrade` resource by its resource name. |
| `vmwareengine.projects.locations.privateClouds.upgrades.patch` | PATCH | `v1/{+name}` | Update the private cloud `Upgrade` resource. Only `schedule` field can updated. The schedule can ... |
| `vmwareengine.projects.locations.privateClouds.upgrades.list` | GET | `v1/{+parent}/upgrades` | Lists past, ongoing and upcoming `Upgrades` for the given private cloud. |
| `vmwareengine.projects.locations.privateClouds.loggingServers.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single logging server. Only fields specified in `update_mask` are app... |
| `vmwareengine.projects.locations.privateClouds.loggingServers.delete` | DELETE | `v1/{+name}` | Deletes a single logging server. |
| `vmwareengine.projects.locations.privateClouds.loggingServers.list` | GET | `v1/{+parent}/loggingServers` | Lists logging servers configured for a given private cloud. |
| `vmwareengine.projects.locations.privateClouds.loggingServers.get` | GET | `v1/{+name}` | Gets details of a logging server. |
| `vmwareengine.projects.locations.privateClouds.loggingServers.create` | POST | `v1/{+parent}/loggingServers` | Create a new logging server for a given private cloud. |
| `vmwareengine.projects.locations.privateClouds.externalAddresses.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single external IP address. Only fields specified in `update_mask` ar... |
| `vmwareengine.projects.locations.privateClouds.externalAddresses.get` | GET | `v1/{+name}` | Gets details of a single external IP address. |
| `vmwareengine.projects.locations.privateClouds.externalAddresses.create` | POST | `v1/{+parent}/externalAddresses` | Creates a new `ExternalAddress` resource in a given private cloud. The network policy that corres... |
| `vmwareengine.projects.locations.privateClouds.externalAddresses.delete` | DELETE | `v1/{+name}` | Deletes a single external IP address. When you delete an external IP address, connectivity betwee... |
| `vmwareengine.projects.locations.privateClouds.externalAddresses.list` | GET | `v1/{+parent}/externalAddresses` | Lists external IP addresses assigned to VMware workload VMs in a given private cloud. |
| `vmwareengine.projects.locations.networkPolicies.delete` | DELETE | `v1/{+name}` | Deletes a `NetworkPolicy` resource. A network policy cannot be deleted when `NetworkService.state... |
| `vmwareengine.projects.locations.networkPolicies.get` | GET | `v1/{+name}` | Retrieves a `NetworkPolicy` resource by its resource name. |
| `vmwareengine.projects.locations.networkPolicies.fetchExternalAddresses` | GET | `v1/{+networkPolicy}:fetchExternalAddresses` | Lists external IP addresses assigned to VMware workload VMs within the scope of the given network... |
| `vmwareengine.projects.locations.networkPolicies.patch` | PATCH | `v1/{+name}` | Modifies a `NetworkPolicy` resource. Only the following fields can be updated: `internet_access`,... |
| `vmwareengine.projects.locations.networkPolicies.list` | GET | `v1/{+parent}/networkPolicies` | Lists `NetworkPolicy` resources in a specified project and location. |
| `vmwareengine.projects.locations.networkPolicies.create` | POST | `v1/{+parent}/networkPolicies` | Creates a new network policy in a given VMware Engine network of a project and location (region).... |
| `vmwareengine.projects.locations.networkPolicies.externalAccessRules.get` | GET | `v1/{+name}` | Gets details of a single external access rule. |
| `vmwareengine.projects.locations.networkPolicies.externalAccessRules.list` | GET | `v1/{+parent}/externalAccessRules` | Lists `ExternalAccessRule` resources in the specified network policy. |
| `vmwareengine.projects.locations.networkPolicies.externalAccessRules.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single external access rule. Only fields specified in `update_mask` a... |
| `vmwareengine.projects.locations.networkPolicies.externalAccessRules.create` | POST | `v1/{+parent}/externalAccessRules` | Creates a new external access rule in a given network policy. |
| `vmwareengine.projects.locations.networkPolicies.externalAccessRules.delete` | DELETE | `v1/{+name}` | Deletes a single external access rule. |
| `vmwareengine.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `vmwareengine.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `vmwareengine.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `vmwareengine.projects.locations.dnsBindPermission.grant` | POST | `v1/{+name}:grant` | Grants the bind permission to the customer provided principal(user / service account) to bind the... |
| `vmwareengine.projects.locations.dnsBindPermission.revoke` | POST | `v1/{+name}:revoke` | Revokes the bind permission from the customer provided principal(user / service account) on the i... |
| `vmwareengine.projects.locations.announcements.list` | GET | `v1/{+parent}/announcements` | Lists `Announcements` for a given region and project |
| `vmwareengine.projects.locations.announcements.get` | GET | `v1/{+name}` | Retrieves a `Announcement` by its resource name. |
| `vmwareengine.projects.locations.networkPeerings.create` | POST | `v1/{+parent}/networkPeerings` | Creates a new network peering between the peer network and VMware Engine network provided in a `N... |
| `vmwareengine.projects.locations.networkPeerings.list` | GET | `v1/{+parent}/networkPeerings` | Lists `NetworkPeering` resources in a given project. NetworkPeering is a global resource and loca... |
| `vmwareengine.projects.locations.networkPeerings.get` | GET | `v1/{+name}` | Retrieves a `NetworkPeering` resource by its resource name. The resource contains details of the ... |
| `vmwareengine.projects.locations.networkPeerings.patch` | PATCH | `v1/{+name}` | Modifies a `NetworkPeering` resource. Only the `description` field can be updated. Only fields sp... |
| `vmwareengine.projects.locations.networkPeerings.delete` | DELETE | `v1/{+name}` | Deletes a `NetworkPeering` resource. When a network peering is deleted for a VMware Engine networ... |
| `vmwareengine.projects.locations.networkPeerings.peeringRoutes.list` | GET | `v1/{+parent}/peeringRoutes` | Lists the network peering routes exchanged over a peering connection. NetworkPeering is a global ... |
| `vmwareengine.projects.locations.nodeTypes.get` | GET | `v1/{+name}` | Gets details of a single `NodeType`. |
| `vmwareengine.projects.locations.nodeTypes.list` | GET | `v1/{+parent}/nodeTypes` | Lists node types |
| `vmwareengine.projects.locations.privateConnections.patch` | PATCH | `v1/{+name}` | Modifies a `PrivateConnection` resource. Only `description` and `routing_mode` fields can be upda... |
| `vmwareengine.projects.locations.privateConnections.create` | POST | `v1/{+parent}/privateConnections` | Creates a new private connection that can be used for accessing private Clouds. |
| `vmwareengine.projects.locations.privateConnections.list` | GET | `v1/{+parent}/privateConnections` | Lists `PrivateConnection` resources in a given project and location. |
| `vmwareengine.projects.locations.privateConnections.delete` | DELETE | `v1/{+name}` | Deletes a `PrivateConnection` resource. When a private connection is deleted for a VMware Engine ... |
| `vmwareengine.projects.locations.privateConnections.get` | GET | `v1/{+name}` | Retrieves a `PrivateConnection` resource by its resource name. The resource contains details of t... |
| `vmwareengine.projects.locations.privateConnections.peeringRoutes.list` | GET | `v1/{+parent}/peeringRoutes` | Lists the private connection routes exchanged over a peering connection. |
| `vmwareengine.projects.locations.vmwareEngineNetworks.list` | GET | `v1/{+parent}/vmwareEngineNetworks` | Lists `VmwareEngineNetwork` resources in a given project and location. |
| `vmwareengine.projects.locations.vmwareEngineNetworks.patch` | PATCH | `v1/{+name}` | Modifies a VMware Engine network resource. Only the following fields can be updated: `description... |
| `vmwareengine.projects.locations.vmwareEngineNetworks.get` | GET | `v1/{+name}` | Retrieves a `VmwareEngineNetwork` resource by its resource name. The resource contains details of... |
| `vmwareengine.projects.locations.vmwareEngineNetworks.create` | POST | `v1/{+parent}/vmwareEngineNetworks` | Creates a new VMware Engine network that can be used by a private cloud. |
| `vmwareengine.projects.locations.vmwareEngineNetworks.delete` | DELETE | `v1/{+name}` | Deletes a `VmwareEngineNetwork` resource. You can only delete a VMware Engine network after all r... |
| `vmwareengine.projects.locations.datastores.patch` | PATCH | `v1/{+name}` | Modifies a Datastore resource. Only the following fields can be updated: `description`. Only fiel... |
| `vmwareengine.projects.locations.datastores.create` | POST | `v1/{+parent}/datastores` | Creates a new `Datastore` resource in a given project and location. Datastores are regional resou... |
| `vmwareengine.projects.locations.datastores.list` | GET | `v1/{+parent}/datastores` | Lists `Datastore` resources in a given project and location. |
| `vmwareengine.projects.locations.datastores.get` | GET | `v1/{+name}` | Retrieves a `Datastore` resource by its resource name. The resource contains details of the Datas... |
| `vmwareengine.projects.locations.datastores.delete` | DELETE | `v1/{+name}` | Deletes a `Datastore` resource. You can only delete a Datastore after all resources that refer to... |

### `vmwareengine.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await vmwareengine.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.list`

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
const res = await vmwareengine.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.getDnsBindPermission`

**GET** `v1/{+name}`

Gets all the principals having bind permission on the intranet VPC associated with the consumer project granted by the Grant API. DnsBindPermission is a global resource and location can only be global.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the resource which stores the users/service accounts having the permission to bind to the corre... |

**Response**: `DnsBindPermission`

```typescript
const res = await vmwareengine.locations.getDnsBindPermission({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.getDnsForwarding`

**GET** `v1/{+name}`

Gets details of the `DnsForwarding` config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of a `DnsForwarding` to retrieve. Resource names are schemeless URIs that follow the conv... |

**Response**: `DnsForwarding`

```typescript
const res = await vmwareengine.privateClouds.getDnsForwarding({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.create`

**POST** `v1/{+parent}/privateClouds`

Creates a new `PrivateCloud` resource in a given project and location. Private clouds of type `STANDARD` and `TIME_LIMITED` are zonal resources, `STRETCHED` private clouds are regional. Creating a private cloud also creates a [management cluster](https://cloud.google.com/vmware-engine/docs/concepts-vmware-components) for that private cloud.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the location to create the new private cloud in. Resource names are schemeless URIs th... |
| `privateCloudId` | `string` | query | No | Required. The user-provided identifier of the private cloud to be created. This identifier must be unique among each ... |
| `requestId` | `string` | query | No | Optional. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-... |
| `validateOnly` | `boolean` | query | No | Optional. True if you want the request to be validated and not executed; false otherwise. |

**Request body**: `PrivateCloud`

**Response**: `Operation`

```typescript
const res = await vmwareengine.privateClouds.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.resetVcenterCredentials`

**POST** `v1/{+privateCloud}:resetVcenterCredentials`

Resets credentials of the Vcenter appliance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `privateCloud` | `string` | path | Yes | Required. The resource name of the private cloud to reset credentials for. Resource names are schemeless URIs that fo... |

**Request body**: `ResetVcenterCredentialsRequest`

**Response**: `Operation`

```typescript
const res = await vmwareengine.privateClouds.resetVcenterCredentials({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await vmwareengine.privateClouds.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.delete`

**DELETE** `v1/{+name}`

Schedules a `PrivateCloud` resource for deletion. A `PrivateCloud` resource scheduled for deletion has `PrivateCloud.state` set to `DELETED` and `expireTime` set to the time when deletion is final and can no longer be reversed. The delete operation is marked as done as soon as the `PrivateCloud` is successfully scheduled for deletion (this also applies when `delayHours` is set to zero), and the operation is not kept in pending state until `PrivateCloud` is purged. `PrivateCloud` can be restored using `UndeletePrivateCloud` method before the `expireTime` elapses. When `expireTime` is reached, deletion is final and all private cloud resources are irreversibly removed and billing stops. During the final removal process, `PrivateCloud.state` is set to `PURGING`. `PrivateCloud` can be polled using standard `GET` method for the whole period of deletion and purging. It will not be returned only when it is completely purged.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the private cloud to delete. Resource names are schemeless URIs that follow the conven... |
| `delayHours` | `integer` | query | No | Optional. Time delay of the deletion specified in hours. The default value is `3`. Specifying a non-zero value for th... |
| `force` | `boolean` | query | No | Optional. If set to true, cascade delete is enabled and all children of this private cloud resource are also deleted.... |
| `requestId` | `string` | query | No | Optional. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-... |

**Response**: `Operation`

```typescript
const res = await vmwareengine.privateClouds.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.showVcenterCredentials`

**GET** `v1/{+privateCloud}:showVcenterCredentials`

Gets details of credentials for Vcenter appliance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `privateCloud` | `string` | path | Yes | Required. The resource name of the private cloud to be queried for credentials. Resource names are schemeless URIs th... |
| `username` | `string` | query | No | Optional. The username of the user to be queried for credentials. The default value of this field is CloudOwner@gve.l... |

**Response**: `Credentials`

```typescript
const res = await vmwareengine.privateClouds.showVcenterCredentials({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.list`

**GET** `v1/{+parent}/privateClouds`

Lists `PrivateCloud` resources in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the private cloud to be queried for clusters. Resource names are schemeless URIs that ... |
| `filter` | `string` | query | No | A filter expression that matches resources returned in the response. The expression must specify the field name, a co... |
| `orderBy` | `string` | query | No | Sorts list results by a certain order. By default, returned results are ordered by `name` in ascending order. You can... |
| `pageSize` | `integer` | query | No | The maximum number of private clouds to return in one page. The service may return fewer than this value. The maximum... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListPrivateClouds` call. Provide this to retrieve the subsequent page. When p... |

**Response**: `ListPrivateCloudsResponse`

```typescript
const res = await vmwareengine.privateClouds.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.privateCloudDeletionNow`

**POST** `v1/{+name}:privateCloudDeletionNow`

Accelerates the deletion of a private cloud that is currently in soft deletion A `PrivateCloud` resource in soft deletion has `PrivateCloud.state` set to `SOFT_DELETED` and `PrivateCloud.expireTime` set to the time when deletion can no longer be reversed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the private cloud in softdeletion. Resource names are schemeless URIs that follow the ... |

**Request body**: `AcceleratePrivateCloudDeletionRequest`

**Response**: `Operation`

```typescript
const res = await vmwareengine.privateClouds.privateCloudDeletionNow({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.showNsxCredentials`

**GET** `v1/{+privateCloud}:showNsxCredentials`

Gets details of credentials for NSX appliance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `privateCloud` | `string` | path | Yes | Required. The resource name of the private cloud to be queried for credentials. Resource names are schemeless URIs th... |

**Response**: `Credentials`

```typescript
const res = await vmwareengine.privateClouds.showNsxCredentials({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.patch`

**PATCH** `v1/{+name}`

Modifies a `PrivateCloud` resource. Only the following fields can be updated: `description`. Only fields specified in `updateMask` are applied. During operation processing, the resource is temporarily in the `ACTIVE` state before the operation fully completes. For that period of time, you can't update the resource. Use the operation status to determine when the processing fully completes.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Identifier. The resource name of this private cloud. Resource names are schemeless URIs that follow the ... |
| `requestId` | `string` | query | No | Optional. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the `PrivateCloud` resource by the update. Th... |

**Request body**: `PrivateCloud`

**Response**: `Operation`

```typescript
const res = await vmwareengine.privateClouds.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.undelete`

**POST** `v1/{+name}:undelete`

Restores a private cloud that was previously scheduled for deletion by `DeletePrivateCloud`. A `PrivateCloud` resource scheduled for deletion has `PrivateCloud.state` set to `DELETED` and `PrivateCloud.expireTime` set to the time when deletion can no longer be reversed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the private cloud scheduled for deletion. Resource names are schemeless URIs that foll... |

**Request body**: `UndeletePrivateCloudRequest`

**Response**: `Operation`

```typescript
const res = await vmwareengine.privateClouds.undelete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.updateDnsForwarding`

**PATCH** `v1/{+name}`

Updates the parameters of the `DnsForwarding` config, like associated domains. Only fields specified in `update_mask` are applied.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Identifier. The resource name of this DNS profile. Resource names are schemeless URIs that follow the co... |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the `DnsForwarding` resource by the update. T... |

**Request body**: `DnsForwarding`

**Response**: `Operation`

```typescript
const res = await vmwareengine.privateClouds.updateDnsForwarding({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await vmwareengine.privateClouds.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await vmwareengine.privateClouds.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.get`

**GET** `v1/{+name}`

Retrieves a `PrivateCloud` resource by its resource name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the private cloud to retrieve. Resource names are schemeless URIs that follow the conv... |

**Response**: `PrivateCloud`

```typescript
const res = await vmwareengine.privateClouds.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.resetNsxCredentials`

**POST** `v1/{+privateCloud}:resetNsxCredentials`

Resets credentials of the NSX appliance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `privateCloud` | `string` | path | Yes | Required. The resource name of the private cloud to reset credentials for. Resource names are schemeless URIs that fo... |

**Request body**: `ResetNsxCredentialsRequest`

**Response**: `Operation`

```typescript
const res = await vmwareengine.privateClouds.resetNsxCredentials({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.subnets.get`

**GET** `v1/{+name}`

Gets details of a single subnet.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the subnet to retrieve. Resource names are schemeless URIs that follow the conventions... |

**Response**: `Subnet`

```typescript
const res = await vmwareengine.subnets.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.subnets.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single subnet. Only fields specified in `update_mask` are applied. *Note*: This API is synchronous and always returns a successful `google.longrunning.Operation` (LRO). The returned LRO will only have `done` and `response` fields.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Identifier. The resource name of this subnet. Resource names are schemeless URIs that follow the convent... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the `Subnet` resource by the update. The fiel... |

**Request body**: `Subnet`

**Response**: `Operation`

```typescript
const res = await vmwareengine.subnets.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.subnets.list`

**GET** `v1/{+parent}/subnets`

Lists subnets in a given private cloud.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the private cloud to be queried for subnets. Resource names are schemeless URIs that f... |
| `pageSize` | `integer` | query | No | The maximum number of subnets to return in one page. The service may return fewer than this value. The maximum value ... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListSubnetsRequest` call. Provide this to retrieve the subsequent page. When ... |

**Response**: `ListSubnetsResponse`

```typescript
const res = await vmwareengine.subnets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.clusters.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await vmwareengine.clusters.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.clusters.create`

**POST** `v1/{+parent}/clusters`

Creates a new cluster in a given private cloud. Creating a new cluster provides additional nodes for use in the parent private cloud and requires sufficient [node quota](https://cloud.google.com/vmware-engine/quotas).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the private cloud to create a new cluster in. Resource names are schemeless URIs that ... |
| `clusterId` | `string` | query | No | Required. The user-provided identifier of the new `Cluster`. This identifier must be unique among clusters within the... |
| `requestId` | `string` | query | No | Optional. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-... |
| `validateOnly` | `boolean` | query | No | Optional. True if you want the request to be validated and not executed; false otherwise. |

**Request body**: `Cluster`

**Response**: `Operation`

```typescript
const res = await vmwareengine.clusters.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.clusters.unmountDatastore`

**POST** `v1/{+name}:unmountDatastore`

Mounts a `Datastore` on a cluster resource Datastores are zonal resources

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the cluster to unmount the datastore. Resource names are schemeless URIs that follow t... |

**Request body**: `UnmountDatastoreRequest`

**Response**: `Operation`

```typescript
const res = await vmwareengine.clusters.unmountDatastore({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.clusters.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await vmwareengine.clusters.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.clusters.mountDatastore`

**POST** `v1/{+name}:mountDatastore`

Mounts a `Datastore` on a cluster resource Datastores are zonal resources

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the cluster to mount the datastore. Resource names are schemeless URIs that follow the... |

**Request body**: `MountDatastoreRequest`

**Response**: `Operation`

```typescript
const res = await vmwareengine.clusters.mountDatastore({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.clusters.delete`

**DELETE** `v1/{+name}`

Deletes a `Cluster` resource. To avoid unintended data loss, migrate or gracefully shut down any workloads running on the cluster before deletion. You cannot delete the management cluster of a private cloud using this method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the cluster to delete. Resource names are schemeless URIs that follow the conventions ... |
| `requestId` | `string` | query | No | Optional. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-... |

**Response**: `Operation`

```typescript
const res = await vmwareengine.clusters.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.clusters.get`

**GET** `v1/{+name}`

Retrieves a `Cluster` resource by its resource name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The cluster resource name to retrieve. Resource names are schemeless URIs that follow the conventions in ht... |

**Response**: `Cluster`

```typescript
const res = await vmwareengine.clusters.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.clusters.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await vmwareengine.clusters.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.clusters.patch`

**PATCH** `v1/{+name}`

Modifies a `Cluster` resource. Only fields specified in `updateMask` are applied. During operation processing, the resource is temporarily in the `ACTIVE` state before the operation fully completes. For that period of time, you can't update the resource. Use the operation status to determine when the processing fully completes.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Identifier. The resource name of this cluster. Resource names are schemeless URIs that follow the conven... |
| `requestId` | `string` | query | No | Optional. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the `Cluster` resource by the update. The fie... |
| `validateOnly` | `boolean` | query | No | Optional. True if you want the request to be validated and not executed; false otherwise. |

**Request body**: `Cluster`

**Response**: `Operation`

```typescript
const res = await vmwareengine.clusters.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.clusters.list`

**GET** `v1/{+parent}/clusters`

Lists `Cluster` resources in a given private cloud.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the private cloud to query for clusters. Resource names are schemeless URIs that follo... |
| `filter` | `string` | query | No | To filter on multiple expressions, provide each separate expression within parentheses. For example: ``` (name = "exa... |
| `orderBy` | `string` | query | No | Sorts list results by a certain order. By default, returned results are ordered by `name` in ascending order. You can... |
| `pageSize` | `integer` | query | No | The maximum number of clusters to return in one page. The service may return fewer than this value. The maximum value... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListClusters` call. Provide this to retrieve the subsequent page. When pagina... |

**Response**: `ListClustersResponse`

```typescript
const res = await vmwareengine.clusters.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.clusters.nodes.list`

**GET** `v1/{+parent}/nodes`

Lists nodes in a given cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the cluster to be queried for nodes. Resource names are schemeless URIs that follow th... |
| `pageSize` | `integer` | query | No | The maximum number of nodes to return in one page. The service may return fewer than this value. The maximum value is... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListNodes` call. Provide this to retrieve the subsequent page. When paginatin... |

**Response**: `ListNodesResponse`

```typescript
const res = await vmwareengine.nodes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.clusters.nodes.get`

**GET** `v1/{+name}`

Gets details of a single node.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the node to retrieve. For example: `projects/{project}/locations/{location}/privateClo... |

**Response**: `Node`

```typescript
const res = await vmwareengine.nodes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.managementDnsZoneBindings.create`

**POST** `v1/{+parent}/managementDnsZoneBindings`

Creates a new `ManagementDnsZoneBinding` resource in a private cloud. This RPC creates the DNS binding and the resource that represents the DNS binding of the consumer VPC network to the management DNS zone. A management DNS zone is the Cloud DNS cross-project binding zone that VMware Engine creates for each private cloud. It contains FQDNs and corresponding IP addresses for the private cloud's ESXi hosts and management VM appliances like vCenter and NSX Manager.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the private cloud to create a new management DNS zone binding for. Resource names are ... |
| `managementDnsZoneBindingId` | `string` | query | No | Required. The user-provided identifier of the `ManagementDnsZoneBinding` resource to be created. This identifier must... |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |

**Request body**: `ManagementDnsZoneBinding`

**Response**: `Operation`

```typescript
const res = await vmwareengine.managementDnsZoneBindings.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.managementDnsZoneBindings.list`

**GET** `v1/{+parent}/managementDnsZoneBindings`

Lists Consumer VPCs bound to Management DNS Zone of a given private cloud.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the private cloud to be queried for management DNS zone bindings. Resource names are s... |
| `filter` | `string` | query | No | A filter expression that matches resources returned in the response. The expression must specify the field name, a co... |
| `orderBy` | `string` | query | No | Sorts list results by a certain order. By default, returned results are ordered by `name` in ascending order. You can... |
| `pageSize` | `integer` | query | No | The maximum number of management DNS zone bindings to return in one page. The service may return fewer than this valu... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListManagementDnsZoneBindings` call. Provide this to retrieve the subsequent ... |

**Response**: `ListManagementDnsZoneBindingsResponse`

```typescript
const res = await vmwareengine.managementDnsZoneBindings.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.managementDnsZoneBindings.delete`

**DELETE** `v1/{+name}`

Deletes a `ManagementDnsZoneBinding` resource. When a management DNS zone binding is deleted, the corresponding consumer VPC network is no longer bound to the management DNS zone.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the management DNS zone binding to delete. Resource names are schemeless URIs that fol... |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |

**Response**: `Operation`

```typescript
const res = await vmwareengine.managementDnsZoneBindings.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.managementDnsZoneBindings.repair`

**POST** `v1/{+name}:repair`

Retries to create a `ManagementDnsZoneBinding` resource that is in failed state.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the management DNS zone binding to repair. Resource names are schemeless URIs that fol... |

**Request body**: `RepairManagementDnsZoneBindingRequest`

**Response**: `Operation`

```typescript
const res = await vmwareengine.managementDnsZoneBindings.repair({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.managementDnsZoneBindings.patch`

**PATCH** `v1/{+name}`

Updates a `ManagementDnsZoneBinding` resource. Only fields specified in `update_mask` are applied.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The resource name of this binding. Resource names are schemeless URIs that follow the conventions in htt... |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the `ManagementDnsZoneBinding` resource by th... |

**Request body**: `ManagementDnsZoneBinding`

**Response**: `Operation`

```typescript
const res = await vmwareengine.managementDnsZoneBindings.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.managementDnsZoneBindings.get`

**GET** `v1/{+name}`

Retrieves a 'ManagementDnsZoneBinding' resource by its resource name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the management DNS zone binding to retrieve. Resource names are schemeless URIs that f... |

**Response**: `ManagementDnsZoneBinding`

```typescript
const res = await vmwareengine.managementDnsZoneBindings.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.hcxActivationKeys.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await vmwareengine.hcxActivationKeys.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.hcxActivationKeys.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await vmwareengine.hcxActivationKeys.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.hcxActivationKeys.create`

**POST** `v1/{+parent}/hcxActivationKeys`

Creates a new HCX activation key in a given private cloud.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the private cloud to create the key for. Resource names are schemeless URIs that follo... |
| `hcxActivationKeyId` | `string` | query | No | Required. The user-provided identifier of the `HcxActivationKey` to be created. This identifier must be unique among ... |
| `requestId` | `string` | query | No | A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server wil... |

**Request body**: `HcxActivationKey`

**Response**: `Operation`

```typescript
const res = await vmwareengine.hcxActivationKeys.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.hcxActivationKeys.get`

**GET** `v1/{+name}`

Retrieves a `HcxActivationKey` resource by its resource name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the HCX activation key to retrieve. Resource names are schemeless URIs that follow the... |

**Response**: `HcxActivationKey`

```typescript
const res = await vmwareengine.hcxActivationKeys.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.hcxActivationKeys.list`

**GET** `v1/{+parent}/hcxActivationKeys`

Lists `HcxActivationKey` resources in a given private cloud.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the private cloud to be queried for HCX activation keys. Resource names are schemeless... |
| `pageSize` | `integer` | query | No | The maximum number of HCX activation keys to return in one page. The service may return fewer than this value. The ma... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListHcxActivationKeys` call. Provide this to retrieve the subsequent page. Wh... |

**Response**: `ListHcxActivationKeysResponse`

```typescript
const res = await vmwareengine.hcxActivationKeys.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.hcxActivationKeys.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await vmwareengine.hcxActivationKeys.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.upgrades.get`

**GET** `v1/{+name}`

Retrieves a private cloud `Upgrade` resource by its resource name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the `Upgrade` resource to be retrieved. Resource names are schemeless URIs that follow the conv... |

**Response**: `Upgrade`

```typescript
const res = await vmwareengine.upgrades.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.upgrades.patch`

**PATCH** `v1/{+name}`

Update the private cloud `Upgrade` resource. Only `schedule` field can updated. The schedule can only be updated when the upgrade has not started and schedule edit window is open. Only fields specified in `update_mask` are considered.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Identifier. The resource name of the private cloud `Upgrade`. Resource names are schemeless URIs that fo... |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the `Upgrade` resource by the update. The fie... |

**Request body**: `Upgrade`

**Response**: `Operation`

```typescript
const res = await vmwareengine.upgrades.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.upgrades.list`

**GET** `v1/{+parent}/upgrades`

Lists past, ongoing and upcoming `Upgrades` for the given private cloud.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Query a list of `Upgrades` for the given private cloud resource name. Resource names are schemeless URIs th... |
| `filter` | `string` | query | No | A filter expression that matches resources returned in the response. The expression must specify the field name, a co... |
| `orderBy` | `string` | query | No | Sorts list results by a certain order. By default, returned results are ordered by `name` in ascending order. You can... |
| `pageSize` | `integer` | query | No | The maximum number of `Upgrades` to return in one page. The service may return fewer resources than this value. The m... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListUpgrades` call. Provide this to retrieve the subsequent page. When pagina... |

**Response**: `ListUpgradesResponse`

```typescript
const res = await vmwareengine.upgrades.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.loggingServers.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single logging server. Only fields specified in `update_mask` are applied.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The resource name of this logging server. Resource names are schemeless URIs that follow the conventions... |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the `LoggingServer` resource by the update. T... |

**Request body**: `LoggingServer`

**Response**: `Operation`

```typescript
const res = await vmwareengine.loggingServers.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.loggingServers.delete`

**DELETE** `v1/{+name}`

Deletes a single logging server.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the logging server to delete. Resource names are schemeless URIs that follow the conve... |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |

**Response**: `Operation`

```typescript
const res = await vmwareengine.loggingServers.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.loggingServers.list`

**GET** `v1/{+parent}/loggingServers`

Lists logging servers configured for a given private cloud.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the private cloud to be queried for logging servers. Resource names are schemeless URI... |
| `filter` | `string` | query | No | A filter expression that matches resources returned in the response. The expression must specify the field name, a co... |
| `orderBy` | `string` | query | No | Sorts list results by a certain order. By default, returned results are ordered by `name` in ascending order. You can... |
| `pageSize` | `integer` | query | No | The maximum number of logging servers to return in one page. The service may return fewer than this value. The maximu... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListLoggingServersRequest` call. Provide this to retrieve the subsequent page... |

**Response**: `ListLoggingServersResponse`

```typescript
const res = await vmwareengine.loggingServers.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.loggingServers.get`

**GET** `v1/{+name}`

Gets details of a logging server.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Logging Server to retrieve. Resource names are schemeless URIs that follow the con... |

**Response**: `LoggingServer`

```typescript
const res = await vmwareengine.loggingServers.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.loggingServers.create`

**POST** `v1/{+parent}/loggingServers`

Create a new logging server for a given private cloud.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the private cloud to create a new Logging Server in. Resource names are schemeless URI... |
| `loggingServerId` | `string` | query | No | Required. The user-provided identifier of the `LoggingServer` to be created. This identifier must be unique among `Lo... |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |

**Request body**: `LoggingServer`

**Response**: `Operation`

```typescript
const res = await vmwareengine.loggingServers.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.externalAddresses.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single external IP address. Only fields specified in `update_mask` are applied. During operation processing, the resource is temporarily in the `ACTIVE` state before the operation fully completes. For that period of time, you can't update the resource. Use the operation status to determine when the processing fully completes.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Identifier. The resource name of this external IP address. Resource names are schemeless URIs that follo... |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the `ExternalAddress` resource by the update.... |

**Request body**: `ExternalAddress`

**Response**: `Operation`

```typescript
const res = await vmwareengine.externalAddresses.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.externalAddresses.get`

**GET** `v1/{+name}`

Gets details of a single external IP address.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the external IP address to retrieve. Resource names are schemeless URIs that follow th... |

**Response**: `ExternalAddress`

```typescript
const res = await vmwareengine.externalAddresses.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.externalAddresses.create`

**POST** `v1/{+parent}/externalAddresses`

Creates a new `ExternalAddress` resource in a given private cloud. The network policy that corresponds to the private cloud must have the external IP address network service enabled (`NetworkPolicy.external_ip`).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the private cloud to create a new external IP address in. Resource names are schemeles... |
| `externalAddressId` | `string` | query | No | Required. The user-provided identifier of the `ExternalAddress` to be created. This identifier must be unique among `... |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |

**Request body**: `ExternalAddress`

**Response**: `Operation`

```typescript
const res = await vmwareengine.externalAddresses.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.externalAddresses.delete`

**DELETE** `v1/{+name}`

Deletes a single external IP address. When you delete an external IP address, connectivity between the external IP address and the corresponding internal IP address is lost.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the external IP address to delete. Resource names are schemeless URIs that follow the ... |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |

**Response**: `Operation`

```typescript
const res = await vmwareengine.externalAddresses.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateClouds.externalAddresses.list`

**GET** `v1/{+parent}/externalAddresses`

Lists external IP addresses assigned to VMware workload VMs in a given private cloud.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the private cloud to be queried for external IP addresses. Resource names are schemele... |
| `filter` | `string` | query | No | A filter expression that matches resources returned in the response. The expression must specify the field name, a co... |
| `orderBy` | `string` | query | No | Sorts list results by a certain order. By default, returned results are ordered by `name` in ascending order. You can... |
| `pageSize` | `integer` | query | No | The maximum number of external IP addresses to return in one page. The service may return fewer than this value. The ... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListExternalAddresses` call. Provide this to retrieve the subsequent page. Wh... |

**Response**: `ListExternalAddressesResponse`

```typescript
const res = await vmwareengine.externalAddresses.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.networkPolicies.delete`

**DELETE** `v1/{+name}`

Deletes a `NetworkPolicy` resource. A network policy cannot be deleted when `NetworkService.state` is set to `RECONCILING` for either its external IP or internet access service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the network policy to delete. Resource names are schemeless URIs that follow the conve... |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |

**Response**: `Operation`

```typescript
const res = await vmwareengine.networkPolicies.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.networkPolicies.get`

**GET** `v1/{+name}`

Retrieves a `NetworkPolicy` resource by its resource name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the network policy to retrieve. Resource names are schemeless URIs that follow the con... |

**Response**: `NetworkPolicy`

```typescript
const res = await vmwareengine.networkPolicies.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.networkPolicies.fetchExternalAddresses`

**GET** `v1/{+networkPolicy}:fetchExternalAddresses`

Lists external IP addresses assigned to VMware workload VMs within the scope of the given network policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `networkPolicy` | `string` | path | Yes | Required. The resource name of the network policy to query for assigned external IP addresses. Resource names are sch... |
| `pageSize` | `integer` | query | No | The maximum number of external IP addresses to return in one page. The service may return fewer than this value. The ... |
| `pageToken` | `string` | query | No | A page token, received from a previous `FetchNetworkPolicyExternalAddresses` call. Provide this to retrieve the subse... |

**Response**: `FetchNetworkPolicyExternalAddressesResponse`

```typescript
const res = await vmwareengine.networkPolicies.fetchExternalAddresses({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.networkPolicies.patch`

**PATCH** `v1/{+name}`

Modifies a `NetworkPolicy` resource. Only the following fields can be updated: `internet_access`, `external_ip`, `edge_services_cidr`. Only fields specified in `updateMask` are applied. When updating a network policy, the external IP network service can only be disabled if there are no external IP addresses present in the scope of the policy. Also, a `NetworkService` cannot be updated when `NetworkService.state` is set to `RECONCILING`. During operation processing, the resource is temporarily in the `ACTIVE` state before the operation fully completes. For that period of time, you can't update the resource. Use the operation status to determine when the processing fully completes.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Identifier. The resource name of this network policy. Resource names are schemeless URIs that follow the... |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the `NetworkPolicy` resource by the update. T... |

**Request body**: `NetworkPolicy`

**Response**: `Operation`

```typescript
const res = await vmwareengine.networkPolicies.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.networkPolicies.list`

**GET** `v1/{+parent}/networkPolicies`

Lists `NetworkPolicy` resources in a specified project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the location (region) to query for network policies. Resource names are schemeless URI... |
| `filter` | `string` | query | No | A filter expression that matches resources returned in the response. The expression must specify the field name, a co... |
| `orderBy` | `string` | query | No | Sorts list results by a certain order. By default, returned results are ordered by `name` in ascending order. You can... |
| `pageSize` | `integer` | query | No | The maximum number of network policies to return in one page. The service may return fewer than this value. The maxim... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListNetworkPolicies` call. Provide this to retrieve the subsequent page. When... |

**Response**: `ListNetworkPoliciesResponse`

```typescript
const res = await vmwareengine.networkPolicies.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.networkPolicies.create`

**POST** `v1/{+parent}/networkPolicies`

Creates a new network policy in a given VMware Engine network of a project and location (region). A new network policy cannot be created if another network policy already exists in the same scope.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the location (region) to create the new network policy in. Resource names are schemele... |
| `networkPolicyId` | `string` | query | No | Required. The user-provided identifier of the network policy to be created. This identifier must be unique within par... |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |

**Request body**: `NetworkPolicy`

**Response**: `Operation`

```typescript
const res = await vmwareengine.networkPolicies.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.networkPolicies.externalAccessRules.get`

**GET** `v1/{+name}`

Gets details of a single external access rule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the external access firewall rule to retrieve. Resource names are schemeless URIs that... |

**Response**: `ExternalAccessRule`

```typescript
const res = await vmwareengine.externalAccessRules.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.networkPolicies.externalAccessRules.list`

**GET** `v1/{+parent}/externalAccessRules`

Lists `ExternalAccessRule` resources in the specified network policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the network policy to query for external access firewall rules. Resource names are sch... |
| `filter` | `string` | query | No | A filter expression that matches resources returned in the response. The expression must specify the field name, a co... |
| `orderBy` | `string` | query | No | Sorts list results by a certain order. By default, returned results are ordered by `name` in ascending order. You can... |
| `pageSize` | `integer` | query | No | The maximum number of external access rules to return in one page. The service may return fewer than this value. The ... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListExternalAccessRulesRequest` call. Provide this to retrieve the subsequent... |

**Response**: `ListExternalAccessRulesResponse`

```typescript
const res = await vmwareengine.externalAccessRules.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.networkPolicies.externalAccessRules.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single external access rule. Only fields specified in `update_mask` are applied.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The resource name of this external access rule. Resource names are schemeless URIs that follow the conve... |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the `ExternalAccessRule` resource by the upda... |

**Request body**: `ExternalAccessRule`

**Response**: `Operation`

```typescript
const res = await vmwareengine.externalAccessRules.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.networkPolicies.externalAccessRules.create`

**POST** `v1/{+parent}/externalAccessRules`

Creates a new external access rule in a given network policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the network policy to create a new external access firewall rule in. Resource names ar... |
| `externalAccessRuleId` | `string` | query | No | Required. The user-provided identifier of the `ExternalAccessRule` to be created. This identifier must be unique amon... |
| `requestId` | `string` | query | No | A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server wil... |

**Request body**: `ExternalAccessRule`

**Response**: `Operation`

```typescript
const res = await vmwareengine.externalAccessRules.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.networkPolicies.externalAccessRules.delete`

**DELETE** `v1/{+name}`

Deletes a single external access rule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the external access firewall rule to delete. Resource names are schemeless URIs that f... |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |

**Response**: `Operation`

```typescript
const res = await vmwareengine.externalAccessRules.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await vmwareengine.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.operations.list`

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
const res = await vmwareengine.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await vmwareengine.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.dnsBindPermission.grant`

**POST** `v1/{+name}:grant`

Grants the bind permission to the customer provided principal(user / service account) to bind their DNS zone with the intranet VPC associated with the project. DnsBindPermission is a global resource and location can only be global.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the resource which stores the users/service accounts having the permission to bind to the corre... |

**Request body**: `GrantDnsBindPermissionRequest`

**Response**: `Operation`

```typescript
const res = await vmwareengine.dnsBindPermission.grant({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.dnsBindPermission.revoke`

**POST** `v1/{+name}:revoke`

Revokes the bind permission from the customer provided principal(user / service account) on the intranet VPC associated with the consumer project. DnsBindPermission is a global resource and location can only be global.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the resource which stores the users/service accounts having the permission to bind to the corre... |

**Request body**: `RevokeDnsBindPermissionRequest`

**Response**: `Operation`

```typescript
const res = await vmwareengine.dnsBindPermission.revoke({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.announcements.list`

**GET** `v1/{+parent}/announcements`

Lists `Announcements` for a given region and project

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the location to be queried for announcements. Resource names are schemeless URIs that ... |
| `filter` | `string` | query | No | A filter expression that matches resources returned in the response. The expression must specify the field name, a co... |
| `orderBy` | `string` | query | No | Sorts list results by a certain order. By default, returned results are ordered by `name` in ascending order. You can... |
| `pageSize` | `integer` | query | No | The maximum number of announcements to return in one page. The service may return fewer than this value. The maximum ... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListAnnouncements` call. Provide this to retrieve the subsequent page. When p... |

**Response**: `ListAnnouncementsResponse`

```typescript
const res = await vmwareengine.announcements.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.announcements.get`

**GET** `v1/{+name}`

Retrieves a `Announcement` by its resource name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the announcement to retrieve. Resource names are schemeless URIs that follow the conve... |

**Response**: `Announcement`

```typescript
const res = await vmwareengine.announcements.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.networkPeerings.create`

**POST** `v1/{+parent}/networkPeerings`

Creates a new network peering between the peer network and VMware Engine network provided in a `NetworkPeering` resource. NetworkPeering is a global resource and location can only be global.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the location to create the new network peering in. This value is always `global`, beca... |
| `networkPeeringId` | `string` | query | No | Required. The user-provided identifier of the new `NetworkPeering`. This identifier must be unique among `NetworkPeer... |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |

**Request body**: `NetworkPeering`

**Response**: `Operation`

```typescript
const res = await vmwareengine.networkPeerings.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.networkPeerings.list`

**GET** `v1/{+parent}/networkPeerings`

Lists `NetworkPeering` resources in a given project. NetworkPeering is a global resource and location can only be global.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the location (global) to query for network peerings. Resource names are schemeless URI... |
| `filter` | `string` | query | No | A filter expression that matches resources returned in the response. The expression must specify the field name, a co... |
| `orderBy` | `string` | query | No | Sorts list results by a certain order. By default, returned results are ordered by `name` in ascending order. You can... |
| `pageSize` | `integer` | query | No | The maximum number of network peerings to return in one page. The maximum value is coerced to 1000. The default value... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListNetworkPeerings` call. Provide this to retrieve the subsequent page. When... |

**Response**: `ListNetworkPeeringsResponse`

```typescript
const res = await vmwareengine.networkPeerings.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.networkPeerings.get`

**GET** `v1/{+name}`

Retrieves a `NetworkPeering` resource by its resource name. The resource contains details of the network peering, such as peered networks, import and export custom route configurations, and peering state. NetworkPeering is a global resource and location can only be global.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the network peering to retrieve. Resource names are schemeless URIs that follow the co... |

**Response**: `NetworkPeering`

```typescript
const res = await vmwareengine.networkPeerings.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.networkPeerings.patch`

**PATCH** `v1/{+name}`

Modifies a `NetworkPeering` resource. Only the `description` field can be updated. Only fields specified in `updateMask` are applied. NetworkPeering is a global resource and location can only be global.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Identifier. The resource name of the network peering. NetworkPeering is a global resource and location c... |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the `NetworkPeering` resource by the update. ... |

**Request body**: `NetworkPeering`

**Response**: `Operation`

```typescript
const res = await vmwareengine.networkPeerings.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.networkPeerings.delete`

**DELETE** `v1/{+name}`

Deletes a `NetworkPeering` resource. When a network peering is deleted for a VMware Engine network, the peer network becomes inaccessible to that VMware Engine network. NetworkPeering is a global resource and location can only be global.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the network peering to be deleted. Resource names are schemeless URIs that follow the ... |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |

**Response**: `Operation`

```typescript
const res = await vmwareengine.networkPeerings.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.networkPeerings.peeringRoutes.list`

**GET** `v1/{+parent}/peeringRoutes`

Lists the network peering routes exchanged over a peering connection. NetworkPeering is a global resource and location can only be global.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the network peering to retrieve peering routes from. Resource names are schemeless URI... |
| `filter` | `string` | query | No | A filter expression that matches resources returned in the response. Currently, only filtering on the `direction` fie... |
| `pageSize` | `integer` | query | No | The maximum number of peering routes to return in one page. The service may return fewer than this value. The maximum... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListPeeringRoutes` call. Provide this to retrieve the subsequent page. When p... |

**Response**: `ListPeeringRoutesResponse`

```typescript
const res = await vmwareengine.peeringRoutes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.nodeTypes.get`

**GET** `v1/{+name}`

Gets details of a single `NodeType`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the node type to retrieve. Resource names are schemeless URIs that follow the conventi... |

**Response**: `NodeType`

```typescript
const res = await vmwareengine.nodeTypes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.nodeTypes.list`

**GET** `v1/{+parent}/nodeTypes`

Lists node types

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the location to be queried for node types. Resource names are schemeless URIs that fol... |
| `filter` | `string` | query | No | A filter expression that matches resources returned in the response. The expression must specify the field name, a co... |
| `pageSize` | `integer` | query | No | The maximum number of node types to return in one page. The service may return fewer than this value. The maximum val... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListNodeTypes` call. Provide this to retrieve the subsequent page. When pagin... |

**Response**: `ListNodeTypesResponse`

```typescript
const res = await vmwareengine.nodeTypes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateConnections.patch`

**PATCH** `v1/{+name}`

Modifies a `PrivateConnection` resource. Only `description` and `routing_mode` fields can be updated. Only fields specified in `updateMask` are applied.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The resource name of the private connection. Resource names are schemeless URIs that follow the conventi... |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the `PrivateConnection` resource by the updat... |

**Request body**: `PrivateConnection`

**Response**: `Operation`

```typescript
const res = await vmwareengine.privateConnections.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateConnections.create`

**POST** `v1/{+parent}/privateConnections`

Creates a new private connection that can be used for accessing private Clouds.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the location to create the new private connection in. Private connection is a regional... |
| `privateConnectionId` | `string` | query | No | Required. The user-provided identifier of the new private connection. This identifier must be unique among private co... |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |

**Request body**: `PrivateConnection`

**Response**: `Operation`

```typescript
const res = await vmwareengine.privateConnections.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateConnections.list`

**GET** `v1/{+parent}/privateConnections`

Lists `PrivateConnection` resources in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the location to query for private connections. Resource names are schemeless URIs that... |
| `filter` | `string` | query | No | A filter expression that matches resources returned in the response. The expression must specify the field name, a co... |
| `orderBy` | `string` | query | No | Sorts list results by a certain order. By default, returned results are ordered by `name` in ascending order. You can... |
| `pageSize` | `integer` | query | No | The maximum number of private connections to return in one page. The maximum value is coerced to 1000. The default va... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListPrivateConnections` call. Provide this to retrieve the subsequent page. W... |

**Response**: `ListPrivateConnectionsResponse`

```typescript
const res = await vmwareengine.privateConnections.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateConnections.delete`

**DELETE** `v1/{+name}`

Deletes a `PrivateConnection` resource. When a private connection is deleted for a VMware Engine network, the connected network becomes inaccessible to that VMware Engine network.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the private connection to be deleted. Resource names are schemeless URIs that follow t... |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |

**Response**: `Operation`

```typescript
const res = await vmwareengine.privateConnections.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateConnections.get`

**GET** `v1/{+name}`

Retrieves a `PrivateConnection` resource by its resource name. The resource contains details of the private connection, such as connected network, routing mode and state.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the private connection to retrieve. Resource names are schemeless URIs that follow the... |

**Response**: `PrivateConnection`

```typescript
const res = await vmwareengine.privateConnections.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.privateConnections.peeringRoutes.list`

**GET** `v1/{+parent}/peeringRoutes`

Lists the private connection routes exchanged over a peering connection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the private connection to retrieve peering routes from. Resource names are schemeless ... |
| `pageSize` | `integer` | query | No | The maximum number of peering routes to return in one page. The service may return fewer than this value. The maximum... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListPrivateConnectionPeeringRoutes` call. Provide this to retrieve the subseq... |

**Response**: `ListPrivateConnectionPeeringRoutesResponse`

```typescript
const res = await vmwareengine.peeringRoutes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.vmwareEngineNetworks.list`

**GET** `v1/{+parent}/vmwareEngineNetworks`

Lists `VmwareEngineNetwork` resources in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the location to query for VMware Engine networks. Resource names are schemeless URIs t... |
| `filter` | `string` | query | No | A filter expression that matches resources returned in the response. The expression must specify the field name, a co... |
| `orderBy` | `string` | query | No | Sorts list results by a certain order. By default, returned results are ordered by `name` in ascending order. You can... |
| `pageSize` | `integer` | query | No | The maximum number of results to return in one page. The maximum value is coerced to 1000. The default value of this ... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListVmwareEngineNetworks` call. Provide this to retrieve the subsequent page.... |

**Response**: `ListVmwareEngineNetworksResponse`

```typescript
const res = await vmwareengine.vmwareEngineNetworks.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.vmwareEngineNetworks.patch`

**PATCH** `v1/{+name}`

Modifies a VMware Engine network resource. Only the following fields can be updated: `description`. Only fields specified in `updateMask` are applied.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Identifier. The resource name of the VMware Engine network. Resource names are schemeless URIs that foll... |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the VMware Engine network resource by the upd... |

**Request body**: `VmwareEngineNetwork`

**Response**: `Operation`

```typescript
const res = await vmwareengine.vmwareEngineNetworks.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.vmwareEngineNetworks.get`

**GET** `v1/{+name}`

Retrieves a `VmwareEngineNetwork` resource by its resource name. The resource contains details of the VMware Engine network, such as its VMware Engine network type, peered networks in a service project, and state (for example, `CREATING`, `ACTIVE`, `DELETING`).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the VMware Engine network to retrieve. Resource names are schemeless URIs that follow ... |

**Response**: `VmwareEngineNetwork`

```typescript
const res = await vmwareengine.vmwareEngineNetworks.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.vmwareEngineNetworks.create`

**POST** `v1/{+parent}/vmwareEngineNetworks`

Creates a new VMware Engine network that can be used by a private cloud.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the location to create the new VMware Engine network in. A VMware Engine network of ty... |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `vmwareEngineNetworkId` | `string` | query | No | Required. The user-provided identifier of the new VMware Engine network. This identifier must be unique among VMware ... |

**Request body**: `VmwareEngineNetwork`

**Response**: `Operation`

```typescript
const res = await vmwareengine.vmwareEngineNetworks.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.vmwareEngineNetworks.delete`

**DELETE** `v1/{+name}`

Deletes a `VmwareEngineNetwork` resource. You can only delete a VMware Engine network after all resources that refer to it are deleted. For example, a private cloud, a network peering, and a network policy can all refer to the same VMware Engine network.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the VMware Engine network to be deleted. Resource names are schemeless URIs that follo... |
| `etag` | `string` | query | No | Optional. Checksum used to ensure that the user-provided value is up to date before the server processes the request.... |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |

**Response**: `Operation`

```typescript
const res = await vmwareengine.vmwareEngineNetworks.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.datastores.patch`

**PATCH** `v1/{+name}`

Modifies a Datastore resource. Only the following fields can be updated: `description`. Only fields specified in `updateMask` are applied.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Identifier. The resource name of this datastore. Resource names are schemeless URIs that follow the conv... |
| `requestId` | `string` | query | No | Optional. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the Datastore resource by the update. The fie... |

**Request body**: `Datastore`

**Response**: `Operation`

```typescript
const res = await vmwareengine.datastores.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.datastores.create`

**POST** `v1/{+parent}/datastores`

Creates a new `Datastore` resource in a given project and location. Datastores are regional resources

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the location to create the new datastore in. Resource names are schemeless URIs that f... |
| `datastoreId` | `string` | query | No | Required. The user-provided identifier of the datastore to be created. This identifier must be unique among each `Dat... |
| `requestId` | `string` | query | No | Optional. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-... |

**Request body**: `Datastore`

**Response**: `Operation`

```typescript
const res = await vmwareengine.datastores.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.datastores.list`

**GET** `v1/{+parent}/datastores`

Lists `Datastore` resources in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the location to query for Datastores. Resource names are schemeless URIs that follow t... |
| `filter` | `string` | query | No | Optional. A filter expression that matches resources returned in the response. The expression must specify the field ... |
| `orderBy` | `string` | query | No | Optional. Sorts list results by a certain order. By default, returned results are ordered by `name` in ascending orde... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return in one page. The maximum value is coerced to 1000. The default valu... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListDatastores` call. Provide this to retrieve the subsequent page.... |
| `requestId` | `string` | query | No | Optional. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-... |

**Response**: `ListDatastoresResponse`

```typescript
const res = await vmwareengine.datastores.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.datastores.get`

**GET** `v1/{+name}`

Retrieves a `Datastore` resource by its resource name. The resource contains details of the Datastore, such as its description, subnets, type, and more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Datastore to retrieve. Resource names are schemeless URIs that follow the conventi... |

**Response**: `Datastore`

```typescript
const res = await vmwareengine.datastores.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmwareengine.projects.locations.datastores.delete`

**DELETE** `v1/{+name}`

Deletes a `Datastore` resource. You can only delete a Datastore after all resources that refer to it are deleted. For example, multiple clusters of the same private cloud or different private clouds can refer to the same datastore.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Datastore to be deleted. Resource names are schemeless URIs that follow the conven... |
| `etag` | `string` | query | No | Optional. Checksum used to ensure that the user-provided value is up to date before the server processes the request.... |
| `requestId` | `string` | query | No | Optional. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-... |

**Response**: `Operation`

```typescript
const res = await vmwareengine.datastores.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AcceleratePrivateCloudDeletionRequest`

Request message for VmwareEngine.AcceleratePrivateCloudDeletion

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Optional. Checksum used to ensure that the user-provided value is up to date before the server pr... |
| `requestId` | `string` | Optional. The request ID must be a valid UUID with the exception that zero UUID is not supported ... |

### `Announcement`

Announcement for the resources of Vmware Engine.

| Property | Type | Description |
|----------|------|-------------|
| `activityType` | `string` | Optional. Activity type of the announcement There can be only one active announcement for a given... |
| `cluster` | `string` | A Cluster resource name. |
| `code` | `string` | Required. Code of the announcement. Indicates the presence of a VMware Engine related announcemen... |
| `createTime` | `string` | Output only. Creation time of this resource. It also serves as start time of notification. |
| `description` | `string` | Output only. Description of the announcement. |
| `metadata` | `object` | Output only. Additional structured details about this announcement. |
| `name` | `string` | Output only. The resource name of the announcement. Resource names are schemeless URIs that follo... |
| `privateCloud` | `string` | A Private Cloud resource name. |
| `state` | `string` | Output only. State of the resource. New values may be added to this enum when appropriate. |
| `targetResourceType` | `string` | Output only. Target Resource Type defines the type of the target for the announcement |
| `updateTime` | `string` | Output only. Last update time of this resource. |

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

### `AutoscalingPolicy`

Autoscaling policy describes the behavior of the autoscaling with respect to the resource utilization. The scale-out operation is initiated if the utilization exceeds ANY of the respective thresholds. The scale-in operation is initiated if the utilization is below ALL of the respective thresholds.

| Property | Type | Description |
|----------|------|-------------|
| `consumedMemoryThresholds` | `Thresholds` | Optional. Utilization thresholds pertaining to amount of consumed memory. |
| `cpuThresholds` | `Thresholds` | Optional. Utilization thresholds pertaining to CPU utilization. |
| `grantedMemoryThresholds` | `Thresholds` | Optional. Utilization thresholds pertaining to amount of granted memory. |
| `nodeTypeId` | `string` | Required. The canonical identifier of the node type to add or remove. Corresponds to the `NodeType`. |
| `scaleOutSize` | `integer` | Required. Number of nodes to add to a cluster during a scale-out operation. Must be divisible by ... |
| `storageThresholds` | `Thresholds` | Optional. Utilization thresholds pertaining to amount of consumed storage. |

### `AutoscalingSettings`

Autoscaling settings define the rules used by VMware Engine to automatically scale-out and scale-in the clusters in a private cloud.

| Property | Type | Description |
|----------|------|-------------|
| `autoscalingPolicies` | `object` | Required. The map with autoscaling policies applied to the cluster. The key is the identifier of ... |
| `coolDownPeriod` | `string` | Optional. The minimum duration between consecutive autoscale operations. It starts once addition ... |
| `maxClusterNodeCount` | `integer` | Optional. Maximum number of nodes of any type in a cluster. If not specified the default limits a... |
| `minClusterNodeCount` | `integer` | Optional. Minimum number of nodes of any type in a cluster. If not specified the default limits a... |

### `Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `Cluster`

A cluster in a private cloud.

| Property | Type | Description |
|----------|------|-------------|
| `autoscalingSettings` | `AutoscalingSettings` | Optional. Configuration of the autoscaling applied to this cluster. |
| `createTime` | `string` | Output only. Creation time of this resource. |
| `datastoreMountConfig` | `array<DatastoreMountConfig>` | Output only. Configuration of a mounted datastore. |
| `management` | `boolean` | Output only. True if the cluster is a management cluster; false otherwise. There can only be one ... |
| `name` | `string` | Output only. Identifier. The resource name of this cluster. Resource names are schemeless URIs th... |
| `nodeTypeConfigs` | `object` | Required. The map of cluster node types in this cluster, where the key is canonical identifier of... |
| `state` | `string` | Output only. State of the resource. |
| `stretchedClusterConfig` | `StretchedClusterConfig` | Optional. Configuration of a stretched cluster. Required for clusters that belong to a STRETCHED ... |
| `uid` | `string` | Output only. System-generated unique identifier for the resource. |
| `updateTime` | `string` | Output only. Last update time of this resource. |

### `Constraints`

Constraints to be applied while editing a schedule. These constraints ensure that `Upgrade` specific requirements are met.

| Property | Type | Description |
|----------|------|-------------|
| `disallowedIntervals` | `array<WeeklyTimeInterval>` | Output only. Output Only. A list of intervals in which maintenance windows are not allowed. Any t... |
| `minHoursDay` | `integer` | Output only. Minimum number of hours must be allotted for the upgrade activities for each selecte... |
| `minHoursWeek` | `integer` | Output only. The minimum number of weekly hours must be allotted for the upgrade activities. This... |
| `rescheduleDateRange` | `Interval` | Output only. Output Only. The user can only reschedule an upgrade that starts within this range. |

### `Credentials`

Credentials for a private cloud.

| Property | Type | Description |
|----------|------|-------------|
| `password` | `string` | Initial password. |
| `username` | `string` | Initial username. |

### `Datastore`

Represents a datastore resource.

| Property | Type | Description |
|----------|------|-------------|
| `clusters` | `array<string>` | Output only. Clusters to which the datastore is attached. |
| `createTime` | `string` | Output only. Creation time of this resource. |
| `description` | `string` | Optional. User-provided description for this datastore |
| `etag` | `string` | Optional. Checksum that may be sent on update and delete requests to ensure that the user-provide... |
| `name` | `string` | Output only. Identifier. The resource name of this datastore. Resource names are schemeless URIs ... |
| `nfsDatastore` | `NfsDatastore` | Required. Settings for the NFS datastore. |
| `state` | `string` | Output only. The state of the Datastore. |
| `uid` | `string` | Output only. System-generated unique identifier for the resource. |
| `updateTime` | `string` | Output only. Last update time of this resource. |

### `DatastoreMountConfig`

The Datastore Mount configuration

| Property | Type | Description |
|----------|------|-------------|
| `accessMode` | `string` | Optional. NFS is accessed by hosts in read mode Optional. Default value used will be READ_WRITE |
| `datastore` | `string` | Required. The resource name of the datastore to unmount. The datastore requested to be mounted sh... |
| `datastoreNetwork` | `DatastoreNetwork` | Required. The network configuration for the datastore. |
| `fileShare` | `string` | Output only. File share name. |
| `nfsVersion` | `string` | Optional. The NFS protocol supported by the NFS volume. Default value used will be NFS_V3 |
| `securityType` | `string` | Optional. ONLY required when NFS 4.1 version is used |
| `servers` | `array<string>` | Output only. Server IP addresses of the NFS volume. For NFS 3, you can only provide a single serv... |

### `DatastoreNetwork`

The network configuration for the datastore.

| Property | Type | Description |
|----------|------|-------------|
| `connectionCount` | `integer` | Optional. The number of connections of the NFS volume. Spported from vsphere 8.0u1 |
| `mtu` | `integer` | Optional. The Maximal Transmission Unit (MTU) of the datastore. System sets default MTU size. It ... |
| `networkPeering` | `string` | Output only. The resource name of the network peering, used to access the file share by clients o... |
| `subnet` | `string` | Required. The resource name of the subnet Resource names are schemeless URIs that follow the conv... |

### `DnsBindPermission`

DnsBindPermission resource that contains the accounts having the consumer DNS bind permission on the corresponding intranet VPC of the consumer project.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. Output only. The name of the resource which stores the users/service accounts having th... |
| `principals` | `array<Principal>` | Output only. Users/Service accounts which have access for binding on the intranet VPC project cor... |

### `DnsForwarding`

DNS forwarding config. This config defines a list of domain to name server mappings, and is attached to the private cloud for custom domain resolution.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Creation time of this resource. |
| `forwardingRules` | `array<ForwardingRule>` | Required. List of domain mappings to configure |
| `name` | `string` | Output only. Identifier. The resource name of this DNS profile. Resource names are schemeless URI... |
| `updateTime` | `string` | Output only. Last update time of this resource. |

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

### `ExternalAccessRule`

External access firewall rules for filtering incoming traffic destined to `ExternalAddress` resources.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` | The action that the external access rule performs. |
| `createTime` | `string` | Output only. Creation time of this resource. |
| `description` | `string` | User-provided description for this external access rule. |
| `destinationIpRanges` | `array<IpRange>` | If destination ranges are specified, the external access rule applies only to the traffic that ha... |
| `destinationPorts` | `array<string>` | A list of destination ports to which the external access rule applies. This field is only applica... |
| `ipProtocol` | `string` | The IP protocol to which the external access rule applies. This value can be one of the following... |
| `name` | `string` | Output only. The resource name of this external access rule. Resource names are schemeless URIs t... |
| `priority` | `integer` | External access rule priority, which determines the external access rule to use when multiple rul... |
| `sourceIpRanges` | `array<IpRange>` | If source ranges are specified, the external access rule applies only to traffic that has a sourc... |
| `sourcePorts` | `array<string>` | A list of source ports to which the external access rule applies. This field is only applicable f... |
| `state` | `string` | Output only. The state of the resource. |
| `uid` | `string` | Output only. System-generated unique identifier for the resource. |
| `updateTime` | `string` | Output only. Last update time of this resource. |

### `ExternalAddress`

Represents an allocated external IP address and its corresponding internal IP address in a private cloud.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Creation time of this resource. |
| `description` | `string` | User-provided description for this resource. |
| `externalIp` | `string` | Output only. The external IP address of a workload VM. |
| `internalIp` | `string` | The internal IP address of a workload VM. |
| `name` | `string` | Output only. Identifier. The resource name of this external IP address. Resource names are scheme... |
| `state` | `string` | Output only. The state of the resource. |
| `uid` | `string` | Output only. System-generated unique identifier for the resource. |
| `updateTime` | `string` | Output only. Last update time of this resource. |

### `FetchNetworkPolicyExternalAddressesResponse`

Response message for VmwareEngine.FetchNetworkPolicyExternalAddresses

| Property | Type | Description |
|----------|------|-------------|
| `externalAddresses` | `array<ExternalAddress>` | A list of external IP addresses assigned to VMware workload VMs within the scope of the given net... |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `ForwardingRule`

A forwarding rule is a mapping of a `domain` to `name_servers`. This mapping allows VMware Engine to resolve domains for attached private clouds by forwarding DNS requests for a given domain to the specified nameservers.

| Property | Type | Description |
|----------|------|-------------|
| `domain` | `string` | Required. Domain used to resolve a `name_servers` list. |
| `nameServers` | `array<string>` | Required. List of DNS servers to use for domain resolution |

### `GoogleFileService`

Google service file service configuration

| Property | Type | Description |
|----------|------|-------------|
| `filestoreInstance` | `string` | Google filestore instance resource name e.g. projects/my-project/locations/me-west1-b/instances/m... |
| `netappVolume` | `string` | Google netapp volume resource name e.g. projects/my-project/locations/me-west1-b/volumes/my-volume |

### `GoogleVmwareFileService`

Volume message captures user inputs for creation of file services managed by GCVE

### `GrantDnsBindPermissionRequest`

Request message for VmwareEngine.GrantDnsBindPermission

| Property | Type | Description |
|----------|------|-------------|
| `principal` | `Principal` | Required. The consumer provided user/service account which needs to be granted permission to bind... |
| `requestId` | `string` | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retr... |

### `Hcx`

Details about a HCX Cloud Manager appliance.

| Property | Type | Description |
|----------|------|-------------|
| `fqdn` | `string` | Fully qualified domain name of the appliance. |
| `internalIp` | `string` | Internal IP address of the appliance. |
| `state` | `string` | Output only. The state of the appliance. |
| `version` | `string` | Version of the appliance. |

### `HcxActivationKey`

HCX activation key. A default key is created during private cloud provisioning, but this behavior is subject to change and you should always verify active keys. Use VmwareEngine.ListHcxActivationKeys to retrieve existing keys and VmwareEngine.CreateHcxActivationKey to create new ones.

| Property | Type | Description |
|----------|------|-------------|
| `activationKey` | `string` | Output only. HCX activation key. |
| `createTime` | `string` | Output only. Creation time of HCX activation key. |
| `name` | `string` | Output only. The resource name of this HcxActivationKey. Resource names are schemeless URIs that ... |
| `state` | `string` | Output only. State of HCX activation key. |
| `uid` | `string` | Output only. System-generated unique identifier for the resource. |

### `Interval`

Represents a time interval, encoded as a Timestamp start (inclusive) and a Timestamp end (exclusive). The start must be less than or equal to the end. When the start equals the end, the interval is empty (matches no time). When both start and end are unspecified, the interval matches any time.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | Optional. Exclusive end of the interval. If specified, a Timestamp matching this interval will ha... |
| `startTime` | `string` | Optional. Inclusive start of the interval. If specified, a Timestamp matching this interval will ... |

### `IpRange`

An IP range provided in any one of the supported formats.

| Property | Type | Description |
|----------|------|-------------|
| `externalAddress` | `string` | The name of an `ExternalAddress` resource. The external address must have been reserved in the sc... |
| `ipAddress` | `string` | A single IP address. For example: `10.0.0.5`. |
| `ipAddressRange` | `string` | An IP address range in the CIDR format. For example: `10.0.0.0/24`. |

### `ListAnnouncementsResponse`

Response message for VmwareEngine.ListAnnouncements

| Property | Type | Description |
|----------|------|-------------|
| `announcements` | `array<Announcement>` | A list of announcement runs. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `unreachable` | `array<string>` | list of unreachable locations |

### `ListClustersResponse`

Response message for VmwareEngine.ListClusters

| Property | Type | Description |
|----------|------|-------------|
| `clusters` | `array<Cluster>` | A list of private cloud clusters. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `unreachable` | `array<string>` | Locations that could not be reached when making an aggregated query using wildcards. |

### `ListDatastoresResponse`

Response message for VmwareEngine.ListDatastores

| Property | Type | Description |
|----------|------|-------------|
| `datastores` | `array<Datastore>` | A list of Datastores. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `unreachable` | `array<string>` | Unreachable resources. |

### `ListExternalAccessRulesResponse`

Response message for VmwareEngine.ListExternalAccessRules

| Property | Type | Description |
|----------|------|-------------|
| `externalAccessRules` | `array<ExternalAccessRule>` | A list of external access firewall rules. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `unreachable` | `array<string>` | Locations that could not be reached when making an aggregated query using wildcards. |

### `ListExternalAddressesResponse`

Response message for VmwareEngine.ListExternalAddresses

| Property | Type | Description |
|----------|------|-------------|
| `externalAddresses` | `array<ExternalAddress>` | A list of external IP addresses. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `unreachable` | `array<string>` | Locations that could not be reached when making an aggregated query using wildcards. |

### `ListHcxActivationKeysResponse`

Response message for VmwareEngine.ListHcxActivationKeys

| Property | Type | Description |
|----------|------|-------------|
| `hcxActivationKeys` | `array<HcxActivationKey>` | List of HCX activation keys. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `unreachable` | `array<string>` | Locations that could not be reached when making an aggregated query using wildcards. |

### `ListLocationsResponse`

The response message for Locations.ListLocations.

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<Location>` | A list of locations that matches the specified filter in the request. |
| `nextPageToken` | `string` | The standard List next-page token. |

### `ListLoggingServersResponse`

Response message for VmwareEngine.ListLoggingServers

| Property | Type | Description |
|----------|------|-------------|
| `loggingServers` | `array<LoggingServer>` | A list of Logging Servers. |
| `nextPageToken` | `string` | A token, which can be send as `page_token` to retrieve the next page. If this field is omitted, t... |
| `unreachable` | `array<string>` | Locations that could not be reached when making an aggregated query using wildcards. |

### `ListManagementDnsZoneBindingsResponse`

Response message for VmwareEngine.ListManagementDnsZoneBindings

| Property | Type | Description |
|----------|------|-------------|
| `managementDnsZoneBindings` | `array<ManagementDnsZoneBinding>` | A list of management DNS zone bindings. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `unreachable` | `array<string>` | Locations that could not be reached when making an aggregated query using wildcards. |

### `ListNetworkPeeringsResponse`

Response message for VmwareEngine.ListNetworkPeerings

| Property | Type | Description |
|----------|------|-------------|
| `networkPeerings` | `array<NetworkPeering>` | A list of network peerings. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `unreachable` | `array<string>` | Unreachable resources. |

### `ListNetworkPoliciesResponse`

Response message for VmwareEngine.ListNetworkPolicies

| Property | Type | Description |
|----------|------|-------------|
| `networkPolicies` | `array<NetworkPolicy>` | A list of network policies. |
| `nextPageToken` | `string` | A token, which can be send as `page_token` to retrieve the next page. If this field is omitted, t... |
| `unreachable` | `array<string>` | Locations that could not be reached when making an aggregated query using wildcards. |

### `ListNodeTypesResponse`

Response message for VmwareEngine.ListNodeTypes

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `nodeTypes` | `array<NodeType>` | A list of Node Types. |
| `unreachable` | `array<string>` | Locations that could not be reached when making an aggregated query using wildcards. |

### `ListNodesResponse`

Response message for VmwareEngine.ListNodes

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `nodes` | `array<Node>` | The nodes. |

### `ListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<Operation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `ListPeeringRoutesResponse`

Response message for VmwareEngine.ListPeeringRoutes

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `peeringRoutes` | `array<PeeringRoute>` | A list of peering routes. |

### `ListPrivateCloudsResponse`

Response message for VmwareEngine.ListPrivateClouds

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `privateClouds` | `array<PrivateCloud>` | A list of private clouds. |
| `unreachable` | `array<string>` | Locations that could not be reached when making an aggregated query using wildcards. |

### `ListPrivateConnectionPeeringRoutesResponse`

Response message for VmwareEngine.ListPrivateConnectionPeeringRoutes

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `peeringRoutes` | `array<PeeringRoute>` | A list of peering routes. |

### `ListPrivateConnectionsResponse`

Response message for VmwareEngine.ListPrivateConnections

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `privateConnections` | `array<PrivateConnection>` | A list of private connections. |
| `unreachable` | `array<string>` | Unreachable resources. |

### `ListSubnetsResponse`

Response message for VmwareEngine.ListSubnets

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `subnets` | `array<Subnet>` | A list of subnets. |
| `unreachable` | `array<string>` | Locations that could not be reached when making an aggregated query using wildcards. |

### `ListUpgradesResponse`

Response message for VmwareEngine.ListUpgrades.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `unreachable` | `array<string>` | List of unreachable resources. |
| `upgrades` | `array<Upgrade>` | A list of `Upgrades`. |

### `ListVmwareEngineNetworksResponse`

Response message for VmwareEngine.ListVmwareEngineNetworks

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `unreachable` | `array<string>` | Unreachable resources. |
| `vmwareEngineNetworks` | `array<VmwareEngineNetwork>` | A list of VMware Engine networks. |

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

VmwareEngine specific metadata for the given google.cloud.location.Location. It is returned as a content of the `google.cloud.location.Location.metadata` field.

| Property | Type | Description |
|----------|------|-------------|
| `capabilities` | `array<string>` | Output only. Capabilities of this location. |

### `LoggingServer`

Logging server to receive vCenter or ESXi logs.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Creation time of this resource. |
| `hostname` | `string` | Required. Fully-qualified domain name (FQDN) or IP Address of the logging server. |
| `name` | `string` | Output only. The resource name of this logging server. Resource names are schemeless URIs that fo... |
| `port` | `integer` | Required. Port number at which the logging server receives logs. |
| `protocol` | `string` | Required. Protocol used by vCenter to send logs to a logging server. |
| `sourceType` | `string` | Required. The type of component that produces logs that will be forwarded to this logging server. |
| `uid` | `string` | Output only. System-generated unique identifier for the resource. |
| `updateTime` | `string` | Output only. Last update time of this resource. |

### `ManagementCluster`

Management cluster configuration.

| Property | Type | Description |
|----------|------|-------------|
| `clusterId` | `string` | Required. The user-provided identifier of the new `Cluster`. The identifier must meet the followi... |
| `nodeTypeConfigs` | `object` | Required. The map of cluster node types in this cluster, where the key is canonical identifier of... |
| `stretchedClusterConfig` | `StretchedClusterConfig` | Optional. Configuration of a stretched cluster. Required for STRETCHED private clouds. |

### `ManagementDnsZoneBinding`

Represents a binding between a network and the management DNS zone. A management DNS zone is the Cloud DNS cross-project binding zone that VMware Engine creates for each private cloud. It contains FQDNs and corresponding IP addresses for the private cloud's ESXi hosts and management VM appliances like vCenter and NSX Manager.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Creation time of this resource. |
| `description` | `string` | User-provided description for this resource. |
| `name` | `string` | Output only. The resource name of this binding. Resource names are schemeless URIs that follow th... |
| `state` | `string` | Output only. The state of the resource. |
| `uid` | `string` | Output only. System-generated unique identifier for the resource. |
| `updateTime` | `string` | Output only. Last update time of this resource. |
| `vmwareEngineNetwork` | `string` | Network to bind is a VMware Engine network. Specify the name in the following form for VMware eng... |
| `vpcNetwork` | `string` | Network to bind is a standard consumer VPC. Specify the name in the following form for consumer V... |

### `MountDatastoreRequest`

Mount Datastore Request message

| Property | Type | Description |
|----------|------|-------------|
| `datastoreMountConfig` | `DatastoreMountConfig` | Required. The datastore mount configuration. |
| `ignoreColocation` | `boolean` | Optional. If set to true, the colocation requirement will be ignored. If set to false, the coloca... |
| `requestId` | `string` | Optional. The request ID must be a valid UUID with the exception that zero UUID is not supported ... |

### `NetworkConfig`

Network configuration in the consumer project with which the peering has to be done.

| Property | Type | Description |
|----------|------|-------------|
| `dnsServerIp` | `string` | Output only. DNS Server IP of the Private Cloud. All DNS queries can be forwarded to this address... |
| `managementCidr` | `string` | Required. Management CIDR used by VMware management appliances. |
| `managementIpAddressLayoutVersion` | `integer` | Output only. The IP address layout version of the management IP address range. Possible versions ... |
| `vmwareEngineNetwork` | `string` | Optional. The relative resource name of the VMware Engine network attached to the private cloud. ... |
| `vmwareEngineNetworkCanonical` | `string` | Output only. The canonical name of the VMware Engine network in the form: `projects/{project_numb... |

### `NetworkPeering`

Details of a network peering.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Creation time of this resource. |
| `description` | `string` | Optional. User-provided description for this network peering. |
| `exchangeSubnetRoutes` | `boolean` | Optional. True if full mesh connectivity is created and managed automatically between peered netw... |
| `exportCustomRoutes` | `boolean` | Optional. True if custom routes are exported to the peered network; false otherwise. The default ... |
| `exportCustomRoutesWithPublicIp` | `boolean` | Optional. True if all subnet routes with a public IP address range are exported; false otherwise.... |
| `importCustomRoutes` | `boolean` | Optional. True if custom routes are imported from the peered network; false otherwise. The defaul... |
| `importCustomRoutesWithPublicIp` | `boolean` | Optional. True if all subnet routes with public IP address range are imported; false otherwise. T... |
| `name` | `string` | Output only. Identifier. The resource name of the network peering. NetworkPeering is a global res... |
| `peerMtu` | `integer` | Optional. Maximum transmission unit (MTU) in bytes. The default value is `1500`. If a value of `0... |
| `peerNetwork` | `string` | Required. The relative resource name of the network to peer with a standard VMware Engine network... |
| `peerNetworkType` | `string` | Required. The type of the network to peer with the VMware Engine network. |
| `state` | `string` | Output only. State of the network peering. This field has a value of 'ACTIVE' when there's a matc... |
| `stateDetails` | `string` | Output only. Output Only. Details about the current state of the network peering. |
| `uid` | `string` | Output only. System-generated unique identifier for the resource. |
| `updateTime` | `string` | Output only. Last update time of this resource. |
| `vmwareEngineNetwork` | `string` | Required. The relative resource name of the VMware Engine network. Specify the name in the follow... |

### `NetworkPolicy`

Represents a network policy resource. Network policies are regional resources. You can use a network policy to enable or disable internet access and external IP access. Network policies are associated with a VMware Engine network, which might span across regions. For a given region, a network policy applies to all private clouds in the VMware Engine network associated with the policy.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Creation time of this resource. |
| `description` | `string` | Optional. User-provided description for this network policy. |
| `edgeServicesCidr` | `string` | Required. IP address range in CIDR notation used to create internet access and external IP access... |
| `externalIp` | `NetworkService` | Network service that allows External IP addresses to be assigned to VMware workloads. This servic... |
| `internetAccess` | `NetworkService` | Network service that allows VMware workloads to access the internet. |
| `name` | `string` | Output only. Identifier. The resource name of this network policy. Resource names are schemeless ... |
| `uid` | `string` | Output only. System-generated unique identifier for the resource. |
| `updateTime` | `string` | Output only. Last update time of this resource. |
| `vmwareEngineNetwork` | `string` | Optional. The relative resource name of the VMware Engine network. Specify the name in the follow... |
| `vmwareEngineNetworkCanonical` | `string` | Output only. The canonical name of the VMware Engine network in the form: `projects/{project_numb... |

### `NetworkService`

Represents a network service that is managed by a `NetworkPolicy` resource. A network service provides a way to control an aspect of external access to VMware workloads. For example, whether the VMware workloads in the private clouds governed by a network policy can access or be accessed from the internet.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | True if the service is enabled; false otherwise. |
| `state` | `string` | Output only. State of the service. New values may be added to this enum when appropriate. |

### `NfsDatastore`

The NFS datastore configuration.

| Property | Type | Description |
|----------|------|-------------|
| `googleFileService` | `GoogleFileService` | Google service file service configuration |
| `googleVmwareFileService` | `GoogleVmwareFileService` | GCVE file service configuration |
| `thirdPartyFileService` | `ThirdPartyFileService` | Third party file service configuration |

### `Node`

Node in a cluster.

| Property | Type | Description |
|----------|------|-------------|
| `customCoreCount` | `string` | Output only. Customized number of cores |
| `fqdn` | `string` | Output only. Fully qualified domain name of the node. |
| `internalIp` | `string` | Output only. Internal IP address of the node. |
| `name` | `string` | Output only. The resource name of this node. Resource names are schemeless URIs that follow the c... |
| `nodeTypeId` | `string` | Output only. The canonical identifier of the node type (corresponds to the `NodeType`). For examp... |
| `state` | `string` | Output only. The state of the appliance. |
| `version` | `string` | Output only. The version number of the VMware ESXi management component in this cluster. |

### `NodeType`

Describes node type.

| Property | Type | Description |
|----------|------|-------------|
| `availableCustomCoreCounts` | `array<integer>` | Output only. List of possible values of custom core count. |
| `capabilities` | `array<string>` | Output only. Capabilities of this node type. |
| `diskSizeGb` | `integer` | Output only. The amount of storage available, defined in GB. |
| `displayName` | `string` | Output only. The friendly name for this node type. For example: ve1-standard-72 |
| `families` | `array<string>` | Output only. Families of the node type. For node types to be in the same cluster they must share ... |
| `kind` | `string` | Output only. The type of the resource. |
| `memoryGb` | `integer` | Output only. The amount of physical memory available, defined in GB. |
| `name` | `string` | Output only. The resource name of this node type. Resource names are schemeless URIs that follow ... |
| `nodeTypeId` | `string` | Output only. The canonical identifier of the node type (corresponds to the `NodeType`). For examp... |
| `totalCoreCount` | `integer` | Output only. The total number of CPU cores in a single node. |
| `virtualCpuCount` | `integer` | Output only. The total number of virtual CPUs in a single node. |

### `NodeTypeConfig`

Information about the type and number of nodes associated with the cluster.

| Property | Type | Description |
|----------|------|-------------|
| `customCoreCount` | `integer` | Optional. Customized number of cores available to each node of the type. This number must always ... |
| `nodeCount` | `integer` | Required. The number of nodes of this type in the cluster |

### `Nsx`

Details about a NSX Manager appliance.

| Property | Type | Description |
|----------|------|-------------|
| `fqdn` | `string` | Fully qualified domain name of the appliance. |
| `internalIp` | `string` | Internal IP address of the appliance. |
| `state` | `string` | Output only. The state of the appliance. |
| `version` | `string` | Version of the appliance. |

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
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `requestedCancellation` | `boolean` | Output only. True if the user has requested cancellation of the operation; false otherwise. Opera... |
| `statusMessage` | `string` | Output only. Human-readable status of the operation, if any. |
| `target` | `string` | Output only. Server-defined resource path for the target of the operation. |
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

### `PeeringRoute`

Exchanged network peering route.

| Property | Type | Description |
|----------|------|-------------|
| `destRange` | `string` | Output only. Destination range of the peering route in CIDR notation. |
| `direction` | `string` | Output only. Direction of the routes exchanged with the peer network, from the VMware Engine netw... |
| `imported` | `boolean` | Output only. True if the peering route has been imported from a peered VPC network; false otherwi... |
| `nextHopRegion` | `string` | Output only. Region containing the next hop of the peering route. This field only applies to dyna... |
| `priority` | `string` | Output only. The priority of the peering route. |
| `type` | `string` | Output only. Type of the route in the peer VPC network. |

### `Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `auditConfigs` | `array<AuditConfig>` | Specifies cloud audit logging configuration for this policy. |
| `bindings` | `array<Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `Principal`

Users/Service accounts which have access for DNS binding on the intranet VPC corresponding to the consumer project.

| Property | Type | Description |
|----------|------|-------------|
| `serviceAccount` | `string` | The service account which needs to be granted the permission. |
| `user` | `string` | The user who needs to be granted permission. |

### `PrivateCloud`

Represents a private cloud resource. Private clouds of type `STANDARD` and `TIME_LIMITED` are zonal resources, `STRETCHED` private clouds are regional.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Creation time of this resource. |
| `deleteTime` | `string` | Output only. Time when the resource was scheduled for deletion. |
| `description` | `string` | User-provided description for this private cloud. |
| `expireTime` | `string` | Output only. Time when the resource will be irreversibly deleted. |
| `hcx` | `Hcx` | Output only. HCX appliance. |
| `managementCluster` | `ManagementCluster` | Required. Input only. The management cluster for this private cloud. This field is required durin... |
| `name` | `string` | Output only. Identifier. The resource name of this private cloud. Resource names are schemeless U... |
| `networkConfig` | `NetworkConfig` | Required. Network configuration of the private cloud. |
| `nsx` | `Nsx` | Output only. NSX appliance. |
| `state` | `string` | Output only. State of the resource. New values may be added to this enum when appropriate. |
| `type` | `string` | Optional. Type of the private cloud. Defaults to STANDARD. |
| `uid` | `string` | Output only. System-generated unique identifier for the resource. |
| `updateTime` | `string` | Output only. Last update time of this resource. |
| `vcenter` | `Vcenter` | Output only. Vcenter appliance. |

### `PrivateConnection`

Private connection resource that provides connectivity for VMware Engine private clouds.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Creation time of this resource. |
| `description` | `string` | Optional. User-provided description for this private connection. |
| `name` | `string` | Output only. The resource name of the private connection. Resource names are schemeless URIs that... |
| `peeringId` | `string` | Output only. VPC network peering id between given network VPC and VMwareEngineNetwork. |
| `peeringState` | `string` | Output only. Peering state between service network and VMware Engine network. |
| `routingMode` | `string` | Optional. Routing Mode. Default value is set to GLOBAL. For type = PRIVATE_SERVICE_ACCESS, this f... |
| `serviceNetwork` | `string` | Required. Service network to create private connection. Specify the name in the following form: `... |
| `state` | `string` | Output only. State of the private connection. |
| `type` | `string` | Required. Private connection type. |
| `uid` | `string` | Output only. System-generated unique identifier for the resource. |
| `updateTime` | `string` | Output only. Last update time of this resource. |
| `vmwareEngineNetwork` | `string` | Required. The relative resource name of Legacy VMware Engine network. Specify the name in the fol... |
| `vmwareEngineNetworkCanonical` | `string` | Output only. The canonical name of the VMware Engine network in the form: `projects/{project_numb... |

### `RepairManagementDnsZoneBindingRequest`

Request message for VmwareEngine.RepairManagementDnsZoneBindings

| Property | Type | Description |
|----------|------|-------------|
| `requestId` | `string` | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retr... |

### `ResetNsxCredentialsRequest`

Request message for VmwareEngine.ResetNsxCredentials

| Property | Type | Description |
|----------|------|-------------|
| `requestId` | `string` | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retr... |

### `ResetVcenterCredentialsRequest`

Request message for VmwareEngine.ResetVcenterCredentials

| Property | Type | Description |
|----------|------|-------------|
| `requestId` | `string` | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retr... |
| `username` | `string` | Optional. The username of the user to be to reset the credentials. The default value of this fiel... |

### `RevokeDnsBindPermissionRequest`

Request message for VmwareEngine.RevokeDnsBindPermission

| Property | Type | Description |
|----------|------|-------------|
| `principal` | `Principal` | Required. The consumer provided user/service account which needs to be granted permission to bind... |
| `requestId` | `string` | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retr... |

### `Schedule`

Schedule for the upgrade.

| Property | Type | Description |
|----------|------|-------------|
| `constraints` | `Constraints` | Output only. Output Only. Constraints applied to the schedule. These constraints should be applic... |
| `editWindow` | `Interval` | Output only. Output Only. The schedule is open for edits during this time interval or window. |
| `lastEditor` | `string` | Output only. Output Only. Indicates who most recently edited the upgrade schedule. The value is u... |
| `startTime` | `string` | Required. The scheduled start time for the upgrade. |
| `weeklyWindows` | `array<TimeWindow>` | Required. Weekly time windows for upgrade activities. The server performs upgrade activities duri... |

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

### `StretchedClusterConfig`

Configuration of a stretched cluster.

| Property | Type | Description |
|----------|------|-------------|
| `preferredLocation` | `string` | Required. Zone that will remain operational when connection between the two zones is lost. Specif... |
| `secondaryLocation` | `string` | Required. Additional zone for a higher level of availability and load balancing. Specify the reso... |

### `Subnet`

Subnet in a private cloud. Either `management` subnets (such as vMotion) that are read-only, or `userDefined`, which can also be updated.

| Property | Type | Description |
|----------|------|-------------|
| `gatewayIp` | `string` | The IP address of the gateway of this subnet. Must fall within the IP prefix defined above. |
| `ipCidrRange` | `string` | The IP address range of the subnet in CIDR format '10.0.0.0/24'. |
| `name` | `string` | Output only. Identifier. The resource name of this subnet. Resource names are schemeless URIs tha... |
| `state` | `string` | Output only. The state of the resource. |
| `type` | `string` | Output only. The type of the subnet. For example "management" or "userDefined". |
| `vlanId` | `integer` | Output only. VLAN ID of the VLAN on which the subnet is configured |

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

### `ThirdPartyFileService`

Third party file service configuration

| Property | Type | Description |
|----------|------|-------------|
| `fileShare` | `string` | Required. Required Mount Folder name |
| `network` | `string` | Required. Required to identify vpc peering used for NFS access network name of NFS's vpc e.g. pro... |
| `servers` | `array<string>` | Required. Server IP addresses of the NFS file service. NFS v3, provide a single IP address or DNS... |

### `Thresholds`

Thresholds define the utilization of resources triggering scale-out and scale-in operations.

| Property | Type | Description |
|----------|------|-------------|
| `scaleIn` | `integer` | Required. The utilization triggering the scale-in operation in percent. |
| `scaleOut` | `integer` | Required. The utilization triggering the scale-out operation in percent. |

### `TimeOfDay`

Represents a time of day. The date and time zone are either not significant or are specified elsewhere. An API may choose to allow leap seconds. Related types are google.type.Date and `google.protobuf.Timestamp`.

| Property | Type | Description |
|----------|------|-------------|
| `hours` | `integer` | Hours of a day in 24 hour format. Must be greater than or equal to 0 and typically must be less t... |
| `minutes` | `integer` | Minutes of an hour. Must be greater than or equal to 0 and less than or equal to 59. |
| `nanos` | `integer` | Fractions of seconds, in nanoseconds. Must be greater than or equal to 0 and less than or equal t... |
| `seconds` | `integer` | Seconds of a minute. Must be greater than or equal to 0 and typically must be less than or equal ... |

### `TimeWindow`

Represents the time window to perform upgrade activities.

| Property | Type | Description |
|----------|------|-------------|
| `dayOfWeek` | `string` | Required. Day of the week for this window. |
| `duration` | `string` | Required. The duration of the window. The max allowed duration for any window is 24 hours. |
| `startTime` | `TimeOfDay` | Required. Time in UTC when the window starts. |

### `UndeletePrivateCloudRequest`

Request message for VmwareEngine.UndeletePrivateCloud

| Property | Type | Description |
|----------|------|-------------|
| `requestId` | `string` | Optional. The request ID must be a valid UUID with the exception that zero UUID is not supported ... |

### `UnmountDatastoreRequest`

Unmount Datastore Request messag

| Property | Type | Description |
|----------|------|-------------|
| `datastore` | `string` | Required. The resource name of the datastore to unmount. Resource names are schemeless URIs that ... |
| `requestId` | `string` | Optional. The request ID must be a valid UUID with the exception that zero UUID is not supported ... |

### `Upgrade`

Describes Private cloud Upgrade.

| Property | Type | Description |
|----------|------|-------------|
| `componentUpgrades` | `array<VmwareUpgradeComponent>` | Output only. Output Only. The list of component upgrades. |
| `createTime` | `string` | Output only. Output Only. Creation time of this resource. |
| `description` | `string` | Output only. Output Only. The description of the upgrade. This is used to provide additional info... |
| `endTime` | `string` | Output only. Output Only. End time of the upgrade. |
| `estimatedDuration` | `string` | Output only. Output Only. The estimated total duration of the upgrade. This information can be us... |
| `etag` | `string` | The etag for the upgrade resource. If this is provided on update, it must match the server's etag. |
| `name` | `string` | Output only. Identifier. The resource name of the private cloud `Upgrade`. Resource names are sch... |
| `schedule` | `Schedule` | Schedule details for the upgrade. |
| `startVersion` | `string` | Output only. Output Only. The start version |
| `state` | `string` | Output only. The current state of the upgrade. |
| `targetVersion` | `string` | Output only. Output Only. The target version |
| `type` | `string` | Output only. Output Only. The type of upgrade. |
| `uid` | `string` | Output only. System-generated unique identifier for the resource. |
| `updateTime` | `string` | Output only. Output Only. Last update time of this resource. |
| `version` | `string` | Output only. |

### `Vcenter`

Details about a vCenter Server management appliance.

| Property | Type | Description |
|----------|------|-------------|
| `fqdn` | `string` | Fully qualified domain name of the appliance. |
| `internalIp` | `string` | Internal IP address of the appliance. |
| `state` | `string` | Output only. The state of the appliance. |
| `version` | `string` | Version of the appliance. |

### `VmwareEngineNetwork`

VMware Engine network resource that provides connectivity for VMware Engine private clouds.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Creation time of this resource. |
| `description` | `string` | User-provided description for this VMware Engine network. |
| `etag` | `string` | Checksum that may be sent on update and delete requests to ensure that the user-provided value is... |
| `name` | `string` | Output only. Identifier. The resource name of the VMware Engine network. Resource names are schem... |
| `state` | `string` | Output only. State of the VMware Engine network. |
| `type` | `string` | Required. VMware Engine network type. |
| `uid` | `string` | Output only. System-generated unique identifier for the resource. |
| `updateTime` | `string` | Output only. Last update time of this resource. |
| `vpcNetworks` | `array<VpcNetwork>` | Output only. VMware Engine service VPC networks that provide connectivity from a private cloud to... |

### `VmwareUpgradeComponent`

Per component upgrade resource

| Property | Type | Description |
|----------|------|-------------|
| `componentType` | `string` | Output only. Type of component |
| `state` | `string` | Output only. Component's upgrade state. |

### `VpcNetwork`

Represents a VMware Engine VPC network that is managed by a VMware Engine network resource.

| Property | Type | Description |
|----------|------|-------------|
| `network` | `string` | Output only. The relative resource name of the service VPC network this VMware Engine network is ... |
| `type` | `string` | Output only. Type of VPC network (INTRANET, INTERNET, or GOOGLE_CLOUD) |

### `WeeklyTimeInterval`

Represents a time interval, spanning across days of the week. Until local timezones are supported, this interval is in UTC.

| Property | Type | Description |
|----------|------|-------------|
| `endDay` | `string` | Output only. The day on which the interval ends. Can be same as start day. |
| `endTime` | `TimeOfDay` | Output only. The time on the end day at which the interval ends. |
| `startDay` | `string` | Output only. The day on which the interval starts. |
| `startTime` | `TimeOfDay` | Output only. The time on the start day at which the interval starts. |

