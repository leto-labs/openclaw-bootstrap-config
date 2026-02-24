# Service Networking API - API Reference

**Version**: `v1` | **Methods**: 29 | **Schemas**: 131

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `servicenetworking.operations.list` | GET | `v1/{+name}` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `servicenetworking.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `servicenetworking.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `servicenetworking.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `servicenetworking.services.validate` | POST | `v1/{+parent}:validate` | Service producers use this method to validate if the consumer provided network, project and reque... |
| `servicenetworking.services.addSubnetwork` | POST | `v1/{+parent}:addSubnetwork` | For service producers, provisions a new subnet in a peered service's shared VPC network in the re... |
| `servicenetworking.services.searchRange` | POST | `v1/{+parent}:searchRange` | Service producers can use this method to find a currently unused range within consumer allocated ... |
| `servicenetworking.services.disableVpcServiceControls` | PATCH | `v1/{+parent}:disableVpcServiceControls` | Disables VPC service controls for a connection. |
| `servicenetworking.services.enableVpcServiceControls` | PATCH | `v1/{+parent}:enableVpcServiceControls` | Enables VPC service controls for a connection. |
| `servicenetworking.services.connections.list` | GET | `v1/{+parent}/connections` | List the private connections that are configured in a service consumer's VPC network. |
| `servicenetworking.services.connections.create` | POST | `v1/{+parent}/connections` | Creates a private connection that establishes a VPC Network Peering connection to a VPC network i... |
| `servicenetworking.services.connections.patch` | PATCH | `v1/{+name}` | Updates the allocated ranges that are assigned to a connection. |
| `servicenetworking.services.connections.deleteConnection` | POST | `v1/{+name}` | Deletes a private service access connection. |
| `servicenetworking.services.dnsRecordSets.list` | GET | `v1/{+parent}/dnsRecordSets:list` | Producers can use this method to retrieve a list of available DNS RecordSets available inside the... |
| `servicenetworking.services.dnsRecordSets.get` | GET | `v1/{+parent}/dnsRecordSets:get` | Producers can use this method to retrieve information about the DNS record set added to the priva... |
| `servicenetworking.services.dnsRecordSets.update` | POST | `v1/{+parent}/dnsRecordSets:update` | Service producers can use this method to update DNS record sets from private DNS zones in the sha... |
| `servicenetworking.services.dnsRecordSets.remove` | POST | `v1/{+parent}/dnsRecordSets:remove` | Service producers can use this method to remove DNS record sets from private DNS zones in the sha... |
| `servicenetworking.services.dnsRecordSets.add` | POST | `v1/{+parent}/dnsRecordSets:add` | Service producers can use this method to add DNS record sets to private DNS zones in the shared p... |
| `servicenetworking.services.projects.global.networks.get` | GET | `v1/{+name}` | Service producers use this method to get the configuration of their connection including the impo... |
| `servicenetworking.services.projects.global.networks.getVpcServiceControls` | GET | `v1/{+name}/vpcServiceControls` | Consumers use this method to find out the state of VPC Service Controls. The controls could be en... |
| `servicenetworking.services.projects.global.networks.updateConsumerConfig` | PATCH | `v1/{+parent}:updateConsumerConfig` | Service producers use this method to update the configuration of their connection including the i... |
| `servicenetworking.services.projects.global.networks.peeredDnsDomains.delete` | DELETE | `v1/{+name}` | Deletes a peered DNS domain. |
| `servicenetworking.services.projects.global.networks.peeredDnsDomains.create` | POST | `v1/{+parent}/peeredDnsDomains` | Creates a peered DNS domain which sends requests for records in given namespace originating in th... |
| `servicenetworking.services.projects.global.networks.peeredDnsDomains.list` | GET | `v1/{+parent}/peeredDnsDomains` | Lists peered DNS domains for a connection. |
| `servicenetworking.services.projects.global.networks.dnsZones.get` | GET | `v1/{+name}` | Service producers can use this method to retrieve a DNS zone in the shared producer host project ... |
| `servicenetworking.services.projects.global.networks.dnsZones.list` | GET | `v1/{+parent}/dnsZones:list` | * Service producers can use this method to retrieve a list of available DNS zones in the shared p... |
| `servicenetworking.services.dnsZones.add` | POST | `v1/{+parent}/dnsZones:add` | Service producers can use this method to add private DNS zones in the shared producer host projec... |
| `servicenetworking.services.dnsZones.remove` | POST | `v1/{+parent}/dnsZones:remove` | Service producers can use this method to remove private DNS zones in the shared producer host pro... |
| `servicenetworking.services.roles.add` | POST | `v1/{+parent}/roles:add` | Service producers can use this method to add roles in the shared VPC host project. Each role is b... |

### `servicenetworking.operations.list`

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

**Response**: `ListOperationsResponse`

```typescript
const res = await servicenetworking.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/service.management`

---

### `servicenetworking.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await servicenetworking.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/service.management`

---

### `servicenetworking.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await servicenetworking.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/service.management`

---

### `servicenetworking.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await servicenetworking.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/service.management`

---

### `servicenetworking.services.validate`

**POST** `v1/{+parent}:validate`

Service producers use this method to validate if the consumer provided network, project and requested range are valid. This allows them to use a fail-fast mechanism for consumer requests, and not have to wait for AddSubnetwork operation completion to determine if user request is invalid.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. This is in a form services/{service} where {service} is the name of the private access management service. ... |

**Request body**: `ValidateConsumerConfigRequest`

**Response**: `ValidateConsumerConfigResponse`

```typescript
const res = await servicenetworking.services.validate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/service.management`

---

### `servicenetworking.services.addSubnetwork`

**POST** `v1/{+parent}:addSubnetwork`

For service producers, provisions a new subnet in a peered service's shared VPC network in the requested region and with the requested size that's expressed as a CIDR range (number of leading bits of ipV4 network mask). The method checks against the assigned allocated ranges to find a non-conflicting IP address range. The method will reuse a subnet if subsequent calls contain the same subnet name, region, and prefix length. This method will make producer's tenant project to be a shared VPC service project as needed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. A tenant project in the service producer organization, in the following format: services/{service}/{collect... |

**Request body**: `AddSubnetworkRequest`

**Response**: `Operation`

```typescript
const res = await servicenetworking.services.addSubnetwork({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/service.management`

---

### `servicenetworking.services.searchRange`

**POST** `v1/{+parent}:searchRange`

Service producers can use this method to find a currently unused range within consumer allocated ranges. This returned range is not reserved, and not guaranteed to remain unused. It will validate previously provided allocated ranges, find non-conflicting sub-range of requested size (expressed in number of leading bits of ipv4 network mask, as in CIDR range notation).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. This is in a form services/{service}. {service} the name of the private access management service, for exam... |

**Request body**: `SearchRangeRequest`

**Response**: `Operation`

```typescript
const res = await servicenetworking.services.searchRange({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/service.management`

---

### `servicenetworking.services.disableVpcServiceControls`

**PATCH** `v1/{+parent}:disableVpcServiceControls`

Disables VPC service controls for a connection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The service that is managing peering connectivity for a service producer's organization. For Google service... |

**Request body**: `DisableVpcServiceControlsRequest`

**Response**: `Operation`

```typescript
const res = await servicenetworking.services.disableVpcServiceControls({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/service.management`

---

### `servicenetworking.services.enableVpcServiceControls`

**PATCH** `v1/{+parent}:enableVpcServiceControls`

Enables VPC service controls for a connection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The service that is managing peering connectivity for a service producer's organization. For Google service... |

**Request body**: `EnableVpcServiceControlsRequest`

**Response**: `Operation`

```typescript
const res = await servicenetworking.services.enableVpcServiceControls({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/service.management`

---

### `servicenetworking.services.connections.list`

**GET** `v1/{+parent}/connections`

List the private connections that are configured in a service consumer's VPC network.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The service that is managing peering connectivity for a service producer's organization. For Google service... |
| `network` | `string` | query | No | Required. The name of service consumer's VPC network that's connected with service producer network through a private... |

**Response**: `ListConnectionsResponse`

```typescript
const res = await servicenetworking.connections.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/service.management`

---

### `servicenetworking.services.connections.create`

**POST** `v1/{+parent}/connections`

Creates a private connection that establishes a VPC Network Peering connection to a VPC network in the service producer's organization. The administrator of the service consumer's VPC network invokes this method. The administrator must assign one or more allocated IP ranges for provisioning subnetworks in the service producer's VPC network. This connection is used for all supported services in the service producer's organization, so it only needs to be invoked once.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The service that is managing peering connectivity for a service producer's organization. For Google service... |

**Request body**: `Connection`

**Response**: `Operation`

```typescript
const res = await servicenetworking.connections.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/service.management`

---

### `servicenetworking.services.connections.patch`

**PATCH** `v1/{+name}`

Updates the allocated ranges that are assigned to a connection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The private service connection that connects to a service producer organization. The name includes both the... |
| `force` | `boolean` | query | No | If a previously defined allocated range is removed, force flag must be set to true. |
| `updateMask` | `string` | query | No | The update mask. If this is omitted, it defaults to "*". You can only update the listed peering ranges. |

**Request body**: `Connection`

**Response**: `Operation`

```typescript
const res = await servicenetworking.connections.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/service.management`

---

### `servicenetworking.services.connections.deleteConnection`

**POST** `v1/{+name}`

Deletes a private service access connection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The private service connection that connects to a service producer organization. The name includes both the... |

**Request body**: `DeleteConnectionRequest`

**Response**: `Operation`

```typescript
const res = await servicenetworking.connections.deleteConnection({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/service.management`

---

### `servicenetworking.services.dnsRecordSets.list`

**GET** `v1/{+parent}/dnsRecordSets:list`

Producers can use this method to retrieve a list of available DNS RecordSets available inside the private zone on the tenant host project accessible from their network.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The service that is managing peering connectivity for a service producer's organization. For Google service... |
| `consumerNetwork` | `string` | query | No | Required. The network that the consumer is using to connect with services. Must be in the form of projects/{project}/... |
| `zone` | `string` | query | No | Required. The name of the private DNS zone in the shared producer host project from which the record set will be remo... |

**Response**: `ListDnsRecordSetsResponse`

```typescript
const res = await servicenetworking.dnsRecordSets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/service.management`

---

### `servicenetworking.services.dnsRecordSets.get`

**GET** `v1/{+parent}/dnsRecordSets:get`

Producers can use this method to retrieve information about the DNS record set added to the private zone inside the shared tenant host project associated with a consumer network.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource identifying the connection which owns this collection of DNS zones in the format services/{... |
| `consumerNetwork` | `string` | query | No | Required. The consumer network containing the record set. Must be in the form of projects/{project}/global/networks/{... |
| `domain` | `string` | query | No | Required. The domain name of the zone containing the recordset. |
| `type` | `string` | query | No | Required. RecordSet Type eg. type='A'. See the list of [Supported DNS Types](https://cloud.google.com/dns/records/jso... |
| `zone` | `string` | query | No | Required. The name of the zone containing the record set. |

**Response**: `DnsRecordSet`

```typescript
const res = await servicenetworking.dnsRecordSets.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/service.management`

---

### `servicenetworking.services.dnsRecordSets.update`

**POST** `v1/{+parent}/dnsRecordSets:update`

Service producers can use this method to update DNS record sets from private DNS zones in the shared producer host project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The service that is managing peering connectivity for a service producer's organization. For Google service... |

**Request body**: `UpdateDnsRecordSetRequest`

**Response**: `Operation`

```typescript
const res = await servicenetworking.dnsRecordSets.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/service.management`

---

### `servicenetworking.services.dnsRecordSets.remove`

**POST** `v1/{+parent}/dnsRecordSets:remove`

Service producers can use this method to remove DNS record sets from private DNS zones in the shared producer host project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The service that is managing peering connectivity for a service producer's organization. For Google service... |

**Request body**: `RemoveDnsRecordSetRequest`

**Response**: `Operation`

```typescript
const res = await servicenetworking.dnsRecordSets.remove({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/service.management`

---

### `servicenetworking.services.dnsRecordSets.add`

**POST** `v1/{+parent}/dnsRecordSets:add`

Service producers can use this method to add DNS record sets to private DNS zones in the shared producer host project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The service that is managing peering connectivity for a service producer's organization. For Google service... |

**Request body**: `AddDnsRecordSetRequest`

**Response**: `Operation`

```typescript
const res = await servicenetworking.dnsRecordSets.add({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/service.management`

---

### `servicenetworking.services.projects.global.networks.get`

**GET** `v1/{+name}`

Service producers use this method to get the configuration of their connection including the import/export of custom routes and subnetwork routes with public IP.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the consumer config to retrieve in the format: `services/{service}/projects/{project}/global/networ... |
| `includeUsedIpRanges` | `boolean` | query | No | Optional. When true, include the used IP ranges as part of the GetConsumerConfig output. This includes routes created... |

**Response**: `ConsumerConfig`

```typescript
const res = await servicenetworking.networks.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/service.management`

---

### `servicenetworking.services.projects.global.networks.getVpcServiceControls`

**GET** `v1/{+name}/vpcServiceControls`

Consumers use this method to find out the state of VPC Service Controls. The controls could be enabled or disabled for a connection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the VPC Service Controls config to retrieve in the format: `services/{service}/projects/{project}/g... |

**Response**: `VpcServiceControls`

```typescript
const res = await servicenetworking.networks.getVpcServiceControls({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/service.management`

---

### `servicenetworking.services.projects.global.networks.updateConsumerConfig`

**PATCH** `v1/{+parent}:updateConsumerConfig`

Service producers use this method to update the configuration of their connection including the import/export of custom routes and subnetwork routes with public IP.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource identifying the connection for which the consumer config is being updated in the format: `s... |

**Request body**: `UpdateConsumerConfigRequest`

**Response**: `Operation`

```typescript
const res = await servicenetworking.networks.updateConsumerConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/service.management`

---

### `servicenetworking.services.projects.global.networks.peeredDnsDomains.delete`

**DELETE** `v1/{+name}`

Deletes a peered DNS domain.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the peered DNS domain to delete in the format: `services/{service}/projects/{project}/global/ne... |

**Response**: `Operation`

```typescript
const res = await servicenetworking.peeredDnsDomains.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/service.management`

---

### `servicenetworking.services.projects.global.networks.peeredDnsDomains.create`

**POST** `v1/{+parent}/peeredDnsDomains`

Creates a peered DNS domain which sends requests for records in given namespace originating in the service producer VPC network to the consumer VPC network to be resolved.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource identifying the connection for which the peered DNS domain will be created in the format: `... |

**Request body**: `PeeredDnsDomain`

**Response**: `Operation`

```typescript
const res = await servicenetworking.peeredDnsDomains.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/service.management`

---

### `servicenetworking.services.projects.global.networks.peeredDnsDomains.list`

**GET** `v1/{+parent}/peeredDnsDomains`

Lists peered DNS domains for a connection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource identifying the connection which owns this collection of peered DNS domains in the format: ... |

**Response**: `ListPeeredDnsDomainsResponse`

```typescript
const res = await servicenetworking.peeredDnsDomains.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/service.management`

---

### `servicenetworking.services.projects.global.networks.dnsZones.get`

**GET** `v1/{+name}`

Service producers can use this method to retrieve a DNS zone in the shared producer host project and the matching peering zones in consumer project

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The network that the consumer is using to connect with services. Must be in the form of services/{service}/... |

**Response**: `GetDnsZoneResponse`

```typescript
const res = await servicenetworking.dnsZones.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/service.management`

---

### `servicenetworking.services.projects.global.networks.dnsZones.list`

**GET** `v1/{+parent}/dnsZones:list`

* Service producers can use this method to retrieve a list of available DNS zones in the shared producer host project and the matching peering zones in the consumer project. *

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource identifying the connection which owns this collection of DNS zones in the format services/{... |

**Response**: `ListDnsZonesResponse`

```typescript
const res = await servicenetworking.dnsZones.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/service.management`

---

### `servicenetworking.services.dnsZones.add`

**POST** `v1/{+parent}/dnsZones:add`

Service producers can use this method to add private DNS zones in the shared producer host project and matching peering zones in the consumer project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The service that is managing peering connectivity for a service producer's organization. For Google service... |

**Request body**: `AddDnsZoneRequest`

**Response**: `Operation`

```typescript
const res = await servicenetworking.dnsZones.add({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/service.management`

---

### `servicenetworking.services.dnsZones.remove`

**POST** `v1/{+parent}/dnsZones:remove`

Service producers can use this method to remove private DNS zones in the shared producer host project and matching peering zones in the consumer project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The service that is managing peering connectivity for a service producer's organization. For Google service... |

**Request body**: `RemoveDnsZoneRequest`

**Response**: `Operation`

```typescript
const res = await servicenetworking.dnsZones.remove({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/service.management`

---

### `servicenetworking.services.roles.add`

**POST** `v1/{+parent}/roles:add`

Service producers can use this method to add roles in the shared VPC host project. Each role is bound to the provided member. Each role must be selected from within an allowlisted set of roles. Each role is applied at only the granularity specified in the allowlist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. This is in a form services/{service} where {service} is the name of the private access management service. ... |

**Request body**: `AddRolesRequest`

**Response**: `Operation`

```typescript
const res = await servicenetworking.roles.add({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/service.management`

---

## Schemas

### `AddDnsRecordSetMetadata`

Metadata provided through GetOperation request for the LRO generated by AddDnsRecordSet API

### `AddDnsRecordSetRequest`

Request to add a record set to a private managed DNS zone in the shared producer host project.

| Property | Type | Description |
|----------|------|-------------|
| `consumerNetwork` | `string` | Required. The network that the consumer is using to connect with services. Must be in the form of... |
| `dnsRecordSet` | `DnsRecordSet` | Required. The DNS record set to add. |
| `zone` | `string` | Required. The name of the private DNS zone in the shared producer host project to which the recor... |

### `AddDnsZoneMetadata`

Metadata provided through GetOperation request for the LRO generated by AddDnsZone API

### `AddDnsZoneRequest`

Request to add a private managed DNS zone in the shared producer host project and a matching DNS peering zone in the consumer project.

| Property | Type | Description |
|----------|------|-------------|
| `consumerNetwork` | `string` | Required. The network that the consumer is using to connect with services. Must be in the form of... |
| `dnsSuffix` | `string` | Required. The DNS name suffix for the zones e.g. `example.com.`. Cloud DNS requires that a DNS su... |
| `name` | `string` | Required. The name for both the private zone in the shared producer host project and the peering ... |

### `AddDnsZoneResponse`

Represents managed DNS zones created in the shared producer host and consumer projects.

| Property | Type | Description |
|----------|------|-------------|
| `consumerPeeringZone` | `DnsZone` | The DNS peering zone created in the consumer project. |
| `producerPrivateZone` | `DnsZone` | The private DNS zone created in the shared producer host project. |

### `AddRolesMetadata`

Metadata provided through GetOperation request for the LRO generated by AddRoles API

### `AddRolesRequest`

Request for AddRoles to allow Service Producers to add roles in the shared VPC host project for them to use.

| Property | Type | Description |
|----------|------|-------------|
| `consumerNetwork` | `string` | Required. The network that the consumer is using to connect with services. Must be in the form of... |
| `policyBinding` | `array<PolicyBinding>` | Required. List of policy bindings to add to shared VPC host project. |

### `AddRolesResponse`

Represents IAM roles added to the shared VPC host project.

| Property | Type | Description |
|----------|------|-------------|
| `policyBinding` | `array<PolicyBinding>` | Required. List of policy bindings that were added to the shared VPC host project. |

### `AddSubnetworkRequest`

Request to create a subnetwork in a previously peered service network.

| Property | Type | Description |
|----------|------|-------------|
| `allowSubnetCidrRoutesOverlap` | `boolean` | Optional. Defines the allowSubnetCidrRoutesOverlap field of the subnet, e.g. Available in alpha a... |
| `checkServiceNetworkingUsePermission` | `boolean` | Optional. The IAM permission check determines whether the consumer project has 'servicenetworking... |
| `computeIdempotencyWindow` | `string` | Optional. Specifies a custom time bucket for GCE subnetwork request idempotency. If two equivalen... |
| `consumer` | `string` | Required. A resource that represents the service consumer, such as `projects/123456`. The project... |
| `consumerNetwork` | `string` | Required. The name of the service consumer's VPC network. The network must have an existing priva... |
| `description` | `string` | Optional. Description of the subnet. |
| `internalRange` | `string` | Optional. The url of an Internal Range. Eg: `projects//locations/global/internalRanges/`. If spec... |
| `ipPrefixLength` | `integer` | Required. The prefix length of the subnet's IP address range. Use CIDR range notation, such as `2... |
| `outsideAllocationPublicIpRange` | `string` | Optional. Enable outside allocation using public IP addresses. Any public IP range may be specifi... |
| `privateIpv6GoogleAccess` | `string` | Optional. The private IPv6 google access type for the VMs in this subnet. For information about t... |
| `purpose` | `string` | Optional. Defines the purpose field of the subnet, e.g. 'PRIVATE_SERVICE_CONNECT'. For informatio... |
| `region` | `string` | Required. The name of a [region](https://cloud.google.com/compute/docs/regions-zones) for the sub... |
| `requestedAddress` | `string` | Optional. The starting address of a range. The address must be a valid IPv4 address in the x.x.x.... |
| `requestedRanges` | `array<string>` | Optional. The name of one or more allocated IP address ranges associated with this private servic... |
| `role` | `string` | Optional. Defines the role field of the subnet, e.g. 'ACTIVE'. For information about the roles th... |
| `secondaryIpRangeSpecs` | `array<SecondaryIpRangeSpec>` | Optional. A list of secondary IP ranges to be created within the new subnetwork. |
| `skipRequestedAddressValidation` | `boolean` | Optional. Skips validating if the requested_address is in use by SN VPC’s peering group. Compute ... |
| `subnetwork` | `string` | Required. A name for the new subnet. For information about the naming requirements, see [subnetwo... |
| `subnetworkUsers` | `array<string>` | A list of members that are granted the `roles/servicenetworking.subnetworkAdmin` role on the subnet. |
| `useCustomComputeIdempotencyWindow` | `boolean` | Optional. Specifies if Service Networking should use a custom time bucket for GCE idempotency. If... |

### `Api`

Api is a light-weight descriptor for an API Interface. Interfaces are also described as "protocol buffer services" in some contexts, such as by the "service" keyword in a .proto file, but they are different from API Services, which represent a concrete implementation of an interface as opposed to simply a description of methods and bindings. They are also sometimes simply referred to as "APIs" in other contexts, such as the name of this message itself. See https://cloud.google.com/apis/design/glossary for detailed terminology. New usages of this message as an alternative to ServiceDescriptorProto are strongly discouraged. This message does not reliability preserve all information necessary to model the schema and preserve semantics. Instead make use of FileDescriptorSet which preserves the necessary information.

| Property | Type | Description |
|----------|------|-------------|
| `edition` | `string` | The source edition string, only valid when syntax is SYNTAX_EDITIONS. |
| `methods` | `array<Method>` | The methods of this interface, in unspecified order. |
| `mixins` | `array<Mixin>` | Included interfaces. See Mixin. |
| `name` | `string` | The fully qualified name of this interface, including package name followed by the interface's si... |
| `options` | `array<Option>` | Any metadata attached to the interface. |
| `sourceContext` | `SourceContext` | Source context for the protocol buffer service represented by this message. |
| `syntax` | `string` | The source syntax of the service. |
| `version` | `string` | A version string for this interface. If specified, must have the form `major-version.minor-versio... |

### `Aspect`

Aspect represents Generic aspect. It is used to configure an aspect without making direct changes to service.proto

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | The type of this aspect configuration. |
| `rules` | `array<AspectRule>` | Optional. Rules of the Configuration. |
| `spec` | `object` | Content of the configuration. The underlying schema should be defined by Aspect owners as protobu... |

### `AspectRule`

Rule-based configuration for an aspect.

| Property | Type | Description |
|----------|------|-------------|
| `config` | `object` | Required. Rules of the configuration. The underlying schema should be defined by Aspect owners as... |
| `selector` | `string` | Required. Selects the RPC methods to which this rule applies. Refer to selector for syntax details. |

### `AuthProvider`

Configuration for an authentication provider, including support for [JSON Web Token (JWT)](https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32).

| Property | Type | Description |
|----------|------|-------------|
| `audiences` | `string` | The list of JWT [audiences](https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32#sectio... |
| `authorizationUrl` | `string` | Redirect URL if JWT token is required but not present or is expired. Implement authorizationUrl o... |
| `id` | `string` | The unique identifier of the auth provider. It will be referred to by `AuthRequirement.provider_i... |
| `issuer` | `string` | Identifies the principal that issued the JWT. See https://tools.ietf.org/html/draft-ietf-oauth-js... |
| `jwksUri` | `string` | URL of the provider's public key set to validate signature of the JWT. See [OpenID Discovery](htt... |
| `jwtLocations` | `array<JwtLocation>` | Defines the locations to extract the JWT. For now it is only used by the Cloud Endpoints to store... |

### `AuthRequirement`

User-defined authentication requirements, including support for [JSON Web Token (JWT)](https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32).

| Property | Type | Description |
|----------|------|-------------|
| `audiences` | `string` | NOTE: This will be deprecated soon, once AuthProvider.audiences is implemented and accepted in al... |
| `providerId` | `string` | id from authentication provider. Example: provider_id: bookstore_auth |

### `Authentication`

`Authentication` defines the authentication configuration for API methods provided by an API service. Example: name: calendar.googleapis.com authentication: providers: - id: google_calendar_auth jwks_uri: https://www.googleapis.com/oauth2/v1/certs issuer: https://securetoken.google.com rules: - selector: "*" requirements: provider_id: google_calendar_auth - selector: google.calendar.Delegate oauth: canonical_scopes: https://www.googleapis.com/auth/calendar.read

| Property | Type | Description |
|----------|------|-------------|
| `providers` | `array<AuthProvider>` | Defines a set of authentication providers that a service supports. |
| `rules` | `array<AuthenticationRule>` | A list of authentication rules that apply to individual API methods. **NOTE:** All service config... |

### `AuthenticationRule`

Authentication rules for the service. By default, if a method has any authentication requirements, every request must include a valid credential matching one of the requirements. It's an error to include more than one kind of credential in a single request. If a method doesn't have any auth requirements, request credentials will be ignored.

| Property | Type | Description |
|----------|------|-------------|
| `allowWithoutCredential` | `boolean` | If true, the service accepts API keys without any other credential. This flag only applies to HTT... |
| `oauth` | `OAuthRequirements` | The requirements for OAuth credentials. |
| `requirements` | `array<AuthRequirement>` | Requirements for additional authentication providers. |
| `selector` | `string` | Selects the methods to which this rule applies. Refer to selector for syntax details. |

### `Backend`

`Backend` defines the backend configuration for a service.

| Property | Type | Description |
|----------|------|-------------|
| `rules` | `array<BackendRule>` | A list of API backend rules that apply to individual API methods. **NOTE:** All service configura... |

### `BackendRule`

A backend rule provides configuration for an individual API element.

| Property | Type | Description |
|----------|------|-------------|
| `address` | `string` | The address of the API backend. The scheme is used to determine the backend protocol and security... |
| `deadline` | `number` | The number of seconds to wait for a response from a request. The default varies based on the requ... |
| `disableAuth` | `boolean` | When disable_auth is true, a JWT ID token won't be generated and the original "Authorization" HTT... |
| `jwtAudience` | `string` | The JWT audience is used when generating a JWT ID token for the backend. This ID token will be ad... |
| `loadBalancingPolicy` | `string` | The load balancing policy used for connection to the application backend. Defined as an arbitrary... |
| `minDeadline` | `number` | Deprecated, do not use. |
| `operationDeadline` | `number` | The number of seconds to wait for the completion of a long running operation. The default is no d... |
| `overridesByRequestProtocol` | `object` | The map between request protocol and the backend address. |
| `pathTranslation` | `string` | no-lint |
| `protocol` | `string` | The protocol used for sending a request to the backend. The supported values are "http/1.1" and "... |
| `selector` | `string` | Selects the methods to which this rule applies. Refer to selector for syntax details. |

### `BatchingConfigProto`

`BatchingConfigProto` defines the batching configuration for an API method.

| Property | Type | Description |
|----------|------|-------------|
| `batchDescriptor` | `BatchingDescriptorProto` | The request and response fields used in batching. |
| `thresholds` | `BatchingSettingsProto` | The thresholds which trigger a batched request to be sent. |

### `BatchingDescriptorProto`

`BatchingDescriptorProto` specifies the fields of the request message to be used for batching, and, optionally, the fields of the response message to be used for demultiplexing.

| Property | Type | Description |
|----------|------|-------------|
| `batchedField` | `string` | The repeated field in the request message to be aggregated by batching. |
| `discriminatorFields` | `array<string>` | A list of the fields in the request message. Two requests will be batched together only if the va... |
| `subresponseField` | `string` | Optional. When present, indicates the field in the response message to be used to demultiplex the... |

### `BatchingSettingsProto`

`BatchingSettingsProto` specifies a set of batching thresholds, each of which acts as a trigger to send a batch of messages as a request. At least one threshold must be positive nonzero.

| Property | Type | Description |
|----------|------|-------------|
| `delayThreshold` | `string` | The duration after which a batch should be sent, starting from the addition of the first message ... |
| `elementCountLimit` | `integer` | The maximum number of elements collected in a batch that could be accepted by server. |
| `elementCountThreshold` | `integer` | The number of elements of a field collected into a batch which, if exceeded, causes the batch to ... |
| `flowControlByteLimit` | `integer` | The maximum size of data allowed by flow control. |
| `flowControlElementLimit` | `integer` | The maximum number of elements allowed by flow control. |
| `flowControlLimitExceededBehavior` | `string` | The behavior to take when the flow control limit is exceeded. |
| `requestByteLimit` | `integer` | The maximum size of the request that could be accepted by server. |
| `requestByteThreshold` | `string` | The aggregated size of the batched field which, if exceeded, causes the batch to be sent. This si... |

### `Billing`

Billing related configuration of the service. The following example shows how to configure monitored resources and metrics for billing, `consumer_destinations` is the only supported destination and the monitored resources need at least one label key `cloud.googleapis.com/location` to indicate the location of the billing usage, using different monitored resources between monitoring and billing is recommended so they can be evolved independently: monitored_resources: - type: library.googleapis.com/billing_branch labels: - key: cloud.googleapis.com/location description: | Predefined label to support billing location restriction. - key: city description: | Custom label to define the city where the library branch is located in. - key: name description: Custom label to define the name of the library branch. metrics: - name: library.googleapis.com/book/borrowed_count metric_kind: DELTA value_type: INT64 unit: "1" billing: consumer_destinations: - monitored_resource: library.googleapis.com/billing_branch metrics: - library.googleapis.com/book/borrowed_count

| Property | Type | Description |
|----------|------|-------------|
| `consumerDestinations` | `array<BillingDestination>` | Billing configurations for sending metrics to the consumer project. There can be multiple consume... |

### `BillingDestination`

Configuration of a specific billing destination (Currently only support bill against consumer project).

| Property | Type | Description |
|----------|------|-------------|
| `metrics` | `array<string>` | Names of the metrics to report to this billing destination. Each name must be defined in Service.... |
| `monitoredResource` | `string` | The monitored resource type. The type must be defined in Service.monitored_resources section. |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `CleanupConnectionMetadata`

Metadata provided through GetOperation request for the LRO generated by Cleanup Connection API

### `ClientLibrarySettings`

Details about how and where to publish client libraries.

| Property | Type | Description |
|----------|------|-------------|
| `cppSettings` | `CppSettings` | Settings for C++ client libraries. |
| `dotnetSettings` | `DotnetSettings` | Settings for .NET client libraries. |
| `goSettings` | `GoSettings` | Settings for Go client libraries. |
| `javaSettings` | `JavaSettings` | Settings for legacy Java features, supported in the Service YAML. |
| `launchStage` | `string` | Launch stage of this version of the API. |
| `nodeSettings` | `NodeSettings` | Settings for Node client libraries. |
| `phpSettings` | `PhpSettings` | Settings for PHP client libraries. |
| `pythonSettings` | `PythonSettings` | Settings for Python client libraries. |
| `restNumericEnums` | `boolean` | When using transport=rest, the client request will encode enums as numbers rather than strings. |
| `rubySettings` | `RubySettings` | Settings for Ruby client libraries. |
| `version` | `string` | Version of the API to apply these settings to. This is the full protobuf package for the API, end... |

### `CloudSQLConfig`

Cloud SQL configuration.

| Property | Type | Description |
|----------|------|-------------|
| `service` | `string` | Required. Peering service used for peering with the Cloud SQL project. |
| `umbrellaNetwork` | `string` | Required. The name of the umbrella network in the Cloud SQL umbrella project. |
| `umbrellaProject` | `string` | Required. The project number of the Cloud SQL umbrella project. |

### `CommonLanguageSettings`

Required information for every language.

| Property | Type | Description |
|----------|------|-------------|
| `destinations` | `array<string>` | The destination where API teams want this client library to be published. |
| `referenceDocsUri` | `string` | Link to automatically generated reference documentation. Example: https://cloud.google.com/nodejs... |
| `selectiveGapicGeneration` | `SelectiveGapicGeneration` | Configuration for which RPCs should be generated in the GAPIC client. |

### `Connection`

Represents a private connection resource. A private connection is implemented as a VPC Network Peering connection between a service producer's VPC network and a service consumer's VPC network.

| Property | Type | Description |
|----------|------|-------------|
| `network` | `string` | Required. The name of service consumer's VPC network that's connected with service producer netwo... |
| `peering` | `string` | Output only. The name of the VPC Network Peering connection that was created by the service produ... |
| `reservedPeeringRanges` | `array<string>` | The name of one or more allocated IP address ranges for this service producer of type `PEERING`. ... |
| `service` | `string` | Output only. The name of the peering service that's associated with this connection, in the follo... |

### `ConsumerConfig`

Configuration information for a private service access connection.

| Property | Type | Description |
|----------|------|-------------|
| `cloudsqlConfigs` | `array<CloudSQLConfig>` | Represents one or multiple Cloud SQL configurations. |
| `consumerExportCustomRoutes` | `boolean` | Export custom routes flag value for peering from consumer to producer. |
| `consumerExportSubnetRoutesWithPublicIp` | `boolean` | Export subnet routes with public ip flag value for peering from consumer to producer. |
| `consumerImportCustomRoutes` | `boolean` | Import custom routes flag value for peering from consumer to producer. |
| `consumerImportSubnetRoutesWithPublicIp` | `boolean` | Import subnet routes with public ip flag value for peering from consumer to producer. |
| `producerExportCustomRoutes` | `boolean` | Export custom routes flag value for peering from producer to consumer. |
| `producerExportSubnetRoutesWithPublicIp` | `boolean` | Export subnet routes with public ip flag value for peering from producer to consumer. |
| `producerImportCustomRoutes` | `boolean` | Import custom routes flag value for peering from producer to consumer. |
| `producerImportSubnetRoutesWithPublicIp` | `boolean` | Import subnet routes with public ip flag value for peering from producer to consumer. |
| `producerNetwork` | `string` | Output only. The VPC host network that is used to host managed service instances. In the format, ... |
| `reservedRanges` | `array<GoogleCloudServicenetworkingV1ConsumerConfigReservedRange>` | Output only. The reserved ranges associated with this private service access connection. |
| `usedIpRanges` | `array<string>` | Output only. The IP ranges already in use by consumer or producer |
| `vpcScReferenceArchitectureEnabled` | `boolean` | Output only. Indicates whether the VPC Service Controls reference architecture is configured for ... |

### `ConsumerConfigMetadata`

Metadata provided through GetOperation request for the LRO generated by UpdateConsumerConfig API.

### `ConsumerProject`

Represents a consumer project.

| Property | Type | Description |
|----------|------|-------------|
| `projectNum` | `string` | Required. Project number of the consumer that is launching the service instance. It can own the n... |

### `Context`

`Context` defines which contexts an API requests. Example: context: rules: - selector: "*" requested: - google.rpc.context.ProjectContext - google.rpc.context.OriginContext The above specifies that all methods in the API request `google.rpc.context.ProjectContext` and `google.rpc.context.OriginContext`. Available context types are defined in package `google.rpc.context`. This also provides mechanism to allowlist any protobuf message extension that can be sent in grpc metadata using “x-goog-ext--bin” and “x-goog-ext--jspb” format. For example, list any service specific protobuf types that can appear in grpc metadata as follows in your yaml file: Example: context: rules: - selector: "google.example.library.v1.LibraryService.CreateBook" allowed_request_extensions: - google.foo.v1.NewExtension allowed_response_extensions: - google.foo.v1.NewExtension You can also specify extension ID instead of fully qualified extension name here.

| Property | Type | Description |
|----------|------|-------------|
| `rules` | `array<ContextRule>` | A list of RPC context rules that apply to individual API methods. **NOTE:** All service configura... |

### `ContextRule`

A context rule provides information about the context for an individual API element.

| Property | Type | Description |
|----------|------|-------------|
| `allowedRequestExtensions` | `array<string>` | A list of full type names or extension IDs of extensions allowed in grpc side channel from client... |
| `allowedResponseExtensions` | `array<string>` | A list of full type names or extension IDs of extensions allowed in grpc side channel from backen... |
| `provided` | `array<string>` | A list of full type names of provided contexts. It is used to support propagating HTTP headers an... |
| `requested` | `array<string>` | A list of full type names of requested contexts, only the requested context will be made availabl... |
| `selector` | `string` | Selects the methods to which this rule applies. Refer to selector for syntax details. |

### `Control`

Selects and configures the service controller used by the service. Example: control: environment: servicecontrol.googleapis.com

| Property | Type | Description |
|----------|------|-------------|
| `environment` | `string` | The service controller environment to use. If empty, no control plane features (like quota and bi... |
| `methodPolicies` | `array<MethodPolicy>` | Defines policies applying to the API methods of the service. |

### `CppSettings`

Settings for C++ client libraries.

| Property | Type | Description |
|----------|------|-------------|
| `common` | `CommonLanguageSettings` | Some settings. |

### `CustomError`

Customize service error responses. For example, list any service specific protobuf types that can appear in error detail lists of error responses. Example: custom_error: types: - google.foo.v1.CustomError - google.foo.v1.AnotherError

| Property | Type | Description |
|----------|------|-------------|
| `rules` | `array<CustomErrorRule>` | The list of custom error rules that apply to individual API messages. **NOTE:** All service confi... |
| `types` | `array<string>` | The list of custom error detail types, e.g. 'google.foo.v1.CustomError'. |

### `CustomErrorRule`

A custom error rule.

| Property | Type | Description |
|----------|------|-------------|
| `isErrorType` | `boolean` | Mark this message as possible payload in error response. Otherwise, objects of this type will be ... |
| `selector` | `string` | Selects messages to which this rule applies. Refer to selector for syntax details. |

### `CustomHttpPattern`

A custom pattern is used for defining custom HTTP verb.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | The name of this custom HTTP verb. |
| `path` | `string` | The path matched by this custom verb. |

### `DeleteConnectionMetadata`

Metadata provided through GetOperation request for the LRO generated by Delete Connection API

### `DeleteConnectionRequest`

Request to delete a private service access connection. The call will fail if there are any managed service instances using this connection.

| Property | Type | Description |
|----------|------|-------------|
| `consumerNetwork` | `string` | Required. The network that the consumer is using to connect with services. Must be in the form of... |

### `DeletePeeredDnsDomainMetadata`

Metadata provided through GetOperation request for the LRO generated by DeletePeeredDnsDomain API.

### `DisableVpcServiceControlsRequest`

Request to disable VPC service controls.

| Property | Type | Description |
|----------|------|-------------|
| `consumerNetwork` | `string` | Required. The network that the consumer is using to connect with services. Must be in the form of... |

### `DnsRecordSet`

Represents a DNS record set resource.

| Property | Type | Description |
|----------|------|-------------|
| `data` | `array<string>` | Required. As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1) for examples see https:... |
| `domain` | `string` | Required. The DNS or domain name of the record set, e.g. `test.example.com`. Cloud DNS requires t... |
| `ttl` | `string` | Required. The period of time for which this RecordSet can be cached by resolvers. |
| `type` | `string` | Required. The identifier of a supported record type. |

### `DnsZone`

Represents a DNS zone resource.

| Property | Type | Description |
|----------|------|-------------|
| `dnsSuffix` | `string` | The DNS name suffix of this zone e.g. `example.com.`. Cloud DNS requires that a DNS suffix ends w... |
| `name` | `string` | User assigned name for this resource. Must be unique within the project. The name must be 1-63 ch... |

### `DnsZonePair`

* Represents a pair of private and peering DNS zone resources. *

| Property | Type | Description |
|----------|------|-------------|
| `consumerPeeringZone` | `DnsZone` | The DNS peering zone in the consumer project. |
| `producerPrivateZone` | `DnsZone` | The private DNS zone in the shared producer host project. |

### `Documentation`

`Documentation` provides the information for describing a service. Example: documentation: summary: > The Google Calendar API gives access to most calendar features. pages: - name: Overview content: (== include google/foo/overview.md ==) - name: Tutorial content: (== include google/foo/tutorial.md ==) subpages: - name: Java content: (== include google/foo/tutorial_java.md ==) rules: - selector: google.calendar.Calendar.Get description: > ... - selector: google.calendar.Calendar.Put description: > ... Documentation is provided in markdown syntax. In addition to standard markdown features, definition lists, tables and fenced code blocks are supported. Section headers can be provided and are interpreted relative to the section nesting of the context where a documentation fragment is embedded. Documentation from the IDL is merged with documentation defined via the config at normalization time, where documentation provided by config rules overrides IDL provided. A number of constructs specific to the API platform are supported in documentation text. In order to reference a proto element, the following notation can be used: [fully.qualified.proto.name][] To override the display text used for the link, this can be used: [display text][fully.qualified.proto.name] Text can be excluded from doc using the following notation: (-- internal comment --) A few directives are available in documentation. Note that directives must appear on a single line to be properly identified. The `include` directive includes a markdown file from an external source: (== include path/to/file ==) The `resource_for` directive marks a message to be the resource of a collection in REST view. If it is not specified, tools attempt to infer the resource from the operations in a collection: (== resource_for v1.shelves.books ==) The directive `suppress_warning` does not directly affect documentation and is documented together with service config validation.

| Property | Type | Description |
|----------|------|-------------|
| `additionalIamInfo` | `string` | Optional information about the IAM configuration. This is typically used to link to documentation... |
| `documentationRootUrl` | `string` | The URL to the root of documentation. |
| `overview` | `string` | Declares a single overview page. For example: documentation: summary: ... overview: (== include o... |
| `pages` | `array<Page>` | The top level pages for the documentation set. |
| `rules` | `array<DocumentationRule>` | A list of documentation rules that apply to individual API elements. **NOTE:** All service config... |
| `sectionOverrides` | `array<Page>` | Specifies section and content to override the boilerplate content. Currently overrides following ... |
| `serviceRootUrl` | `string` | Specifies the service root url if the default one (the service name from the yaml file) is not su... |
| `summary` | `string` | A short description of what the service does. The summary must be plain text. It becomes the over... |

### `DocumentationRule`

A documentation rule provides information about individual API elements.

| Property | Type | Description |
|----------|------|-------------|
| `deprecationDescription` | `string` | Deprecation description of the selected element(s). It can be provided if an element is marked as... |
| `description` | `string` | Description of the selected proto element (e.g. a message, a method, a 'service' definition, or a... |
| `disableReplacementWords` | `string` | String of comma or space separated case-sensitive words for which method/field name replacement w... |
| `selector` | `string` | The selector is a comma-separated list of patterns for any element such as a method, a field, an ... |

### `DotnetSettings`

Settings for Dotnet client libraries.

| Property | Type | Description |
|----------|------|-------------|
| `common` | `CommonLanguageSettings` | Some settings. |
| `forcedNamespaceAliases` | `array<string>` | Namespaces which must be aliased in snippets due to a known (but non-generator-predictable) namin... |
| `handwrittenSignatures` | `array<string>` | Method signatures (in the form "service.method(signature)") which are provided separately, so sho... |
| `ignoredResources` | `array<string>` | List of full resource types to ignore during generation. This is typically used for API-specific ... |
| `renamedResources` | `object` | Map from full resource types to the effective short name for the resource. This is used when othe... |
| `renamedServices` | `object` | Map from original service names to renamed versions. This is used when the default generated type... |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `EnableVpcServiceControlsRequest`

Request to enable VPC service controls.

| Property | Type | Description |
|----------|------|-------------|
| `consumerNetwork` | `string` | Required. The network that the consumer is using to connect with services. Must be in the form of... |

### `Endpoint`

`Endpoint` describes a network address of a service that serves a set of APIs. It is commonly known as a service endpoint. A service may expose any number of service endpoints, and all service endpoints share the same service definition, such as quota limits and monitoring metrics. Example: type: google.api.Service name: library-example.googleapis.com endpoints: # Declares network address `https://library-example.googleapis.com` # for service `library-example.googleapis.com`. The `https` scheme # is implicit for all service endpoints. Other schemes may be # supported in the future. - name: library-example.googleapis.com allow_cors: false - name: content-staging-library-example.googleapis.com # Allows HTTP OPTIONS calls to be passed to the API frontend, for it # to decide whether the subsequent cross-origin request is allowed # to proceed. allow_cors: true

| Property | Type | Description |
|----------|------|-------------|
| `aliases` | `array<string>` | Aliases for this endpoint, these will be served by the same UrlMap as the parent endpoint, and wi... |
| `allowCors` | `boolean` | Allowing [CORS](https://en.wikipedia.org/wiki/Cross-origin_resource_sharing), aka cross-domain tr... |
| `name` | `string` | The canonical name of this endpoint. |
| `target` | `string` | The specification of an Internet routable address of API frontend that will handle requests to th... |

### `Enum`

Enum type definition. New usages of this message as an alternative to EnumDescriptorProto are strongly discouraged. This message does not reliability preserve all information necessary to model the schema and preserve semantics. Instead make use of FileDescriptorSet which preserves the necessary information.

| Property | Type | Description |
|----------|------|-------------|
| `edition` | `string` | The source edition string, only valid when syntax is SYNTAX_EDITIONS. |
| `enumvalue` | `array<EnumValue>` | Enum value definitions. |
| `name` | `string` | Enum type name. |
| `options` | `array<Option>` | Protocol buffer options. |
| `sourceContext` | `SourceContext` | The source context. |
| `syntax` | `string` | The source syntax. |

### `EnumValue`

Enum value definition. New usages of this message as an alternative to EnumValueDescriptorProto are strongly discouraged. This message does not reliability preserve all information necessary to model the schema and preserve semantics. Instead make use of FileDescriptorSet which preserves the necessary information.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Enum value name. |
| `number` | `integer` | Enum value number. |
| `options` | `array<Option>` | Protocol buffer options. |

### `ExperimentalFeatures`

Experimental features to be included during client library generation. These fields will be deprecated once the feature graduates and is enabled by default.

| Property | Type | Description |
|----------|------|-------------|
| `protobufPythonicTypesEnabled` | `boolean` | Enables generation of protobuf code using new types that are more Pythonic which are included in ... |
| `restAsyncIoEnabled` | `boolean` | Enables generation of asynchronous REST clients if `rest` transport is enabled. By default, async... |
| `unversionedPackageDisabled` | `boolean` | Disables generation of an unversioned Python package for this client library. This means that the... |

### `Field`

A single field of a message type. New usages of this message as an alternative to FieldDescriptorProto are strongly discouraged. This message does not reliability preserve all information necessary to model the schema and preserve semantics. Instead make use of FileDescriptorSet which preserves the necessary information.

| Property | Type | Description |
|----------|------|-------------|
| `cardinality` | `string` | The field cardinality. |
| `defaultValue` | `string` | The string value of the default value of this field. Proto2 syntax only. |
| `jsonName` | `string` | The field JSON name. |
| `kind` | `string` | The field type. |
| `name` | `string` | The field name. |
| `number` | `integer` | The field number. |
| `oneofIndex` | `integer` | The index of the field type in `Type.oneofs`, for message or enumeration types. The first type ha... |
| `options` | `array<Option>` | The protocol buffer options. |
| `packed` | `boolean` | Whether to use alternative packed wire representation. |
| `typeUrl` | `string` | The field type URL, without the scheme, for message or enumeration types. Example: `"type.googlea... |

### `FieldPolicy`

Google API Policy Annotation This message defines a simple API policy annotation that can be used to annotate API request and response message fields with applicable policies. One field may have multiple applicable policies that must all be satisfied before a request can be processed. This policy annotation is used to generate the overall policy that will be used for automatic runtime policy enforcement and documentation generation.

| Property | Type | Description |
|----------|------|-------------|
| `resourcePermission` | `string` | Specifies the required permission(s) for the resource referred to by the field. It requires the f... |
| `resourceType` | `string` | Specifies the resource type for the resource referred to by the field. |
| `selector` | `string` | Selects one or more request or response message fields to apply this `FieldPolicy`. When a `Field... |

### `GetDnsZoneResponse`

Represents managed DNS zones created in the shared Producer host and consumer projects.

| Property | Type | Description |
|----------|------|-------------|
| `consumerPeeringZone` | `DnsZone` | The DNS peering zone created in the consumer project. |
| `producerPrivateZone` | `DnsZone` | The private DNS zone created in the shared producer host project. |

### `GoSettings`

Settings for Go client libraries.

| Property | Type | Description |
|----------|------|-------------|
| `common` | `CommonLanguageSettings` | Some settings. |
| `renamedServices` | `object` | Map of service names to renamed services. Keys are the package relative service names and values ... |

### `GoogleCloudServicenetworkingV1ConsumerConfigReservedRange`

Allocated IP address ranges for this private service access connection.

| Property | Type | Description |
|----------|------|-------------|
| `address` | `string` | The starting address of the reserved range. The address must be a valid IPv4 address in the x.x.x... |
| `ipPrefixLength` | `integer` | The prefix length of the reserved range. |
| `name` | `string` | The name of the reserved range. |

### `GoogleCloudServicenetworkingV1betaConnection`

Represents a private connection resource. A private connection is implemented as a VPC Network Peering connection between a service producer's VPC network and a service consumer's VPC network.

| Property | Type | Description |
|----------|------|-------------|
| `network` | `string` | The name of service consumer's VPC network that's connected with service producer network, in the... |
| `peering` | `string` | Output only. The name of the VPC Network Peering connection that was created by the service produ... |
| `reservedPeeringRanges` | `array<string>` | The name of one or more allocated IP address ranges for this service producer of type `PEERING`. ... |
| `service` | `string` | Output only. The name of the peering service that's associated with this connection, in the follo... |

### `GoogleCloudServicenetworkingV1betaSubnetwork`

Represents a subnet that was created or discovered by a private access management service.

| Property | Type | Description |
|----------|------|-------------|
| `ipCidrRange` | `string` | Subnetwork CIDR range in `10.x.x.x/y` format. |
| `name` | `string` | Subnetwork name. See https://cloud.google.com/compute/docs/vpc/ |
| `network` | `string` | In the Shared VPC host project, the VPC network that's peered with the consumer network. For exam... |
| `outsideAllocation` | `boolean` | This is a discovered subnet that is not within the current consumer allocated ranges. |

### `Http`

Defines the HTTP configuration for an API service. It contains a list of HttpRule, each specifying the mapping of an RPC method to one or more HTTP REST API methods.

| Property | Type | Description |
|----------|------|-------------|
| `fullyDecodeReservedExpansion` | `boolean` | When set to true, URL path parameters will be fully URI-decoded except in cases of single segment... |
| `rules` | `array<HttpRule>` | A list of HTTP configuration rules that apply to individual API methods. **NOTE:** All service co... |

### `HttpRule`

gRPC Transcoding gRPC Transcoding is a feature for mapping between a gRPC method and one or more HTTP REST endpoints. It allows developers to build a single API service that supports both gRPC APIs and REST APIs. Many systems, including [Google APIs](https://github.com/googleapis/googleapis), [Cloud Endpoints](https://cloud.google.com/endpoints), [gRPC Gateway](https://github.com/grpc-ecosystem/grpc-gateway), and [Envoy](https://github.com/envoyproxy/envoy) proxy support this feature and use it for large scale production services. `HttpRule` defines the schema of the gRPC/REST mapping. The mapping specifies how different portions of the gRPC request message are mapped to the URL path, URL query parameters, and HTTP request body. It also controls how the gRPC response message is mapped to the HTTP response body. `HttpRule` is typically specified as an `google.api.http` annotation on the gRPC method. Each mapping specifies a URL path template and an HTTP method. The path template may refer to one or more fields in the gRPC request message, as long as each field is a non-repeated field with a primitive (non-message) type. The path template controls how fields of the request message are mapped to the URL path. Example: service Messaging { rpc GetMessage(GetMessageRequest) returns (Message) { option (google.api.http) = { get: "/v1/{name=messages/*}" }; } } message GetMessageRequest { string name = 1; // Mapped to URL path. } message Message { string text = 1; // The resource content. } This enables an HTTP REST to gRPC mapping as below: - HTTP: `GET /v1/messages/123456` - gRPC: `GetMessage(name: "messages/123456")` Any fields in the request message which are not bound by the path template automatically become HTTP query parameters if there is no HTTP request body. For example: service Messaging { rpc GetMessage(GetMessageRequest) returns (Message) { option (google.api.http) = { get:"/v1/messages/{message_id}" }; } } message GetMessageRequest { message SubMessage { string subfield = 1; } string message_id = 1; // Mapped to URL path. int64 revision = 2; // Mapped to URL query parameter `revision`. SubMessage sub = 3; // Mapped to URL query parameter `sub.subfield`. } This enables a HTTP JSON to RPC mapping as below: - HTTP: `GET /v1/messages/123456?revision=2&sub.subfield=foo` - gRPC: `GetMessage(message_id: "123456" revision: 2 sub: SubMessage(subfield: "foo"))` Note that fields which are mapped to URL query parameters must have a primitive type or a repeated primitive type or a non-repeated message type. In the case of a repeated type, the parameter can be repeated in the URL as `...?param=A&param=B`. In the case of a message type, each field of the message is mapped to a separate parameter, such as `...?foo.a=A&foo.b=B&foo.c=C`. For HTTP methods that allow a request body, the `body` field specifies the mapping. Consider a REST update method on the message resource collection: service Messaging { rpc UpdateMessage(UpdateMessageRequest) returns (Message) { option (google.api.http) = { patch: "/v1/messages/{message_id}" body: "message" }; } } message UpdateMessageRequest { string message_id = 1; // mapped to the URL Message message = 2; // mapped to the body } The following HTTP JSON to RPC mapping is enabled, where the representation of the JSON in the request body is determined by protos JSON encoding: - HTTP: `PATCH /v1/messages/123456 { "text": "Hi!" }` - gRPC: `UpdateMessage(message_id: "123456" message { text: "Hi!" })` The special name `*` can be used in the body mapping to define that every field not bound by the path template should be mapped to the request body. This enables the following alternative definition of the update method: service Messaging { rpc UpdateMessage(Message) returns (Message) { option (google.api.http) = { patch: "/v1/messages/{message_id}" body: "*" }; } } message Message { string message_id = 1; string text = 2; } The following HTTP JSON to RPC mapping is enabled: - HTTP: `PATCH /v1/messages/123456 { "text": "Hi!" }` - gRPC: `UpdateMessage(message_id: "123456" text: "Hi!")` Note that when using `*` in the body mapping, it is not possible to have HTTP parameters, as all fields not bound by the path end in the body. This makes this option more rarely used in practice when defining REST APIs. The common usage of `*` is in custom methods which don't use the URL at all for transferring data. It is possible to define multiple HTTP methods for one RPC by using the `additional_bindings` option. Example: service Messaging { rpc GetMessage(GetMessageRequest) returns (Message) { option (google.api.http) = { get: "/v1/messages/{message_id}" additional_bindings { get: "/v1/users/{user_id}/messages/{message_id}" } }; } } message GetMessageRequest { string message_id = 1; string user_id = 2; } This enables the following two alternative HTTP JSON to RPC mappings: - HTTP: `GET /v1/messages/123456` - gRPC: `GetMessage(message_id: "123456")` - HTTP: `GET /v1/users/me/messages/123456` - gRPC: `GetMessage(user_id: "me" message_id: "123456")` Rules for HTTP mapping 1. Leaf request fields (recursive expansion nested messages in the request message) are classified into three categories: - Fields referred by the path template. They are passed via the URL path. - Fields referred by the HttpRule.body. They are passed via the HTTP request body. - All other fields are passed via the URL query parameters, and the parameter name is the field path in the request message. A repeated field can be represented as multiple query parameters under the same name. 2. If HttpRule.body is "*", there is no URL query parameter, all fields are passed via URL path and HTTP request body. 3. If HttpRule.body is omitted, there is no HTTP request body, all fields are passed via URL path and URL query parameters. Path template syntax Template = "/" Segments [ Verb ] ; Segments = Segment { "/" Segment } ; Segment = "*" | "**" | LITERAL | Variable ; Variable = "{" FieldPath [ "=" Segments ] "}" ; FieldPath = IDENT { "." IDENT } ; Verb = ":" LITERAL ; The syntax `*` matches a single URL path segment. The syntax `**` matches zero or more URL path segments, which must be the last part of the URL path except the `Verb`. The syntax `Variable` matches part of the URL path as specified by its template. A variable template must not contain other variables. If a variable matches a single path segment, its template may be omitted, e.g. `{var}` is equivalent to `{var=*}`. The syntax `LITERAL` matches literal text in the URL path. If the `LITERAL` contains any reserved character, such characters should be percent-encoded before the matching. If a variable contains exactly one path segment, such as `"{var}"` or `"{var=*}"`, when such a variable is expanded into a URL path on the client side, all characters except `[-_.~0-9a-zA-Z]` are percent-encoded. The server side does the reverse decoding. Such variables show up in the [Discovery Document](https://developers.google.com/discovery/v1/reference/apis) as `{var}`. If a variable contains multiple path segments, such as `"{var=foo/*}"` or `"{var=**}"`, when such a variable is expanded into a URL path on the client side, all characters except `[-_.~/0-9a-zA-Z]` are percent-encoded. The server side does the reverse decoding, except "%2F" and "%2f" are left unchanged. Such variables show up in the [Discovery Document](https://developers.google.com/discovery/v1/reference/apis) as `{+var}`. Using gRPC API Service Configuration gRPC API Service Configuration (service config) is a configuration language for configuring a gRPC service to become a user-facing product. The service config is simply the YAML representation of the `google.api.Service` proto message. As an alternative to annotating your proto file, you can configure gRPC transcoding in your service config YAML files. You do this by specifying a `HttpRule` that maps the gRPC method to a REST endpoint, achieving the same effect as the proto annotation. This can be particularly useful if you have a proto that is reused in multiple services. Note that any transcoding specified in the service config will override any matching transcoding configuration in the proto. The following example selects a gRPC method and applies an `HttpRule` to it: http: rules: - selector: example.v1.Messaging.GetMessage get: /v1/messages/{message_id}/{sub.subfield} Special notes When gRPC Transcoding is used to map a gRPC to JSON REST endpoints, the proto to JSON conversion must follow the [proto3 specification](https://developers.google.com/protocol-buffers/docs/proto3#json). While the single segment variable follows the semantics of [RFC 6570](https://tools.ietf.org/html/rfc6570) Section 3.2.2 Simple String Expansion, the multi segment variable **does not** follow RFC 6570 Section 3.2.3 Reserved Expansion. The reason is that the Reserved Expansion does not expand special characters like `?` and `#`, which would lead to invalid URLs. As the result, gRPC Transcoding uses a custom encoding for multi segment variables. The path variables **must not** refer to any repeated or mapped field, because client libraries are not capable of handling such variable expansion. The path variables **must not** capture the leading "/" character. The reason is that the most common use case "{var}" does not capture the leading "/" character. For consistency, all path variables must share the same behavior. Repeated message fields must not be mapped to URL query parameters, because no client library can support such complicated mapping. If an API needs to use a JSON array for request or response body, it can map the request or response body to a repeated field. However, some gRPC Transcoding implementations may not support this feature.

| Property | Type | Description |
|----------|------|-------------|
| `additionalBindings` | `array<HttpRule>` | Additional HTTP bindings for the selector. Nested bindings must not contain an `additional_bindin... |
| `body` | `string` | The name of the request field whose value is mapped to the HTTP request body, or `*` for mapping ... |
| `custom` | `CustomHttpPattern` | The custom pattern is used for specifying an HTTP method that is not included in the `pattern` fi... |
| `delete` | `string` | Maps to HTTP DELETE. Used for deleting a resource. |
| `get` | `string` | Maps to HTTP GET. Used for listing and getting information about resources. |
| `patch` | `string` | Maps to HTTP PATCH. Used for updating a resource. |
| `post` | `string` | Maps to HTTP POST. Used for creating a resource or performing an action. |
| `put` | `string` | Maps to HTTP PUT. Used for replacing a resource. |
| `responseBody` | `string` | Optional. The name of the response field whose value is mapped to the HTTP response body. When om... |
| `selector` | `string` | Selects a method to which this rule applies. Refer to selector for syntax details. |

### `JavaSettings`

Settings for Java client libraries.

| Property | Type | Description |
|----------|------|-------------|
| `common` | `CommonLanguageSettings` | Some settings. |
| `libraryPackage` | `string` | The package name to use in Java. Clobbers the java_package option set in the protobuf. This shoul... |
| `serviceClassNames` | `object` | Configure the Java class name to use instead of the service's for its corresponding generated GAP... |

### `JwtLocation`

Specifies a location to extract JWT from an API request.

| Property | Type | Description |
|----------|------|-------------|
| `cookie` | `string` | Specifies cookie name to extract JWT token. |
| `header` | `string` | Specifies HTTP header name to extract JWT token. |
| `query` | `string` | Specifies URL query parameter name to extract JWT token. |
| `valuePrefix` | `string` | The value prefix. The value format is "value_prefix{token}" Only applies to "in" header type. Mus... |

### `LabelDescriptor`

A description of a label.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | A human-readable description for the label. |
| `key` | `string` | The label key. |
| `valueType` | `string` | The type of data that can be assigned to the label. |

### `ListConnectionsResponse`

ListConnectionsResponse is the response to list peering states for the given service and consumer project.

| Property | Type | Description |
|----------|------|-------------|
| `connections` | `array<Connection>` | The list of Connections. |

### `ListDnsRecordSetsResponse`

Represents all DNS RecordSets associated with the producer network

| Property | Type | Description |
|----------|------|-------------|
| `dnsRecordSets` | `array<DnsRecordSet>` | DNS record Set Resource |

### `ListDnsZonesResponse`

Represents all DNS zones in the shared producer host project and the matching peering zones in the consumer project.

| Property | Type | Description |
|----------|------|-------------|
| `dnsZonePairs` | `array<DnsZonePair>` | All pairs of private DNS zones in the shared producer host project and the matching peering zones... |

### `ListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<Operation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `ListPeeredDnsDomainsResponse`

Response to list peered DNS domains for a given connection.

| Property | Type | Description |
|----------|------|-------------|
| `peeredDnsDomains` | `array<PeeredDnsDomain>` | The list of peered DNS domains. |

### `LogDescriptor`

A description of a log type. Example in YAML format: - name: library.googleapis.com/activity_history description: The history of borrowing and returning library items. display_name: Activity labels: - key: /customer_id description: Identifier of a library customer

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | A human-readable description of this log. This information appears in the documentation and can c... |
| `displayName` | `string` | The human-readable name for this log. This information appears on the user interface and should b... |
| `labels` | `array<LabelDescriptor>` | The set of labels that are available to describe a specific log entry. Runtime requests that cont... |
| `name` | `string` | The name of the log. It must be less than 512 characters long and can include the following chara... |

### `Logging`

Logging configuration of the service. The following example shows how to configure logs to be sent to the producer and consumer projects. In the example, the `activity_history` log is sent to both the producer and consumer projects, whereas the `purchase_history` log is only sent to the producer project. monitored_resources: - type: library.googleapis.com/branch labels: - key: /city description: The city where the library branch is located in. - key: /name description: The name of the branch. logs: - name: activity_history labels: - key: /customer_id - name: purchase_history logging: producer_destinations: - monitored_resource: library.googleapis.com/branch logs: - activity_history - purchase_history consumer_destinations: - monitored_resource: library.googleapis.com/branch logs: - activity_history

| Property | Type | Description |
|----------|------|-------------|
| `consumerDestinations` | `array<LoggingDestination>` | Logging configurations for sending logs to the consumer project. There can be multiple consumer d... |
| `producerDestinations` | `array<LoggingDestination>` | Logging configurations for sending logs to the producer project. There can be multiple producer d... |

### `LoggingDestination`

Configuration of a specific logging destination (the producer project or the consumer project).

| Property | Type | Description |
|----------|------|-------------|
| `logs` | `array<string>` | Names of the logs to be sent to this destination. Each name must be defined in the Service.logs s... |
| `monitoredResource` | `string` | The monitored resource type. The type must be defined in the Service.monitored_resources section. |

### `LongRunning`

Describes settings to use when generating API methods that use the long-running operation pattern. All default values below are from those used in the client library generators (e.g. [Java](https://github.com/googleapis/gapic-generator-java/blob/04c2faa191a9b5a10b92392fe8482279c4404803/src/main/java/com/google/api/generator/gapic/composer/common/RetrySettingsComposer.java)).

| Property | Type | Description |
|----------|------|-------------|
| `initialPollDelay` | `string` | Initial delay after which the first poll request will be made. Default value: 5 seconds. |
| `maxPollDelay` | `string` | Maximum time between two subsequent poll requests. Default value: 45 seconds. |
| `pollDelayMultiplier` | `number` | Multiplier to gradually increase delay between subsequent polls until it reaches max_poll_delay. ... |
| `totalPollTimeout` | `string` | Total polling timeout. Default value: 5 minutes. |

### `Method`

Method represents a method of an API interface. New usages of this message as an alternative to MethodDescriptorProto are strongly discouraged. This message does not reliability preserve all information necessary to model the schema and preserve semantics. Instead make use of FileDescriptorSet which preserves the necessary information.

| Property | Type | Description |
|----------|------|-------------|
| `edition` | `string` | The source edition string, only valid when syntax is SYNTAX_EDITIONS. This field should be ignore... |
| `name` | `string` | The simple name of this method. |
| `options` | `array<Option>` | Any metadata attached to the method. |
| `requestStreaming` | `boolean` | If true, the request is streamed. |
| `requestTypeUrl` | `string` | A URL of the input message type. |
| `responseStreaming` | `boolean` | If true, the response is streamed. |
| `responseTypeUrl` | `string` | The URL of the output message type. |
| `syntax` | `string` | The source syntax of this method. This field should be ignored, instead the syntax should be inhe... |

### `MethodPolicy`

Defines policies applying to an RPC method.

| Property | Type | Description |
|----------|------|-------------|
| `requestPolicies` | `array<FieldPolicy>` | Policies that are applicable to the request message. |
| `selector` | `string` | Selects a method to which these policies should be enforced, for example, "google.pubsub.v1.Subsc... |

### `MethodSettings`

Describes the generator configuration for a method.

| Property | Type | Description |
|----------|------|-------------|
| `autoPopulatedFields` | `array<string>` | List of top-level fields of the request message, that should be automatically populated by the cl... |
| `batching` | `BatchingConfigProto` | Batching configuration for an API method in client libraries. Example of a YAML configuration: pu... |
| `longRunning` | `LongRunning` | Describes settings to use for long-running operations when generating API methods for RPCs. Compl... |
| `selector` | `string` | The fully qualified name of the method, for which the options below apply. This is used to find t... |

### `MetricDescriptor`

Defines a metric type and its schema. Once a metric descriptor is created, deleting or altering it stops data collection and makes the metric type's existing data unusable.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | A detailed description of the metric, which can be used in documentation. |
| `displayName` | `string` | A concise name for the metric, which can be displayed in user interfaces. Use sentence case witho... |
| `labels` | `array<LabelDescriptor>` | The set of labels that can be used to describe a specific instance of this metric type. For examp... |
| `launchStage` | `string` | Optional. The launch stage of the metric definition. |
| `metadata` | `MetricDescriptorMetadata` | Optional. Metadata which can be used to guide usage of the metric. |
| `metricKind` | `string` | Whether the metric records instantaneous values, changes to a value, etc. Some combinations of `m... |
| `monitoredResourceTypes` | `array<string>` | Read-only. If present, then a time series, which is identified partially by a metric type and a M... |
| `name` | `string` | The resource name of the metric descriptor. |
| `type` | `string` | The metric type, including its DNS name prefix. The type is not URL-encoded. All user-defined met... |
| `unit` | `string` | The units in which the metric value is reported. It is only applicable if the `value_type` is `IN... |
| `valueType` | `string` | Whether the measurement is an integer, a floating-point number, etc. Some combinations of `metric... |

### `MetricDescriptorMetadata`

Additional annotations that can be used to guide the usage of a metric.

| Property | Type | Description |
|----------|------|-------------|
| `ingestDelay` | `string` | The delay of data points caused by ingestion. Data points older than this age are guaranteed to b... |
| `launchStage` | `string` | Deprecated. Must use the MetricDescriptor.launch_stage instead. |
| `samplePeriod` | `string` | The sampling period of metric data points. For metrics which are written periodically, consecutiv... |
| `timeSeriesResourceHierarchyLevel` | `array<string>` | The scope of the timeseries data of the metric. |

### `MetricRule`

Bind API methods to metrics. Binding a method to a metric causes that metric's configured quota behaviors to apply to the method call.

| Property | Type | Description |
|----------|------|-------------|
| `metricCosts` | `object` | Metrics to update when the selected methods are called, and the associated cost applied to each m... |
| `selector` | `string` | Selects the methods to which this rule applies. Refer to selector for syntax details. |

### `Mixin`

Declares an API Interface to be included in this interface. The including interface must redeclare all the methods from the included interface, but documentation and options are inherited as follows: - If after comment and whitespace stripping, the documentation string of the redeclared method is empty, it will be inherited from the original method. - Each annotation belonging to the service config (http, visibility) which is not set in the redeclared method will be inherited. - If an http annotation is inherited, the path pattern will be modified as follows. Any version prefix will be replaced by the version of the including interface plus the root path if specified. Example of a simple mixin: package google.acl.v1; service AccessControl { // Get the underlying ACL object. rpc GetAcl(GetAclRequest) returns (Acl) { option (google.api.http).get = "/v1/{resource=**}:getAcl"; } } package google.storage.v2; service Storage { // rpc GetAcl(GetAclRequest) returns (Acl); // Get a data record. rpc GetData(GetDataRequest) returns (Data) { option (google.api.http).get = "/v2/{resource=**}"; } } Example of a mixin configuration: apis: - name: google.storage.v2.Storage mixins: - name: google.acl.v1.AccessControl The mixin construct implies that all methods in `AccessControl` are also declared with same name and request/response types in `Storage`. A documentation generator or annotation processor will see the effective `Storage.GetAcl` method after inheriting documentation and annotations as follows: service Storage { // Get the underlying ACL object. rpc GetAcl(GetAclRequest) returns (Acl) { option (google.api.http).get = "/v2/{resource=**}:getAcl"; } ... } Note how the version in the path pattern changed from `v1` to `v2`. If the `root` field in the mixin is specified, it should be a relative path under which inherited HTTP paths are placed. Example: apis: - name: google.storage.v2.Storage mixins: - name: google.acl.v1.AccessControl root: acls This implies the following inherited HTTP annotation: service Storage { // Get the underlying ACL object. rpc GetAcl(GetAclRequest) returns (Acl) { option (google.api.http).get = "/v2/acls/{resource=**}:getAcl"; } ... }

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The fully qualified name of the interface which is included. |
| `root` | `string` | If non-empty specifies a path under which inherited HTTP paths are rooted. |

### `MonitoredResourceDescriptor`

An object that describes the schema of a MonitoredResource object using a type name and a set of labels. For example, the monitored resource descriptor for Google Compute Engine VM instances has a type of `"gce_instance"` and specifies the use of the labels `"instance_id"` and `"zone"` to identify particular VM instances. Different APIs can support different monitored resource types. APIs generally provide a `list` method that returns the monitored resource descriptors used by the API.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. A detailed description of the monitored resource type that might be used in documentation. |
| `displayName` | `string` | Optional. A concise name for the monitored resource type that might be displayed in user interfac... |
| `labels` | `array<LabelDescriptor>` | Required. A set of labels used to describe instances of this monitored resource type. For example... |
| `launchStage` | `string` | Optional. The launch stage of the monitored resource definition. |
| `name` | `string` | Optional. The resource name of the monitored resource descriptor: `"projects/{project_id}/monitor... |
| `type` | `string` | Required. The monitored resource type. For example, the type `"cloudsql_database"` represents dat... |

### `Monitoring`

Monitoring configuration of the service. The example below shows how to configure monitored resources and metrics for monitoring. In the example, a monitored resource and two metrics are defined. The `library.googleapis.com/book/returned_count` metric is sent to both producer and consumer projects, whereas the `library.googleapis.com/book/num_overdue` metric is only sent to the consumer project. monitored_resources: - type: library.googleapis.com/Branch display_name: "Library Branch" description: "A branch of a library." launch_stage: GA labels: - key: resource_container description: "The Cloud container (ie. project id) for the Branch." - key: location description: "The location of the library branch." - key: branch_id description: "The id of the branch." metrics: - name: library.googleapis.com/book/returned_count display_name: "Books Returned" description: "The count of books that have been returned." launch_stage: GA metric_kind: DELTA value_type: INT64 unit: "1" labels: - key: customer_id description: "The id of the customer." - name: library.googleapis.com/book/num_overdue display_name: "Books Overdue" description: "The current number of overdue books." launch_stage: GA metric_kind: GAUGE value_type: INT64 unit: "1" labels: - key: customer_id description: "The id of the customer." monitoring: producer_destinations: - monitored_resource: library.googleapis.com/Branch metrics: - library.googleapis.com/book/returned_count consumer_destinations: - monitored_resource: library.googleapis.com/Branch metrics: - library.googleapis.com/book/returned_count - library.googleapis.com/book/num_overdue

| Property | Type | Description |
|----------|------|-------------|
| `consumerDestinations` | `array<MonitoringDestination>` | Monitoring configurations for sending metrics to the consumer project. There can be multiple cons... |
| `producerDestinations` | `array<MonitoringDestination>` | Monitoring configurations for sending metrics to the producer project. There can be multiple prod... |

### `MonitoringDestination`

Configuration of a specific monitoring destination (the producer project or the consumer project).

| Property | Type | Description |
|----------|------|-------------|
| `metrics` | `array<string>` | Types of the metrics to report to this monitoring destination. Each type must be defined in Servi... |
| `monitoredResource` | `string` | The monitored resource type. The type must be defined in Service.monitored_resources section. |

### `NodeSettings`

Settings for Node client libraries.

| Property | Type | Description |
|----------|------|-------------|
| `common` | `CommonLanguageSettings` | Some settings. |

### `OAuthRequirements`

OAuth scopes are a way to define data and permissions on data. For example, there are scopes defined for "Read-only access to Google Calendar" and "Access to Cloud Platform". Users can consent to a scope for an application, giving it permission to access that data on their behalf. OAuth scope specifications should be fairly coarse grained; a user will need to see and understand the text description of what your scope means. In most cases: use one or at most two OAuth scopes for an entire family of products. If your product has multiple APIs, you should probably be sharing the OAuth scope across all of those APIs. When you need finer grained OAuth consent screens: talk with your product management about how developers will use them in practice. Please note that even though each of the canonical scopes is enough for a request to be accepted and passed to the backend, a request can still fail due to the backend requiring additional scopes or permissions.

| Property | Type | Description |
|----------|------|-------------|
| `canonicalScopes` | `string` | The list of publicly documented OAuth scopes that are allowed access. An OAuth token containing a... |

### `Operation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `Status` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `Option`

A protocol buffer option, which can be attached to a message, field, enumeration, etc. New usages of this message as an alternative to FileOptions, MessageOptions, FieldOptions, EnumOptions, EnumValueOptions, ServiceOptions, or MethodOptions are strongly discouraged.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The option's name. For protobuf built-in options (options defined in descriptor.proto), this is t... |
| `value` | `object` | The option's value packed in an Any message. If the value is a primitive, the corresponding wrapp... |

### `Page`

Represents a documentation page. A page can contain subpages to represent nested documentation set structure.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | The Markdown content of the page. You can use ```(== include {path} ==)``` to include content fro... |
| `name` | `string` | The name of the page. It will be used as an identity of the page to generate URI of the page, tex... |
| `subpages` | `array<Page>` | Subpages of this page. The order of subpages specified here will be honored in the generated docset. |

### `PartialDeleteConnectionMetadata`

Metadata provided through GetOperation request for the LRO generated by Partial Delete Connection API

### `PeeredDnsDomain`

DNS domain suffix for which requests originating in the producer VPC network are resolved in the associated consumer VPC network.

| Property | Type | Description |
|----------|------|-------------|
| `dnsSuffix` | `string` | The DNS domain name suffix e.g. `example.com.`. Cloud DNS requires that a DNS suffix ends with a ... |
| `name` | `string` | Required. User assigned name for this resource. Must be unique within the consumer network. The n... |

### `PeeredDnsDomainMetadata`

Metadata provided through GetOperation request for the LRO generated by CreatePeeredDnsDomain API.

### `PhpSettings`

Settings for Php client libraries.

| Property | Type | Description |
|----------|------|-------------|
| `common` | `CommonLanguageSettings` | Some settings. |
| `libraryPackage` | `string` | The package name to use in Php. Clobbers the php_namespace option set in the protobuf. This shoul... |

### `PolicyBinding`

Grouping of IAM role and IAM member.

| Property | Type | Description |
|----------|------|-------------|
| `member` | `string` | Required. Member to bind the role with. See /iam/docs/reference/rest/v1/Policy#Binding for how to... |
| `role` | `string` | Required. Role to apply. Only allowlisted roles can be used at the specified granularity. The rol... |

### `Publishing`

This message configures the settings for publishing [Google Cloud Client libraries](https://cloud.google.com/apis/docs/cloud-client-libraries) generated from the service config.

| Property | Type | Description |
|----------|------|-------------|
| `apiShortName` | `string` | Used as a tracking tag when collecting data about the APIs developer relations artifacts like doc... |
| `codeownerGithubTeams` | `array<string>` | GitHub teams to be added to CODEOWNERS in the directory in GitHub containing source code for the ... |
| `docTagPrefix` | `string` | A prefix used in sample code when demarking regions to be included in documentation. |
| `documentationUri` | `string` | Link to product home page. Example: https://cloud.google.com/asset-inventory/docs/overview |
| `githubLabel` | `string` | GitHub label to apply to issues and pull requests opened for this API. |
| `librarySettings` | `array<ClientLibrarySettings>` | Client library settings. If the same version string appears multiple times in this list, then the... |
| `methodSettings` | `array<MethodSettings>` | A list of API method settings, e.g. the behavior for methods that use the long-running operation ... |
| `newIssueUri` | `string` | Link to a *public* URI where users can report issues. Example: https://issuetracker.google.com/is... |
| `organization` | `string` | For whom the client library is being published. |
| `protoReferenceDocumentationUri` | `string` | Optional link to proto reference documentation. Example: https://cloud.google.com/pubsub/lite/doc... |
| `restReferenceDocumentationUri` | `string` | Optional link to REST reference documentation. Example: https://cloud.google.com/pubsub/lite/docs... |

### `PythonSettings`

Settings for Python client libraries.

| Property | Type | Description |
|----------|------|-------------|
| `common` | `CommonLanguageSettings` | Some settings. |
| `experimentalFeatures` | `ExperimentalFeatures` | Experimental features to be included during client library generation. |

### `Quota`

Quota configuration helps to achieve fairness and budgeting in service usage. The metric based quota configuration works this way: - The service configuration defines a set of metrics. - For API calls, the quota.metric_rules maps methods to metrics with corresponding costs. - The quota.limits defines limits on the metrics, which will be used for quota checks at runtime. An example quota configuration in yaml format: quota: limits: - name: apiWriteQpsPerProject metric: library.googleapis.com/write_calls unit: "1/min/{project}" # rate limit for consumer projects values: STANDARD: 10000 (The metric rules bind all methods to the read_calls metric, except for the UpdateBook and DeleteBook methods. These two methods are mapped to the write_calls metric, with the UpdateBook method consuming at twice rate as the DeleteBook method.) metric_rules: - selector: "*" metric_costs: library.googleapis.com/read_calls: 1 - selector: google.example.library.v1.LibraryService.UpdateBook metric_costs: library.googleapis.com/write_calls: 2 - selector: google.example.library.v1.LibraryService.DeleteBook metric_costs: library.googleapis.com/write_calls: 1 Corresponding Metric definition: metrics: - name: library.googleapis.com/read_calls display_name: Read requests metric_kind: DELTA value_type: INT64 - name: library.googleapis.com/write_calls display_name: Write requests metric_kind: DELTA value_type: INT64

| Property | Type | Description |
|----------|------|-------------|
| `limits` | `array<QuotaLimit>` | List of QuotaLimit definitions for the service. |
| `metricRules` | `array<MetricRule>` | List of MetricRule definitions, each one mapping a selected method to one or more metrics. |

### `QuotaLimit`

`QuotaLimit` defines a specific limit that applies over a specified duration for a limit type. There can be at most one limit for a duration and limit type combination defined within a `QuotaGroup`.

| Property | Type | Description |
|----------|------|-------------|
| `defaultLimit` | `string` | Default number of tokens that can be consumed during the specified duration. This is the number o... |
| `description` | `string` | Optional. User-visible, extended description for this quota limit. Should be used only when more ... |
| `displayName` | `string` | User-visible display name for this limit. Optional. If not set, the UI will provide a default dis... |
| `duration` | `string` | Duration of this limit in textual notation. Must be "100s" or "1d". Used by group-based quotas only. |
| `freeTier` | `string` | Free tier value displayed in the Developers Console for this limit. The free tier is the number o... |
| `maxLimit` | `string` | Maximum number of tokens that can be consumed during the specified duration. Client application d... |
| `metric` | `string` | The name of the metric this quota limit applies to. The quota limits with the same metric will be... |
| `name` | `string` | Name of the quota limit. The name must be provided, and it must be unique within the service. The... |
| `unit` | `string` | Specify the unit of the quota limit. It uses the same syntax as MetricDescriptor.unit. The suppor... |
| `values` | `object` | Tiered limit values. You must specify this as a key:value pair, with an integer value that is the... |

### `Range`

Represents a found unused range.

| Property | Type | Description |
|----------|------|-------------|
| `ipCidrRange` | `string` | CIDR range in "10.x.x.x/y" format that is within the allocated ranges and currently unused. |
| `network` | `string` | In the Shared VPC host project, the VPC network that's peered with the consumer network. For exam... |

### `RangeReservation`

Represents a range reservation.

| Property | Type | Description |
|----------|------|-------------|
| `ipPrefixLength` | `integer` | Required. The size of the desired subnet. Use usual CIDR range notation. For example, '29' to fin... |
| `requestedRanges` | `array<string>` | Optional. The name of one or more allocated IP address ranges associated with this private servic... |
| `secondaryRangeIpPrefixLengths` | `array<integer>` | Optional. The size of the desired secondary ranges for the subnet. Use usual CIDR range notation.... |
| `subnetworkCandidates` | `array<Subnetwork>` | Optional. List of subnetwork candidates to validate. The required input fields are `name`, `netwo... |

### `RemoveDnsRecordSetMetadata`

Metadata provided through GetOperation request for the LRO generated by RemoveDnsRecordSet API

### `RemoveDnsRecordSetRequest`

Request to remove a record set from a private managed DNS zone in the shared producer host project. The name, type, ttl, and data values must all exactly match an existing record set in the specified zone.

| Property | Type | Description |
|----------|------|-------------|
| `consumerNetwork` | `string` | Required. The network that the consumer is using to connect with services. Must be in the form of... |
| `dnsRecordSet` | `DnsRecordSet` | Required. The DNS record set to remove. |
| `zone` | `string` | Required. The name of the private DNS zone in the shared producer host project from which the rec... |

### `RemoveDnsRecordSetResponse`

Blank message response type for RemoveDnsRecordSet API

### `RemoveDnsZoneMetadata`

Metadata provided through GetOperation request for the LRO generated by RemoveDnsZone API

### `RemoveDnsZoneRequest`

Request to remove a private managed DNS zone in the shared producer host project and a matching DNS peering zone in the consumer project.

| Property | Type | Description |
|----------|------|-------------|
| `consumerNetwork` | `string` | Required. The network that the consumer is using to connect with services. Must be in the form of... |
| `name` | `string` | Required. The name for both the private zone in the shared producer host project and the peering ... |

### `RemoveDnsZoneResponse`

Blank message response type for RemoveDnsZone API

### `Route`

Represents a route that was created or discovered by a private access management service.

| Property | Type | Description |
|----------|------|-------------|
| `destRange` | `string` | Destination CIDR range that this route applies to. |
| `name` | `string` | Route name. See https://cloud.google.com/vpc/docs/routes |
| `network` | `string` | Fully-qualified URL of the VPC network in the producer host tenant project that this route applie... |
| `nextHopGateway` | `string` | Fully-qualified URL of the gateway that should handle matching packets that this route applies to... |

### `RubySettings`

Settings for Ruby client libraries.

| Property | Type | Description |
|----------|------|-------------|
| `common` | `CommonLanguageSettings` | Some settings. |

### `SearchRangeRequest`

Request to search for an unused range within allocated ranges.

| Property | Type | Description |
|----------|------|-------------|
| `ipPrefixLength` | `integer` | Required. The prefix length of the IP range. Use usual CIDR range notation. For example, '30' to ... |
| `network` | `string` | Required. Network name in the consumer project. This network must have been already peered with a... |

### `SecondaryIpRange`

| Property | Type | Description |
|----------|------|-------------|
| `ipCidrRange` | `string` | Secondary IP CIDR range in `x.x.x.x/y` format. |
| `rangeName` | `string` | Name of the secondary IP range. |

### `SecondaryIpRangeSpec`

| Property | Type | Description |
|----------|------|-------------|
| `ipPrefixLength` | `integer` | Required. The prefix length of the secondary IP range. Use CIDR range notation, such as `30` to p... |
| `outsideAllocationPublicIpRange` | `string` | Optional. Enable outside allocation using public IP addresses. Any public IP range may be specifi... |
| `rangeName` | `string` | Required. A name for the secondary IP range. The name must be 1-63 characters long, and comply wi... |
| `requestedAddress` | `string` | Optional. The starting address of a range. The address must be a valid IPv4 address in the x.x.x.... |

### `SelectiveGapicGeneration`

This message is used to configure the generation of a subset of the RPCs in a service for client libraries.

| Property | Type | Description |
|----------|------|-------------|
| `generateOmittedAsInternal` | `boolean` | Setting this to true indicates to the client generators that methods that would be excluded from ... |
| `methods` | `array<string>` | An allowlist of the fully qualified names of RPCs that should be included on public client surfaces. |

### `Service`

`Service` is the root object of Google API service configuration (service config). It describes the basic information about a logical service, such as the service name and the user-facing title, and delegates other aspects to sub-sections. Each sub-section is either a proto message or a repeated proto message that configures a specific aspect, such as auth. For more information, see each proto message definition. Example: type: google.api.Service name: calendar.googleapis.com title: Google Calendar API apis: - name: google.calendar.v3.Calendar visibility: rules: - selector: "google.calendar.v3.*" restriction: PREVIEW backend: rules: - selector: "google.calendar.v3.*" address: calendar.example.com authentication: providers: - id: google_calendar_auth jwks_uri: https://www.googleapis.com/oauth2/v1/certs issuer: https://securetoken.google.com rules: - selector: "*" requirements: provider_id: google_calendar_auth

| Property | Type | Description |
|----------|------|-------------|
| `apis` | `array<Api>` | A list of API interfaces exported by this service. Only the `name` field of the google.protobuf.A... |
| `aspects` | `array<Aspect>` | Configuration aspects. This is a repeated field to allow multiple aspects to be configured. The k... |
| `authentication` | `Authentication` | Auth configuration. |
| `backend` | `Backend` | API backend configuration. |
| `billing` | `Billing` | Billing configuration. |
| `configVersion` | `integer` | Obsolete. Do not use. This field has no semantic meaning. The service config compiler always sets... |
| `context` | `Context` | Context configuration. |
| `control` | `Control` | Configuration for the service control plane. |
| `customError` | `CustomError` | Custom error configuration. |
| `documentation` | `Documentation` | Additional API documentation. |
| `endpoints` | `array<Endpoint>` | Configuration for network endpoints. If this is empty, then an endpoint with the same name as the... |
| `enums` | `array<Enum>` | A list of all enum types included in this API service. Enums referenced directly or indirectly by... |
| `http` | `Http` | HTTP configuration. |
| `id` | `string` | A unique ID for a specific instance of this message, typically assigned by the client for trackin... |
| `logging` | `Logging` | Logging configuration. |
| `logs` | `array<LogDescriptor>` | Defines the logs used by this service. |
| `metrics` | `array<MetricDescriptor>` | Defines the metrics used by this service. |
| `monitoredResources` | `array<MonitoredResourceDescriptor>` | Defines the monitored resources used by this service. This is required by the `Service.monitoring... |
| `monitoring` | `Monitoring` | Monitoring configuration. |
| `name` | `string` | The service name, which is a DNS-like logical identifier for the service, such as `calendar.googl... |
| `producerProjectId` | `string` | The Google project that owns this service. |
| `publishing` | `Publishing` | Settings for [Google Cloud Client libraries](https://cloud.google.com/apis/docs/cloud-client-libr... |
| `quota` | `Quota` | Quota configuration. |
| `sourceInfo` | `SourceInfo` | Output only. The source information for this configuration if available. |
| `systemParameters` | `SystemParameters` | System parameter configuration. |
| `systemTypes` | `array<Type>` | A list of all proto message types included in this API service. It serves similar purpose as [goo... |
| `title` | `string` | The product title for this service, it is the name displayed in Google Cloud Console. |
| `types` | `array<Type>` | A list of all proto message types included in this API service. Types referenced directly or indi... |
| `usage` | `Usage` | Configuration controlling usage of this service. |

### `SourceContext`

`SourceContext` represents information about the source of a protobuf element, like the file in which it is defined.

| Property | Type | Description |
|----------|------|-------------|
| `fileName` | `string` | The path-qualified name of the .proto file that contained the associated protobuf element. For ex... |

### `SourceInfo`

Source information used to create a Service Config

| Property | Type | Description |
|----------|------|-------------|
| `sourceFiles` | `array<object>` | All files used during config generation. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `Subnetwork`

Represents a subnet that was created or discovered by a private access management service.

| Property | Type | Description |
|----------|------|-------------|
| `ipCidrRange` | `string` | Subnetwork CIDR range in `10.x.x.x/y` format. |
| `name` | `string` | Subnetwork name. See https://cloud.google.com/compute/docs/vpc/ |
| `network` | `string` | In the Shared VPC host project, the VPC network that's peered with the consumer network. For exam... |
| `outsideAllocation` | `boolean` | This is a discovered subnet that is not within the current consumer allocated ranges. |
| `region` | `string` | GCP region where the subnetwork is located. |
| `secondaryIpRanges` | `array<SecondaryIpRange>` | List of secondary IP ranges in this subnetwork. |

### `SystemParameter`

Define a parameter's name and location. The parameter may be passed as either an HTTP header or a URL query parameter, and if both are passed the behavior is implementation-dependent.

| Property | Type | Description |
|----------|------|-------------|
| `httpHeader` | `string` | Define the HTTP header name to use for the parameter. It is case insensitive. |
| `name` | `string` | Define the name of the parameter, such as "api_key" . It is case sensitive. |
| `urlQueryParameter` | `string` | Define the URL query parameter name to use for the parameter. It is case sensitive. |

### `SystemParameterRule`

Define a system parameter rule mapping system parameter definitions to methods.

| Property | Type | Description |
|----------|------|-------------|
| `parameters` | `array<SystemParameter>` | Define parameters. Multiple names may be defined for a parameter. For a given method call, only o... |
| `selector` | `string` | Selects the methods to which this rule applies. Use '*' to indicate all methods in all APIs. Refe... |

### `SystemParameters`

### System parameter configuration A system parameter is a special kind of parameter defined by the API system, not by an individual API. It is typically mapped to an HTTP header and/or a URL query parameter. This configuration specifies which methods change the names of the system parameters.

| Property | Type | Description |
|----------|------|-------------|
| `rules` | `array<SystemParameterRule>` | Define system parameters. The parameters defined here will override the default parameters implem... |

### `Type`

A protocol buffer message type. New usages of this message as an alternative to DescriptorProto are strongly discouraged. This message does not reliability preserve all information necessary to model the schema and preserve semantics. Instead make use of FileDescriptorSet which preserves the necessary information.

| Property | Type | Description |
|----------|------|-------------|
| `edition` | `string` | The source edition string, only valid when syntax is SYNTAX_EDITIONS. |
| `fields` | `array<Field>` | The list of fields. |
| `name` | `string` | The fully qualified message name. |
| `oneofs` | `array<string>` | The list of types appearing in `oneof` definitions in this type. |
| `options` | `array<Option>` | The protocol buffer options. |
| `sourceContext` | `SourceContext` | The source context. |
| `syntax` | `string` | The source syntax. |

### `UpdateConsumerConfigRequest`

Request to update the configuration of a service networking connection including the import/export of custom routes and subnetwork routes with public IP.

| Property | Type | Description |
|----------|------|-------------|
| `consumerConfig` | `ConsumerConfig` | Required. The updated peering config. |

### `UpdateDnsRecordSetMetadata`

Metadata provided through GetOperation request for the LRO generated by UpdateDnsRecordSet API

### `UpdateDnsRecordSetRequest`

Request to update a record set from a private managed DNS zone in the shared producer host project. The name, type, ttl, and data values of the existing record set must all exactly match an existing record set in the specified zone.

| Property | Type | Description |
|----------|------|-------------|
| `consumerNetwork` | `string` | Required. The network that the consumer is using to connect with services. Must be in the form of... |
| `existingDnsRecordSet` | `DnsRecordSet` | Required. The existing DNS record set to update. |
| `newDnsRecordSet` | `DnsRecordSet` | Required. The new values that the DNS record set should be updated to hold. |
| `zone` | `string` | Required. The name of the private DNS zone in the shared producer host project from which the rec... |

### `Usage`

Configuration controlling usage of a service.

| Property | Type | Description |
|----------|------|-------------|
| `producerNotificationChannel` | `string` | The full resource name of a channel used for sending notifications to the service producer. Googl... |
| `requirements` | `array<string>` | Requirements that must be satisfied before a consumer project can use the service. Each requireme... |
| `rules` | `array<UsageRule>` | A list of usage rules that apply to individual API methods. **NOTE:** All service configuration r... |

### `UsageRule`

Usage configuration rules for the service.

| Property | Type | Description |
|----------|------|-------------|
| `allowUnregisteredCalls` | `boolean` | Use this rule to configure unregistered calls for the service. Unregistered calls are calls that ... |
| `selector` | `string` | Selects the methods to which this rule applies. Use '*' to indicate all methods in all APIs. Refe... |
| `skipServiceControl` | `boolean` | If true, the selected method should skip service control and the control plane features, such as ... |

### `ValidateConsumerConfigRequest`

| Property | Type | Description |
|----------|------|-------------|
| `checkServiceNetworkingUsePermission` | `boolean` | Optional. The IAM permission check determines whether the consumer project has 'servicenetworking... |
| `consumerNetwork` | `string` | Required. The network that the consumer is using to connect with services. Must be in the form of... |
| `consumerProject` | `ConsumerProject` | NETWORK_NOT_IN_CONSUMERS_PROJECT, NETWORK_NOT_IN_CONSUMERS_HOST_PROJECT, and HOST_PROJECT_NOT_FOU... |
| `rangeReservation` | `RangeReservation` | RANGES_EXHAUSTED, RANGES_NOT_RESERVED, and RANGES_DELETED_LATER are done when range_reservation i... |
| `validateNetwork` | `boolean` | The validations will be performed in the order listed in the ValidationError enum. The first fail... |

### `ValidateConsumerConfigResponse`

| Property | Type | Description |
|----------|------|-------------|
| `existingSubnetworkCandidates` | `array<Subnetwork>` | List of subnetwork candidates from the request which exist with the `ip_cidr_range`, `secondary_i... |
| `isValid` | `boolean` | Indicates whether all the requested validations passed. |
| `validationError` | `string` | The first validation which failed. |

### `VpcServiceControls`

Response for the get VPC Service Controls request.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Output only. Indicates whether the VPC Service Controls are enabled or disabled for the connectio... |

