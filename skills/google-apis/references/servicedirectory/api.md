# Service Directory API - API Reference

**Version**: `v1` | **Methods**: 24 | **Schemas**: 19

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `servicedirectory.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `servicedirectory.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `servicedirectory.projects.locations.namespaces.create` | POST | `v1/{+parent}/namespaces` | Creates a namespace, and returns the new namespace. |
| `servicedirectory.projects.locations.namespaces.getIamPolicy` | POST | `v1/{+resource}:getIamPolicy` | Gets the IAM Policy for a resource (namespace or service only). |
| `servicedirectory.projects.locations.namespaces.patch` | PATCH | `v1/{+name}` | Updates a namespace. |
| `servicedirectory.projects.locations.namespaces.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Tests IAM permissions for a resource (namespace or service only). |
| `servicedirectory.projects.locations.namespaces.get` | GET | `v1/{+name}` | Gets a namespace. |
| `servicedirectory.projects.locations.namespaces.delete` | DELETE | `v1/{+name}` | Deletes a namespace. This also deletes all services and endpoints in the namespace. |
| `servicedirectory.projects.locations.namespaces.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the IAM Policy for a resource (namespace or service only). |
| `servicedirectory.projects.locations.namespaces.list` | GET | `v1/{+parent}/namespaces` | Lists all namespaces. |
| `servicedirectory.projects.locations.namespaces.services.list` | GET | `v1/{+parent}/services` | Lists all services belonging to a namespace. |
| `servicedirectory.projects.locations.namespaces.services.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the IAM Policy for a resource (namespace or service only). |
| `servicedirectory.projects.locations.namespaces.services.get` | GET | `v1/{+name}` | Gets a service. |
| `servicedirectory.projects.locations.namespaces.services.delete` | DELETE | `v1/{+name}` | Deletes a service. This also deletes all endpoints associated with the service. |
| `servicedirectory.projects.locations.namespaces.services.patch` | PATCH | `v1/{+name}` | Updates a service. |
| `servicedirectory.projects.locations.namespaces.services.create` | POST | `v1/{+parent}/services` | Creates a service, and returns the new service. |
| `servicedirectory.projects.locations.namespaces.services.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Tests IAM permissions for a resource (namespace or service only). |
| `servicedirectory.projects.locations.namespaces.services.resolve` | POST | `v1/{+name}:resolve` | Returns a service and its associated endpoints. Resolving a service is not considered an active d... |
| `servicedirectory.projects.locations.namespaces.services.getIamPolicy` | POST | `v1/{+resource}:getIamPolicy` | Gets the IAM Policy for a resource (namespace or service only). |
| `servicedirectory.projects.locations.namespaces.services.endpoints.list` | GET | `v1/{+parent}/endpoints` | Lists all endpoints. |
| `servicedirectory.projects.locations.namespaces.services.endpoints.patch` | PATCH | `v1/{+name}` | Updates an endpoint. |
| `servicedirectory.projects.locations.namespaces.services.endpoints.create` | POST | `v1/{+parent}/endpoints` | Creates an endpoint, and returns the new endpoint. |
| `servicedirectory.projects.locations.namespaces.services.endpoints.get` | GET | `v1/{+name}` | Gets an endpoint. |
| `servicedirectory.projects.locations.namespaces.services.endpoints.delete` | DELETE | `v1/{+name}` | Deletes an endpoint. |

### `servicedirectory.projects.locations.list`

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
const res = await servicedirectory.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `servicedirectory.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await servicedirectory.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `servicedirectory.projects.locations.namespaces.create`

**POST** `v1/{+parent}/namespaces`

Creates a namespace, and returns the new namespace.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the project and location the namespace will be created in. |
| `namespaceId` | `string` | query | No | Required. The Resource ID must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 ... |

**Request body**: `Namespace`

**Response**: `Namespace`

```typescript
const res = await servicedirectory.namespaces.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `servicedirectory.projects.locations.namespaces.getIamPolicy`

**POST** `v1/{+resource}:getIamPolicy`

Gets the IAM Policy for a resource (namespace or service only).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await servicedirectory.namespaces.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `servicedirectory.projects.locations.namespaces.patch`

**PATCH** `v1/{+name}`

Updates a namespace.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The resource name for the namespace in the format `projects/*/locations/*/namespaces/*`. |
| `updateMask` | `string` | query | No | Required. List of fields to be updated in this request. |

**Request body**: `Namespace`

**Response**: `Namespace`

```typescript
const res = await servicedirectory.namespaces.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `servicedirectory.projects.locations.namespaces.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Tests IAM permissions for a resource (namespace or service only).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await servicedirectory.namespaces.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `servicedirectory.projects.locations.namespaces.get`

**GET** `v1/{+name}`

Gets a namespace.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the namespace to retrieve. |

**Response**: `Namespace`

```typescript
const res = await servicedirectory.namespaces.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `servicedirectory.projects.locations.namespaces.delete`

**DELETE** `v1/{+name}`

Deletes a namespace. This also deletes all services and endpoints in the namespace.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the namespace to delete. |

**Response**: `Empty`

```typescript
const res = await servicedirectory.namespaces.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `servicedirectory.projects.locations.namespaces.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the IAM Policy for a resource (namespace or service only).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await servicedirectory.namespaces.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `servicedirectory.projects.locations.namespaces.list`

**GET** `v1/{+parent}/namespaces`

Lists all namespaces.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the project and location whose namespaces you'd like to list. |
| `filter` | `string` | query | No | Optional. The filter to list results by. General `filter` string syntax: ` ()` * `` can be `name` or `labels.` for ma... |
| `orderBy` | `string` | query | No | Optional. The order to list results by. General `order_by` string syntax: ` () (,)` * `` allows value: `name` * `` as... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of items to return. |
| `pageToken` | `string` | query | No | Optional. The next_page_token value returned from a previous List request, if any. |

**Response**: `ListNamespacesResponse`

```typescript
const res = await servicedirectory.namespaces.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `servicedirectory.projects.locations.namespaces.services.list`

**GET** `v1/{+parent}/services`

Lists all services belonging to a namespace.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the namespace whose services you'd like to list. |
| `filter` | `string` | query | No | Optional. The filter to list results by. General `filter` string syntax: ` ()` * `` can be `name` or `annotations.` f... |
| `orderBy` | `string` | query | No | Optional. The order to list results by. General `order_by` string syntax: ` () (,)` * `` allows value: `name` * `` as... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of items to return. |
| `pageToken` | `string` | query | No | Optional. The next_page_token value returned from a previous List request, if any. |

**Response**: `ListServicesResponse`

```typescript
const res = await servicedirectory.services.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `servicedirectory.projects.locations.namespaces.services.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the IAM Policy for a resource (namespace or service only).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await servicedirectory.services.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `servicedirectory.projects.locations.namespaces.services.get`

**GET** `v1/{+name}`

Gets a service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the service to get. |

**Response**: `Service`

```typescript
const res = await servicedirectory.services.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `servicedirectory.projects.locations.namespaces.services.delete`

**DELETE** `v1/{+name}`

Deletes a service. This also deletes all endpoints associated with the service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the service to delete. |

**Response**: `Empty`

```typescript
const res = await servicedirectory.services.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `servicedirectory.projects.locations.namespaces.services.patch`

**PATCH** `v1/{+name}`

Updates a service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The resource name for the service in the format `projects/*/locations/*/namespaces/*/services/*`. |
| `updateMask` | `string` | query | No | Required. List of fields to be updated in this request. |

**Request body**: `Service`

**Response**: `Service`

```typescript
const res = await servicedirectory.services.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `servicedirectory.projects.locations.namespaces.services.create`

**POST** `v1/{+parent}/services`

Creates a service, and returns the new service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the namespace this service will belong to. |
| `serviceId` | `string` | query | No | Required. The Resource ID must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 ... |

**Request body**: `Service`

**Response**: `Service`

```typescript
const res = await servicedirectory.services.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `servicedirectory.projects.locations.namespaces.services.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Tests IAM permissions for a resource (namespace or service only).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await servicedirectory.services.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `servicedirectory.projects.locations.namespaces.services.resolve`

**POST** `v1/{+name}:resolve`

Returns a service and its associated endpoints. Resolving a service is not considered an active developer method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the service to resolve. |

**Request body**: `ResolveServiceRequest`

**Response**: `ResolveServiceResponse`

```typescript
const res = await servicedirectory.services.resolve({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `servicedirectory.projects.locations.namespaces.services.getIamPolicy`

**POST** `v1/{+resource}:getIamPolicy`

Gets the IAM Policy for a resource (namespace or service only).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await servicedirectory.services.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `servicedirectory.projects.locations.namespaces.services.endpoints.list`

**GET** `v1/{+parent}/endpoints`

Lists all endpoints.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the service whose endpoints you'd like to list. |
| `filter` | `string` | query | No | Optional. The filter to list results by. General `filter` string syntax: ` ()` * `` can be `name`, `address`, `port`,... |
| `orderBy` | `string` | query | No | Optional. The order to list results by. General `order_by` string syntax: ` () (,)` * `` allows values: `name`, `addr... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of items to return. |
| `pageToken` | `string` | query | No | Optional. The next_page_token value returned from a previous List request, if any. |

**Response**: `ListEndpointsResponse`

```typescript
const res = await servicedirectory.endpoints.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `servicedirectory.projects.locations.namespaces.services.endpoints.patch`

**PATCH** `v1/{+name}`

Updates an endpoint.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The resource name for the endpoint in the format `projects/*/locations/*/namespaces/*/services/*/endpoints... |
| `updateMask` | `string` | query | No | Required. List of fields to be updated in this request. |

**Request body**: `Endpoint`

**Response**: `Endpoint`

```typescript
const res = await servicedirectory.endpoints.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `servicedirectory.projects.locations.namespaces.services.endpoints.create`

**POST** `v1/{+parent}/endpoints`

Creates an endpoint, and returns the new endpoint.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the service that this endpoint provides. |
| `endpointId` | `string` | query | No | Required. The Resource ID must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 ... |

**Request body**: `Endpoint`

**Response**: `Endpoint`

```typescript
const res = await servicedirectory.endpoints.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `servicedirectory.projects.locations.namespaces.services.endpoints.get`

**GET** `v1/{+name}`

Gets an endpoint.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the endpoint to get. |

**Response**: `Endpoint`

```typescript
const res = await servicedirectory.endpoints.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `servicedirectory.projects.locations.namespaces.services.endpoints.delete`

**DELETE** `v1/{+name}`

Deletes an endpoint.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the endpoint to delete. |

**Response**: `Empty`

```typescript
const res = await servicedirectory.endpoints.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `Endpoint`

An individual endpoint that provides a service. The service must already exist to create an endpoint.

| Property | Type | Description |
|----------|------|-------------|
| `address` | `string` | Optional. An IPv4 or IPv6 address. Service Directory rejects bad addresses like: * `8.8.8` * `8.8... |
| `annotations` | `object` | Optional. Annotations for the endpoint. This data can be consumed by service clients. Restriction... |
| `name` | `string` | Immutable. The resource name for the endpoint in the format `projects/*/locations/*/namespaces/*/... |
| `network` | `string` | Immutable. The Google Compute Engine network (VPC) of the endpoint in the format `projects//locat... |
| `port` | `integer` | Optional. Service Directory rejects values outside of `[0, 65535]`. |
| `uid` | `string` | Output only. The globally unique identifier of the endpoint in the UUID4 format. |

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `GetIamPolicyRequest`

Request message for `GetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `options` | `GetPolicyOptions` | OPTIONAL: A `GetPolicyOptions` object for specifying options to `GetIamPolicy`. |

### `GetPolicyOptions`

Encapsulates settings provided to GetIamPolicy.

| Property | Type | Description |
|----------|------|-------------|
| `requestedPolicyVersion` | `integer` | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, ... |

### `ListEndpointsResponse`

The response message for RegistrationService.ListEndpoints.

| Property | Type | Description |
|----------|------|-------------|
| `endpoints` | `array<Endpoint>` | The list of endpoints. |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |

### `ListLocationsResponse`

The response message for Locations.ListLocations.

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<Location>` | A list of locations that matches the specified filter in the request. |
| `nextPageToken` | `string` | The standard List next-page token. |

### `ListNamespacesResponse`

The response message for RegistrationService.ListNamespaces.

| Property | Type | Description |
|----------|------|-------------|
| `namespaces` | `array<Namespace>` | The list of namespaces. |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |

### `ListServicesResponse`

The response message for RegistrationService.ListServices.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |
| `services` | `array<Service>` | The list of services. |

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

### `Namespace`

A container for services. Namespaces allow administrators to group services together and define permissions for a collection of services.

| Property | Type | Description |
|----------|------|-------------|
| `labels` | `object` | Optional. Resource labels associated with this namespace. No more than 64 user labels can be asso... |
| `name` | `string` | Immutable. The resource name for the namespace in the format `projects/*/locations/*/namespaces/*`. |
| `uid` | `string` | Output only. The globally unique identifier of the namespace in the UUID4 format. |

### `Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `bindings` | `array<Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `ResolveServiceRequest`

The request message for LookupService.ResolveService. Looks up a service by its name, returns the service and its endpoints.

| Property | Type | Description |
|----------|------|-------------|
| `endpointFilter` | `string` | Optional. The filter applied to the endpoints of the resolved service. General `filter` string sy... |
| `maxEndpoints` | `integer` | Optional. The maximum number of endpoints to return. Defaults to 25. Maximum is 100. If a value l... |

### `ResolveServiceResponse`

The response message for LookupService.ResolveService.

| Property | Type | Description |
|----------|------|-------------|
| `service` | `Service` |  |

### `Service`

An individual service. A service contains a name and optional metadata. A service must exist before endpoints can be added to it.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Optional. Annotations for the service. This data can be consumed by service clients. Restrictions... |
| `endpoints` | `array<Endpoint>` | Output only. Endpoints associated with this service. Returned on LookupService.ResolveService. Co... |
| `name` | `string` | Immutable. The resource name for the service in the format `projects/*/locations/*/namespaces/*/s... |
| `uid` | `string` | Output only. The globally unique identifier of the service in the UUID4 format. |

### `SetIamPolicyRequest`

Request message for `SetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `Policy` | REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited ... |

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

