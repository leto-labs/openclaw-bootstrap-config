# SAS Portal API - API Reference

**Version**: `v1alpha1` | **Methods**: 82 | **Schemas**: 50

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `sasportal.customers.get` | GET | `v1alpha1/{+name}` | Returns a requested customer. |
| `sasportal.customers.list` | GET | `v1alpha1/customers` | Returns a list of requested customers. |
| `sasportal.customers.patch` | PATCH | `v1alpha1/{+name}` | Updates an existing customer. |
| `sasportal.customers.listGcpProjectDeployments` | GET | `v1alpha1/customers:listGcpProjectDeployments` | Returns a list of SAS deployments associated with current GCP project. Includes whether SAS analy... |
| `sasportal.customers.provisionDeployment` | POST | `v1alpha1/customers:provisionDeployment` | Creates a new SAS deployment through the GCP workflow. Creates a SAS organization if an organizat... |
| `sasportal.customers.listLegacyOrganizations` | GET | `v1alpha1/customers:listLegacyOrganizations` | Returns a list of legacy organizations. |
| `sasportal.customers.migrateOrganization` | POST | `v1alpha1/customers:migrateOrganization` | Migrates a SAS organization to the cloud. This will create GCP projects for each deployment and a... |
| `sasportal.customers.setupSasAnalytics` | POST | `v1alpha1/customers:setupSasAnalytics` | Setups the a GCP Project to receive SAS Analytics messages via GCP Pub/Sub with a subscription to... |
| `sasportal.customers.devices.create` | POST | `v1alpha1/{+parent}/devices` | Creates a device under a node or customer. |
| `sasportal.customers.devices.createSigned` | POST | `v1alpha1/{+parent}/devices:createSigned` | Creates a signed device under a node or customer. |
| `sasportal.customers.devices.delete` | DELETE | `v1alpha1/{+name}` | Deletes a device. |
| `sasportal.customers.devices.get` | GET | `v1alpha1/{+name}` | Gets details about a device. |
| `sasportal.customers.devices.list` | GET | `v1alpha1/{+parent}/devices` | Lists devices under a node or customer. |
| `sasportal.customers.devices.move` | POST | `v1alpha1/{+name}:move` | Moves a device under another node or customer. |
| `sasportal.customers.devices.patch` | PATCH | `v1alpha1/{+name}` | Updates a device. |
| `sasportal.customers.devices.updateSigned` | PATCH | `v1alpha1/{+name}:updateSigned` | Updates a signed device. |
| `sasportal.customers.devices.signDevice` | POST | `v1alpha1/{+name}:signDevice` | Signs a device. |
| `sasportal.customers.nodes.create` | POST | `v1alpha1/{+parent}/nodes` | Creates a new node. |
| `sasportal.customers.nodes.delete` | DELETE | `v1alpha1/{+name}` | Deletes a node. |
| `sasportal.customers.nodes.get` | GET | `v1alpha1/{+name}` | Returns a requested node. |
| `sasportal.customers.nodes.list` | GET | `v1alpha1/{+parent}/nodes` | Lists nodes. |
| `sasportal.customers.nodes.move` | POST | `v1alpha1/{+name}:move` | Moves a node under another node or customer. |
| `sasportal.customers.nodes.patch` | PATCH | `v1alpha1/{+name}` | Updates an existing node. |
| `sasportal.customers.nodes.devices.create` | POST | `v1alpha1/{+parent}/devices` | Creates a device under a node or customer. |
| `sasportal.customers.nodes.devices.createSigned` | POST | `v1alpha1/{+parent}/devices:createSigned` | Creates a signed device under a node or customer. |
| `sasportal.customers.nodes.devices.list` | GET | `v1alpha1/{+parent}/devices` | Lists devices under a node or customer. |
| `sasportal.customers.nodes.nodes.create` | POST | `v1alpha1/{+parent}/nodes` | Creates a new node. |
| `sasportal.customers.nodes.nodes.list` | GET | `v1alpha1/{+parent}/nodes` | Lists nodes. |
| `sasportal.customers.nodes.deployments.create` | POST | `v1alpha1/{+parent}/deployments` | Creates a new deployment. |
| `sasportal.customers.nodes.deployments.list` | GET | `v1alpha1/{+parent}/deployments` | Lists deployments. |
| `sasportal.customers.deployments.create` | POST | `v1alpha1/{+parent}/deployments` | Creates a new deployment. |
| `sasportal.customers.deployments.delete` | DELETE | `v1alpha1/{+name}` | Deletes a deployment. |
| `sasportal.customers.deployments.get` | GET | `v1alpha1/{+name}` | Returns a requested deployment. |
| `sasportal.customers.deployments.list` | GET | `v1alpha1/{+parent}/deployments` | Lists deployments. |
| `sasportal.customers.deployments.patch` | PATCH | `v1alpha1/{+name}` | Updates an existing deployment. |
| `sasportal.customers.deployments.move` | POST | `v1alpha1/{+name}:move` | Moves a deployment under another node or customer. |
| `sasportal.customers.deployments.devices.create` | POST | `v1alpha1/{+parent}/devices` | Creates a device under a node or customer. |
| `sasportal.customers.deployments.devices.createSigned` | POST | `v1alpha1/{+parent}/devices:createSigned` | Creates a signed device under a node or customer. |
| `sasportal.customers.deployments.devices.list` | GET | `v1alpha1/{+parent}/devices` | Lists devices under a node or customer. |
| `sasportal.nodes.get` | GET | `v1alpha1/{+name}` | Returns a requested node. |
| `sasportal.nodes.devices.create` | POST | `v1alpha1/{+parent}/devices` | Creates a device under a node or customer. |
| `sasportal.nodes.devices.createSigned` | POST | `v1alpha1/{+parent}/devices:createSigned` | Creates a signed device under a node or customer. |
| `sasportal.nodes.devices.delete` | DELETE | `v1alpha1/{+name}` | Deletes a device. |
| `sasportal.nodes.devices.get` | GET | `v1alpha1/{+name}` | Gets details about a device. |
| `sasportal.nodes.devices.list` | GET | `v1alpha1/{+parent}/devices` | Lists devices under a node or customer. |
| `sasportal.nodes.devices.move` | POST | `v1alpha1/{+name}:move` | Moves a device under another node or customer. |
| `sasportal.nodes.devices.patch` | PATCH | `v1alpha1/{+name}` | Updates a device. |
| `sasportal.nodes.devices.updateSigned` | PATCH | `v1alpha1/{+name}:updateSigned` | Updates a signed device. |
| `sasportal.nodes.devices.signDevice` | POST | `v1alpha1/{+name}:signDevice` | Signs a device. |
| `sasportal.nodes.nodes.create` | POST | `v1alpha1/{+parent}/nodes` | Creates a new node. |
| `sasportal.nodes.nodes.delete` | DELETE | `v1alpha1/{+name}` | Deletes a node. |
| `sasportal.nodes.nodes.get` | GET | `v1alpha1/{+name}` | Returns a requested node. |
| `sasportal.nodes.nodes.list` | GET | `v1alpha1/{+parent}/nodes` | Lists nodes. |
| `sasportal.nodes.nodes.move` | POST | `v1alpha1/{+name}:move` | Moves a node under another node or customer. |
| `sasportal.nodes.nodes.patch` | PATCH | `v1alpha1/{+name}` | Updates an existing node. |
| `sasportal.nodes.nodes.devices.create` | POST | `v1alpha1/{+parent}/devices` | Creates a device under a node or customer. |
| `sasportal.nodes.nodes.devices.createSigned` | POST | `v1alpha1/{+parent}/devices:createSigned` | Creates a signed device under a node or customer. |
| `sasportal.nodes.nodes.devices.list` | GET | `v1alpha1/{+parent}/devices` | Lists devices under a node or customer. |
| `sasportal.nodes.nodes.nodes.create` | POST | `v1alpha1/{+parent}/nodes` | Creates a new node. |
| `sasportal.nodes.nodes.nodes.list` | GET | `v1alpha1/{+parent}/nodes` | Lists nodes. |
| `sasportal.nodes.nodes.deployments.create` | POST | `v1alpha1/{+parent}/deployments` | Creates a new deployment. |
| `sasportal.nodes.nodes.deployments.list` | GET | `v1alpha1/{+parent}/deployments` | Lists deployments. |
| `sasportal.nodes.deployments.delete` | DELETE | `v1alpha1/{+name}` | Deletes a deployment. |
| `sasportal.nodes.deployments.get` | GET | `v1alpha1/{+name}` | Returns a requested deployment. |
| `sasportal.nodes.deployments.list` | GET | `v1alpha1/{+parent}/deployments` | Lists deployments. |
| `sasportal.nodes.deployments.patch` | PATCH | `v1alpha1/{+name}` | Updates an existing deployment. |
| `sasportal.nodes.deployments.move` | POST | `v1alpha1/{+name}:move` | Moves a deployment under another node or customer. |
| `sasportal.nodes.deployments.devices.create` | POST | `v1alpha1/{+parent}/devices` | Creates a device under a node or customer. |
| `sasportal.nodes.deployments.devices.createSigned` | POST | `v1alpha1/{+parent}/devices:createSigned` | Creates a signed device under a node or customer. |
| `sasportal.nodes.deployments.devices.list` | GET | `v1alpha1/{+parent}/devices` | Lists devices under a node or customer. |
| `sasportal.installer.generateSecret` | POST | `v1alpha1/installer:generateSecret` | Generates a secret to be used with the ValidateInstaller. |
| `sasportal.installer.validate` | POST | `v1alpha1/installer:validate` | Validates the identity of a Certified Professional Installer (CPI). |
| `sasportal.deployments.get` | GET | `v1alpha1/{+name}` | Returns a requested deployment. |
| `sasportal.deployments.devices.delete` | DELETE | `v1alpha1/{+name}` | Deletes a device. |
| `sasportal.deployments.devices.get` | GET | `v1alpha1/{+name}` | Gets details about a device. |
| `sasportal.deployments.devices.move` | POST | `v1alpha1/{+name}:move` | Moves a device under another node or customer. |
| `sasportal.deployments.devices.patch` | PATCH | `v1alpha1/{+name}` | Updates a device. |
| `sasportal.deployments.devices.updateSigned` | PATCH | `v1alpha1/{+name}:updateSigned` | Updates a signed device. |
| `sasportal.deployments.devices.signDevice` | POST | `v1alpha1/{+name}:signDevice` | Signs a device. |
| `sasportal.policies.set` | POST | `v1alpha1/policies:set` | Sets the access control policy on the specified resource. Replaces any existing policy. |
| `sasportal.policies.get` | POST | `v1alpha1/policies:get` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `sasportal.policies.test` | POST | `v1alpha1/policies:test` | Returns permissions that a caller has on the specified resource. |

### `sasportal.customers.get`

**GET** `v1alpha1/{+name}`

Returns a requested customer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the customer. |

**Response**: `SasPortalCustomer`

```typescript
const res = await sasportal.customers.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.customers.list`

**GET** `v1alpha1/customers`

Returns a list of requested customers.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pageSize` | `integer` | query | No | The maximum number of customers to return in the response. |
| `pageToken` | `string` | query | No | A pagination token returned from a previous call to ListCustomers that indicates where this listing should continue f... |

**Response**: `SasPortalListCustomersResponse`

```typescript
const res = await sasportal.customers.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.customers.patch`

**PATCH** `v1alpha1/{+name}`

Updates an existing customer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Resource name of the customer. |
| `updateMask` | `string` | query | No | Fields to be updated. |

**Request body**: `SasPortalCustomer`

**Response**: `SasPortalCustomer`

```typescript
const res = await sasportal.customers.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.customers.listGcpProjectDeployments`

**GET** `v1alpha1/customers:listGcpProjectDeployments`

Returns a list of SAS deployments associated with current GCP project. Includes whether SAS analytics has been enabled or not.

**Response**: `SasPortalListGcpProjectDeploymentsResponse`

```typescript
const res = await sasportal.customers.listGcpProjectDeployments({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.customers.provisionDeployment`

**POST** `v1alpha1/customers:provisionDeployment`

Creates a new SAS deployment through the GCP workflow. Creates a SAS organization if an organization match is not found.

**Request body**: `SasPortalProvisionDeploymentRequest`

**Response**: `SasPortalProvisionDeploymentResponse`

```typescript
const res = await sasportal.customers.provisionDeployment({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.customers.listLegacyOrganizations`

**GET** `v1alpha1/customers:listLegacyOrganizations`

Returns a list of legacy organizations.

**Response**: `SasPortalListLegacyOrganizationsResponse`

```typescript
const res = await sasportal.customers.listLegacyOrganizations({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.customers.migrateOrganization`

**POST** `v1alpha1/customers:migrateOrganization`

Migrates a SAS organization to the cloud. This will create GCP projects for each deployment and associate them. The SAS Organization is linked to the gcp project that called the command. go/sas-legacy-customer-migration

**Request body**: `SasPortalMigrateOrganizationRequest`

**Response**: `SasPortalOperation`

```typescript
const res = await sasportal.customers.migrateOrganization({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.customers.setupSasAnalytics`

**POST** `v1alpha1/customers:setupSasAnalytics`

Setups the a GCP Project to receive SAS Analytics messages via GCP Pub/Sub with a subscription to BigQuery. All the Pub/Sub topics and BigQuery tables are created automatically as part of this service.

**Request body**: `SasPortalSetupSasAnalyticsRequest`

**Response**: `SasPortalOperation`

```typescript
const res = await sasportal.customers.setupSasAnalytics({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.customers.devices.create`

**POST** `v1alpha1/{+parent}/devices`

Creates a device under a node or customer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent resource. |

**Request body**: `SasPortalDevice`

**Response**: `SasPortalDevice`

```typescript
const res = await sasportal.devices.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.customers.devices.createSigned`

**POST** `v1alpha1/{+parent}/devices:createSigned`

Creates a signed device under a node or customer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent resource. |

**Request body**: `SasPortalCreateSignedDeviceRequest`

**Response**: `SasPortalDevice`

```typescript
const res = await sasportal.devices.createSigned({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.customers.devices.delete`

**DELETE** `v1alpha1/{+name}`

Deletes a device.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the device. |

**Response**: `SasPortalEmpty`

```typescript
const res = await sasportal.devices.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.customers.devices.get`

**GET** `v1alpha1/{+name}`

Gets details about a device.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the device. |

**Response**: `SasPortalDevice`

```typescript
const res = await sasportal.devices.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.customers.devices.list`

**GET** `v1alpha1/{+parent}/devices`

Lists devices under a node or customer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent resource. |
| `filter` | `string` | query | No | The filter expression. The filter should have one of the following formats: "sn=123454" or "display_name=MyDevice". s... |
| `pageSize` | `integer` | query | No | The maximum number of devices to return in the response. If empty or zero, all devices will be listed. Must be in the... |
| `pageToken` | `string` | query | No | A pagination token returned from a previous call to ListDevices that indicates where this listing should continue from. |

**Response**: `SasPortalListDevicesResponse`

```typescript
const res = await sasportal.devices.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.customers.devices.move`

**POST** `v1alpha1/{+name}:move`

Moves a device under another node or customer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the device to move. |

**Request body**: `SasPortalMoveDeviceRequest`

**Response**: `SasPortalOperation`

```typescript
const res = await sasportal.devices.move({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.customers.devices.patch`

**PATCH** `v1alpha1/{+name}`

Updates a device.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The resource path name. |
| `updateMask` | `string` | query | No | Fields to be updated. |

**Request body**: `SasPortalDevice`

**Response**: `SasPortalDevice`

```typescript
const res = await sasportal.devices.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.customers.devices.updateSigned`

**PATCH** `v1alpha1/{+name}:updateSigned`

Updates a signed device.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the device to update. |

**Request body**: `SasPortalUpdateSignedDeviceRequest`

**Response**: `SasPortalDevice`

```typescript
const res = await sasportal.devices.updateSigned({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.customers.devices.signDevice`

**POST** `v1alpha1/{+name}:signDevice`

Signs a device.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The resource path name. |

**Request body**: `SasPortalSignDeviceRequest`

**Response**: `SasPortalEmpty`

```typescript
const res = await sasportal.devices.signDevice({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.customers.nodes.create`

**POST** `v1alpha1/{+parent}/nodes`

Creates a new node.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name where the node is to be created. |

**Request body**: `SasPortalNode`

**Response**: `SasPortalNode`

```typescript
const res = await sasportal.nodes.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.customers.nodes.delete`

**DELETE** `v1alpha1/{+name}`

Deletes a node.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the node. |

**Response**: `SasPortalEmpty`

```typescript
const res = await sasportal.nodes.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.customers.nodes.get`

**GET** `v1alpha1/{+name}`

Returns a requested node.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the node. |

**Response**: `SasPortalNode`

```typescript
const res = await sasportal.nodes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.customers.nodes.list`

**GET** `v1alpha1/{+parent}/nodes`

Lists nodes.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name, for example, "nodes/1". |
| `filter` | `string` | query | No | The filter expression. The filter should have the following format: "DIRECT_CHILDREN" or format: "direct_children". T... |
| `pageSize` | `integer` | query | No | The maximum number of nodes to return in the response. |
| `pageToken` | `string` | query | No | A pagination token returned from a previous call to ListNodes that indicates where this listing should continue from. |

**Response**: `SasPortalListNodesResponse`

```typescript
const res = await sasportal.nodes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.customers.nodes.move`

**POST** `v1alpha1/{+name}:move`

Moves a node under another node or customer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the node to move. |

**Request body**: `SasPortalMoveNodeRequest`

**Response**: `SasPortalOperation`

```typescript
const res = await sasportal.nodes.move({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.customers.nodes.patch`

**PATCH** `v1alpha1/{+name}`

Updates an existing node.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Resource name. |
| `updateMask` | `string` | query | No | Fields to be updated. |

**Request body**: `SasPortalNode`

**Response**: `SasPortalNode`

```typescript
const res = await sasportal.nodes.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.customers.nodes.devices.create`

**POST** `v1alpha1/{+parent}/devices`

Creates a device under a node or customer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent resource. |

**Request body**: `SasPortalDevice`

**Response**: `SasPortalDevice`

```typescript
const res = await sasportal.devices.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.customers.nodes.devices.createSigned`

**POST** `v1alpha1/{+parent}/devices:createSigned`

Creates a signed device under a node or customer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent resource. |

**Request body**: `SasPortalCreateSignedDeviceRequest`

**Response**: `SasPortalDevice`

```typescript
const res = await sasportal.devices.createSigned({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.customers.nodes.devices.list`

**GET** `v1alpha1/{+parent}/devices`

Lists devices under a node or customer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent resource. |
| `filter` | `string` | query | No | The filter expression. The filter should have one of the following formats: "sn=123454" or "display_name=MyDevice". s... |
| `pageSize` | `integer` | query | No | The maximum number of devices to return in the response. If empty or zero, all devices will be listed. Must be in the... |
| `pageToken` | `string` | query | No | A pagination token returned from a previous call to ListDevices that indicates where this listing should continue from. |

**Response**: `SasPortalListDevicesResponse`

```typescript
const res = await sasportal.devices.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.customers.nodes.nodes.create`

**POST** `v1alpha1/{+parent}/nodes`

Creates a new node.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name where the node is to be created. |

**Request body**: `SasPortalNode`

**Response**: `SasPortalNode`

```typescript
const res = await sasportal.nodes.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.customers.nodes.nodes.list`

**GET** `v1alpha1/{+parent}/nodes`

Lists nodes.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name, for example, "nodes/1". |
| `filter` | `string` | query | No | The filter expression. The filter should have the following format: "DIRECT_CHILDREN" or format: "direct_children". T... |
| `pageSize` | `integer` | query | No | The maximum number of nodes to return in the response. |
| `pageToken` | `string` | query | No | A pagination token returned from a previous call to ListNodes that indicates where this listing should continue from. |

**Response**: `SasPortalListNodesResponse`

```typescript
const res = await sasportal.nodes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.customers.nodes.deployments.create`

**POST** `v1alpha1/{+parent}/deployments`

Creates a new deployment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name where the deployment is to be created. |

**Request body**: `SasPortalDeployment`

**Response**: `SasPortalDeployment`

```typescript
const res = await sasportal.deployments.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.customers.nodes.deployments.list`

**GET** `v1alpha1/{+parent}/deployments`

Lists deployments.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name, for example, "nodes/1", customer/1/nodes/2. |
| `filter` | `string` | query | No | The filter expression. The filter should have the following format: "DIRECT_CHILDREN" or format: "direct_children". T... |
| `pageSize` | `integer` | query | No | The maximum number of deployments to return in the response. |
| `pageToken` | `string` | query | No | A pagination token returned from a previous call to ListDeployments that indicates where this listing should continue... |

**Response**: `SasPortalListDeploymentsResponse`

```typescript
const res = await sasportal.deployments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.customers.deployments.create`

**POST** `v1alpha1/{+parent}/deployments`

Creates a new deployment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name where the deployment is to be created. |

**Request body**: `SasPortalDeployment`

**Response**: `SasPortalDeployment`

```typescript
const res = await sasportal.deployments.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.customers.deployments.delete`

**DELETE** `v1alpha1/{+name}`

Deletes a deployment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the deployment. |

**Response**: `SasPortalEmpty`

```typescript
const res = await sasportal.deployments.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.customers.deployments.get`

**GET** `v1alpha1/{+name}`

Returns a requested deployment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the deployment. |

**Response**: `SasPortalDeployment`

```typescript
const res = await sasportal.deployments.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.customers.deployments.list`

**GET** `v1alpha1/{+parent}/deployments`

Lists deployments.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name, for example, "nodes/1", customer/1/nodes/2. |
| `filter` | `string` | query | No | The filter expression. The filter should have the following format: "DIRECT_CHILDREN" or format: "direct_children". T... |
| `pageSize` | `integer` | query | No | The maximum number of deployments to return in the response. |
| `pageToken` | `string` | query | No | A pagination token returned from a previous call to ListDeployments that indicates where this listing should continue... |

**Response**: `SasPortalListDeploymentsResponse`

```typescript
const res = await sasportal.deployments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.customers.deployments.patch`

**PATCH** `v1alpha1/{+name}`

Updates an existing deployment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Resource name. |
| `updateMask` | `string` | query | No | Fields to be updated. |

**Request body**: `SasPortalDeployment`

**Response**: `SasPortalDeployment`

```typescript
const res = await sasportal.deployments.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.customers.deployments.move`

**POST** `v1alpha1/{+name}:move`

Moves a deployment under another node or customer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the deployment to move. |

**Request body**: `SasPortalMoveDeploymentRequest`

**Response**: `SasPortalOperation`

```typescript
const res = await sasportal.deployments.move({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.customers.deployments.devices.create`

**POST** `v1alpha1/{+parent}/devices`

Creates a device under a node or customer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent resource. |

**Request body**: `SasPortalDevice`

**Response**: `SasPortalDevice`

```typescript
const res = await sasportal.devices.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.customers.deployments.devices.createSigned`

**POST** `v1alpha1/{+parent}/devices:createSigned`

Creates a signed device under a node or customer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent resource. |

**Request body**: `SasPortalCreateSignedDeviceRequest`

**Response**: `SasPortalDevice`

```typescript
const res = await sasportal.devices.createSigned({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.customers.deployments.devices.list`

**GET** `v1alpha1/{+parent}/devices`

Lists devices under a node or customer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent resource. |
| `filter` | `string` | query | No | The filter expression. The filter should have one of the following formats: "sn=123454" or "display_name=MyDevice". s... |
| `pageSize` | `integer` | query | No | The maximum number of devices to return in the response. If empty or zero, all devices will be listed. Must be in the... |
| `pageToken` | `string` | query | No | A pagination token returned from a previous call to ListDevices that indicates where this listing should continue from. |

**Response**: `SasPortalListDevicesResponse`

```typescript
const res = await sasportal.devices.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.nodes.get`

**GET** `v1alpha1/{+name}`

Returns a requested node.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the node. |

**Response**: `SasPortalNode`

```typescript
const res = await sasportal.nodes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.nodes.devices.create`

**POST** `v1alpha1/{+parent}/devices`

Creates a device under a node or customer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent resource. |

**Request body**: `SasPortalDevice`

**Response**: `SasPortalDevice`

```typescript
const res = await sasportal.devices.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.nodes.devices.createSigned`

**POST** `v1alpha1/{+parent}/devices:createSigned`

Creates a signed device under a node or customer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent resource. |

**Request body**: `SasPortalCreateSignedDeviceRequest`

**Response**: `SasPortalDevice`

```typescript
const res = await sasportal.devices.createSigned({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.nodes.devices.delete`

**DELETE** `v1alpha1/{+name}`

Deletes a device.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the device. |

**Response**: `SasPortalEmpty`

```typescript
const res = await sasportal.devices.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.nodes.devices.get`

**GET** `v1alpha1/{+name}`

Gets details about a device.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the device. |

**Response**: `SasPortalDevice`

```typescript
const res = await sasportal.devices.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.nodes.devices.list`

**GET** `v1alpha1/{+parent}/devices`

Lists devices under a node or customer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent resource. |
| `filter` | `string` | query | No | The filter expression. The filter should have one of the following formats: "sn=123454" or "display_name=MyDevice". s... |
| `pageSize` | `integer` | query | No | The maximum number of devices to return in the response. If empty or zero, all devices will be listed. Must be in the... |
| `pageToken` | `string` | query | No | A pagination token returned from a previous call to ListDevices that indicates where this listing should continue from. |

**Response**: `SasPortalListDevicesResponse`

```typescript
const res = await sasportal.devices.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.nodes.devices.move`

**POST** `v1alpha1/{+name}:move`

Moves a device under another node or customer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the device to move. |

**Request body**: `SasPortalMoveDeviceRequest`

**Response**: `SasPortalOperation`

```typescript
const res = await sasportal.devices.move({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.nodes.devices.patch`

**PATCH** `v1alpha1/{+name}`

Updates a device.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The resource path name. |
| `updateMask` | `string` | query | No | Fields to be updated. |

**Request body**: `SasPortalDevice`

**Response**: `SasPortalDevice`

```typescript
const res = await sasportal.devices.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.nodes.devices.updateSigned`

**PATCH** `v1alpha1/{+name}:updateSigned`

Updates a signed device.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the device to update. |

**Request body**: `SasPortalUpdateSignedDeviceRequest`

**Response**: `SasPortalDevice`

```typescript
const res = await sasportal.devices.updateSigned({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.nodes.devices.signDevice`

**POST** `v1alpha1/{+name}:signDevice`

Signs a device.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The resource path name. |

**Request body**: `SasPortalSignDeviceRequest`

**Response**: `SasPortalEmpty`

```typescript
const res = await sasportal.devices.signDevice({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.nodes.nodes.create`

**POST** `v1alpha1/{+parent}/nodes`

Creates a new node.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name where the node is to be created. |

**Request body**: `SasPortalNode`

**Response**: `SasPortalNode`

```typescript
const res = await sasportal.nodes.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.nodes.nodes.delete`

**DELETE** `v1alpha1/{+name}`

Deletes a node.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the node. |

**Response**: `SasPortalEmpty`

```typescript
const res = await sasportal.nodes.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.nodes.nodes.get`

**GET** `v1alpha1/{+name}`

Returns a requested node.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the node. |

**Response**: `SasPortalNode`

```typescript
const res = await sasportal.nodes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.nodes.nodes.list`

**GET** `v1alpha1/{+parent}/nodes`

Lists nodes.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name, for example, "nodes/1". |
| `filter` | `string` | query | No | The filter expression. The filter should have the following format: "DIRECT_CHILDREN" or format: "direct_children". T... |
| `pageSize` | `integer` | query | No | The maximum number of nodes to return in the response. |
| `pageToken` | `string` | query | No | A pagination token returned from a previous call to ListNodes that indicates where this listing should continue from. |

**Response**: `SasPortalListNodesResponse`

```typescript
const res = await sasportal.nodes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.nodes.nodes.move`

**POST** `v1alpha1/{+name}:move`

Moves a node under another node or customer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the node to move. |

**Request body**: `SasPortalMoveNodeRequest`

**Response**: `SasPortalOperation`

```typescript
const res = await sasportal.nodes.move({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.nodes.nodes.patch`

**PATCH** `v1alpha1/{+name}`

Updates an existing node.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Resource name. |
| `updateMask` | `string` | query | No | Fields to be updated. |

**Request body**: `SasPortalNode`

**Response**: `SasPortalNode`

```typescript
const res = await sasportal.nodes.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.nodes.nodes.devices.create`

**POST** `v1alpha1/{+parent}/devices`

Creates a device under a node or customer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent resource. |

**Request body**: `SasPortalDevice`

**Response**: `SasPortalDevice`

```typescript
const res = await sasportal.devices.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.nodes.nodes.devices.createSigned`

**POST** `v1alpha1/{+parent}/devices:createSigned`

Creates a signed device under a node or customer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent resource. |

**Request body**: `SasPortalCreateSignedDeviceRequest`

**Response**: `SasPortalDevice`

```typescript
const res = await sasportal.devices.createSigned({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.nodes.nodes.devices.list`

**GET** `v1alpha1/{+parent}/devices`

Lists devices under a node or customer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent resource. |
| `filter` | `string` | query | No | The filter expression. The filter should have one of the following formats: "sn=123454" or "display_name=MyDevice". s... |
| `pageSize` | `integer` | query | No | The maximum number of devices to return in the response. If empty or zero, all devices will be listed. Must be in the... |
| `pageToken` | `string` | query | No | A pagination token returned from a previous call to ListDevices that indicates where this listing should continue from. |

**Response**: `SasPortalListDevicesResponse`

```typescript
const res = await sasportal.devices.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.nodes.nodes.nodes.create`

**POST** `v1alpha1/{+parent}/nodes`

Creates a new node.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name where the node is to be created. |

**Request body**: `SasPortalNode`

**Response**: `SasPortalNode`

```typescript
const res = await sasportal.nodes.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.nodes.nodes.nodes.list`

**GET** `v1alpha1/{+parent}/nodes`

Lists nodes.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name, for example, "nodes/1". |
| `filter` | `string` | query | No | The filter expression. The filter should have the following format: "DIRECT_CHILDREN" or format: "direct_children". T... |
| `pageSize` | `integer` | query | No | The maximum number of nodes to return in the response. |
| `pageToken` | `string` | query | No | A pagination token returned from a previous call to ListNodes that indicates where this listing should continue from. |

**Response**: `SasPortalListNodesResponse`

```typescript
const res = await sasportal.nodes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.nodes.nodes.deployments.create`

**POST** `v1alpha1/{+parent}/deployments`

Creates a new deployment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name where the deployment is to be created. |

**Request body**: `SasPortalDeployment`

**Response**: `SasPortalDeployment`

```typescript
const res = await sasportal.deployments.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.nodes.nodes.deployments.list`

**GET** `v1alpha1/{+parent}/deployments`

Lists deployments.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name, for example, "nodes/1", customer/1/nodes/2. |
| `filter` | `string` | query | No | The filter expression. The filter should have the following format: "DIRECT_CHILDREN" or format: "direct_children". T... |
| `pageSize` | `integer` | query | No | The maximum number of deployments to return in the response. |
| `pageToken` | `string` | query | No | A pagination token returned from a previous call to ListDeployments that indicates where this listing should continue... |

**Response**: `SasPortalListDeploymentsResponse`

```typescript
const res = await sasportal.deployments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.nodes.deployments.delete`

**DELETE** `v1alpha1/{+name}`

Deletes a deployment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the deployment. |

**Response**: `SasPortalEmpty`

```typescript
const res = await sasportal.deployments.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.nodes.deployments.get`

**GET** `v1alpha1/{+name}`

Returns a requested deployment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the deployment. |

**Response**: `SasPortalDeployment`

```typescript
const res = await sasportal.deployments.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.nodes.deployments.list`

**GET** `v1alpha1/{+parent}/deployments`

Lists deployments.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name, for example, "nodes/1", customer/1/nodes/2. |
| `filter` | `string` | query | No | The filter expression. The filter should have the following format: "DIRECT_CHILDREN" or format: "direct_children". T... |
| `pageSize` | `integer` | query | No | The maximum number of deployments to return in the response. |
| `pageToken` | `string` | query | No | A pagination token returned from a previous call to ListDeployments that indicates where this listing should continue... |

**Response**: `SasPortalListDeploymentsResponse`

```typescript
const res = await sasportal.deployments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.nodes.deployments.patch`

**PATCH** `v1alpha1/{+name}`

Updates an existing deployment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Resource name. |
| `updateMask` | `string` | query | No | Fields to be updated. |

**Request body**: `SasPortalDeployment`

**Response**: `SasPortalDeployment`

```typescript
const res = await sasportal.deployments.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.nodes.deployments.move`

**POST** `v1alpha1/{+name}:move`

Moves a deployment under another node or customer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the deployment to move. |

**Request body**: `SasPortalMoveDeploymentRequest`

**Response**: `SasPortalOperation`

```typescript
const res = await sasportal.deployments.move({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.nodes.deployments.devices.create`

**POST** `v1alpha1/{+parent}/devices`

Creates a device under a node or customer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent resource. |

**Request body**: `SasPortalDevice`

**Response**: `SasPortalDevice`

```typescript
const res = await sasportal.devices.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.nodes.deployments.devices.createSigned`

**POST** `v1alpha1/{+parent}/devices:createSigned`

Creates a signed device under a node or customer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent resource. |

**Request body**: `SasPortalCreateSignedDeviceRequest`

**Response**: `SasPortalDevice`

```typescript
const res = await sasportal.devices.createSigned({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.nodes.deployments.devices.list`

**GET** `v1alpha1/{+parent}/devices`

Lists devices under a node or customer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent resource. |
| `filter` | `string` | query | No | The filter expression. The filter should have one of the following formats: "sn=123454" or "display_name=MyDevice". s... |
| `pageSize` | `integer` | query | No | The maximum number of devices to return in the response. If empty or zero, all devices will be listed. Must be in the... |
| `pageToken` | `string` | query | No | A pagination token returned from a previous call to ListDevices that indicates where this listing should continue from. |

**Response**: `SasPortalListDevicesResponse`

```typescript
const res = await sasportal.devices.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.installer.generateSecret`

**POST** `v1alpha1/installer:generateSecret`

Generates a secret to be used with the ValidateInstaller.

**Request body**: `SasPortalGenerateSecretRequest`

**Response**: `SasPortalGenerateSecretResponse`

```typescript
const res = await sasportal.installer.generateSecret({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.installer.validate`

**POST** `v1alpha1/installer:validate`

Validates the identity of a Certified Professional Installer (CPI).

**Request body**: `SasPortalValidateInstallerRequest`

**Response**: `SasPortalValidateInstallerResponse`

```typescript
const res = await sasportal.installer.validate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.deployments.get`

**GET** `v1alpha1/{+name}`

Returns a requested deployment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the deployment. |

**Response**: `SasPortalDeployment`

```typescript
const res = await sasportal.deployments.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.deployments.devices.delete`

**DELETE** `v1alpha1/{+name}`

Deletes a device.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the device. |

**Response**: `SasPortalEmpty`

```typescript
const res = await sasportal.devices.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.deployments.devices.get`

**GET** `v1alpha1/{+name}`

Gets details about a device.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the device. |

**Response**: `SasPortalDevice`

```typescript
const res = await sasportal.devices.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.deployments.devices.move`

**POST** `v1alpha1/{+name}:move`

Moves a device under another node or customer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the device to move. |

**Request body**: `SasPortalMoveDeviceRequest`

**Response**: `SasPortalOperation`

```typescript
const res = await sasportal.devices.move({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.deployments.devices.patch`

**PATCH** `v1alpha1/{+name}`

Updates a device.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The resource path name. |
| `updateMask` | `string` | query | No | Fields to be updated. |

**Request body**: `SasPortalDevice`

**Response**: `SasPortalDevice`

```typescript
const res = await sasportal.devices.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.deployments.devices.updateSigned`

**PATCH** `v1alpha1/{+name}:updateSigned`

Updates a signed device.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the device to update. |

**Request body**: `SasPortalUpdateSignedDeviceRequest`

**Response**: `SasPortalDevice`

```typescript
const res = await sasportal.devices.updateSigned({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.deployments.devices.signDevice`

**POST** `v1alpha1/{+name}:signDevice`

Signs a device.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The resource path name. |

**Request body**: `SasPortalSignDeviceRequest`

**Response**: `SasPortalEmpty`

```typescript
const res = await sasportal.devices.signDevice({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.policies.set`

**POST** `v1alpha1/policies:set`

Sets the access control policy on the specified resource. Replaces any existing policy.

**Request body**: `SasPortalSetPolicyRequest`

**Response**: `SasPortalPolicy`

```typescript
const res = await sasportal.policies.set({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.policies.get`

**POST** `v1alpha1/policies:get`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Request body**: `SasPortalGetPolicyRequest`

**Response**: `SasPortalPolicy`

```typescript
const res = await sasportal.policies.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

### `sasportal.policies.test`

**POST** `v1alpha1/policies:test`

Returns permissions that a caller has on the specified resource.

**Request body**: `SasPortalTestPermissionsRequest`

**Response**: `SasPortalTestPermissionsResponse`

```typescript
const res = await sasportal.policies.test({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sasportal`

---

## Schemas

### `SasPortalAssignment`

Associates `members` with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `members` | `array<string>` | The identities the role is assigned to. It can have the following values: * `{user_email}`: An em... |
| `role` | `string` | Required. Role that is assigned to `members`. |

### `SasPortalChannelWithScore`

The channel with score.

| Property | Type | Description |
|----------|------|-------------|
| `frequencyRange` | `SasPortalFrequencyRange` | The frequency range of the channel. |
| `score` | `number` | The channel score, normalized to be in the range [0,100]. |

### `SasPortalCreateSignedDeviceRequest`

Request for CreateSignedDevice.

| Property | Type | Description |
|----------|------|-------------|
| `encodedDevice` | `string` | Required. JSON Web Token signed using a CPI private key. Payload must be the JSON encoding of the... |
| `installerId` | `string` | Required. Unique installer id (CPI ID) from the Certified Professional Installers database. |

### `SasPortalCustomer`

Entity representing a SAS customer.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Required. Name of the organization that the customer entity represents. |
| `name` | `string` | Output only. Resource name of the customer. |
| `sasUserIds` | `array<string>` | User IDs used by the devices belonging to this customer. |

### `SasPortalDeployment`

The Deployment.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The deployment's display name. |
| `frns` | `array<string>` | Output only. The FCC Registration Numbers (FRNs) copied from its direct parent. |
| `name` | `string` | Output only. Resource name. |
| `sasUserIds` | `array<string>` | User ID used by the devices belonging to this deployment. Each deployment should be associated wi... |

### `SasPortalDeploymentAssociation`

Association between a gcp project and a SAS user id.

| Property | Type | Description |
|----------|------|-------------|
| `gcpProjectId` | `string` | GCP project id of the associated project. |
| `userId` | `string` | User id of the deployment. |

### `SasPortalDevice`

| Property | Type | Description |
|----------|------|-------------|
| `activeConfig` | `SasPortalDeviceConfig` | Output only. Current configuration of the device as registered to the SAS. |
| `currentChannels` | `array<SasPortalChannelWithScore>` | Output only. Current channels with scores. |
| `deviceMetadata` | `SasPortalDeviceMetadata` | Device parameters that can be overridden by both SAS Portal and SAS registration requests. |
| `displayName` | `string` | Device display name. |
| `fccId` | `string` | The FCC identifier of the device. Refer to https://www.fcc.gov/oet/ea/fccid for FccID format. Acc... |
| `grantRangeAllowlists` | `array<SasPortalFrequencyRange>` | Only ranges that are within the allowlists are available for new grants. |
| `grants` | `array<SasPortalDeviceGrant>` | Output only. Grants held by the device. |
| `name` | `string` | Output only. The resource path name. |
| `preloadedConfig` | `SasPortalDeviceConfig` | Configuration of the device, as specified via SAS Portal API. |
| `serialNumber` | `string` | A serial number assigned to the device by the device manufacturer. |
| `state` | `string` | Output only. Device state. |

### `SasPortalDeviceAirInterface`

Information about the device's air interface.

| Property | Type | Description |
|----------|------|-------------|
| `radioTechnology` | `string` | Conditional. This field specifies the radio access technology that is used for the CBSD. |
| `supportedSpec` | `string` | Optional. This field is related to the `radioTechnology` and provides the air interface specifica... |

### `SasPortalDeviceConfig`

Information about the device configuration.

| Property | Type | Description |
|----------|------|-------------|
| `airInterface` | `SasPortalDeviceAirInterface` | Information about this device's air interface. |
| `callSign` | `string` | The call sign of the device operator. |
| `category` | `string` | FCC category of the device. |
| `installationParams` | `SasPortalInstallationParams` | Installation parameters for the device. |
| `isSigned` | `boolean` | Output only. Whether the configuration has been signed by a CPI. |
| `measurementCapabilities` | `array<string>` | Measurement reporting capabilities of the device. |
| `model` | `SasPortalDeviceModel` | Information about this device model. |
| `state` | `string` | State of the configuration. |
| `updateTime` | `string` | Output only. The last time the device configuration was edited. |
| `userId` | `string` | The identifier of a device user. |

### `SasPortalDeviceGrant`

Device grant. It is an authorization provided by the Spectrum Access System to a device to transmit using specified operating parameters after a successful heartbeat by the device.

| Property | Type | Description |
|----------|------|-------------|
| `channelType` | `string` | Type of channel used. |
| `expireTime` | `string` | The expiration time of the grant. |
| `frequencyRange` | `SasPortalFrequencyRange` | The transmission frequency range. |
| `grantId` | `string` | Grant Id. |
| `lastHeartbeatTransmitExpireTime` | `string` | The transmit expiration time of the last heartbeat. |
| `maxEirp` | `number` | Maximum Equivalent Isotropically Radiated Power (EIRP) permitted by the grant. The maximum EIRP i... |
| `moveList` | `array<SasPortalDpaMoveList>` | The DPA move lists on which this grant appears. |
| `state` | `string` | State of the grant. |
| `suspensionReason` | `array<string>` | If the grant is suspended, the reason(s) for suspension. |

### `SasPortalDeviceMetadata`

Device data overridable by both SAS Portal and registration requests.

| Property | Type | Description |
|----------|------|-------------|
| `antennaModel` | `string` | If populated, the Antenna Model Pattern to use. Format is: `RecordCreatorId:PatternId` |
| `commonChannelGroup` | `string` | Common Channel Group (CCG). A group of CBSDs in the same ICG requesting a common primary channel ... |
| `interferenceCoordinationGroup` | `string` | Interference Coordination Group (ICG). A group of CBSDs that manage their own interference with t... |
| `nrqzValidated` | `boolean` | Output only. Set to `true` if a CPI has validated that they have coordinated with the National Qu... |
| `nrqzValidation` | `SasPortalNrqzValidation` | Output only. National Radio Quiet Zone validation info. |

### `SasPortalDeviceModel`

Information about the model of the device.

| Property | Type | Description |
|----------|------|-------------|
| `firmwareVersion` | `string` | The firmware version of the device. |
| `hardwareVersion` | `string` | The hardware version of the device. |
| `name` | `string` | The name of the device model. |
| `softwareVersion` | `string` | The software version of the device. |
| `vendor` | `string` | The name of the device vendor. |

### `SasPortalDpaMoveList`

An entry in a DPA's move list.

| Property | Type | Description |
|----------|------|-------------|
| `dpaId` | `string` | The ID of the DPA. |
| `frequencyRange` | `SasPortalFrequencyRange` | The frequency range that the move list affects. |

### `SasPortalEmpty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `SasPortalFrequencyRange`

Frequency range from `low_frequency` to `high_frequency`.

| Property | Type | Description |
|----------|------|-------------|
| `highFrequencyMhz` | `number` | The highest frequency of the frequency range in MHz. |
| `lowFrequencyMhz` | `number` | The lowest frequency of the frequency range in MHz. |

### `SasPortalGcpProjectDeployment`

Deployment associated with the GCP project. Includes whether SAS analytics has been enabled or not.

| Property | Type | Description |
|----------|------|-------------|
| `deployment` | `SasPortalDeployment` | Deployment associated with the GCP project. |
| `hasEnabledAnalytics` | `boolean` | Whether SAS analytics has been enabled. |

### `SasPortalGenerateSecretRequest`

Request for GenerateSecret.

### `SasPortalGenerateSecretResponse`

Response for GenerateSecret.

| Property | Type | Description |
|----------|------|-------------|
| `secret` | `string` | The secret generated by the string and used by ValidateInstaller. |

### `SasPortalGetPolicyRequest`

Request message for `GetPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `resource` | `string` | Required. The resource for which the policy is being requested. |

### `SasPortalInstallationParams`

Information about the device installation parameters.

| Property | Type | Description |
|----------|------|-------------|
| `antennaAzimuth` | `integer` | Boresight direction of the horizontal plane of the antenna in degrees with respect to true north.... |
| `antennaBeamwidth` | `integer` | 3-dB antenna beamwidth of the antenna in the horizontal-plane in degrees. This parameter is an un... |
| `antennaDowntilt` | `integer` | Antenna downtilt in degrees and is an integer with a value between -90 and +90 inclusive; a negat... |
| `antennaGain` | `number` | Peak antenna gain in dBi. This parameter is a double with a value between -127 and +128 (dBi) inc... |
| `antennaModel` | `string` | If an external antenna is used, the antenna model is optionally provided in this field. The strin... |
| `cpeCbsdIndication` | `boolean` | If present, this parameter specifies whether the CBSD is a CPE-CBSD or not. |
| `eirpCapability` | `integer` | This parameter is the maximum device EIRP in units of dBm/10MHz and is an integer with a value be... |
| `height` | `number` | Device antenna height in meters. When the `heightType` parameter value is "AGL", the antenna heig... |
| `heightType` | `string` | Specifies how the height is measured. |
| `horizontalAccuracy` | `number` | A positive number in meters to indicate accuracy of the device antenna horizontal location. This ... |
| `indoorDeployment` | `boolean` | Whether the device antenna is indoor or not. `true`: indoor. `false`: outdoor. |
| `latitude` | `number` | Latitude of the device antenna location in degrees relative to the WGS 84 datum. The allowed rang... |
| `longitude` | `number` | Longitude of the device antenna location in degrees relative to the WGS 84 datum. The allowed ran... |
| `verticalAccuracy` | `number` | A positive number in meters to indicate accuracy of the device antenna vertical location. This op... |

### `SasPortalListCustomersResponse`

Response for `ListCustomers`.

| Property | Type | Description |
|----------|------|-------------|
| `customers` | `array<SasPortalCustomer>` | The list of customers that match the request. |
| `nextPageToken` | `string` | A pagination token returned from a previous call to ListCustomers that indicates from where listi... |

### `SasPortalListDeploymentsResponse`

Response for ListDeployments.

| Property | Type | Description |
|----------|------|-------------|
| `deployments` | `array<SasPortalDeployment>` | The deployments that match the request. |
| `nextPageToken` | `string` | A pagination token returned from a previous call to ListDeployments that indicates from where lis... |

### `SasPortalListDevicesResponse`

Response for ListDevices.

| Property | Type | Description |
|----------|------|-------------|
| `devices` | `array<SasPortalDevice>` | The devices that match the request. |
| `nextPageToken` | `string` | A pagination token returned from a previous call to ListDevices that indicates from where listing... |

### `SasPortalListGcpProjectDeploymentsResponse`

Response for [ListGcpProjectDeployments].

| Property | Type | Description |
|----------|------|-------------|
| `deployments` | `array<SasPortalGcpProjectDeployment>` | Optional. Deployments associated with the GCP project |

### `SasPortalListLegacyOrganizationsResponse`

Response for [ListLegacyOrganizations]. [spectrum.sas.portal.v1alpha1.Provisioning.ListLegacyOrganizations].

| Property | Type | Description |
|----------|------|-------------|
| `organizations` | `array<SasPortalOrganization>` | Optional. Legacy SAS organizations. |

### `SasPortalListNodesResponse`

Response for ListNodes.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A pagination token returned from a previous call to ListNodes that indicates from where listing s... |
| `nodes` | `array<SasPortalNode>` | The nodes that match the request. |

### `SasPortalMigrateOrganizationMetadata`

Long-running operation metadata message returned by the MigrateOrganization.

| Property | Type | Description |
|----------|------|-------------|
| `operationState` | `string` | Output only. Current operation state |

### `SasPortalMigrateOrganizationRequest`

Request for [MigrateOrganization]. [spectrum.sas.portal.v1alpha1.Provisioning.MigrateOrganization]. GCP Project, Organization Info, and caller's GAIA ID should be retrieved from the RPC handler, and used to check authorization on SAS Portal organization and to create GCP Projects.

| Property | Type | Description |
|----------|------|-------------|
| `organizationId` | `string` | Required. Id of the SAS organization to be migrated. |

### `SasPortalMigrateOrganizationResponse`

Response for [MigrateOrganization]. [spectrum.sas.portal.v1alpha1.Provisioning.MigrateOrganization].

| Property | Type | Description |
|----------|------|-------------|
| `deploymentAssociation` | `array<SasPortalDeploymentAssociation>` | Optional. A list of deployment association that were created for the migration, or current associ... |

### `SasPortalMoveDeploymentRequest`

Request for MoveDeployment.

| Property | Type | Description |
|----------|------|-------------|
| `destination` | `string` | Required. The name of the new parent resource node or customer to reparent the deployment under. |

### `SasPortalMoveDeviceRequest`

Request for MoveDevice.

| Property | Type | Description |
|----------|------|-------------|
| `destination` | `string` | Required. The name of the new parent resource node or customer to reparent the device under. |

### `SasPortalMoveNodeRequest`

Request for MoveNode.

| Property | Type | Description |
|----------|------|-------------|
| `destination` | `string` | Required. The name of the new parent resource node or customer to reparent the node under. |

### `SasPortalNode`

The Node.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The node's display name. |
| `name` | `string` | Output only. Resource name. |
| `sasUserIds` | `array<string>` | User ids used by the devices belonging to this node. |

### `SasPortalNrqzValidation`

Information about National Radio Quiet Zone validation.

| Property | Type | Description |
|----------|------|-------------|
| `caseId` | `string` | Validation case ID. |
| `cpiId` | `string` | CPI who signed the validation. |
| `latitude` | `number` | Device latitude that's associated with the validation. |
| `longitude` | `number` | Device longitude that's associated with the validation. |
| `state` | `string` | State of the NRQZ validation info. |

### `SasPortalOperation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `SasPortalStatus` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `SasPortalOrganization`

Organization details.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Name of organization |
| `id` | `string` | Id of organization |

### `SasPortalPolicy`

Defines an access control policy to the resources.

| Property | Type | Description |
|----------|------|-------------|
| `assignments` | `array<SasPortalAssignment>` | List of assignments |
| `etag` | `string` | The etag is used for optimistic concurrency control as a way to help prevent simultaneous updates... |

### `SasPortalProvisionDeploymentRequest`

Request for [ProvisionDeployment]. [spectrum.sas.portal.v1alpha1.Provisioning.ProvisionDeployment]. GCP Project, Organization Info, and caller’s GAIA ID should be retrieved from the RPC handler, and used as inputs to create a new SAS organization (if not exists) and a new SAS deployment.

| Property | Type | Description |
|----------|------|-------------|
| `newDeploymentDisplayName` | `string` | Optional. If this field is set, and a new SAS Portal Deployment needs to be created, its display ... |
| `newOrganizationDisplayName` | `string` | Optional. If this field is set, and a new SAS Portal Organization needs to be created, its displa... |
| `organizationId` | `string` | Optional. If this field is set then a new deployment will be created under the organization speci... |

### `SasPortalProvisionDeploymentResponse`

Response for [ProvisionDeployment]. [spectrum.sas.portal.v1alpha1.Provisioning.ProvisionDeployment].

| Property | Type | Description |
|----------|------|-------------|
| `errorMessage` | `string` | Optional. Optional error message if the provisioning request is not successful. |

### `SasPortalSetPolicyRequest`

Request message for `SetPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `disableNotification` | `boolean` | Optional. Set the field as `true` to disable the onboarding notification. |
| `policy` | `SasPortalPolicy` | Required. The policy to be applied to the `resource`. |
| `resource` | `string` | Required. The resource for which the policy is being specified. This policy replaces any existing... |

### `SasPortalSetupSasAnalyticsMetadata`

Metadata returned by the long running operation for the SetupSasAnalytics rpc.

### `SasPortalSetupSasAnalyticsRequest`

Request for the SetupSasAnalytics rpc.

| Property | Type | Description |
|----------|------|-------------|
| `userId` | `string` | Optional. User id to setup analytics for, if not provided the user id associated with the project... |

### `SasPortalSetupSasAnalyticsResponse`

Response returned by the long running operation for the SetupSasAnalytics rpc.

### `SasPortalSignDeviceRequest`

Request for SignDevice.

| Property | Type | Description |
|----------|------|-------------|
| `device` | `SasPortalDevice` | Required. The device to sign. The device fields name, fcc_id and serial_number must be set. The u... |

### `SasPortalStatus`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `SasPortalTestPermissionsRequest`

Request message for `TestPermissions` method.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | The set of permissions to check for the `resource`. |
| `resource` | `string` | Required. The resource for which the permissions are being requested. |

### `SasPortalTestPermissionsResponse`

Response message for `TestPermissions` method.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | A set of permissions that the caller is allowed. |

### `SasPortalUpdateSignedDeviceRequest`

Request for UpdateSignedDevice.

| Property | Type | Description |
|----------|------|-------------|
| `encodedDevice` | `string` | Required. The JSON Web Token signed using a CPI private key. Payload must be the JSON encoding of... |
| `installerId` | `string` | Required. Unique installer ID (CPI ID) from the Certified Professional Installers database. |

### `SasPortalValidateInstallerRequest`

Request for ValidateInstaller.

| Property | Type | Description |
|----------|------|-------------|
| `encodedSecret` | `string` | Required. JSON Web Token signed using a CPI private key. Payload must include a "secret" claim wh... |
| `installerId` | `string` | Required. Unique installer id (CPI ID) from the Certified Professional Installers database. |
| `secret` | `string` | Required. Secret returned by the GenerateSecret. |

### `SasPortalValidateInstallerResponse`

Response for ValidateInstaller.

