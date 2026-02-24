# Service Consumer Management API - API Reference

**Version**: `v1` | **Methods**: 14 | **Schemas**: 112

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `serviceconsumermanagement.services.search` | GET | `v1/{+parent}:search` | Search tenancy units for a managed service. |
| `serviceconsumermanagement.services.tenancyUnits.deleteProject` | POST | `v1/{+name}:deleteProject` | Deletes the specified project resource identified by a tenant resource tag. The mothod removes a ... |
| `serviceconsumermanagement.services.tenancyUnits.undeleteProject` | POST | `v1/{+name}:undeleteProject` | Attempts to undelete a previously deleted tenant project. The project must be in a DELETED state.... |
| `serviceconsumermanagement.services.tenancyUnits.removeProject` | POST | `v1/{+name}:removeProject` | Removes the specified project resource identified by a tenant resource tag. The method removes th... |
| `serviceconsumermanagement.services.tenancyUnits.list` | GET | `v1/{+parent}/tenancyUnits` | Find the tenancy unit for a managed service and service consumer. This method shouldn't be used i... |
| `serviceconsumermanagement.services.tenancyUnits.create` | POST | `v1/{+parent}/tenancyUnits` | Creates a tenancy unit with no tenant resources. If tenancy unit already exists, it will be retur... |
| `serviceconsumermanagement.services.tenancyUnits.attachProject` | POST | `v1/{+name}:attachProject` | Attach an existing project to the tenancy unit as a new tenant resource. The project could either... |
| `serviceconsumermanagement.services.tenancyUnits.delete` | DELETE | `v1/{+name}` | Delete a tenancy unit. Before you delete the tenancy unit, there should be no tenant resources in... |
| `serviceconsumermanagement.services.tenancyUnits.addProject` | POST | `v1/{+parent}:addProject` | Add a new tenant project to the tenancy unit. There can be a maximum of 1024 tenant projects in a... |
| `serviceconsumermanagement.services.tenancyUnits.applyProjectConfig` | POST | `v1/{+name}:applyProjectConfig` | Apply a configuration to an existing tenant project. This project must exist in an active state a... |
| `serviceconsumermanagement.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `serviceconsumermanagement.operations.list` | GET | `v1/{+name}` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `serviceconsumermanagement.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `serviceconsumermanagement.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |

### `serviceconsumermanagement.services.search`

**GET** `v1/{+parent}:search`

Search tenancy units for a managed service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Service for which search is performed. services/{service} {service} the name of a service, for example 'ser... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results returned by this request. Currently, the default maximum is set to 256. If `p... |
| `pageToken` | `string` | query | No | Optional. The continuation token, which is used to page through large result sets. To get the next page of results, s... |
| `query` | `string` | query | No | Optional. Set a query `{expression}` for querying tenancy units. Your `{expression}` must be in the format: `field_na... |

**Response**: `SearchTenancyUnitsResponse`

```typescript
const res = await serviceconsumermanagement.services.search({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `serviceconsumermanagement.services.tenancyUnits.deleteProject`

**POST** `v1/{+name}:deleteProject`

Deletes the specified project resource identified by a tenant resource tag. The mothod removes a project lien with a 'TenantManager' origin if that was added. It will then attempt to delete the project. If that operation fails, this method also fails. After the project has been deleted, the tenant resource state is set to DELETED. To permanently remove resource metadata, call the `RemoveTenantProject` method. New resources with the same tag can't be added if there are existing resources in a DELETED state. Operation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the tenancy unit. Such as 'services/service.googleapis.com/projects/12345/tenancyUnits/abcd'. |

**Request body**: `DeleteTenantProjectRequest`

**Response**: `Operation`

```typescript
const res = await serviceconsumermanagement.tenancyUnits.deleteProject({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `serviceconsumermanagement.services.tenancyUnits.undeleteProject`

**POST** `v1/{+name}:undeleteProject`

Attempts to undelete a previously deleted tenant project. The project must be in a DELETED state. There are no guarantees that an undeleted project will be in a fully restored and functional state. Call the `ApplyTenantProjectConfig` method to update its configuration and then validate all managed service resources. Operation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the tenancy unit. Such as 'services/service.googleapis.com/projects/12345/tenancyUnits/abcd'. |

**Request body**: `UndeleteTenantProjectRequest`

**Response**: `Operation`

```typescript
const res = await serviceconsumermanagement.tenancyUnits.undeleteProject({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `serviceconsumermanagement.services.tenancyUnits.removeProject`

**POST** `v1/{+name}:removeProject`

Removes the specified project resource identified by a tenant resource tag. The method removes the project lien with 'TenantManager' origin if that was added. It then attempts to delete the project. If that operation fails, this method also fails. Calls to remove already removed or non-existent tenant project succeed. After the project has been deleted, or if was already in a DELETED state, resource metadata is permanently removed from the tenancy unit. Operation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the tenancy unit. Such as 'services/service.googleapis.com/projects/12345/tenancyUnits/abcd'. |

**Request body**: `RemoveTenantProjectRequest`

**Response**: `Operation`

```typescript
const res = await serviceconsumermanagement.tenancyUnits.removeProject({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `serviceconsumermanagement.services.tenancyUnits.list`

**GET** `v1/{+parent}/tenancyUnits`

Find the tenancy unit for a managed service and service consumer. This method shouldn't be used in a service producer's runtime path, for example to find the tenant project number when creating VMs. Service producers must persist the tenant project's information after the project is created.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Managed service and service consumer. Required. services/{service}/{collection id}/{resource id} {collectio... |
| `filter` | `string` | query | No | Optional. Filter expression over tenancy resources field. Optional. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results returned by this request. |
| `pageToken` | `string` | query | No | Optional. The continuation token, which is used to page through large result sets. To get the next page of results, s... |

**Response**: `ListTenancyUnitsResponse`

```typescript
const res = await serviceconsumermanagement.tenancyUnits.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `serviceconsumermanagement.services.tenancyUnits.create`

**POST** `v1/{+parent}/tenancyUnits`

Creates a tenancy unit with no tenant resources. If tenancy unit already exists, it will be returned, however, in this case, returned TenancyUnit does not have tenant_resources field set and ListTenancyUnits has to be used to get a complete TenancyUnit with all fields populated.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. services/{service}/{collection id}/{resource id} {collection id} is the cloud resource collection type repr... |

**Request body**: `CreateTenancyUnitRequest`

**Response**: `TenancyUnit`

```typescript
const res = await serviceconsumermanagement.tenancyUnits.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `serviceconsumermanagement.services.tenancyUnits.attachProject`

**POST** `v1/{+name}:attachProject`

Attach an existing project to the tenancy unit as a new tenant resource. The project could either be the tenant project reserved by calling `AddTenantProject` under a tenancy unit of a service producer's project of a managed service, or from a separate project. The caller is checked against a set of permissions as if calling `AddTenantProject` on the same service consumer. To trigger the attachment, the targeted tenant project must be in a folder. Make sure the ServiceConsumerManagement service account is the owner of that project. These two requirements are already met if the project is reserved by calling `AddTenantProject`. Operation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the tenancy unit that the project will be attached to. Such as 'services/service.googleapis.com/pro... |

**Request body**: `AttachTenantProjectRequest`

**Response**: `Operation`

```typescript
const res = await serviceconsumermanagement.tenancyUnits.attachProject({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `serviceconsumermanagement.services.tenancyUnits.delete`

**DELETE** `v1/{+name}`

Delete a tenancy unit. Before you delete the tenancy unit, there should be no tenant resources in it that aren't in a DELETED state. Operation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the tenancy unit to be deleted. |

**Response**: `Operation`

```typescript
const res = await serviceconsumermanagement.tenancyUnits.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `serviceconsumermanagement.services.tenancyUnits.addProject`

**POST** `v1/{+parent}:addProject`

Add a new tenant project to the tenancy unit. There can be a maximum of 1024 tenant projects in a tenancy unit. If there are previously failed `AddTenantProject` calls, you might need to call `RemoveTenantProject` first to resolve them before you can make another call to `AddTenantProject` with the same tag. Operation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the tenancy unit. Such as 'services/service.googleapis.com/projects/12345/tenancyUnits/abcd'. |

**Request body**: `AddTenantProjectRequest`

**Response**: `Operation`

```typescript
const res = await serviceconsumermanagement.tenancyUnits.addProject({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `serviceconsumermanagement.services.tenancyUnits.applyProjectConfig`

**POST** `v1/{+name}:applyProjectConfig`

Apply a configuration to an existing tenant project. This project must exist in an active state and have the original owner account. The caller must have permission to add a project to the given tenancy unit. The configuration is applied, but any existing settings on the project aren't modified. Specified policy bindings are applied. Existing bindings aren't modified. Specified services are activated. No service is deactivated. If specified, new billing configuration is applied. Omit a billing configuration to keep the existing one. A service account in the project is created if previously non existed. Specified labels will be appended to tenant project, note that the value of existing label key will be updated if the same label key is requested. The specified folder is ignored, as moving a tenant project to a different folder isn't supported. The operation fails if any of the steps fail, but no rollback of already applied configuration changes is attempted. Operation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the tenancy unit. Such as 'services/service.googleapis.com/projects/12345/tenancyUnits/abcd'. |

**Request body**: `ApplyTenantProjectConfigRequest`

**Response**: `Operation`

```typescript
const res = await serviceconsumermanagement.tenancyUnits.applyProjectConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `serviceconsumermanagement.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await serviceconsumermanagement.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `serviceconsumermanagement.operations.list`

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
const res = await serviceconsumermanagement.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `serviceconsumermanagement.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await serviceconsumermanagement.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `serviceconsumermanagement.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await serviceconsumermanagement.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AddTenantProjectRequest`

Request to add a newly created and configured tenant project to a tenancy unit.

| Property | Type | Description |
|----------|------|-------------|
| `projectConfig` | `TenantProjectConfig` | Configuration of the new tenant project to be added to tenancy unit resources. |
| `tag` | `string` | Required. Tag of the added project. Must be less than 128 characters. Required. |

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

### `ApplyTenantProjectConfigRequest`

Request to apply configuration to an existing tenant project.

| Property | Type | Description |
|----------|------|-------------|
| `projectConfig` | `TenantProjectConfig` | Configuration that should be applied to the existing tenant project. |
| `tag` | `string` | Required. Tag of the project. Must be less than 128 characters. Required. |

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

### `AttachTenantProjectRequest`

Request to attach an existing project to the tenancy unit as a new tenant resource.

| Property | Type | Description |
|----------|------|-------------|
| `externalResource` | `string` | When attaching an external project, this is in the format of `projects/{project_number}`. |
| `reservedResource` | `string` | When attaching a reserved project already in tenancy units, this is the tag of a tenant resource ... |
| `tag` | `string` | Required. Tag of the tenant resource after attachment. Must be less than 128 characters. Required. |

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

### `BillingConfig`

Describes the billing configuration for a new tenant project.

| Property | Type | Description |
|----------|------|-------------|
| `billingAccount` | `string` | Name of the billing account. For example `billingAccounts/012345-567890-ABCDEF`. |

### `BillingDestination`

Configuration of a specific billing destination (Currently only support bill against consumer project).

| Property | Type | Description |
|----------|------|-------------|
| `metrics` | `array<string>` | Names of the metrics to report to this billing destination. Each name must be defined in Service.... |
| `monitoredResource` | `string` | The monitored resource type. The type must be defined in Service.monitored_resources section. |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

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

### `CommonLanguageSettings`

Required information for every language.

| Property | Type | Description |
|----------|------|-------------|
| `destinations` | `array<string>` | The destination where API teams want this client library to be published. |
| `referenceDocsUri` | `string` | Link to automatically generated reference documentation. Example: https://cloud.google.com/nodejs... |
| `selectiveGapicGeneration` | `SelectiveGapicGeneration` | Configuration for which RPCs should be generated in the GAPIC client. |

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

### `CreateTenancyUnitRequest`

Request to create a tenancy unit for a service consumer of a managed service.

| Property | Type | Description |
|----------|------|-------------|
| `tenancyUnitId` | `string` | Optional. Optional service producer-provided identifier of the tenancy unit. Must be no longer th... |

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

### `DeleteTenantProjectRequest`

Request message to delete tenant project resource from the tenancy unit.

| Property | Type | Description |
|----------|------|-------------|
| `tag` | `string` | Required. Tag of the resource within the tenancy unit. |

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

### `GoSettings`

Settings for Go client libraries.

| Property | Type | Description |
|----------|------|-------------|
| `common` | `CommonLanguageSettings` | Some settings. |
| `renamedServices` | `object` | Map of service names to renamed services. Keys are the package relative service names and values ... |

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

### `ListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<Operation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `ListTenancyUnitsResponse`

Response for the list request.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Pagination token for large results. |
| `tenancyUnits` | `array<TenancyUnit>` | Tenancy units matching the request. |

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

### `PhpSettings`

Settings for Php client libraries.

| Property | Type | Description |
|----------|------|-------------|
| `common` | `CommonLanguageSettings` | Some settings. |
| `libraryPackage` | `string` | The package name to use in Php. Clobbers the php_namespace option set in the protobuf. This shoul... |

### `PolicyBinding`

Translates to IAM Policy bindings (without auditing at this level)

| Property | Type | Description |
|----------|------|-------------|
| `members` | `array<string>` | Uses the same format as in IAM policy. `member` must include both a prefix and ID. For example, `... |
| `role` | `string` | Role. (https://cloud.google.com/iam/docs/understanding-roles) For example, `roles/viewer`, `roles... |

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

### `RemoveTenantProjectRequest`

Request message to remove a tenant project resource from the tenancy unit.

| Property | Type | Description |
|----------|------|-------------|
| `tag` | `string` | Required. Tag of the resource within the tenancy unit. |

### `RubySettings`

Settings for Ruby client libraries.

| Property | Type | Description |
|----------|------|-------------|
| `common` | `CommonLanguageSettings` | Some settings. |

### `SearchTenancyUnitsResponse`

Response for the search query.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Pagination token for large results. |
| `tenancyUnits` | `array<TenancyUnit>` | Tenancy Units matching the request. |

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

### `ServiceAccountConfig`

Describes the service account configuration for the tenant project.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | ID of the IAM service account to be created in tenant project. The email format of the service ac... |
| `tenantProjectRoles` | `array<string>` | Roles for the associated service account for the tenant project. |

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

### `TenancyUnit`

Representation of a tenancy unit.

| Property | Type | Description |
|----------|------|-------------|
| `consumer` | `string` | Output only. @OutputOnly Cloud resource name of the consumer of this service. For example 'projec... |
| `createTime` | `string` | Output only. @OutputOnly The time this tenancy unit was created. |
| `name` | `string` | Globally unique identifier of this tenancy unit "services/{service}/{collection id}/{resource id}... |
| `service` | `string` | Output only. Google Cloud API name of the managed service owning this tenancy unit. For example '... |
| `tenantResources` | `array<TenantResource>` | Resources constituting the tenancy unit. There can be at most 512 tenant resources in a tenancy u... |

### `TenantProjectConfig`

This structure defines a tenant project to be added to the specified tenancy unit and its initial configuration and properties. A project lien is created for the tenant project to prevent the tenant project from being deleted accidentally. The lien is deleted as part of tenant project removal.

| Property | Type | Description |
|----------|------|-------------|
| `billingConfig` | `BillingConfig` | Billing account properties. The billing account must be specified. |
| `folder` | `string` | Folder where project in this tenancy unit must be located This folder must have been previously c... |
| `labels` | `object` | Labels that are applied to this project. |
| `serviceAccountConfig` | `ServiceAccountConfig` | Configuration for the IAM service account on the tenant project. |
| `services` | `array<string>` | Google Cloud API names of services that are activated on this project during provisioning. If any... |
| `tenantProjectPolicy` | `TenantProjectPolicy` | Describes ownership and policies for the new tenant project. |

### `TenantProjectPolicy`

Describes policy settings that can be applied to a newly created tenant project.

| Property | Type | Description |
|----------|------|-------------|
| `policyBindings` | `array<PolicyBinding>` | Policy bindings to be applied to the tenant project, in addition to the 'roles/owner' role grante... |

### `TenantResource`

Resource constituting the TenancyUnit.

| Property | Type | Description |
|----------|------|-------------|
| `migratedTenantProject` | `string` | Output only. The newly created regional resource name of the tenant project that has been migrate... |
| `resource` | `string` | Output only. @OutputOnly Identifier of the tenant resource. For cloud projects, it is in the form... |
| `status` | `string` | Status of tenant resource. |
| `tag` | `string` | Unique per single tenancy unit. |

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

### `UndeleteTenantProjectRequest`

Request message to undelete tenant project resource previously deleted from the tenancy unit.

| Property | Type | Description |
|----------|------|-------------|
| `tag` | `string` | Required. Tag of the resource within the tenancy unit. |

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

### `V1AddVisibilityLabelsResponse`

Response message for the `AddVisibilityLabels` method. This response message is assigned to the `response` field of the returned Operation when that operation is done.

| Property | Type | Description |
|----------|------|-------------|
| `labels` | `array<string>` | The updated set of visibility labels for this consumer on this service. |

### `V1Beta1BatchCreateProducerOverridesResponse`

Response message for BatchCreateProducerOverrides

| Property | Type | Description |
|----------|------|-------------|
| `overrides` | `array<V1Beta1QuotaOverride>` | The overrides that were created. |

### `V1Beta1DisableConsumerResponse`

Response message for the `DisableConsumer` method. This response message is assigned to the `response` field of the returned Operation when that operation is done.

### `V1Beta1EnableConsumerResponse`

Response message for the `EnableConsumer` method. This response message is assigned to the `response` field of the returned Operation when that operation is done.

### `V1Beta1GenerateServiceIdentityResponse`

Response message for the `GenerateServiceIdentity` method. This response message is assigned to the `response` field of the returned Operation when that operation is done.

| Property | Type | Description |
|----------|------|-------------|
| `identity` | `V1Beta1ServiceIdentity` | ServiceIdentity that was created or retrieved. |

### `V1Beta1ImportProducerOverridesResponse`

Response message for ImportProducerOverrides

| Property | Type | Description |
|----------|------|-------------|
| `overrides` | `array<V1Beta1QuotaOverride>` | The overrides that were created from the imported data. |

### `V1Beta1ImportProducerQuotaPoliciesResponse`

Response message for ImportProducerQuotaPolicies

| Property | Type | Description |
|----------|------|-------------|
| `policies` | `array<V1Beta1ProducerQuotaPolicy>` | The policies that were created from the imported data. |

### `V1Beta1ProducerQuotaPolicy`

Quota policy created by service producer.

| Property | Type | Description |
|----------|------|-------------|
| `container` | `string` | The cloud resource container at which the quota policy is created. The format is {container_type}... |
| `dimensions` | `object` | If this map is nonempty, then this policy applies only to specific values for dimensions defined ... |
| `metric` | `string` | The name of the metric to which this policy applies. An example name would be: `compute.googleapi... |
| `name` | `string` | The resource name of the producer policy. An example name would be: `services/compute.googleapis.... |
| `policyValue` | `string` | The quota policy value. Can be any nonnegative integer, or -1 (unlimited quota). |
| `unit` | `string` | The limit unit of the limit to which this policy applies. An example unit would be: `1/{project}/... |

### `V1Beta1QuotaOverride`

A quota override

| Property | Type | Description |
|----------|------|-------------|
| `adminOverrideAncestor` | `string` | The resource name of the ancestor that requested the override. For example: "organizations/12345"... |
| `dimensions` | `object` | If this map is nonempty, then this override applies only to specific values for dimensions define... |
| `metric` | `string` | The name of the metric to which this override applies. An example name would be: `compute.googlea... |
| `name` | `string` | The resource name of the producer override. An example name would be: `services/compute.googleapi... |
| `overrideValue` | `string` | The overriding quota limit value. Can be any nonnegative integer, or -1 (unlimited quota). |
| `unit` | `string` | The limit unit of the limit to which this override applies. An example unit would be: `1/{project... |

### `V1Beta1RefreshConsumerResponse`

Response message for the `RefreshConsumer` method. This response message is assigned to the `response` field of the returned Operation when that operation is done.

### `V1Beta1ServiceIdentity`

A service identity in the Identity and Access Management API.

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | The email address of the service identity. |
| `name` | `string` | P4 service identity resource name. An example name would be: `services/serviceconsumermanagement.... |
| `projectRole` | `string` | The project-level IAM role defined in the service agent's grant configuration. This is the standa... |
| `tag` | `string` | The P4 service identity configuration tag. This must be defined in activation_grants. If not spec... |
| `uniqueId` | `string` | The unique and stable id of the service identity. |

### `V1DefaultIdentity`

A default identity in the Identity and Access Management API.

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | The email address of the default identity. Calling GenerateDefaultIdentity with a deleted or purg... |
| `name` | `string` | Default identity resource name. An example name would be: `services/serviceconsumermanagement.goo... |
| `tag` | `string` | The Default Identity tag. If specified when creating the account, the tag must be present in acti... |
| `uniqueId` | `string` | The unique and stable id of the default identity. |

### `V1DisableConsumerResponse`

Response message for the `DisableConsumer` method. This response message is assigned to the `response` field of the returned Operation when that operation is done.

### `V1EnableConsumerResponse`

Response message for the `EnableConsumer` method. This response message is assigned to the `response` field of the returned Operation when that operation is done.

### `V1GenerateDefaultIdentityResponse`

Response message for the `GenerateDefaultIdentity` method. This response message is assigned to the `response` field of the returned Operation when that operation is done.

| Property | Type | Description |
|----------|------|-------------|
| `attachStatus` | `string` | Status of the role attachment. Under development (go/si-attach-role), currently always return ATT... |
| `identity` | `V1DefaultIdentity` | DefaultIdentity that was created or retrieved. |
| `role` | `string` | Role attached to consumer project. Empty if not attached in this request. (Under development, cur... |

### `V1GenerateServiceAccountResponse`

Response message for the `GenerateServiceAccount` method. This response message is assigned to the `response` field of the returned Operation when that operation is done.

| Property | Type | Description |
|----------|------|-------------|
| `account` | `V1ServiceAccount` | ServiceAccount that was created or retrieved. |

### `V1RefreshConsumerResponse`

Response message for the `RefreshConsumer` method. This response message is assigned to the `response` field of the returned Operation when that operation is done.

### `V1RemoveVisibilityLabelsResponse`

Response message for the `RemoveVisibilityLabels` method. This response message is assigned to the `response` field of the returned Operation when that operation is done.

| Property | Type | Description |
|----------|------|-------------|
| `labels` | `array<string>` | The updated set of visibility labels for this consumer on this service. |

### `V1ServiceAccount`

A service account in the Identity and Access Management API.

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | The email address of the service account. |
| `iamAccountName` | `string` | Deprecated. See b/136209818. |
| `name` | `string` | P4 SA resource name. An example name would be: `services/serviceconsumermanagement.googleapis.com... |
| `tag` | `string` | The P4 SA configuration tag. This must be defined in activation_grants. If not specified when cre... |
| `uniqueId` | `string` | The unique and stable id of the service account. |

