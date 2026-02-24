# Application Integration API - API Reference

**Version**: `v1` | **Methods**: 129 | **Schemas**: 308

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `integrations.callback.generateToken` | GET | `v1/callback:generateToken` | Receives the auth code and auth config id to combine that with the client id and secret to retrie... |
| `integrations.projects.getClientmetadata` | GET | `v1/{+parent}/clientmetadata` | Gets the metadata info for the requested client |
| `integrations.projects.locations.getClients` | GET | `v1/{+parent}/clients` | Gets the client configuration for the given project and location resource name |
| `integrations.projects.locations.generateOpenApiSpec` | POST | `v1/{+name}:generateOpenApiSpec` | Generate OpenAPI spec for the requested integrations and api triggers |
| `integrations.projects.locations.connections.list` | GET | `v1/{+parent}/connections` | Lists Connections in a given project and location. |
| `integrations.projects.locations.connections.getConnectionSchemaMetadata` | GET | `v1/{+name}` | Lists the available entities and actions associated with a Connection. |
| `integrations.projects.locations.connections.runtimeEntitySchemas.list` | GET | `v1/{+parent}/runtimeEntitySchemas` | Lists the JSON schemas for the properties of runtime entities, filtered by entity name. |
| `integrations.projects.locations.connections.runtimeActionSchemas.list` | GET | `v1/{+parent}/runtimeActionSchemas` | Lists the JSON schemas for the inputs and outputs of actions, filtered by action name. |
| `integrations.projects.locations.certificates.delete` | DELETE | `v1/{+name}` | Delete a certificate |
| `integrations.projects.locations.certificates.create` | POST | `v1/{+parent}/certificates` | Creates a new certificate. The certificate will be registered to the trawler service and will be ... |
| `integrations.projects.locations.certificates.get` | GET | `v1/{+name}` | Get a certificates in the specified project. |
| `integrations.projects.locations.certificates.patch` | PATCH | `v1/{+name}` | Updates the certificate by id. If new certificate file is updated, it will register with the traw... |
| `integrations.projects.locations.certificates.list` | GET | `v1/{+parent}/certificates` | List all the certificates that match the filter. Restrict to certificate of current client only. |
| `integrations.projects.locations.integrations.test` | POST | `v1/{+name}:test` | Execute the integration in draft state |
| `integrations.projects.locations.integrations.executeEvent` | POST | `v1/{+name}:executeEvent` | Executes an integration on receiving events from Integration Connector triggers, Eventarc or CPS ... |
| `integrations.projects.locations.integrations.delete` | DELETE | `v1/{+name}` | Delete the selected integration and all versions inside |
| `integrations.projects.locations.integrations.schedule` | POST | `v1/{+name}:schedule` | Schedules an integration for execution by passing the trigger id and the scheduled time in the re... |
| `integrations.projects.locations.integrations.list` | GET | `v1/{+parent}/integrations` | Returns the list of all integrations in the specified project. |
| `integrations.projects.locations.integrations.search` | GET | `v1/{+parent}/integrations:search` | Searches and returns the list of integrations in the specified project. |
| `integrations.projects.locations.integrations.execute` | POST | `v1/{+name}:execute` | Executes integrations synchronously by passing the trigger id in the request body. The request is... |
| `integrations.projects.locations.integrations.versions.test` | POST | `v1/{+name}:test` | Execute the integration in draft state |
| `integrations.projects.locations.integrations.versions.create` | POST | `v1/{+parent}/versions` | Create a integration with a draft version in the specified project. |
| `integrations.projects.locations.integrations.versions.upload` | POST | `v1/{+parent}/versions:upload` | Uploads an integration. The content can be a previously downloaded integration. Performs the same... |
| `integrations.projects.locations.integrations.versions.list` | GET | `v1/{+parent}/versions` | Returns the list of all integration versions in the specified project. |
| `integrations.projects.locations.integrations.versions.unpublish` | POST | `v1/{+name}:unpublish` | Sets the status of the ACTIVE integration to SNAPSHOT with a new tag "PREVIOUSLY_PUBLISHED" after... |
| `integrations.projects.locations.integrations.versions.download` | GET | `v1/{+name}:download` | Downloads an integration. Retrieves the `IntegrationVersion` for a given `integration_id` and ret... |
| `integrations.projects.locations.integrations.versions.delete` | DELETE | `v1/{+name}` | Soft-deletes the integration. Changes the status of the integration to ARCHIVED. If the integrati... |
| `integrations.projects.locations.integrations.versions.get` | GET | `v1/{+name}` | Get a integration in the specified project. |
| `integrations.projects.locations.integrations.versions.publish` | POST | `v1/{+name}:publish` | This RPC throws an exception if the integration is in ARCHIVED or ACTIVE state. This RPC throws a... |
| `integrations.projects.locations.integrations.versions.patch` | PATCH | `v1/{+name}` | Update a integration with a draft version in the specified project. |
| `integrations.projects.locations.integrations.versions.downloadJsonPackage` | GET | `v1/{+name}:downloadJsonPackage` | Downloads an Integration version package like IntegrationVersion,Integration Config etc. Retrieve... |
| `integrations.projects.locations.integrations.versions.testCases.executeTest` | POST | `v1/{+testCaseName}:executeTest` | Executes functional test |
| `integrations.projects.locations.integrations.versions.testCases.execute` | POST | `v1/{+parent}/testCases:execute` | Executes all test cases in an integration version. |
| `integrations.projects.locations.integrations.versions.testCases.get` | GET | `v1/{+name}` | Get a test case |
| `integrations.projects.locations.integrations.versions.testCases.download` | GET | `v1/{+name}:download` | Downloads a test case. Retrieves the `TestCase` for a given `test_case_id` and returns the respon... |
| `integrations.projects.locations.integrations.versions.testCases.takeoverEditLock` | POST | `v1/{+name}:takeoverEditLock` | Clear the lock fields and assign them to current user |
| `integrations.projects.locations.integrations.versions.testCases.upload` | POST | `v1/{+parent}/testCases:upload` | Uploads a test case. The content can be a previously downloaded test case. Performs the same func... |
| `integrations.projects.locations.integrations.versions.testCases.list` | GET | `v1/{+parent}/testCases` | Lists all the test cases that satisfy the filters. |
| `integrations.projects.locations.integrations.versions.testCases.create` | POST | `v1/{+parent}/testCases` | Creates a new test case |
| `integrations.projects.locations.integrations.versions.testCases.patch` | PATCH | `v1/{+name}` | Updates a test case |
| `integrations.projects.locations.integrations.versions.testCases.delete` | DELETE | `v1/{+name}` | Deletes a test case |
| `integrations.projects.locations.integrations.executions.cancel` | POST | `v1/{+name}:cancel` | Cancellation of an execution and associated sub-executions. This will not cancel an IN_PROCESS or... |
| `integrations.projects.locations.integrations.executions.get` | GET | `v1/{+name}` | Get an execution in the specified project. |
| `integrations.projects.locations.integrations.executions.replay` | POST | `v1/{+name}:replay` | Re-execute an existing execution, with same request parameters and execution strategy. |
| `integrations.projects.locations.integrations.executions.download` | GET | `v1/{+name}:download` | Download the execution. |
| `integrations.projects.locations.integrations.executions.list` | GET | `v1/{+parent}/executions` | Lists the results of all the integration executions. The response includes the same information a... |
| `integrations.projects.locations.integrations.executions.suspensions.resolve` | POST | `v1/{+name}:resolve` | * Resolves (lifts/rejects) any number of suspensions. If the integration is already running, only... |
| `integrations.projects.locations.integrations.executions.suspensions.list` | GET | `v1/{+parent}/suspensions` | * Lists suspensions associated with a specific execution. Only those with permissions to resolve ... |
| `integrations.projects.locations.integrations.executions.suspensions.lift` | POST | `v1/{+name}:lift` | * Lifts suspension for the Suspension task. Fetch corresponding suspension with provided suspensi... |
| `integrations.projects.locations.products.cloudFunctions.create` | POST | `v1/{+parent}/cloudFunctions` | Creates a cloud function project. |
| `integrations.projects.locations.products.sfdcInstances.get` | GET | `v1/{+name}` | Gets an sfdc instance. If the instance doesn't exist, Code.NOT_FOUND exception will be thrown. |
| `integrations.projects.locations.products.sfdcInstances.delete` | DELETE | `v1/{+name}` | Deletes an sfdc instance. |
| `integrations.projects.locations.products.sfdcInstances.create` | POST | `v1/{+parent}/sfdcInstances` | Creates an sfdc instance record. Store the sfdc instance in Spanner. Returns the sfdc instance. |
| `integrations.projects.locations.products.sfdcInstances.patch` | PATCH | `v1/{+name}` | Updates an sfdc instance. Updates the sfdc instance in spanner. Returns the sfdc instance. |
| `integrations.projects.locations.products.sfdcInstances.list` | GET | `v1/{+parent}/sfdcInstances` | Lists all sfdc instances that match the filter. Restrict to sfdc instances belonging to the curre... |
| `integrations.projects.locations.products.sfdcInstances.sfdcChannels.get` | GET | `v1/{+name}` | Gets an sfdc channel. If the channel doesn't exist, Code.NOT_FOUND exception will be thrown. |
| `integrations.projects.locations.products.sfdcInstances.sfdcChannels.create` | POST | `v1/{+parent}/sfdcChannels` | Creates an sfdc channel record. Store the sfdc channel in Spanner. Returns the sfdc channel. |
| `integrations.projects.locations.products.sfdcInstances.sfdcChannels.patch` | PATCH | `v1/{+name}` | Updates an sfdc channel. Updates the sfdc channel in spanner. Returns the sfdc channel. |
| `integrations.projects.locations.products.sfdcInstances.sfdcChannels.delete` | DELETE | `v1/{+name}` | Deletes an sfdc channel. |
| `integrations.projects.locations.products.sfdcInstances.sfdcChannels.list` | GET | `v1/{+parent}/sfdcChannels` | Lists all sfdc channels that match the filter. Restrict to sfdc channels belonging to the current... |
| `integrations.projects.locations.products.certificates.get` | GET | `v1/{+name}` | Get a certificates in the specified project. |
| `integrations.projects.locations.products.certificates.delete` | DELETE | `v1/{+name}` | Delete a certificate |
| `integrations.projects.locations.products.certificates.patch` | PATCH | `v1/{+name}` | Updates the certificate by id. If new certificate file is updated, it will register with the traw... |
| `integrations.projects.locations.products.certificates.create` | POST | `v1/{+parent}/certificates` | Creates a new certificate. The certificate will be registered to the trawler service and will be ... |
| `integrations.projects.locations.products.certificates.list` | GET | `v1/{+parent}/certificates` | List all the certificates that match the filter. Restrict to certificate of current client only. |
| `integrations.projects.locations.products.integrations.schedule` | POST | `v1/{+name}:schedule` | Schedules an integration for execution by passing the trigger id and the scheduled time in the re... |
| `integrations.projects.locations.products.integrations.execute` | POST | `v1/{+name}:execute` | Executes integrations synchronously by passing the trigger id in the request body. The request is... |
| `integrations.projects.locations.products.integrations.test` | POST | `v1/{+name}:test` | Execute the integration in draft state |
| `integrations.projects.locations.products.integrations.list` | GET | `v1/{+parent}/integrations` | Returns the list of all integrations in the specified project. |
| `integrations.projects.locations.products.integrations.executions.get` | GET | `v1/{+name}` | Get an execution in the specified project. |
| `integrations.projects.locations.products.integrations.executions.download` | GET | `v1/{+name}:download` | Download the execution. |
| `integrations.projects.locations.products.integrations.executions.list` | GET | `v1/{+parent}/executions` | Lists the results of all the integration executions. The response includes the same information a... |
| `integrations.projects.locations.products.integrations.executions.suspensions.list` | GET | `v1/{+parent}/suspensions` | * Lists suspensions associated with a specific execution. Only those with permissions to resolve ... |
| `integrations.projects.locations.products.integrations.executions.suspensions.lift` | POST | `v1/{+name}:lift` | * Lifts suspension for the Suspension task. Fetch corresponding suspension with provided suspensi... |
| `integrations.projects.locations.products.integrations.executions.suspensions.resolve` | POST | `v1/{+name}:resolve` | * Resolves (lifts/rejects) any number of suspensions. If the integration is already running, only... |
| `integrations.projects.locations.products.integrations.versions.takeoverEditLock` | POST | `v1/{+integrationVersion}:takeoverEditLock` | Clears the `locked_by` and `locked_at_timestamp`in the DRAFT version of this integration. It then... |
| `integrations.projects.locations.products.integrations.versions.list` | GET | `v1/{+parent}/versions` | Returns the list of all integration versions in the specified project. |
| `integrations.projects.locations.products.integrations.versions.delete` | DELETE | `v1/{+name}` | Soft-deletes the integration. Changes the status of the integration to ARCHIVED. If the integrati... |
| `integrations.projects.locations.products.integrations.versions.download` | GET | `v1/{+name}:download` | Downloads an integration. Retrieves the `IntegrationVersion` for a given `integration_id` and ret... |
| `integrations.projects.locations.products.integrations.versions.upload` | POST | `v1/{+parent}/versions:upload` | Uploads an integration. The content can be a previously downloaded integration. Performs the same... |
| `integrations.projects.locations.products.integrations.versions.patch` | PATCH | `v1/{+name}` | Update a integration with a draft version in the specified project. |
| `integrations.projects.locations.products.integrations.versions.get` | GET | `v1/{+name}` | Get a integration in the specified project. |
| `integrations.projects.locations.products.integrations.versions.create` | POST | `v1/{+parent}/versions` | Create a integration with a draft version in the specified project. |
| `integrations.projects.locations.products.integrations.versions.unpublish` | POST | `v1/{+name}:unpublish` | Sets the status of the ACTIVE integration to SNAPSHOT with a new tag "PREVIOUSLY_PUBLISHED" after... |
| `integrations.projects.locations.products.integrations.versions.publish` | POST | `v1/{+name}:publish` | This RPC throws an exception if the integration is in ARCHIVED or ACTIVE state. This RPC throws a... |
| `integrations.projects.locations.products.authConfigs.patch` | PATCH | `v1/{+name}` | Updates an auth config. If credential is updated, fetch the encrypted auth config from Spanner, d... |
| `integrations.projects.locations.products.authConfigs.create` | POST | `v1/{+parent}/authConfigs` | Creates an auth config record. Fetch corresponding credentials for specific auth types, e.g. acce... |
| `integrations.projects.locations.products.authConfigs.delete` | DELETE | `v1/{+name}` | Deletes an auth config. |
| `integrations.projects.locations.products.authConfigs.list` | GET | `v1/{+parent}/authConfigs` | Lists all auth configs that match the filter. Restrict to auth configs belong to the current clie... |
| `integrations.projects.locations.products.authConfigs.get` | GET | `v1/{+name}` | Gets a complete auth config. If the auth config doesn't exist, Code.NOT_FOUND exception will be t... |
| `integrations.projects.locations.templates.unshare` | POST | `v1/{+name}:unshare` | Unshare a template from given clients. Owner of the template can unshare template with clients. S... |
| `integrations.projects.locations.templates.share` | POST | `v1/{+name}:share` | Share a template with other clients. Only the template owner can share the templates with other p... |
| `integrations.projects.locations.templates.upload` | POST | `v1/{+parent}/templates:upload` | Uploads a template. The content can be a previously downloaded template. Performs the same functi... |
| `integrations.projects.locations.templates.search` | GET | `v1/{+parent}/templates:search` | Search templates based on user query and filters. This api would query the templates and return a... |
| `integrations.projects.locations.templates.list` | GET | `v1/{+parent}/templates` | Lists all templates matching the filter. |
| `integrations.projects.locations.templates.import` | POST | `v1/{+name}:import` | Import the template to an existing integration. This api would keep track of usage_count and last... |
| `integrations.projects.locations.templates.download` | GET | `v1/{+name}:download` | Downloads a template. Retrieves the `Template` and returns the response as a string. |
| `integrations.projects.locations.templates.patch` | PATCH | `v1/{+name}` | Updates the template by given id. |
| `integrations.projects.locations.templates.get` | GET | `v1/{+name}` | Get a template in the specified project. |
| `integrations.projects.locations.templates.create` | POST | `v1/{+parent}/templates` | Creates a new template |
| `integrations.projects.locations.templates.use` | POST | `v1/{+name}:use` | Use the template to create integration. This api would keep track of usage_count and last_used_ti... |
| `integrations.projects.locations.templates.delete` | DELETE | `v1/{+name}` | Deletes a template |
| `integrations.projects.locations.appsScriptProjects.create` | POST | `v1/{+parent}/appsScriptProjects` | Creates an Apps Script project. |
| `integrations.projects.locations.appsScriptProjects.link` | POST | `v1/{+parent}/appsScriptProjects:link` | Links a existing Apps Script project. |
| `integrations.projects.locations.cloudFunctions.create` | POST | `v1/{+parent}/cloudFunctions` | Creates a cloud function project. |
| `integrations.projects.locations.sfdcInstances.patch` | PATCH | `v1/{+name}` | Updates an sfdc instance. Updates the sfdc instance in spanner. Returns the sfdc instance. |
| `integrations.projects.locations.sfdcInstances.delete` | DELETE | `v1/{+name}` | Deletes an sfdc instance. |
| `integrations.projects.locations.sfdcInstances.get` | GET | `v1/{+name}` | Gets an sfdc instance. If the instance doesn't exist, Code.NOT_FOUND exception will be thrown. |
| `integrations.projects.locations.sfdcInstances.create` | POST | `v1/{+parent}/sfdcInstances` | Creates an sfdc instance record. Store the sfdc instance in Spanner. Returns the sfdc instance. |
| `integrations.projects.locations.sfdcInstances.list` | GET | `v1/{+parent}/sfdcInstances` | Lists all sfdc instances that match the filter. Restrict to sfdc instances belonging to the curre... |
| `integrations.projects.locations.sfdcInstances.sfdcChannels.create` | POST | `v1/{+parent}/sfdcChannels` | Creates an sfdc channel record. Store the sfdc channel in Spanner. Returns the sfdc channel. |
| `integrations.projects.locations.sfdcInstances.sfdcChannels.delete` | DELETE | `v1/{+name}` | Deletes an sfdc channel. |
| `integrations.projects.locations.sfdcInstances.sfdcChannels.list` | GET | `v1/{+parent}/sfdcChannels` | Lists all sfdc channels that match the filter. Restrict to sfdc channels belonging to the current... |
| `integrations.projects.locations.sfdcInstances.sfdcChannels.get` | GET | `v1/{+name}` | Gets an sfdc channel. If the channel doesn't exist, Code.NOT_FOUND exception will be thrown. |
| `integrations.projects.locations.sfdcInstances.sfdcChannels.patch` | PATCH | `v1/{+name}` | Updates an sfdc channel. Updates the sfdc channel in spanner. Returns the sfdc channel. |
| `integrations.projects.locations.authConfigs.delete` | DELETE | `v1/{+name}` | Deletes an auth config. |
| `integrations.projects.locations.authConfigs.patch` | PATCH | `v1/{+name}` | Updates an auth config. If credential is updated, fetch the encrypted auth config from Spanner, d... |
| `integrations.projects.locations.authConfigs.list` | GET | `v1/{+parent}/authConfigs` | Lists all auth configs that match the filter. Restrict to auth configs belong to the current clie... |
| `integrations.projects.locations.authConfigs.get` | GET | `v1/{+name}` | Gets a complete auth config. If the auth config doesn't exist, Code.NOT_FOUND exception will be t... |
| `integrations.projects.locations.authConfigs.create` | POST | `v1/{+parent}/authConfigs` | Creates an auth config record. Fetch corresponding credentials for specific auth types, e.g. acce... |
| `integrations.projects.locations.clients.replace` | POST | `v1/{+parent}/clients:replace` | Update run-as service account for provisioned client |
| `integrations.projects.locations.clients.provisionClientPostProcessor` | POST | `v1/{+parent}/clients:provisionClientPostProcessor` | Perform post provisioning steps after client is provisioned. |
| `integrations.projects.locations.clients.switch` | POST | `v1/{+parent}/clients:switch` | Update client from GMEK to CMEK |
| `integrations.projects.locations.clients.deprovision` | POST | `v1/{+parent}/clients:deprovision` | Perform the deprovisioning steps to disable a user GCP project to use IP and purge all related da... |
| `integrations.projects.locations.clients.toggleHttp` | POST | `v1/{+parent}/clients:toggleHttp` | Enable/Disable http call for provisioned client |
| `integrations.projects.locations.clients.provision` | POST | `v1/{+parent}/clients:provision` | Perform the provisioning steps to enable a user GCP project to use IP. If GCP project already reg... |
| `integrations.projects.locations.clients.switchVariableMasking` | POST | `v1/{+parent}/clients:switchVariableMasking` | Update variable masking for provisioned client |
| `integrations.projects.locations.clients.changeConfig` | POST | `v1/{+parent}/clients:changeConfig` | Updates the client customer configuration for the given project and location resource name |
| `integrations.connectorPlatformRegions.enumerate` | GET | `v1/connectorPlatformRegions:enumerate` | Enumerates the regions for which Connector Platform is provisioned. |

### `integrations.callback.generateToken`

**GET** `v1/callback:generateToken`

Receives the auth code and auth config id to combine that with the client id and secret to retrieve access tokens from the token endpoint. Returns either a success or error message when it's done.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `code` | `string` | query | No | The auth code for the given request |
| `gcpProjectId` | `string` | query | No | The gcp project id of the request |
| `product` | `string` | query | No | Which product sends the request |
| `redirectUri` | `string` | query | No | Redirect uri of the auth code request |
| `state` | `string` | query | No | The auth config id for the given request |

**Response**: `GoogleCloudIntegrationsV1alphaGenerateTokenResponse`

```typescript
const res = await integrations.callback.generateToken({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.getClientmetadata`

**GET** `v1/{+parent}/clientmetadata`

Gets the metadata info for the requested client

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Required: The ID of the GCP Project to be provisioned. |

**Response**: `GoogleCloudIntegrationsV1alphaGetClientMetadataResponse`

```typescript
const res = await integrations.projects.getClientmetadata({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.getClients`

**GET** `v1/{+parent}/clients`

Gets the client configuration for the given project and location resource name

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Required: The ID of the GCP Project to be provisioned. |

**Response**: `GoogleCloudIntegrationsV1alphaGetClientResponse`

```typescript
const res = await integrations.locations.getClients({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.generateOpenApiSpec`

**POST** `v1/{+name}:generateOpenApiSpec`

Generate OpenAPI spec for the requested integrations and api triggers

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Project and location from which the integrations should be fetched. Format: projects/{project}/location/{lo... |

**Request body**: `GoogleCloudIntegrationsV1alphaGenerateOpenApiSpecRequest`

**Response**: `GoogleCloudIntegrationsV1alphaGenerateOpenApiSpecResponse`

```typescript
const res = await integrations.locations.generateOpenApiSpec({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.connections.list`

**GET** `v1/{+parent}/connections`

Lists Connections in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource of the Connection, of the form: `projects/*/locations/*` |
| `filter` | `string` | query | No | Filter. |
| `orderBy` | `string` | query | No | Order by parameters. |
| `pageSize` | `integer` | query | No | Page size. |
| `pageToken` | `string` | query | No | Page token. |

**Response**: `GoogleCloudIntegrationsV1alphaListConnectionsResponse`

```typescript
const res = await integrations.connections.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.connections.getConnectionSchemaMetadata`

**GET** `v1/{+name}`

Lists the available entities and actions associated with a Connection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. ConnectionSchemaMetadata name. Format: projects/{project}/locations/{location}/connections/{connection}/con... |

**Response**: `GoogleCloudIntegrationsV1alphaConnectionSchemaMetadata`

```typescript
const res = await integrations.connections.getConnectionSchemaMetadata({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.connections.runtimeEntitySchemas.list`

**GET** `v1/{+parent}/runtimeEntitySchemas`

Lists the JSON schemas for the properties of runtime entities, filtered by entity name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource of RuntimeEntitySchema. Format: projects/{project}/locations/{location}/connections/{connec... |
| `filter` | `string` | query | No | Filter. Only the entity field with literal equality operator is supported. |
| `pageSize` | `integer` | query | No | Page size. |
| `pageToken` | `string` | query | No | Page token. |

**Response**: `GoogleCloudIntegrationsV1alphaListRuntimeEntitySchemasResponse`

```typescript
const res = await integrations.runtimeEntitySchemas.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.connections.runtimeActionSchemas.list`

**GET** `v1/{+parent}/runtimeActionSchemas`

Lists the JSON schemas for the inputs and outputs of actions, filtered by action name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource of RuntimeActionSchema. Format: projects/{project}/locations/{location}/connections/{connec... |
| `filter` | `string` | query | No | Filter. Only the action field with literal equality operator is supported. |
| `pageSize` | `integer` | query | No | Page size. |
| `pageToken` | `string` | query | No | Page token. |

**Response**: `GoogleCloudIntegrationsV1alphaListRuntimeActionSchemasResponse`

```typescript
const res = await integrations.runtimeActionSchemas.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.certificates.delete`

**DELETE** `v1/{+name}`

Delete a certificate

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name that is associated with the Certificate. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await integrations.certificates.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.certificates.create`

**POST** `v1/{+parent}/certificates`

Creates a new certificate. The certificate will be registered to the trawler service and will be encrypted using cloud KMS and stored in Spanner Returns the certificate.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. "projects/{project}/locations/{location}" format. |

**Request body**: `GoogleCloudIntegrationsV1alphaCertificate`

**Response**: `GoogleCloudIntegrationsV1alphaCertificate`

```typescript
const res = await integrations.certificates.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.certificates.get`

**GET** `v1/{+name}`

Get a certificates in the specified project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The certificate to retrieve. Format: projects/{project}/locations/{location}/certificates/{certificate} |

**Response**: `GoogleCloudIntegrationsV1alphaCertificate`

```typescript
const res = await integrations.certificates.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.certificates.patch`

**PATCH** `v1/{+name}`

Updates the certificate by id. If new certificate file is updated, it will register with the trawler service, re-encrypt with cloud KMS and update the Spanner record. Other fields will directly update the Spanner record. Returns the Certificate.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Auto generated primary key |
| `updateMask` | `string` | query | No | Field mask specifying the fields in the above Certificate that have been modified and need to be updated. |

**Request body**: `GoogleCloudIntegrationsV1alphaCertificate`

**Response**: `GoogleCloudIntegrationsV1alphaCertificate`

```typescript
const res = await integrations.certificates.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.certificates.list`

**GET** `v1/{+parent}/certificates`

List all the certificates that match the filter. Restrict to certificate of current client only.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The client, which owns this collection of Certificates. |
| `filter` | `string` | query | No | Filtering as supported in https://developers.google.com/authorized-buyers/apis/guides/list-filters. |
| `pageSize` | `integer` | query | No | The size of entries in the response. If unspecified, defaults to 100. |
| `pageToken` | `string` | query | No | The token returned in the previous response. |
| `readMask` | `string` | query | No | The mask which specifies fields that need to be returned in the Certificate's response. |

**Response**: `GoogleCloudIntegrationsV1alphaListCertificatesResponse`

```typescript
const res = await integrations.certificates.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.integrations.test`

**POST** `v1/{+name}:test`

Execute the integration in draft state

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Auto-generated primary key. |

**Request body**: `GoogleCloudIntegrationsV1alphaTestIntegrationsRequest`

**Response**: `GoogleCloudIntegrationsV1alphaTestIntegrationsResponse`

```typescript
const res = await integrations.integrations.test({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.integrations.executeEvent`

**POST** `v1/{+name}:executeEvent`

Executes an integration on receiving events from Integration Connector triggers, Eventarc or CPS Trigger. Input data to integration is received in body in json format

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The integration resource name. Format: projects/{gcp_project_id}/locations/{location}/integrations/{integra... |
| `triggerId` | `string` | query | No | Required. Id of the integration trigger config. The trigger_id is in the format: `integration_connector_trigger/proje... |

**Response**: `GoogleCloudIntegrationsV1alphaExecuteEventResponse`

```typescript
const res = await integrations.integrations.executeEvent({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.integrations.delete`

**DELETE** `v1/{+name}`

Delete the selected integration and all versions inside

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The location resource of the request. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await integrations.integrations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.integrations.schedule`

**POST** `v1/{+name}:schedule`

Schedules an integration for execution by passing the trigger id and the scheduled time in the request body.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The integration resource name. |

**Request body**: `GoogleCloudIntegrationsV1alphaScheduleIntegrationsRequest`

**Response**: `GoogleCloudIntegrationsV1alphaScheduleIntegrationsResponse`

```typescript
const res = await integrations.integrations.schedule({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.integrations.list`

**GET** `v1/{+parent}/integrations`

Returns the list of all integrations in the specified project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Project and location from which the integrations should be listed. Format: projects/{project} |
| `filter` | `string` | query | No | Filter on fields of IntegrationVersion. Fields can be compared with literal values by use of ":" (containment), "=" (... |
| `orderBy` | `string` | query | No | The results would be returned in order you specified here. Supported sort keys are: Descending sort order by "last_mo... |
| `pageSize` | `integer` | query | No | The page size for the resquest. |
| `pageToken` | `string` | query | No | The page token for the resquest. |

**Response**: `GoogleCloudIntegrationsV1alphaListIntegrationsResponse`

```typescript
const res = await integrations.integrations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.integrations.search`

**GET** `v1/{+parent}/integrations:search`

Searches and returns the list of integrations in the specified project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Project and location from which the integrations should be listed. Format: projects/*/locations/*/resources... |
| `enableNaturalLanguageQueryUnderstanding` | `boolean` | query | No | Optional. Whether to enable natural language query understanding. |
| `filter` | `string` | query | No | Optional. The pre-filter to be applied to the search. This should follow the expressions defined in https://cloud.goo... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return. The service may return fewer than this value. If unspecified, at m... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `SearchIntegrations` call. Provide this to retrieve the subsequent p... |
| `query` | `string` | query | No | Required. The user query |

**Response**: `GoogleCloudIntegrationsV1alphaSearchIntegrationsResponse`

```typescript
const res = await integrations.integrations.search({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.integrations.execute`

**POST** `v1/{+name}:execute`

Executes integrations synchronously by passing the trigger id in the request body. The request is not returned until the requested executions are either fulfilled or experienced an error. If the integration name is not specified (passing `-`), all of the associated integration under the given trigger_id will be executed. Otherwise only the specified integration for the given `trigger_id` is executed. This is helpful for execution the integration from UI.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The integration resource name. |

**Request body**: `GoogleCloudIntegrationsV1alphaExecuteIntegrationsRequest`

**Response**: `GoogleCloudIntegrationsV1alphaExecuteIntegrationsResponse`

```typescript
const res = await integrations.integrations.execute({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.integrations.versions.test`

**POST** `v1/{+name}:test`

Execute the integration in draft state

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Auto-generated primary key. |

**Request body**: `GoogleCloudIntegrationsV1alphaTestIntegrationsRequest`

**Response**: `GoogleCloudIntegrationsV1alphaTestIntegrationsResponse`

```typescript
const res = await integrations.versions.test({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.integrations.versions.create`

**POST** `v1/{+parent}/versions`

Create a integration with a draft version in the specified project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where this version will be created. Format: projects/{project}/locations/{location}/int... |
| `createSampleIntegrations` | `boolean` | query | No | Optional. Optional. Indicates if sample workflow should be created. |
| `newIntegration` | `boolean` | query | No | Set this flag to true, if draft version is to be created for a brand new integration. False, if the request is for an... |

**Request body**: `GoogleCloudIntegrationsV1alphaIntegrationVersion`

**Response**: `GoogleCloudIntegrationsV1alphaIntegrationVersion`

```typescript
const res = await integrations.versions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.integrations.versions.upload`

**POST** `v1/{+parent}/versions:upload`

Uploads an integration. The content can be a previously downloaded integration. Performs the same function as CreateDraftIntegrationVersion, but accepts input in a string format, which holds the complete representation of the IntegrationVersion content.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The version to upload. Format: projects/{project}/locations/{location}/integrations/{integration} |

**Request body**: `GoogleCloudIntegrationsV1alphaUploadIntegrationVersionRequest`

**Response**: `GoogleCloudIntegrationsV1alphaUploadIntegrationVersionResponse`

```typescript
const res = await integrations.versions.upload({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.integrations.versions.list`

**GET** `v1/{+parent}/versions`

Returns the list of all integration versions in the specified project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where this version will be created. Format: projects/{project}/locations/{location}/int... |
| `fieldMask` | `string` | query | No | The field mask which specifies the particular data to be returned. |
| `filter` | `string` | query | No | Filter on fields of IntegrationVersion. Fields can be compared with literal values by use of ":" (containment), "=" (... |
| `orderBy` | `string` | query | No | The results would be returned in order you specified here. Currently supported sort keys are: Descending sort order f... |
| `pageSize` | `integer` | query | No | The maximum number of versions to return. The service may return fewer than this value. If unspecified, at most 50 ve... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListIntegrationVersions` call. Provide this to retrieve the subsequent page. ... |

**Response**: `GoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse`

```typescript
const res = await integrations.versions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.integrations.versions.unpublish`

**POST** `v1/{+name}:unpublish`

Sets the status of the ACTIVE integration to SNAPSHOT with a new tag "PREVIOUSLY_PUBLISHED" after validating it. The "HEAD" and "PUBLISH_REQUESTED" tags do not change. This RPC throws an exception if the version being snapshot is not ACTIVE. Audit fields added include action, action_by, action_timestamp.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The version to deactivate. Format: projects/{project}/locations/{location}/integrations/{integration}/versi... |

**Request body**: `GoogleCloudIntegrationsV1alphaUnpublishIntegrationVersionRequest`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await integrations.versions.unpublish({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.integrations.versions.download`

**GET** `v1/{+name}:download`

Downloads an integration. Retrieves the `IntegrationVersion` for a given `integration_id` and returns the response as a string.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The version to download. Format: projects/{project}/locations/{location}/integrations/{integration}/version... |
| `fileFormat` | `string` | query | No | File format for download request. |
| `files` | `string` | query | No | Optional. Integration related file to download like Integration Json, Config variable, testcase etc. |

**Response**: `GoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse`

```typescript
const res = await integrations.versions.download({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.integrations.versions.delete`

**DELETE** `v1/{+name}`

Soft-deletes the integration. Changes the status of the integration to ARCHIVED. If the integration being ARCHIVED is tagged as "HEAD", the tag is removed from this snapshot and set to the previous non-ARCHIVED snapshot. The PUBLISH_REQUESTED, DUE_FOR_DELETION tags are removed too. This RPC throws an exception if the version being deleted is DRAFT, and if the `locked_by` user is not the same as the user performing the Delete. Audit fields updated include last_modified_timestamp, last_modified_by. Any existing lock is released when Deleting a integration. Currently, there is no undelete mechanism.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The version to delete. Format: projects/{project}/locations/{location}/integrations/{integration}/versions/... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await integrations.versions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.integrations.versions.get`

**GET** `v1/{+name}`

Get a integration in the specified project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The version to retrieve. Format: projects/{project}/locations/{location}/integrations/{integration}/version... |

**Response**: `GoogleCloudIntegrationsV1alphaIntegrationVersion`

```typescript
const res = await integrations.versions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.integrations.versions.publish`

**POST** `v1/{+name}:publish`

This RPC throws an exception if the integration is in ARCHIVED or ACTIVE state. This RPC throws an exception if the version being published is DRAFT, and if the `locked_by` user is not the same as the user performing the Publish. Audit fields updated include last_published_timestamp, last_published_by, last_modified_timestamp, last_modified_by. Any existing lock is on this integration is released.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The version to publish. Format: projects/{project}/locations/{location}/integrations/{integration}/versions... |

**Request body**: `GoogleCloudIntegrationsV1alphaPublishIntegrationVersionRequest`

**Response**: `GoogleCloudIntegrationsV1alphaPublishIntegrationVersionResponse`

```typescript
const res = await integrations.versions.publish({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.integrations.versions.patch`

**PATCH** `v1/{+name}`

Update a integration with a draft version in the specified project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Auto-generated primary key. |
| `updateMask` | `string` | query | No | Field mask specifying the fields in the above integration that have been modified and need to be updated. |

**Request body**: `GoogleCloudIntegrationsV1alphaIntegrationVersion`

**Response**: `GoogleCloudIntegrationsV1alphaIntegrationVersion`

```typescript
const res = await integrations.versions.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.integrations.versions.downloadJsonPackage`

**GET** `v1/{+name}:downloadJsonPackage`

Downloads an Integration version package like IntegrationVersion,Integration Config etc. Retrieves the IntegrationVersion package for a given `integration_id` and returns the response as a JSON.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Integration version name Format: projects/{project}/locations/{location}/integrations/{integration}/version... |
| `files` | `string` | query | No | Optional. Integration related file to download like Integration Version, Config variable, testcase etc. |

**Response**: `GoogleCloudIntegrationsV1alphaDownloadJsonPackageResponse`

```typescript
const res = await integrations.versions.downloadJsonPackage({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.integrations.versions.testCases.executeTest`

**POST** `v1/{+testCaseName}:executeTest`

Executes functional test

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `testCaseName` | `string` | path | Yes | Required. Test case resource name |

**Request body**: `GoogleCloudIntegrationsV1alphaExecuteTestCaseRequest`

**Response**: `GoogleCloudIntegrationsV1alphaExecuteTestCaseResponse`

```typescript
const res = await integrations.testCases.executeTest({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.integrations.versions.testCases.execute`

**POST** `v1/{+parent}/testCases:execute`

Executes all test cases in an integration version.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource whose test cases are executed. Format: projects/{project}/locations/{location}/integrat... |

**Request body**: `GoogleCloudIntegrationsV1alphaExecuteTestCasesRequest`

**Response**: `GoogleCloudIntegrationsV1alphaExecuteTestCasesResponse`

```typescript
const res = await integrations.testCases.execute({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.integrations.versions.testCases.get`

**GET** `v1/{+name}`

Get a test case

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The ID of the test case to retrieve |

**Response**: `GoogleCloudIntegrationsV1alphaTestCase`

```typescript
const res = await integrations.testCases.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.integrations.versions.testCases.download`

**GET** `v1/{+name}:download`

Downloads a test case. Retrieves the `TestCase` for a given `test_case_id` and returns the response as a string.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The test case to download. Format: projects/{project}/locations/{location}/integrations/{integration}/versi... |
| `fileFormat` | `string` | query | No | File format for download request. |

**Response**: `GoogleCloudIntegrationsV1alphaDownloadTestCaseResponse`

```typescript
const res = await integrations.testCases.download({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.integrations.versions.testCases.takeoverEditLock`

**POST** `v1/{+name}:takeoverEditLock`

Clear the lock fields and assign them to current user

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The ID of test case to takeover edit lock. Format: projects/{project}/locations/{location}/integrations/{in... |

**Request body**: `GoogleCloudIntegrationsV1alphaTakeoverTestCaseEditLockRequest`

**Response**: `GoogleCloudIntegrationsV1alphaTestCase`

```typescript
const res = await integrations.testCases.takeoverEditLock({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.integrations.versions.testCases.upload`

**POST** `v1/{+parent}/testCases:upload`

Uploads a test case. The content can be a previously downloaded test case. Performs the same function as CreateTestCase, but accepts input in a string format, which holds the complete representation of the TestCase content.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The test case to upload. Format: projects/{project}/locations/{location}/integrations/{integration}/version... |

**Request body**: `GoogleCloudIntegrationsV1alphaUploadTestCaseRequest`

**Response**: `GoogleCloudIntegrationsV1alphaUploadTestCaseResponse`

```typescript
const res = await integrations.testCases.upload({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.integrations.versions.testCases.list`

**GET** `v1/{+parent}/testCases`

Lists all the test cases that satisfy the filters.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where this TestCase was created. |
| `filter` | `string` | query | No | Optional. Standard filter field. Filtering as supported in https://developers.google.com/authorized-buyers/apis/guide... |
| `orderBy` | `string` | query | No | Optional. The results would be returned in order specified here. Currently supported sort keys are: Descending sort o... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of test cases to return. The service may return fewer than this value. If unspecified, a... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListTestCases` call. Provide this to retrieve the subsequent page. ... |
| `readMask` | `string` | query | No | Optional. The mask which specifies fields that need to be returned in the TestCases's response. |

**Response**: `GoogleCloudIntegrationsV1alphaListTestCasesResponse`

```typescript
const res = await integrations.testCases.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.integrations.versions.testCases.create`

**POST** `v1/{+parent}/testCases`

Creates a new test case

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where this test case will be created. Format: projects/{project}/locations/{location}/i... |
| `testCaseId` | `string` | query | No | Required. Required |

**Request body**: `GoogleCloudIntegrationsV1alphaTestCase`

**Response**: `GoogleCloudIntegrationsV1alphaTestCase`

```typescript
const res = await integrations.testCases.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.integrations.versions.testCases.patch`

**PATCH** `v1/{+name}`

Updates a test case

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Auto-generated primary key. |
| `updateMask` | `string` | query | No | Optional. Field mask specifying the fields in the above integration that have been modified and need to be updated. |

**Request body**: `GoogleCloudIntegrationsV1alphaTestCase`

**Response**: `GoogleCloudIntegrationsV1alphaTestCase`

```typescript
const res = await integrations.testCases.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.integrations.versions.testCases.delete`

**DELETE** `v1/{+name}`

Deletes a test case

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. ID for the test case to be deleted |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await integrations.testCases.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.integrations.executions.cancel`

**POST** `v1/{+name}:cancel`

Cancellation of an execution and associated sub-executions. This will not cancel an IN_PROCESS or completed(SUCCESSFUL, FAILED or CANCELLED) executions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The execution resource name. Format: projects/{gcp_project_id}/locations/{location}/products/{product}/inte... |

**Request body**: `GoogleCloudIntegrationsV1alphaCancelExecutionRequest`

**Response**: `GoogleCloudIntegrationsV1alphaCancelExecutionResponse`

```typescript
const res = await integrations.executions.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.integrations.executions.get`

**GET** `v1/{+name}`

Get an execution in the specified project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The execution resource name. Format: projects/{gcp_project_id}/locations/{location}/products/{product}/inte... |

**Response**: `GoogleCloudIntegrationsV1alphaExecution`

```typescript
const res = await integrations.executions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.integrations.executions.replay`

**POST** `v1/{+name}:replay`

Re-execute an existing execution, with same request parameters and execution strategy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Next ID: 6 The execution resource name. Format: projects/{gcp_project_id}/locations/{location}/integrations... |

**Request body**: `GoogleCloudIntegrationsV1alphaReplayExecutionRequest`

**Response**: `GoogleCloudIntegrationsV1alphaReplayExecutionResponse`

```typescript
const res = await integrations.executions.replay({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.integrations.executions.download`

**GET** `v1/{+name}:download`

Download the execution.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The execution resource name. Format: projects/{gcp_project_id}/locations/{location}/products/{product}/inte... |

**Response**: `GoogleCloudIntegrationsV1alphaDownloadExecutionResponse`

```typescript
const res = await integrations.executions.download({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.integrations.executions.list`

**GET** `v1/{+parent}/executions`

Lists the results of all the integration executions. The response includes the same information as the [execution log](https://cloud.google.com/application-integration/docs/viewing-logs) in the Integration UI.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name of the integration execution. |
| `filter` | `string` | query | No | Optional. Standard filter field, we support filtering on following fields: workflow_name: the name of the integration... |
| `filterParams.customFilter` | `string` | query | No | Optional user-provided custom filter. |
| `filterParams.endTime` | `string` | query | No | End timestamp. |
| `filterParams.eventStatuses` | `string` | query | No | List of possible event statuses. |
| `filterParams.executionId` | `string` | query | No | Execution id. |
| `filterParams.parameterKey` | `string` | query | No | Param key. DEPRECATED. User parameter_pair_key instead. |
| `filterParams.parameterPairKey` | `string` | query | No | Param key in the key value pair filter. |
| `filterParams.parameterPairValue` | `string` | query | No | Param value in the key value pair filter. |
| `filterParams.parameterType` | `string` | query | No | Param type. |
| `filterParams.parameterValue` | `string` | query | No | Param value. DEPRECATED. User parameter_pair_value instead. |
| `filterParams.startTime` | `string` | query | No | Start timestamp. |
| `filterParams.taskStatuses` | `string` | query | No | List of possible task statuses. |
| `filterParams.workflowName` | `string` | query | No | Workflow name. |
| `orderBy` | `string` | query | No | Optional. The results would be returned in order you specified here. Currently supporting "create_time". |
| `pageSize` | `integer` | query | No | Optional. The size of entries in the response. |
| `pageToken` | `string` | query | No | Optional. The token returned in the previous response. |
| `readMask` | `string` | query | No | Optional. View mask for the response data. If set, only the field specified will be returned as part of the result. I... |
| `refreshAcl` | `boolean` | query | No | Optional. If true, the service will use the most recent acl information to list event execution infos and renew the a... |
| `snapshotMetadataWithoutParams` | `boolean` | query | No | Optional. If true, the service will provide execution info with snapshot metadata only i.e. without event parameters. |
| `truncateParams` | `boolean` | query | No | Optional. If true, the service will truncate the params to only keep the first 1000 characters of string params and e... |

**Response**: `GoogleCloudIntegrationsV1alphaListExecutionsResponse`

```typescript
const res = await integrations.executions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.integrations.executions.suspensions.resolve`

**POST** `v1/{+name}:resolve`

* Resolves (lifts/rejects) any number of suspensions. If the integration is already running, only the status of the suspension is updated. Otherwise, the suspended integration will begin execution again.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. projects/{gcp_project_id}/locations/{location}/products/{product}/integrations/{integration_name}/execution... |

**Request body**: `GoogleCloudIntegrationsV1alphaResolveSuspensionRequest`

**Response**: `GoogleCloudIntegrationsV1alphaResolveSuspensionResponse`

```typescript
const res = await integrations.suspensions.resolve({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.integrations.executions.suspensions.list`

**GET** `v1/{+parent}/suspensions`

* Lists suspensions associated with a specific execution. Only those with permissions to resolve the relevant suspensions will be able to view them.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. projects/{gcp_project_id}/locations/{location}/products/{product}/integrations/{integration_name}/execution... |
| `filter` | `string` | query | No | Standard filter field. |
| `orderBy` | `string` | query | No | Field name to order by. |
| `pageSize` | `integer` | query | No | Maximum number of entries in the response. |
| `pageToken` | `string` | query | No | Token to retrieve a specific page. |

**Response**: `GoogleCloudIntegrationsV1alphaListSuspensionsResponse`

```typescript
const res = await integrations.suspensions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.integrations.executions.suspensions.lift`

**POST** `v1/{+name}:lift`

* Lifts suspension for the Suspension task. Fetch corresponding suspension with provided suspension Id, resolve suspension, and set up suspension result for the Suspension Task.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource that the suspension belongs to. "projects/{project}/locations/{location}/products/{product}/in... |

**Request body**: `GoogleCloudIntegrationsV1alphaLiftSuspensionRequest`

**Response**: `GoogleCloudIntegrationsV1alphaLiftSuspensionResponse`

```typescript
const res = await integrations.suspensions.lift({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.products.cloudFunctions.create`

**POST** `v1/{+parent}/cloudFunctions`

Creates a cloud function project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project that the executed integration belongs to. |

**Request body**: `GoogleCloudIntegrationsV1alphaCreateCloudFunctionRequest`

**Response**: `GoogleCloudIntegrationsV1alphaCreateCloudFunctionResponse`

```typescript
const res = await integrations.cloudFunctions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.products.sfdcInstances.get`

**GET** `v1/{+name}`

Gets an sfdc instance. If the instance doesn't exist, Code.NOT_FOUND exception will be thrown.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name that is associated with the SfdcInstance. |

**Response**: `GoogleCloudIntegrationsV1alphaSfdcInstance`

```typescript
const res = await integrations.sfdcInstances.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.products.sfdcInstances.delete`

**DELETE** `v1/{+name}`

Deletes an sfdc instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name that is associated with the SfdcInstance. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await integrations.sfdcInstances.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.products.sfdcInstances.create`

**POST** `v1/{+parent}/sfdcInstances`

Creates an sfdc instance record. Store the sfdc instance in Spanner. Returns the sfdc instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. "projects/{project}/locations/{location}" format. |

**Request body**: `GoogleCloudIntegrationsV1alphaSfdcInstance`

**Response**: `GoogleCloudIntegrationsV1alphaSfdcInstance`

```typescript
const res = await integrations.sfdcInstances.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.products.sfdcInstances.patch`

**PATCH** `v1/{+name}`

Updates an sfdc instance. Updates the sfdc instance in spanner. Returns the sfdc instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name of the SFDC instance projects/{project}/locations/{location}/sfdcInstances/{sfdcInstance}. |
| `updateMask` | `string` | query | No | Field mask specifying the fields in the above SfdcInstance that have been modified and need to be updated. |

**Request body**: `GoogleCloudIntegrationsV1alphaSfdcInstance`

**Response**: `GoogleCloudIntegrationsV1alphaSfdcInstance`

```typescript
const res = await integrations.sfdcInstances.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.products.sfdcInstances.list`

**GET** `v1/{+parent}/sfdcInstances`

Lists all sfdc instances that match the filter. Restrict to sfdc instances belonging to the current client only.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The client, which owns this collection of SfdcInstances. |
| `filter` | `string` | query | No | Filtering as supported in https://developers.google.com/authorized-buyers/apis/guides/list-filters. |
| `pageSize` | `integer` | query | No | The size of entries in the response. If unspecified, defaults to 100. |
| `pageToken` | `string` | query | No | The token returned in the previous response. |
| `readMask` | `string` | query | No | The mask which specifies fields that need to be returned in the SfdcInstance's response. |

**Response**: `GoogleCloudIntegrationsV1alphaListSfdcInstancesResponse`

```typescript
const res = await integrations.sfdcInstances.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.products.sfdcInstances.sfdcChannels.get`

**GET** `v1/{+name}`

Gets an sfdc channel. If the channel doesn't exist, Code.NOT_FOUND exception will be thrown.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name that is associated with the SfdcChannel. |

**Response**: `GoogleCloudIntegrationsV1alphaSfdcChannel`

```typescript
const res = await integrations.sfdcChannels.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.products.sfdcInstances.sfdcChannels.create`

**POST** `v1/{+parent}/sfdcChannels`

Creates an sfdc channel record. Store the sfdc channel in Spanner. Returns the sfdc channel.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. "projects/{project}/locations/{location}" format. |

**Request body**: `GoogleCloudIntegrationsV1alphaSfdcChannel`

**Response**: `GoogleCloudIntegrationsV1alphaSfdcChannel`

```typescript
const res = await integrations.sfdcChannels.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.products.sfdcInstances.sfdcChannels.patch`

**PATCH** `v1/{+name}`

Updates an sfdc channel. Updates the sfdc channel in spanner. Returns the sfdc channel.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name of the SFDC channel projects/{project}/locations/{location}/sfdcInstances/{sfdc_instance}/sfdcChannels/... |
| `updateMask` | `string` | query | No | Field mask specifying the fields in the above SfdcChannel that have been modified and need to be updated. |

**Request body**: `GoogleCloudIntegrationsV1alphaSfdcChannel`

**Response**: `GoogleCloudIntegrationsV1alphaSfdcChannel`

```typescript
const res = await integrations.sfdcChannels.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.products.sfdcInstances.sfdcChannels.delete`

**DELETE** `v1/{+name}`

Deletes an sfdc channel.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name that is associated with the SfdcChannel. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await integrations.sfdcChannels.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.products.sfdcInstances.sfdcChannels.list`

**GET** `v1/{+parent}/sfdcChannels`

Lists all sfdc channels that match the filter. Restrict to sfdc channels belonging to the current client only.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The client, which owns this collection of SfdcChannels. |
| `filter` | `string` | query | No | Filtering as supported in https://developers.google.com/authorized-buyers/apis/guides/list-filters. |
| `pageSize` | `integer` | query | No | The size of entries in the response. If unspecified, defaults to 100. |
| `pageToken` | `string` | query | No | The token returned in the previous response. |
| `readMask` | `string` | query | No | The mask which specifies fields that need to be returned in the SfdcChannel's response. |

**Response**: `GoogleCloudIntegrationsV1alphaListSfdcChannelsResponse`

```typescript
const res = await integrations.sfdcChannels.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.products.certificates.get`

**GET** `v1/{+name}`

Get a certificates in the specified project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The certificate to retrieve. Format: projects/{project}/locations/{location}/certificates/{certificate} |

**Response**: `GoogleCloudIntegrationsV1alphaCertificate`

```typescript
const res = await integrations.certificates.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.products.certificates.delete`

**DELETE** `v1/{+name}`

Delete a certificate

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name that is associated with the Certificate. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await integrations.certificates.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.products.certificates.patch`

**PATCH** `v1/{+name}`

Updates the certificate by id. If new certificate file is updated, it will register with the trawler service, re-encrypt with cloud KMS and update the Spanner record. Other fields will directly update the Spanner record. Returns the Certificate.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Auto generated primary key |
| `updateMask` | `string` | query | No | Field mask specifying the fields in the above Certificate that have been modified and need to be updated. |

**Request body**: `GoogleCloudIntegrationsV1alphaCertificate`

**Response**: `GoogleCloudIntegrationsV1alphaCertificate`

```typescript
const res = await integrations.certificates.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.products.certificates.create`

**POST** `v1/{+parent}/certificates`

Creates a new certificate. The certificate will be registered to the trawler service and will be encrypted using cloud KMS and stored in Spanner Returns the certificate.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. "projects/{project}/locations/{location}" format. |

**Request body**: `GoogleCloudIntegrationsV1alphaCertificate`

**Response**: `GoogleCloudIntegrationsV1alphaCertificate`

```typescript
const res = await integrations.certificates.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.products.certificates.list`

**GET** `v1/{+parent}/certificates`

List all the certificates that match the filter. Restrict to certificate of current client only.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The client, which owns this collection of Certificates. |
| `filter` | `string` | query | No | Filtering as supported in https://developers.google.com/authorized-buyers/apis/guides/list-filters. |
| `pageSize` | `integer` | query | No | The size of entries in the response. If unspecified, defaults to 100. |
| `pageToken` | `string` | query | No | The token returned in the previous response. |
| `readMask` | `string` | query | No | The mask which specifies fields that need to be returned in the Certificate's response. |

**Response**: `GoogleCloudIntegrationsV1alphaListCertificatesResponse`

```typescript
const res = await integrations.certificates.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.products.integrations.schedule`

**POST** `v1/{+name}:schedule`

Schedules an integration for execution by passing the trigger id and the scheduled time in the request body.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The integration resource name. |

**Request body**: `GoogleCloudIntegrationsV1alphaScheduleIntegrationsRequest`

**Response**: `GoogleCloudIntegrationsV1alphaScheduleIntegrationsResponse`

```typescript
const res = await integrations.integrations.schedule({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.products.integrations.execute`

**POST** `v1/{+name}:execute`

Executes integrations synchronously by passing the trigger id in the request body. The request is not returned until the requested executions are either fulfilled or experienced an error. If the integration name is not specified (passing `-`), all of the associated integration under the given trigger_id will be executed. Otherwise only the specified integration for the given `trigger_id` is executed. This is helpful for execution the integration from UI.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The integration resource name. |

**Request body**: `GoogleCloudIntegrationsV1alphaExecuteIntegrationsRequest`

**Response**: `GoogleCloudIntegrationsV1alphaExecuteIntegrationsResponse`

```typescript
const res = await integrations.integrations.execute({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.products.integrations.test`

**POST** `v1/{+name}:test`

Execute the integration in draft state

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Auto-generated primary key. |

**Request body**: `GoogleCloudIntegrationsV1alphaTestIntegrationsRequest`

**Response**: `GoogleCloudIntegrationsV1alphaTestIntegrationsResponse`

```typescript
const res = await integrations.integrations.test({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.products.integrations.list`

**GET** `v1/{+parent}/integrations`

Returns the list of all integrations in the specified project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Project and location from which the integrations should be listed. Format: projects/{project} |
| `filter` | `string` | query | No | Filter on fields of IntegrationVersion. Fields can be compared with literal values by use of ":" (containment), "=" (... |
| `orderBy` | `string` | query | No | The results would be returned in order you specified here. Supported sort keys are: Descending sort order by "last_mo... |
| `pageSize` | `integer` | query | No | The page size for the resquest. |
| `pageToken` | `string` | query | No | The page token for the resquest. |

**Response**: `GoogleCloudIntegrationsV1alphaListIntegrationsResponse`

```typescript
const res = await integrations.integrations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.products.integrations.executions.get`

**GET** `v1/{+name}`

Get an execution in the specified project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The execution resource name. Format: projects/{gcp_project_id}/locations/{location}/products/{product}/inte... |

**Response**: `GoogleCloudIntegrationsV1alphaExecution`

```typescript
const res = await integrations.executions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.products.integrations.executions.download`

**GET** `v1/{+name}:download`

Download the execution.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The execution resource name. Format: projects/{gcp_project_id}/locations/{location}/products/{product}/inte... |

**Response**: `GoogleCloudIntegrationsV1alphaDownloadExecutionResponse`

```typescript
const res = await integrations.executions.download({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.products.integrations.executions.list`

**GET** `v1/{+parent}/executions`

Lists the results of all the integration executions. The response includes the same information as the [execution log](https://cloud.google.com/application-integration/docs/viewing-logs) in the Integration UI.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name of the integration execution. |
| `filter` | `string` | query | No | Optional. Standard filter field, we support filtering on following fields: workflow_name: the name of the integration... |
| `filterParams.customFilter` | `string` | query | No | Optional user-provided custom filter. |
| `filterParams.endTime` | `string` | query | No | End timestamp. |
| `filterParams.eventStatuses` | `string` | query | No | List of possible event statuses. |
| `filterParams.executionId` | `string` | query | No | Execution id. |
| `filterParams.parameterKey` | `string` | query | No | Param key. DEPRECATED. User parameter_pair_key instead. |
| `filterParams.parameterPairKey` | `string` | query | No | Param key in the key value pair filter. |
| `filterParams.parameterPairValue` | `string` | query | No | Param value in the key value pair filter. |
| `filterParams.parameterType` | `string` | query | No | Param type. |
| `filterParams.parameterValue` | `string` | query | No | Param value. DEPRECATED. User parameter_pair_value instead. |
| `filterParams.startTime` | `string` | query | No | Start timestamp. |
| `filterParams.taskStatuses` | `string` | query | No | List of possible task statuses. |
| `filterParams.workflowName` | `string` | query | No | Workflow name. |
| `orderBy` | `string` | query | No | Optional. The results would be returned in order you specified here. Currently supporting "create_time". |
| `pageSize` | `integer` | query | No | Optional. The size of entries in the response. |
| `pageToken` | `string` | query | No | Optional. The token returned in the previous response. |
| `readMask` | `string` | query | No | Optional. View mask for the response data. If set, only the field specified will be returned as part of the result. I... |
| `refreshAcl` | `boolean` | query | No | Optional. If true, the service will use the most recent acl information to list event execution infos and renew the a... |
| `snapshotMetadataWithoutParams` | `boolean` | query | No | Optional. If true, the service will provide execution info with snapshot metadata only i.e. without event parameters. |
| `truncateParams` | `boolean` | query | No | Optional. If true, the service will truncate the params to only keep the first 1000 characters of string params and e... |

**Response**: `GoogleCloudIntegrationsV1alphaListExecutionsResponse`

```typescript
const res = await integrations.executions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.products.integrations.executions.suspensions.list`

**GET** `v1/{+parent}/suspensions`

* Lists suspensions associated with a specific execution. Only those with permissions to resolve the relevant suspensions will be able to view them.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. projects/{gcp_project_id}/locations/{location}/products/{product}/integrations/{integration_name}/execution... |
| `filter` | `string` | query | No | Standard filter field. |
| `orderBy` | `string` | query | No | Field name to order by. |
| `pageSize` | `integer` | query | No | Maximum number of entries in the response. |
| `pageToken` | `string` | query | No | Token to retrieve a specific page. |

**Response**: `GoogleCloudIntegrationsV1alphaListSuspensionsResponse`

```typescript
const res = await integrations.suspensions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.products.integrations.executions.suspensions.lift`

**POST** `v1/{+name}:lift`

* Lifts suspension for the Suspension task. Fetch corresponding suspension with provided suspension Id, resolve suspension, and set up suspension result for the Suspension Task.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource that the suspension belongs to. "projects/{project}/locations/{location}/products/{product}/in... |

**Request body**: `GoogleCloudIntegrationsV1alphaLiftSuspensionRequest`

**Response**: `GoogleCloudIntegrationsV1alphaLiftSuspensionResponse`

```typescript
const res = await integrations.suspensions.lift({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.products.integrations.executions.suspensions.resolve`

**POST** `v1/{+name}:resolve`

* Resolves (lifts/rejects) any number of suspensions. If the integration is already running, only the status of the suspension is updated. Otherwise, the suspended integration will begin execution again.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. projects/{gcp_project_id}/locations/{location}/products/{product}/integrations/{integration_name}/execution... |

**Request body**: `GoogleCloudIntegrationsV1alphaResolveSuspensionRequest`

**Response**: `GoogleCloudIntegrationsV1alphaResolveSuspensionResponse`

```typescript
const res = await integrations.suspensions.resolve({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.products.integrations.versions.takeoverEditLock`

**POST** `v1/{+integrationVersion}:takeoverEditLock`

Clears the `locked_by` and `locked_at_timestamp`in the DRAFT version of this integration. It then performs the same action as the CreateDraftIntegrationVersion (i.e., copies the DRAFT version of the integration as a SNAPSHOT and then creates a new DRAFT version with the `locked_by` set to the `user_taking_over` and the `locked_at_timestamp` set to the current timestamp). Both the `locked_by` and `user_taking_over` are notified via email about the takeover. This RPC throws an exception if the integration is not in DRAFT status or if the `locked_by` and `locked_at_timestamp` fields are not set.The TakeoverEdit lock is treated the same as an edit of the integration, and hence shares ACLs with edit. Audit fields updated include last_modified_timestamp, last_modified_by.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `integrationVersion` | `string` | path | Yes | Required. The version to take over edit lock. Format: projects/{project}/locations/{location}/integrations/{integrati... |

**Request body**: `GoogleCloudIntegrationsV1alphaTakeoverEditLockRequest`

**Response**: `GoogleCloudIntegrationsV1alphaTakeoverEditLockResponse`

```typescript
const res = await integrations.versions.takeoverEditLock({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.products.integrations.versions.list`

**GET** `v1/{+parent}/versions`

Returns the list of all integration versions in the specified project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where this version will be created. Format: projects/{project}/locations/{location}/int... |
| `fieldMask` | `string` | query | No | The field mask which specifies the particular data to be returned. |
| `filter` | `string` | query | No | Filter on fields of IntegrationVersion. Fields can be compared with literal values by use of ":" (containment), "=" (... |
| `orderBy` | `string` | query | No | The results would be returned in order you specified here. Currently supported sort keys are: Descending sort order f... |
| `pageSize` | `integer` | query | No | The maximum number of versions to return. The service may return fewer than this value. If unspecified, at most 50 ve... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListIntegrationVersions` call. Provide this to retrieve the subsequent page. ... |

**Response**: `GoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse`

```typescript
const res = await integrations.versions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.products.integrations.versions.delete`

**DELETE** `v1/{+name}`

Soft-deletes the integration. Changes the status of the integration to ARCHIVED. If the integration being ARCHIVED is tagged as "HEAD", the tag is removed from this snapshot and set to the previous non-ARCHIVED snapshot. The PUBLISH_REQUESTED, DUE_FOR_DELETION tags are removed too. This RPC throws an exception if the version being deleted is DRAFT, and if the `locked_by` user is not the same as the user performing the Delete. Audit fields updated include last_modified_timestamp, last_modified_by. Any existing lock is released when Deleting a integration. Currently, there is no undelete mechanism.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The version to delete. Format: projects/{project}/locations/{location}/integrations/{integration}/versions/... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await integrations.versions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.products.integrations.versions.download`

**GET** `v1/{+name}:download`

Downloads an integration. Retrieves the `IntegrationVersion` for a given `integration_id` and returns the response as a string.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The version to download. Format: projects/{project}/locations/{location}/integrations/{integration}/version... |
| `fileFormat` | `string` | query | No | File format for download request. |
| `files` | `string` | query | No | Optional. Integration related file to download like Integration Json, Config variable, testcase etc. |

**Response**: `GoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse`

```typescript
const res = await integrations.versions.download({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.products.integrations.versions.upload`

**POST** `v1/{+parent}/versions:upload`

Uploads an integration. The content can be a previously downloaded integration. Performs the same function as CreateDraftIntegrationVersion, but accepts input in a string format, which holds the complete representation of the IntegrationVersion content.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The version to upload. Format: projects/{project}/locations/{location}/integrations/{integration} |

**Request body**: `GoogleCloudIntegrationsV1alphaUploadIntegrationVersionRequest`

**Response**: `GoogleCloudIntegrationsV1alphaUploadIntegrationVersionResponse`

```typescript
const res = await integrations.versions.upload({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.products.integrations.versions.patch`

**PATCH** `v1/{+name}`

Update a integration with a draft version in the specified project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Auto-generated primary key. |
| `updateMask` | `string` | query | No | Field mask specifying the fields in the above integration that have been modified and need to be updated. |

**Request body**: `GoogleCloudIntegrationsV1alphaIntegrationVersion`

**Response**: `GoogleCloudIntegrationsV1alphaIntegrationVersion`

```typescript
const res = await integrations.versions.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.products.integrations.versions.get`

**GET** `v1/{+name}`

Get a integration in the specified project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The version to retrieve. Format: projects/{project}/locations/{location}/integrations/{integration}/version... |

**Response**: `GoogleCloudIntegrationsV1alphaIntegrationVersion`

```typescript
const res = await integrations.versions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.products.integrations.versions.create`

**POST** `v1/{+parent}/versions`

Create a integration with a draft version in the specified project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where this version will be created. Format: projects/{project}/locations/{location}/int... |
| `createSampleIntegrations` | `boolean` | query | No | Optional. Optional. Indicates if sample workflow should be created. |
| `newIntegration` | `boolean` | query | No | Set this flag to true, if draft version is to be created for a brand new integration. False, if the request is for an... |

**Request body**: `GoogleCloudIntegrationsV1alphaIntegrationVersion`

**Response**: `GoogleCloudIntegrationsV1alphaIntegrationVersion`

```typescript
const res = await integrations.versions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.products.integrations.versions.unpublish`

**POST** `v1/{+name}:unpublish`

Sets the status of the ACTIVE integration to SNAPSHOT with a new tag "PREVIOUSLY_PUBLISHED" after validating it. The "HEAD" and "PUBLISH_REQUESTED" tags do not change. This RPC throws an exception if the version being snapshot is not ACTIVE. Audit fields added include action, action_by, action_timestamp.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The version to deactivate. Format: projects/{project}/locations/{location}/integrations/{integration}/versi... |

**Request body**: `GoogleCloudIntegrationsV1alphaUnpublishIntegrationVersionRequest`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await integrations.versions.unpublish({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.products.integrations.versions.publish`

**POST** `v1/{+name}:publish`

This RPC throws an exception if the integration is in ARCHIVED or ACTIVE state. This RPC throws an exception if the version being published is DRAFT, and if the `locked_by` user is not the same as the user performing the Publish. Audit fields updated include last_published_timestamp, last_published_by, last_modified_timestamp, last_modified_by. Any existing lock is on this integration is released.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The version to publish. Format: projects/{project}/locations/{location}/integrations/{integration}/versions... |

**Request body**: `GoogleCloudIntegrationsV1alphaPublishIntegrationVersionRequest`

**Response**: `GoogleCloudIntegrationsV1alphaPublishIntegrationVersionResponse`

```typescript
const res = await integrations.versions.publish({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.products.authConfigs.patch`

**PATCH** `v1/{+name}`

Updates an auth config. If credential is updated, fetch the encrypted auth config from Spanner, decrypt with Cloud KMS key, update the credential fields, re-encrypt with Cloud KMS key and update the Spanner record. For other fields, directly update the Spanner record. Returns the encrypted auth config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name of the auth config. For more information, see Manage authentication profiles. projects/{project}/locati... |
| `clientCertificate.encryptedPrivateKey` | `string` | query | No | The ssl certificate encoded in PEM format. This string must include the begin header and end footer lines. For exampl... |
| `clientCertificate.passphrase` | `string` | query | No | 'passphrase' should be left unset if private key is not encrypted. Note that 'passphrase' is not the password for web... |
| `clientCertificate.sslCertificate` | `string` | query | No | The ssl certificate encoded in PEM format. This string must include the begin header and end footer lines. For exampl... |
| `updateMask` | `string` | query | No | Field mask specifying the fields in the above AuthConfig that have been modified and need to be updated. |

**Request body**: `GoogleCloudIntegrationsV1alphaAuthConfig`

**Response**: `GoogleCloudIntegrationsV1alphaAuthConfig`

```typescript
const res = await integrations.authConfigs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.products.authConfigs.create`

**POST** `v1/{+parent}/authConfigs`

Creates an auth config record. Fetch corresponding credentials for specific auth types, e.g. access token for OAuth 2.0, JWT token for JWT. Encrypt the auth config with Cloud KMS and store the encrypted credentials in Spanner. Returns the encrypted auth config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. "projects/{project}/locations/{location}" format. |
| `clientCertificate.encryptedPrivateKey` | `string` | query | No | The ssl certificate encoded in PEM format. This string must include the begin header and end footer lines. For exampl... |
| `clientCertificate.passphrase` | `string` | query | No | 'passphrase' should be left unset if private key is not encrypted. Note that 'passphrase' is not the password for web... |
| `clientCertificate.sslCertificate` | `string` | query | No | The ssl certificate encoded in PEM format. This string must include the begin header and end footer lines. For exampl... |

**Request body**: `GoogleCloudIntegrationsV1alphaAuthConfig`

**Response**: `GoogleCloudIntegrationsV1alphaAuthConfig`

```typescript
const res = await integrations.authConfigs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.products.authConfigs.delete`

**DELETE** `v1/{+name}`

Deletes an auth config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name that is associated with the AuthConfig. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await integrations.authConfigs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.products.authConfigs.list`

**GET** `v1/{+parent}/authConfigs`

Lists all auth configs that match the filter. Restrict to auth configs belong to the current client only.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The client, which owns this collection of AuthConfigs. |
| `filter` | `string` | query | No | Filtering as supported in https://developers.google.com/authorized-buyers/apis/guides/list-filters. |
| `pageSize` | `integer` | query | No | The size of entries in the response. If unspecified, defaults to 100. |
| `pageToken` | `string` | query | No | The token returned in the previous response. |
| `readMask` | `string` | query | No | The mask which specifies fields that need to be returned in the AuthConfig's response. |

**Response**: `GoogleCloudIntegrationsV1alphaListAuthConfigsResponse`

```typescript
const res = await integrations.authConfigs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.products.authConfigs.get`

**GET** `v1/{+name}`

Gets a complete auth config. If the auth config doesn't exist, Code.NOT_FOUND exception will be thrown. Returns the decrypted auth config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name that is associated with the AuthConfig. |

**Response**: `GoogleCloudIntegrationsV1alphaAuthConfig`

```typescript
const res = await integrations.authConfigs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.templates.unshare`

**POST** `v1/{+name}:unshare`

Unshare a template from given clients. Owner of the template can unshare template with clients. Shared client can only unshare the template from itself. PERMISSION_DENIED would be thrown if request is not from owner or for unsharing itself.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name that is associated with the Template. |

**Request body**: `GoogleCloudIntegrationsV1alphaUnshareTemplateRequest`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await integrations.templates.unshare({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.templates.share`

**POST** `v1/{+name}:share`

Share a template with other clients. Only the template owner can share the templates with other projects. PERMISSION_DENIED would be thrown if the request is not from the owner.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name that is associated with the Template. |

**Request body**: `GoogleCloudIntegrationsV1alphaShareTemplateRequest`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await integrations.templates.share({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.templates.upload`

**POST** `v1/{+parent}/templates:upload`

Uploads a template. The content can be a previously downloaded template. Performs the same function as CreateTemplate, but accepts input in a string format, which holds the complete representation of the Template content.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The template to upload. Format: projects/{project}/locations/{location} |

**Request body**: `GoogleCloudIntegrationsV1alphaUploadTemplateRequest`

**Response**: `GoogleCloudIntegrationsV1alphaUploadTemplateResponse`

```typescript
const res = await integrations.templates.upload({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.templates.search`

**GET** `v1/{+parent}/templates:search`

Search templates based on user query and filters. This api would query the templates and return a list of templates based on the user filter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The client, which owns this collection of Templates. |
| `enableNaturalLanguageQueryUnderstanding` | `boolean` | query | No | Optional. Whether to enable natural language query understanding. |
| `filter` | `string` | query | No | Optional. Standard filter field to filter templates. client_id filter won't be supported and will restrict to templat... |
| `orderBy` | `string` | query | No | Optional. The results would be returned in the order you specified here. |
| `pageSize` | `integer` | query | No | Optional. The size of the response entries. If unspecified, defaults to 100. The maximum value is 1000; values above ... |
| `pageToken` | `string` | query | No | Optional. The token returned in the previous response. |
| `query` | `string` | query | No | Optional. The search query that will be passed to Vertex search service. |
| `readMask` | `string` | query | No | Optional. The mask which specifies fields that need to be returned in the template's response. |

**Response**: `GoogleCloudIntegrationsV1alphaSearchTemplatesResponse`

```typescript
const res = await integrations.templates.search({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.templates.list`

**GET** `v1/{+parent}/templates`

Lists all templates matching the filter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The client, which owns this collection of Templates. |
| `filter` | `string` | query | No | Optional. Standard filter field to filter templates. client_id filter won't be supported and will restrict to templat... |
| `orderBy` | `string` | query | No | Optional. The results would be returned in the order you specified here. |
| `pageSize` | `integer` | query | No | Optional. The size of the response entries. If unspecified, defaults to 100. The maximum value is 1000; values above ... |
| `pageToken` | `string` | query | No | Optional. The token returned in the previous response. |
| `readMask` | `string` | query | No | Optional. The mask which specifies fields that need to be returned in the template's response. |

**Response**: `GoogleCloudIntegrationsV1alphaListTemplatesResponse`

```typescript
const res = await integrations.templates.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.templates.import`

**POST** `v1/{+name}:import`

Import the template to an existing integration. This api would keep track of usage_count and last_used_time. PERMISSION_DENIED would be thrown if template is not accessible by client.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name that is associated with the Template. |

**Request body**: `GoogleCloudIntegrationsV1alphaImportTemplateRequest`

**Response**: `GoogleCloudIntegrationsV1alphaImportTemplateResponse`

```typescript
const res = await integrations.templates.import({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.templates.download`

**GET** `v1/{+name}:download`

Downloads a template. Retrieves the `Template` and returns the response as a string.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The template to download. Format: projects/{project}/locations/{location}/template/{template_id} |
| `fileFormat` | `string` | query | No | Required. File format for download request. |

**Response**: `GoogleCloudIntegrationsV1alphaDownloadTemplateResponse`

```typescript
const res = await integrations.templates.download({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.templates.patch`

**PATCH** `v1/{+name}`

Updates the template by given id.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Resource name of the template. |
| `updateMask` | `string` | query | No | Required. Field mask specifying the fields in the above template that have been modified and must be updated. |

**Request body**: `GoogleCloudIntegrationsV1alphaTemplate`

**Response**: `GoogleCloudIntegrationsV1alphaTemplate`

```typescript
const res = await integrations.templates.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.templates.get`

**GET** `v1/{+name}`

Get a template in the specified project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The template to retrieve. Format: projects/{project}/locations/{location}/templates/{template} |

**Response**: `GoogleCloudIntegrationsV1alphaTemplate`

```typescript
const res = await integrations.templates.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.templates.create`

**POST** `v1/{+parent}/templates`

Creates a new template

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. "projects/{project}/locations/{location}" format. |

**Request body**: `GoogleCloudIntegrationsV1alphaTemplate`

**Response**: `GoogleCloudIntegrationsV1alphaTemplate`

```typescript
const res = await integrations.templates.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.templates.use`

**POST** `v1/{+name}:use`

Use the template to create integration. This api would keep track of usage_count and last_used_time. PERMISSION_DENIED would be thrown if template is not accessible by client.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name that is associated with the Template. |

**Request body**: `GoogleCloudIntegrationsV1alphaUseTemplateRequest`

**Response**: `GoogleCloudIntegrationsV1alphaUseTemplateResponse`

```typescript
const res = await integrations.templates.use({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.templates.delete`

**DELETE** `v1/{+name}`

Deletes a template

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name that is associated with the Template. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await integrations.templates.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.appsScriptProjects.create`

**POST** `v1/{+parent}/appsScriptProjects`

Creates an Apps Script project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project that the executed integration belongs to. |

**Request body**: `GoogleCloudIntegrationsV1alphaCreateAppsScriptProjectRequest`

**Response**: `GoogleCloudIntegrationsV1alphaCreateAppsScriptProjectResponse`

```typescript
const res = await integrations.appsScriptProjects.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.appsScriptProjects.link`

**POST** `v1/{+parent}/appsScriptProjects:link`

Links a existing Apps Script project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project that the executed integration belongs to. |

**Request body**: `GoogleCloudIntegrationsV1alphaLinkAppsScriptProjectRequest`

**Response**: `GoogleCloudIntegrationsV1alphaLinkAppsScriptProjectResponse`

```typescript
const res = await integrations.appsScriptProjects.link({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.cloudFunctions.create`

**POST** `v1/{+parent}/cloudFunctions`

Creates a cloud function project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project that the executed integration belongs to. |

**Request body**: `GoogleCloudIntegrationsV1alphaCreateCloudFunctionRequest`

**Response**: `GoogleCloudIntegrationsV1alphaCreateCloudFunctionResponse`

```typescript
const res = await integrations.cloudFunctions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.sfdcInstances.patch`

**PATCH** `v1/{+name}`

Updates an sfdc instance. Updates the sfdc instance in spanner. Returns the sfdc instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name of the SFDC instance projects/{project}/locations/{location}/sfdcInstances/{sfdcInstance}. |
| `updateMask` | `string` | query | No | Field mask specifying the fields in the above SfdcInstance that have been modified and need to be updated. |

**Request body**: `GoogleCloudIntegrationsV1alphaSfdcInstance`

**Response**: `GoogleCloudIntegrationsV1alphaSfdcInstance`

```typescript
const res = await integrations.sfdcInstances.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.sfdcInstances.delete`

**DELETE** `v1/{+name}`

Deletes an sfdc instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name that is associated with the SfdcInstance. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await integrations.sfdcInstances.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.sfdcInstances.get`

**GET** `v1/{+name}`

Gets an sfdc instance. If the instance doesn't exist, Code.NOT_FOUND exception will be thrown.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name that is associated with the SfdcInstance. |

**Response**: `GoogleCloudIntegrationsV1alphaSfdcInstance`

```typescript
const res = await integrations.sfdcInstances.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.sfdcInstances.create`

**POST** `v1/{+parent}/sfdcInstances`

Creates an sfdc instance record. Store the sfdc instance in Spanner. Returns the sfdc instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. "projects/{project}/locations/{location}" format. |

**Request body**: `GoogleCloudIntegrationsV1alphaSfdcInstance`

**Response**: `GoogleCloudIntegrationsV1alphaSfdcInstance`

```typescript
const res = await integrations.sfdcInstances.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.sfdcInstances.list`

**GET** `v1/{+parent}/sfdcInstances`

Lists all sfdc instances that match the filter. Restrict to sfdc instances belonging to the current client only.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The client, which owns this collection of SfdcInstances. |
| `filter` | `string` | query | No | Filtering as supported in https://developers.google.com/authorized-buyers/apis/guides/list-filters. |
| `pageSize` | `integer` | query | No | The size of entries in the response. If unspecified, defaults to 100. |
| `pageToken` | `string` | query | No | The token returned in the previous response. |
| `readMask` | `string` | query | No | The mask which specifies fields that need to be returned in the SfdcInstance's response. |

**Response**: `GoogleCloudIntegrationsV1alphaListSfdcInstancesResponse`

```typescript
const res = await integrations.sfdcInstances.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.sfdcInstances.sfdcChannels.create`

**POST** `v1/{+parent}/sfdcChannels`

Creates an sfdc channel record. Store the sfdc channel in Spanner. Returns the sfdc channel.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. "projects/{project}/locations/{location}" format. |

**Request body**: `GoogleCloudIntegrationsV1alphaSfdcChannel`

**Response**: `GoogleCloudIntegrationsV1alphaSfdcChannel`

```typescript
const res = await integrations.sfdcChannels.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.sfdcInstances.sfdcChannels.delete`

**DELETE** `v1/{+name}`

Deletes an sfdc channel.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name that is associated with the SfdcChannel. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await integrations.sfdcChannels.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.sfdcInstances.sfdcChannels.list`

**GET** `v1/{+parent}/sfdcChannels`

Lists all sfdc channels that match the filter. Restrict to sfdc channels belonging to the current client only.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The client, which owns this collection of SfdcChannels. |
| `filter` | `string` | query | No | Filtering as supported in https://developers.google.com/authorized-buyers/apis/guides/list-filters. |
| `pageSize` | `integer` | query | No | The size of entries in the response. If unspecified, defaults to 100. |
| `pageToken` | `string` | query | No | The token returned in the previous response. |
| `readMask` | `string` | query | No | The mask which specifies fields that need to be returned in the SfdcChannel's response. |

**Response**: `GoogleCloudIntegrationsV1alphaListSfdcChannelsResponse`

```typescript
const res = await integrations.sfdcChannels.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.sfdcInstances.sfdcChannels.get`

**GET** `v1/{+name}`

Gets an sfdc channel. If the channel doesn't exist, Code.NOT_FOUND exception will be thrown.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name that is associated with the SfdcChannel. |

**Response**: `GoogleCloudIntegrationsV1alphaSfdcChannel`

```typescript
const res = await integrations.sfdcChannels.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.sfdcInstances.sfdcChannels.patch`

**PATCH** `v1/{+name}`

Updates an sfdc channel. Updates the sfdc channel in spanner. Returns the sfdc channel.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name of the SFDC channel projects/{project}/locations/{location}/sfdcInstances/{sfdc_instance}/sfdcChannels/... |
| `updateMask` | `string` | query | No | Field mask specifying the fields in the above SfdcChannel that have been modified and need to be updated. |

**Request body**: `GoogleCloudIntegrationsV1alphaSfdcChannel`

**Response**: `GoogleCloudIntegrationsV1alphaSfdcChannel`

```typescript
const res = await integrations.sfdcChannels.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.authConfigs.delete`

**DELETE** `v1/{+name}`

Deletes an auth config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name that is associated with the AuthConfig. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await integrations.authConfigs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.authConfigs.patch`

**PATCH** `v1/{+name}`

Updates an auth config. If credential is updated, fetch the encrypted auth config from Spanner, decrypt with Cloud KMS key, update the credential fields, re-encrypt with Cloud KMS key and update the Spanner record. For other fields, directly update the Spanner record. Returns the encrypted auth config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name of the auth config. For more information, see Manage authentication profiles. projects/{project}/locati... |
| `clientCertificate.encryptedPrivateKey` | `string` | query | No | The ssl certificate encoded in PEM format. This string must include the begin header and end footer lines. For exampl... |
| `clientCertificate.passphrase` | `string` | query | No | 'passphrase' should be left unset if private key is not encrypted. Note that 'passphrase' is not the password for web... |
| `clientCertificate.sslCertificate` | `string` | query | No | The ssl certificate encoded in PEM format. This string must include the begin header and end footer lines. For exampl... |
| `updateMask` | `string` | query | No | Field mask specifying the fields in the above AuthConfig that have been modified and need to be updated. |

**Request body**: `GoogleCloudIntegrationsV1alphaAuthConfig`

**Response**: `GoogleCloudIntegrationsV1alphaAuthConfig`

```typescript
const res = await integrations.authConfigs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.authConfigs.list`

**GET** `v1/{+parent}/authConfigs`

Lists all auth configs that match the filter. Restrict to auth configs belong to the current client only.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The client, which owns this collection of AuthConfigs. |
| `filter` | `string` | query | No | Filtering as supported in https://developers.google.com/authorized-buyers/apis/guides/list-filters. |
| `pageSize` | `integer` | query | No | The size of entries in the response. If unspecified, defaults to 100. |
| `pageToken` | `string` | query | No | The token returned in the previous response. |
| `readMask` | `string` | query | No | The mask which specifies fields that need to be returned in the AuthConfig's response. |

**Response**: `GoogleCloudIntegrationsV1alphaListAuthConfigsResponse`

```typescript
const res = await integrations.authConfigs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.authConfigs.get`

**GET** `v1/{+name}`

Gets a complete auth config. If the auth config doesn't exist, Code.NOT_FOUND exception will be thrown. Returns the decrypted auth config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name that is associated with the AuthConfig. |

**Response**: `GoogleCloudIntegrationsV1alphaAuthConfig`

```typescript
const res = await integrations.authConfigs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.authConfigs.create`

**POST** `v1/{+parent}/authConfigs`

Creates an auth config record. Fetch corresponding credentials for specific auth types, e.g. access token for OAuth 2.0, JWT token for JWT. Encrypt the auth config with Cloud KMS and store the encrypted credentials in Spanner. Returns the encrypted auth config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. "projects/{project}/locations/{location}" format. |
| `clientCertificate.encryptedPrivateKey` | `string` | query | No | The ssl certificate encoded in PEM format. This string must include the begin header and end footer lines. For exampl... |
| `clientCertificate.passphrase` | `string` | query | No | 'passphrase' should be left unset if private key is not encrypted. Note that 'passphrase' is not the password for web... |
| `clientCertificate.sslCertificate` | `string` | query | No | The ssl certificate encoded in PEM format. This string must include the begin header and end footer lines. For exampl... |

**Request body**: `GoogleCloudIntegrationsV1alphaAuthConfig`

**Response**: `GoogleCloudIntegrationsV1alphaAuthConfig`

```typescript
const res = await integrations.authConfigs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.clients.replace`

**POST** `v1/{+parent}/clients:replace`

Update run-as service account for provisioned client

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Required: The ID of the GCP Project to be provisioned. |

**Request body**: `GoogleCloudIntegrationsV1alphaReplaceServiceAccountRequest`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await integrations.clients.replace({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.clients.provisionClientPostProcessor`

**POST** `v1/{+parent}/clients:provisionClientPostProcessor`

Perform post provisioning steps after client is provisioned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Required: The ID of the GCP Project to be provisioned. |

**Request body**: `GoogleCloudIntegrationsV1alphaProvisionClientPostProcessorRequest`

**Response**: `GoogleCloudIntegrationsV1alphaProvisionClientPostProcessorResponse`

```typescript
const res = await integrations.clients.provisionClientPostProcessor({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.clients.switch`

**POST** `v1/{+parent}/clients:switch`

Update client from GMEK to CMEK

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Required: The ID of the GCP Project to be provisioned. |

**Request body**: `GoogleCloudIntegrationsV1alphaSwitchEncryptionRequest`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await integrations.clients.switch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.clients.deprovision`

**POST** `v1/{+parent}/clients:deprovision`

Perform the deprovisioning steps to disable a user GCP project to use IP and purge all related data in a wipeout-compliant way.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Required: The ID of the GCP Project to be deprovisioned. |

**Request body**: `GoogleCloudIntegrationsV1alphaDeprovisionClientRequest`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await integrations.clients.deprovision({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.clients.toggleHttp`

**POST** `v1/{+parent}/clients:toggleHttp`

Enable/Disable http call for provisioned client

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Required: The ID of the GCP Project to be provisioned. |

**Request body**: `GoogleCloudIntegrationsV1alphaToggleHttpRequest`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await integrations.clients.toggleHttp({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.clients.provision`

**POST** `v1/{+parent}/clients:provision`

Perform the provisioning steps to enable a user GCP project to use IP. If GCP project already registered on IP end via Apigee Integration, provisioning will fail.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Required: The ID of the GCP Project to be provisioned. |

**Request body**: `GoogleCloudIntegrationsV1alphaProvisionClientRequest`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await integrations.clients.provision({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.clients.switchVariableMasking`

**POST** `v1/{+parent}/clients:switchVariableMasking`

Update variable masking for provisioned client

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Required: The ID of the GCP Project to be provisioned. |

**Request body**: `GoogleCloudIntegrationsV1alphaSwitchVariableMaskingRequest`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await integrations.clients.switchVariableMasking({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.projects.locations.clients.changeConfig`

**POST** `v1/{+parent}/clients:changeConfig`

Updates the client customer configuration for the given project and location resource name

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Required: Format - projects/{project}/locations/{location} |

**Request body**: `GoogleCloudIntegrationsV1alphaChangeCustomerConfigRequest`

**Response**: `GoogleCloudIntegrationsV1alphaChangeCustomerConfigResponse`

```typescript
const res = await integrations.clients.changeConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `integrations.connectorPlatformRegions.enumerate`

**GET** `v1/connectorPlatformRegions:enumerate`

Enumerates the regions for which Connector Platform is provisioned.

**Response**: `GoogleCloudIntegrationsV1alphaEnumerateConnectorPlatformRegionsResponse`

```typescript
const res = await integrations.connectorPlatformRegions.enumerate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `CrmlogErrorCode`

Registered ids for errors, as "oneof" enums. Each task or logical grouping of tasks may share the same enum.

| Property | Type | Description |
|----------|------|-------------|
| `commonErrorCode` | `string` |  |

### `EnterpriseCrmEventbusAuthconfigAuthConfigTaskParam`

| Property | Type | Description |
|----------|------|-------------|
| `allowedCredentialTypes` | `array<string>` | Defines the credential types to be supported as Task may restrict specific types to use, e.g. Clo... |
| `allowedServiceAccountInContext` | `boolean` |  |
| `authConfigId` | `string` | UUID of the AuthConfig. |
| `scope` | `string` | A space-delimited list of requested scope permissions. |
| `useServiceAccountInContext` | `boolean` |  |

### `EnterpriseCrmEventbusProtoAddress`

Email address along with optional name and tokens. These tokens will be substituted for the variables in the form of [{var_name}], where var_name could be any string of no more than 32 bytes.

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | Required. |
| `name` | `string` |  |
| `tokens` | `array<EnterpriseCrmEventbusProtoToken>` |  |

### `EnterpriseCrmEventbusProtoAttributes`

Attributes are additional options that can be associated with each event property. For more information, see

| Property | Type | Description |
|----------|------|-------------|
| `dataType` | `string` | Things like URL, Email, Currency, Timestamp (rather than string, int64...) |
| `defaultValue` | `EnterpriseCrmEventbusProtoValueType` | Used to define defaults. |
| `isRequired` | `boolean` | Required for event execution. The validation will be done by the event bus when the event is trig... |
| `isSearchable` | `boolean` | Used to indicate if a ParameterEntry should be converted to ParamIndexes for ST-Spanner full-text... |
| `logSettings` | `EnterpriseCrmEventbusProtoLogSettings` | See |
| `masked` | `boolean` | True if this workflow parameter should be masked in the logs |
| `readOnly` | `boolean` | Used to indicate if the ParameterEntry is a read only field or not. |
| `searchable` | `string` |  |
| `taskVisibility` | `array<string>` | List of tasks that can view this property, if empty then all. |

### `EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList`

List of error enums for alerts.

| Property | Type | Description |
|----------|------|-------------|
| `enumStrings` | `array<string>` |  |
| `filterType` | `string` |  |

### `EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue`

The threshold value of the metric, above or below which the alert should be triggered. See EventAlertConfig or TaskAlertConfig for the different alert metric types in each case. For the *RATE metrics, one or both of these fields may be set. Zero is the default value and can be left at that. For *PERCENTILE_DURATION metrics, one or both of these fields may be set, and also, the duration threshold value should be specified in the threshold_duration_ms member below. For *AVERAGE_DURATION metrics, these fields should not be set at all. A different member, threshold_duration_ms, must be set in the EventAlertConfig or the TaskAlertConfig.

| Property | Type | Description |
|----------|------|-------------|
| `absolute` | `string` |  |
| `percentage` | `integer` |  |

### `EnterpriseCrmEventbusProtoBaseFunction`

| Property | Type | Description |
|----------|------|-------------|
| `functionName` | `string` |  |

### `EnterpriseCrmEventbusProtoBaseValue`

| Property | Type | Description |
|----------|------|-------------|
| `baseFunction` | `EnterpriseCrmEventbusProtoFunction` | Start with a function that does not build on existing values. Eg. CurrentTime, Min, Max, Exists, ... |
| `literalValue` | `EnterpriseCrmEventbusProtoParameterValueType` | Start with a literal value. |
| `referenceValue` | `string` | Start with a reference value to dereference. |

### `EnterpriseCrmEventbusProtoBooleanArrayFunction`

| Property | Type | Description |
|----------|------|-------------|
| `functionName` | `string` |  |

### `EnterpriseCrmEventbusProtoBooleanFunction`

| Property | Type | Description |
|----------|------|-------------|
| `functionName` | `string` |  |

### `EnterpriseCrmEventbusProtoBooleanParameterArray`

| Property | Type | Description |
|----------|------|-------------|
| `booleanValues` | `array<boolean>` |  |

### `EnterpriseCrmEventbusProtoBuganizerNotification`

| Property | Type | Description |
|----------|------|-------------|
| `assigneeEmailAddress` | `string` | Whom to assign the new bug. Optional. |
| `componentId` | `string` | ID of the buganizer component within which to create a new issue. Required. |
| `templateId` | `string` | ID of the buganizer template to use. Optional. |
| `title` | `string` | Title of the issue to be created. Required. |

### `EnterpriseCrmEventbusProtoCloudKmsConfig`

| Property | Type | Description |
|----------|------|-------------|
| `gcpProjectId` | `string` | Optional. The id of GCP project where the KMS key is stored. If not provided, assume the key is s... |
| `keyName` | `string` | A Cloud KMS key is a named object containing one or more key versions, along with metadata for th... |
| `keyRingName` | `string` | A key ring organizes keys in a specific Google Cloud location and allows you to manage access con... |
| `keyVersionName` | `string` | Optional. Each version of a key contains key material used for encryption or signing. A key's ver... |
| `locationName` | `string` | Location name of the key ring, e.g. "us-west1". |
| `serviceAccount` | `string` | Optional. The service account used for authentication of this KMS key. If this is not provided, t... |

### `EnterpriseCrmEventbusProtoCloudLoggingDetails`

Cloud Logging details, selected by the user for the integration version (workflow). This message field will be also used in ExecutionInfo, to indicate the CloudLoggingDetails config at the time of workflow (integration version) execution, since this field value can be changed for an unpublished workflow.

| Property | Type | Description |
|----------|------|-------------|
| `cloudLoggingSeverity` | `string` | Severity selected by the customer for the logs to be sent to Cloud Logging, for the integration v... |
| `enableCloudLogging` | `boolean` | Status of whether Cloud Logging is enabled or not for the integration version getting executed. |

### `EnterpriseCrmEventbusProtoCloudSchedulerConfig`

Cloud Scheduler Trigger configuration

| Property | Type | Description |
|----------|------|-------------|
| `cronTab` | `string` | Required. The cron tab of cloud scheduler trigger. |
| `errorMessage` | `string` | Optional. When the job was deleted from Pantheon UI, error_message will be populated when Get/Lis... |
| `location` | `string` | Required. The location where associated cloud scheduler job will be created |
| `serviceAccountEmail` | `string` | Required. Service account used by Cloud Scheduler to trigger the integration at scheduled time |

### `EnterpriseCrmEventbusProtoCombinedCondition`

This message recursively combines constituent conditions using logical AND.

| Property | Type | Description |
|----------|------|-------------|
| `conditions` | `array<EnterpriseCrmEventbusProtoCondition>` | A set of individual constituent conditions. |

### `EnterpriseCrmEventbusProtoCondition`

Condition that uses `operator` to evaluate the key against the value.

| Property | Type | Description |
|----------|------|-------------|
| `eventPropertyKey` | `string` | Key that's evaluated against the `value`. Please note the data type of the runtime value associat... |
| `operator` | `string` | Operator used to evaluate the condition. Please note that an operator with an inappropriate key/v... |
| `value` | `EnterpriseCrmEventbusProtoValueType` | Value that's checked for the key. |

### `EnterpriseCrmEventbusProtoConditionResult`

Contains the combined condition calculation results.

| Property | Type | Description |
|----------|------|-------------|
| `currentTaskNumber` | `string` | the current task number. |
| `nextTaskNumber` | `string` | the next task number. |
| `result` | `boolean` | the result comes out after evaluate the combined condition. True if there's no combined condition... |

### `EnterpriseCrmEventbusProtoConditionalFailurePolicies`

| Property | Type | Description |
|----------|------|-------------|
| `defaultFailurePolicy` | `EnterpriseCrmEventbusProtoFailurePolicy` | The default failure policy to be applied if no conditional failure policy matches |
| `failurePolicies` | `array<EnterpriseCrmEventbusProtoFailurePolicy>` | The list of failure policies that will be applied to the task in order. |

### `EnterpriseCrmEventbusProtoConnectorsConnection`

| Property | Type | Description |
|----------|------|-------------|
| `connectionName` | `string` | Connection name Format: projects/{project}/locations/{location}/connections/{connection} |
| `connectorVersion` | `string` | Connector version Format: projects/{project}/locations/{location}/providers/{provider}/connectors... |
| `host` | `string` | The name of the Hostname of the Service Directory service with TLS if used. |
| `serviceName` | `string` | Service name Format: projects/{project}/locations/{location}/namespaces/{namespace}/services/{ser... |

### `EnterpriseCrmEventbusProtoConnectorsGenericConnectorTaskConfig`

| Property | Type | Description |
|----------|------|-------------|
| `connection` | `EnterpriseCrmEventbusProtoConnectorsConnection` | User-selected connection. |
| `operation` | `string` | Operation to perform using the configured connection. |

### `EnterpriseCrmEventbusProtoCoordinate`

Represents two-dimensional positions.

| Property | Type | Description |
|----------|------|-------------|
| `x` | `integer` |  |
| `y` | `integer` |  |

### `EnterpriseCrmEventbusProtoCustomSuspensionRequest`

| Property | Type | Description |
|----------|------|-------------|
| `postToQueueWithTriggerIdRequest` | `GoogleInternalCloudCrmEventbusV3PostToQueueWithTriggerIdRequest` | Request to fire an event containing the SuspensionInfo message. |
| `suspensionInfoEventParameterKey` | `string` | In the fired event, set the SuspensionInfo message as the value for this key. |

### `EnterpriseCrmEventbusProtoDoubleArray`

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<number>` |  |

### `EnterpriseCrmEventbusProtoDoubleArrayFunction`

| Property | Type | Description |
|----------|------|-------------|
| `functionName` | `string` |  |

### `EnterpriseCrmEventbusProtoDoubleFunction`

| Property | Type | Description |
|----------|------|-------------|
| `functionName` | `string` |  |

### `EnterpriseCrmEventbusProtoDoubleParameterArray`

| Property | Type | Description |
|----------|------|-------------|
| `doubleValues` | `array<number>` |  |

### `EnterpriseCrmEventbusProtoErrorDetail`

An error, warning, or information message associated with a workflow.

| Property | Type | Description |
|----------|------|-------------|
| `errorCode` | `CrmlogErrorCode` | The associated error-code, which can be a common or internal code. |
| `errorMessage` | `string` | The full text of the error message, including any parameters that were thrown along with the exce... |
| `severity` | `string` | The severity of the error: ERROR|WARN|INFO. |
| `taskNumber` | `integer` | The task try-number, in which, the error occurred. If zero, the error happened at the event level. |

### `EnterpriseCrmEventbusProtoEventBusProperties`

LINT.IfChange This message is used for storing key value pair properties for each Event / Task in the EventBus.

| Property | Type | Description |
|----------|------|-------------|
| `properties` | `array<EnterpriseCrmEventbusProtoPropertyEntry>` | An unordered list of property entries. |

### `EnterpriseCrmEventbusProtoEventExecutionDetails`

Contains the details of the execution info of this event: this includes the tasks execution details plus the event execution statistics. Next available id: 12

| Property | Type | Description |
|----------|------|-------------|
| `cancelReason` | `string` | If the execution is manually canceled, this field will contain the reason for cancellation. |
| `eventAttemptStats` | `array<EnterpriseCrmEventbusProtoEventExecutionDetailsEventAttemptStats>` |  |
| `eventExecutionSnapshot` | `array<EnterpriseCrmEventbusProtoEventExecutionSnapshot>` |  |
| `eventExecutionSnapshotsSize` | `string` | Total size of all event_execution_snapshots for an execution |
| `eventExecutionState` | `string` |  |
| `eventRetriesFromBeginningCount` | `integer` | Indicates the number of times the execution has restarted from the beginning. |
| `logFilePath` | `string` | The log file path (aka. cns address) for this event. |
| `networkAddress` | `string` | The network address (aka. bns address) that indicates where the event executor is running. |
| `nextExecutionTime` | `string` | Next scheduled execution time in case the execution status was RETRY_ON_HOLD. |
| `ryeLockUnheldCount` | `integer` | Used internally and shouldn't be exposed to users. A counter for the cron job to record how many ... |

### `EnterpriseCrmEventbusProtoEventExecutionDetailsEventAttemptStats`

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | The end time of the event execution for current attempt. |
| `startTime` | `string` | The start time of the event execution for current attempt. This could be in the future if it's be... |

### `EnterpriseCrmEventbusProtoEventExecutionSnapshot`

Contains the snapshot of the event execution for a given checkpoint. Next available id: 15

| Property | Type | Description |
|----------|------|-------------|
| `checkpointTaskNumber` | `string` | Indicates "right after which checkpoint task's execution" this snapshot is taken. |
| `clientId` | `string` | Client that the execution snapshot is associated to. |
| `conditionResults` | `array<EnterpriseCrmEventbusProtoConditionResult>` | All of the computed conditions that been calculated. |
| `diffParams` | `EnterpriseCrmEventbusProtoEventParameters` | The parameters in Event object that differs from last snapshot. |
| `eventExecutionInfoId` | `string` | Points to the event execution info this snapshot belongs to. |
| `eventExecutionSnapshotId` | `string` | Auto-generated. Used as primary key for EventExecutionSnapshots table. |
| `eventExecutionSnapshotMetadata` | `EnterpriseCrmEventbusProtoEventExecutionSnapshotEventExecutionSnapshotMetadata` |  |
| `eventParams` | `EnterpriseCrmEventbusProtoEventParameters` | The parameters in Event object. |
| `exceedMaxSize` | `boolean` | indicate whether snapshot exceeded maximum size before clean up |
| `snapshotTime` | `string` | Indicates when this snapshot is taken. |
| `taskExecutionDetails` | `array<EnterpriseCrmEventbusProtoTaskExecutionDetails>` | All of the task execution details at the given point of time. |
| `taskName` | `string` | The task name associated with this snapshot. Could be empty. |
| `workflowName` | `string` | Name of the workflow this event execution snapshot belongs to. |

### `EnterpriseCrmEventbusProtoEventExecutionSnapshotEventExecutionSnapshotMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `ancestorIterationNumbers` | `array<string>` | Ancestor iteration number for the task(it will only be non-empty if the task is under 'private wo... |
| `ancestorTaskNumbers` | `array<string>` | Ancestor task number for the task(it will only be non-empty if the task is under 'private workflow') |
| `eventAttemptNum` | `integer` | the event attempt number this snapshot belongs to. |
| `integrationName` | `string` | The direct integration which the event execution snapshots belongs to |
| `taskAttemptNum` | `integer` | the task attempt number this snapshot belongs to. Could be empty. |
| `taskLabel` | `string` | the task label associated with this snapshot. Could be empty. |
| `taskName` | `string` | the task name associated with this snapshot. Could be empty. |
| `taskNumber` | `string` | The task number associated with this snapshot. Could be empty. |

### `EnterpriseCrmEventbusProtoEventParameters`

LINT.IfChange This message is used for processing and persisting (when applicable) key value pair parameters for each event in the event bus. Please see

| Property | Type | Description |
|----------|------|-------------|
| `parameters` | `array<EnterpriseCrmEventbusProtoParameterEntry>` | Parameters are a part of Event and can be used to communicate between different tasks that are pa... |

### `EnterpriseCrmEventbusProtoExecutionTraceInfo`

Message that helps aggregate all sub-executions triggered by one execution and keeps track of child-parent relationships.

| Property | Type | Description |
|----------|------|-------------|
| `parentEventExecutionInfoId` | `string` | Parent event execution info id that triggers the current execution through SubWorkflowExecutorTask. |
| `traceId` | `string` | Used to aggregate ExecutionTraceInfo. |

### `EnterpriseCrmEventbusProtoExternalTraffic`

Represents external traffic type and id.

| Property | Type | Description |
|----------|------|-------------|
| `enableInternalIp` | `boolean` | Indicates the client enables internal IP feature, this is applicable for internal clients only. |
| `gcpProjectId` | `string` | User’s GCP project id the traffic is referring to. |
| `gcpProjectNumber` | `string` | User’s GCP project number the traffic is referring to. |
| `location` | `string` | Location for the user's request. |
| `retryRequestForQuota` | `boolean` | Enqueue the execution request due to quota issue |
| `source` | `string` |  |

### `EnterpriseCrmEventbusProtoFailurePolicy`

Policy that defines the task retry logic and failure type. If no FailurePolicy is defined for a task, all its dependent tasks will not be executed (i.e, a `retry_strategy` of NONE will be applied).

| Property | Type | Description |
|----------|------|-------------|
| `intervalInSeconds` | `string` | Required if retry_strategy is FIXED_INTERVAL or LINEAR/EXPONENTIAL_BACKOFF/RESTART_WORKFLOW_WITH_... |
| `maxNumRetries` | `integer` | Required if retry_strategy is FIXED_INTERVAL or LINEAR/EXPONENTIAL_BACKOFF/RESTART_WORKFLOW_WITH_... |
| `retryCondition` | `string` | Optional. The retry condition that will be evaluated for this failure policy with the correspondi... |
| `retryStrategy` | `string` | Defines what happens to the task upon failure. |

### `EnterpriseCrmEventbusProtoField`

Information about the value and type of the field.

| Property | Type | Description |
|----------|------|-------------|
| `cardinality` | `string` | By default, if the cardinality is unspecified the field is considered required while mapping. |
| `defaultValue` | `EnterpriseCrmEventbusProtoParameterValueType` | This holds the default values for the fields. This value is supplied by user so may or may not co... |
| `fieldType` | `string` | Specifies the data type of the field. |
| `protoDefPath` | `string` | Optional. The fully qualified proto name (e.g. enterprise.crm.storage.Account). Required for outp... |
| `referenceKey` | `string` | This holds the reference key of the workflow or task parameter. 1. Any workflow parameter, for e.... |
| `transformExpression` | `EnterpriseCrmEventbusProtoTransformExpression` | This is the transform expression to fetch the input field value. for e.g. $param1$.CONCAT('test')... |

### `EnterpriseCrmEventbusProtoFieldMappingConfig`

Field Mapping Config to map multiple output fields values from input fields values.

| Property | Type | Description |
|----------|------|-------------|
| `mappedFields` | `array<EnterpriseCrmEventbusProtoMappedField>` |  |

### `EnterpriseCrmEventbusProtoFunction`

| Property | Type | Description |
|----------|------|-------------|
| `functionType` | `EnterpriseCrmEventbusProtoFunctionType` | The name of the function to perform. |
| `parameters` | `array<EnterpriseCrmEventbusProtoTransformExpression>` | List of parameters required for the transformation. |

### `EnterpriseCrmEventbusProtoFunctionType`

| Property | Type | Description |
|----------|------|-------------|
| `baseFunction` | `EnterpriseCrmEventbusProtoBaseFunction` | LINT.IfChange |
| `booleanArrayFunction` | `EnterpriseCrmEventbusProtoBooleanArrayFunction` |  |
| `booleanFunction` | `EnterpriseCrmEventbusProtoBooleanFunction` |  |
| `doubleArrayFunction` | `EnterpriseCrmEventbusProtoDoubleArrayFunction` |  |
| `doubleFunction` | `EnterpriseCrmEventbusProtoDoubleFunction` |  |
| `intArrayFunction` | `EnterpriseCrmEventbusProtoIntArrayFunction` |  |
| `intFunction` | `EnterpriseCrmEventbusProtoIntFunction` |  |
| `jsonFunction` | `EnterpriseCrmEventbusProtoJsonFunction` |  |
| `protoArrayFunction` | `EnterpriseCrmEventbusProtoProtoArrayFunction` |  |
| `protoFunction` | `EnterpriseCrmEventbusProtoProtoFunction` |  |
| `stringArrayFunction` | `EnterpriseCrmEventbusProtoStringArrayFunction` |  |
| `stringFunction` | `EnterpriseCrmEventbusProtoStringFunction` |  |

### `EnterpriseCrmEventbusProtoIntArray`

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<string>` |  |

### `EnterpriseCrmEventbusProtoIntArrayFunction`

| Property | Type | Description |
|----------|------|-------------|
| `functionName` | `string` |  |

### `EnterpriseCrmEventbusProtoIntFunction`

| Property | Type | Description |
|----------|------|-------------|
| `functionName` | `string` |  |

### `EnterpriseCrmEventbusProtoIntParameterArray`

| Property | Type | Description |
|----------|------|-------------|
| `intValues` | `array<string>` |  |

### `EnterpriseCrmEventbusProtoJsonFunction`

| Property | Type | Description |
|----------|------|-------------|
| `functionName` | `string` |  |

### `EnterpriseCrmEventbusProtoLogSettings`

The LogSettings define the logging attributes for an event property. These attributes are used to map the property to the parameter in the log proto. Also used to define scrubbing/truncation behavior and PII information.

| Property | Type | Description |
|----------|------|-------------|
| `logFieldName` | `string` | The name of corresponding logging field of the event property. If omitted, assumes the same name ... |
| `seedPeriod` | `string` |  |
| `seedScope` | `string` |  |

### `EnterpriseCrmEventbusProtoLoopMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `currentIterationCount` | `string` | Starting from 1, not 0. |
| `currentIterationDetail` | `string` | Needs to be set by the loop impl class before each iteration. The abstract loop class will append... |
| `errorMsg` | `string` | Add the error message when loops fail. |
| `failureLocation` | `string` | Indicates where in the loop logic did it error out. |

### `EnterpriseCrmEventbusProtoMappedField`

Mapped field is a pair of input field and output field.

| Property | Type | Description |
|----------|------|-------------|
| `inputField` | `EnterpriseCrmEventbusProtoField` | The input field being mapped from. |
| `outputField` | `EnterpriseCrmEventbusProtoField` | The output field being mapped to. |

### `EnterpriseCrmEventbusProtoNextTask`

The task that is next in line to be executed, if the condition specified evaluated to true.

| Property | Type | Description |
|----------|------|-------------|
| `combinedConditions` | `array<EnterpriseCrmEventbusProtoCombinedCondition>` | Combined condition for this task to become an eligible next task. Each of these combined_conditio... |
| `condition` | `string` | Standard filter expression for this task to become an eligible next task. |
| `description` | `string` | User-provided description intended to give more business context about the next task edge or cond... |
| `label` | `string` | User-provided label that is attached to this edge in the UI. |
| `taskConfigId` | `string` | ID of the next task. |
| `taskNumber` | `string` | Task number of the next task. |

### `EnterpriseCrmEventbusProtoNextTeardownTask`

The teardown task that is next in line to be executed. We support only sequential execution of teardown tasks (i.e. no branching).

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. Name of the next teardown task. |

### `EnterpriseCrmEventbusProtoNodeIdentifier`

Represents a node identifier (type + id). Next highest id: 3

| Property | Type | Description |
|----------|------|-------------|
| `elementIdentifier` | `string` | Configuration of the edge. |
| `elementType` | `string` | Destination node where the edge ends. It can only be a task config. |

### `EnterpriseCrmEventbusProtoNotification`

| Property | Type | Description |
|----------|------|-------------|
| `buganizerNotification` | `EnterpriseCrmEventbusProtoBuganizerNotification` |  |
| `emailAddress` | `EnterpriseCrmEventbusProtoAddress` |  |
| `escalatorQueue` | `string` |  |
| `pubsubTopic` | `string` |  |
| `request` | `EnterpriseCrmEventbusProtoCustomSuspensionRequest` | If the out-of-the-box email/pubsub notifications are not suitable and custom logic is required, f... |

### `EnterpriseCrmEventbusProtoParamSpecEntryConfig`

| Property | Type | Description |
|----------|------|-------------|
| `descriptivePhrase` | `string` | A short phrase to describe what this parameter contains. |
| `helpText` | `string` | Detailed help text for this parameter containing information not provided elsewhere. For example,... |
| `hideDefaultValue` | `boolean` | Whether the default value is hidden in the UI. |
| `inputDisplayOption` | `string` |  |
| `isHidden` | `boolean` | Whether this field is hidden in the UI. |
| `label` | `string` | A user-friendly label for the parameter. |
| `parameterNameOption` | `string` |  |
| `subSectionLabel` | `string` | A user-friendly label for subSection under which the parameter will be displayed. |
| `uiPlaceholderText` | `string` | Placeholder text which will appear in the UI input form for this parameter. |

### `EnterpriseCrmEventbusProtoParamSpecEntryProtoDefinition`

| Property | Type | Description |
|----------|------|-------------|
| `fullName` | `string` | The fully-qualified proto name. This message, for example, would be "enterprise.crm.eventbus.prot... |
| `path` | `string` | Path to the proto file that contains the message type's definition. |

### `EnterpriseCrmEventbusProtoParamSpecEntryValidationRule`

| Property | Type | Description |
|----------|------|-------------|
| `doubleRange` | `EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange` |  |
| `intRange` | `EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange` |  |
| `stringRegex` | `EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex` |  |

### `EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange`

Range used to validate doubles and floats.

| Property | Type | Description |
|----------|------|-------------|
| `max` | `number` | The inclusive maximum of the acceptable range. |
| `min` | `number` | The inclusive minimum of the acceptable range. |

### `EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange`

Range used to validate longs and ints.

| Property | Type | Description |
|----------|------|-------------|
| `max` | `string` | The inclusive maximum of the acceptable range. |
| `min` | `string` | The inclusive minimum of the acceptable range. |

### `EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex`

Rule used to validate strings.

| Property | Type | Description |
|----------|------|-------------|
| `exclusive` | `boolean` | Whether the regex matcher is applied exclusively (if true, matching values will be rejected). |
| `regex` | `string` | The regex applied to the input value(s). |

### `EnterpriseCrmEventbusProtoParameterEntry`

Key-value pair of EventBus parameters.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | Key is used to retrieve the corresponding parameter value. This should be unique for a given fire... |
| `masked` | `boolean` | True if this parameter should be masked in the logs |
| `value` | `EnterpriseCrmEventbusProtoParameterValueType` | Values for the defined keys. Each value can either be string, int, double or any proto message. |

### `EnterpriseCrmEventbusProtoParameterMap`

A generic multi-map that holds key value pairs. They keys and values can be of any type, unless specified.

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<EnterpriseCrmEventbusProtoParameterMapEntry>` |  |
| `keyType` | `string` | Option to specify key value type for all entries of the map. If provided then field types for all... |
| `valueType` | `string` |  |

### `EnterpriseCrmEventbusProtoParameterMapEntry`

Entry is a pair of key and value.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `EnterpriseCrmEventbusProtoParameterMapField` |  |
| `value` | `EnterpriseCrmEventbusProtoParameterMapField` |  |

### `EnterpriseCrmEventbusProtoParameterMapField`

Field represents either the key or value in an entry.

| Property | Type | Description |
|----------|------|-------------|
| `literalValue` | `EnterpriseCrmEventbusProtoParameterValueType` | Passing a literal value. |
| `referenceKey` | `string` | Referencing one of the WF variables. |

### `EnterpriseCrmEventbusProtoParameterValueType`

LINT.IfChange To support various types of parameter values. Next available id: 14

| Property | Type | Description |
|----------|------|-------------|
| `booleanArray` | `EnterpriseCrmEventbusProtoBooleanParameterArray` |  |
| `booleanValue` | `boolean` |  |
| `doubleArray` | `EnterpriseCrmEventbusProtoDoubleParameterArray` |  |
| `doubleValue` | `number` |  |
| `intArray` | `EnterpriseCrmEventbusProtoIntParameterArray` |  |
| `intValue` | `string` |  |
| `protoArray` | `EnterpriseCrmEventbusProtoProtoParameterArray` |  |
| `protoValue` | `object` |  |
| `serializedObjectValue` | `EnterpriseCrmEventbusProtoSerializedObjectParameter` |  |
| `stringArray` | `EnterpriseCrmEventbusProtoStringParameterArray` |  |
| `stringValue` | `string` |  |

### `EnterpriseCrmEventbusProtoPropertyEntry`

Key-value pair of EventBus property.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | Key is used to retrieve the corresponding property value. This should be unique for a given fired... |
| `value` | `EnterpriseCrmEventbusProtoValueType` | Values for the defined keys. Each value can either be string, int, double or any proto message. |

### `EnterpriseCrmEventbusProtoProtoArrayFunction`

| Property | Type | Description |
|----------|------|-------------|
| `functionName` | `string` |  |

### `EnterpriseCrmEventbusProtoProtoFunction`

| Property | Type | Description |
|----------|------|-------------|
| `functionName` | `string` |  |

### `EnterpriseCrmEventbusProtoProtoParameterArray`

| Property | Type | Description |
|----------|------|-------------|
| `protoValues` | `array<object>` |  |

### `EnterpriseCrmEventbusProtoScatterResponse`

| Property | Type | Description |
|----------|------|-------------|
| `errorMsg` | `string` | The error message of the failure if applicable. |
| `executionIds` | `array<string>` | The execution ids of each Subworkflow fired by this scatter. |
| `isSuccessful` | `boolean` | If execution is sync, this is true if the execution passed and false if it failed. If the executi... |
| `responseParams` | `array<EnterpriseCrmEventbusProtoParameterEntry>` | A list of all the response parameters in the aggregtorMap stored with the remapped key. |
| `scatterElement` | `EnterpriseCrmEventbusProtoParameterValueType` | The element that was scattered for this execution. |

### `EnterpriseCrmEventbusProtoSerializedObjectParameter`

| Property | Type | Description |
|----------|------|-------------|
| `objectValue` | `string` |  |

### `EnterpriseCrmEventbusProtoStringArray`

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<string>` |  |

### `EnterpriseCrmEventbusProtoStringArrayFunction`

| Property | Type | Description |
|----------|------|-------------|
| `functionName` | `string` |  |

### `EnterpriseCrmEventbusProtoStringFunction`

| Property | Type | Description |
|----------|------|-------------|
| `functionName` | `string` |  |

### `EnterpriseCrmEventbusProtoStringParameterArray`

| Property | Type | Description |
|----------|------|-------------|
| `stringValues` | `array<string>` |  |

### `EnterpriseCrmEventbusProtoSuccessPolicy`

Policy that dictates the behavior for the task after it completes successfully.

| Property | Type | Description |
|----------|------|-------------|
| `finalState` | `string` | State to which the execution snapshot status will be set if the task succeeds. |

### `EnterpriseCrmEventbusProtoSuspensionAuthPermissions`

LINT.IfChange

| Property | Type | Description |
|----------|------|-------------|
| `gaiaIdentity` | `EnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity` | Represents a Gaia identity for a person or service account. |
| `googleGroup` | `EnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity` |  |
| `loasRole` | `string` |  |
| `mdbGroup` | `string` |  |

### `EnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity`

| Property | Type | Description |
|----------|------|-------------|
| `emailAddress` | `string` |  |
| `gaiaId` | `string` |  |

### `EnterpriseCrmEventbusProtoSuspensionConfig`

| Property | Type | Description |
|----------|------|-------------|
| `customMessage` | `string` | Optional information to provide recipients of the suspension in addition to the resolution URL, t... |
| `notifications` | `array<EnterpriseCrmEventbusProtoNotification>` |  |
| `suspensionExpiration` | `EnterpriseCrmEventbusProtoSuspensionExpiration` | Indicates the next steps when no external actions happen on the suspension. |
| `whoMayResolve` | `array<EnterpriseCrmEventbusProtoSuspensionAuthPermissions>` | Identities able to resolve this suspension. |

### `EnterpriseCrmEventbusProtoSuspensionExpiration`

| Property | Type | Description |
|----------|------|-------------|
| `expireAfterMs` | `integer` | Milliseconds after which the suspension expires, if no action taken. |
| `liftWhenExpired` | `boolean` | Whether the suspension will be REJECTED or LIFTED upon expiration. REJECTED is the default behavior. |
| `remindAfterMs` | `integer` | Milliseconds after which the previous suspension action reminder, if any, is sent using the selec... |

### `EnterpriseCrmEventbusProtoSuspensionResolutionInfo`

| Property | Type | Description |
|----------|------|-------------|
| `audit` | `EnterpriseCrmEventbusProtoSuspensionResolutionInfoAudit` |  |
| `clientId` | `string` | The event data user sends as request. |
| `cloudKmsConfig` | `EnterpriseCrmEventbusProtoCloudKmsConfig` | KMS info, used by cmek/gmek integration |
| `createdTimestamp` | `string` | Auto-generated. |
| `encryptedSuspensionResolutionInfo` | `string` | Encrypted SuspensionResolutionInfo |
| `eventExecutionInfoId` | `string` | Required. ID of the associated execution. |
| `externalTraffic` | `EnterpriseCrmEventbusProtoExternalTraffic` | The origin of the suspension for periodic notifications. |
| `lastModifiedTimestamp` | `string` | Auto-generated. |
| `product` | `string` | Which Google product the suspension belongs to. If not set, the suspension belongs to Integration... |
| `status` | `string` |  |
| `suspensionConfig` | `EnterpriseCrmEventbusProtoSuspensionConfig` |  |
| `suspensionId` | `string` | Primary key for the SuspensionResolutionInfoTable. |
| `taskNumber` | `string` | Required. Task number of the associated SuspensionTask. |
| `workflowName` | `string` | Required. The name of the originating workflow. |
| `wrappedDek` | `string` | Wrapped dek |

### `EnterpriseCrmEventbusProtoSuspensionResolutionInfoAudit`

| Property | Type | Description |
|----------|------|-------------|
| `resolvedBy` | `string` |  |
| `resolvedByCpi` | `string` |  |
| `timestamp` | `string` |  |

### `EnterpriseCrmEventbusProtoTaskAlertConfig`

Message to be used to configure alerting in the {@code TaskConfig} protos for tasks in an event.

| Property | Type | Description |
|----------|------|-------------|
| `aggregationPeriod` | `string` | The period over which the metric value should be aggregated and evaluated. Format is , where inte... |
| `alertDisabled` | `boolean` | Set to false by default. When set to true, the metrics are not aggregated or pushed to Monarch fo... |
| `alertName` | `string` | A name to identify this alert. This will be displayed in the alert subject. If set, this name sho... |
| `clientId` | `string` | Client associated with this alert configuration. Must be a client enabled in one of the containin... |
| `durationThresholdMs` | `string` | Should be specified only for TASK_AVERAGE_DURATION and TASK_PERCENTILE_DURATION metrics. This mem... |
| `errorEnumList` | `EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList` |  |
| `metricType` | `string` |  |
| `numAggregationPeriods` | `integer` | For how many contiguous aggregation periods should the expected min or max be violated for the al... |
| `onlyFinalAttempt` | `boolean` | Only count final task attempts, not retries. |
| `playbookUrl` | `string` | Link to a playbook for resolving the issue that triggered this alert. |
| `thresholdType` | `string` | The threshold type for which this alert is being configured. If value falls below expected_min or... |
| `thresholdValue` | `EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue` | The metric value, above or below which the alert should be triggered. |
| `warningEnumList` | `EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList` |  |

### `EnterpriseCrmEventbusProtoTaskExecutionDetails`

Contains the details of the execution of this task. Next available id: 11

| Property | Type | Description |
|----------|------|-------------|
| `skippedOnFailure` | `boolean` | Indicates whether the task was skipped on failure. Only relevant if the task is in SKIPPED state. |
| `taskAttemptStats` | `array<EnterpriseCrmEventbusProtoTaskExecutionDetailsTaskAttemptStats>` |  |
| `taskExecutionState` | `string` |  |
| `taskNumber` | `string` | Pointer to the task config it used for execution. |

### `EnterpriseCrmEventbusProtoTaskExecutionDetailsTaskAttemptStats`

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | The end time of the task execution for current attempt. |
| `startTime` | `string` | The start time of the task execution for current attempt. This could be in the future if it's bee... |

### `EnterpriseCrmEventbusProtoTaskMetadata`

TaskMetadata are attributes that are associated to every common Task we have.

| Property | Type | Description |
|----------|------|-------------|
| `activeTaskName` | `string` | The new task name to replace the current task if it is deprecated. Otherwise, it is the same as t... |
| `admins` | `array<EnterpriseCrmEventbusProtoTaskMetadataAdmin>` |  |
| `category` | `string` |  |
| `codeSearchLink` | `string` | The Code Search link to the Task Java file. |
| `defaultJsonValidationOption` | `string` | Controls whether JSON workflow parameters are validated against provided schemas before and/or af... |
| `defaultSpec` | `string` | Contains the initial configuration of the task with default values set. For now, The string shoul... |
| `description` | `string` | In a few sentences, describe the purpose and usage of the task. |
| `descriptiveName` | `string` | The string name to show on the task list on the Workflow editor screen. This should be a very sho... |
| `docMarkdown` | `string` | Snippet of markdown documentation to embed in the RHP for this task. |
| `externalCategory` | `string` |  |
| `externalCategorySequence` | `integer` | Sequence with which the task in specific category to be displayed in task discovery panel for ext... |
| `externalDocHtml` | `string` | External-facing documention embedded in the RHP for this task. |
| `externalDocLink` | `string` | Doc link for external-facing documentation (separate from g3doc). |
| `externalDocMarkdown` | `string` | DEPRECATED: Use external_doc_html. |
| `g3DocLink` | `string` | URL to the associated G3 Doc for the task if available |
| `iconLink` | `string` | URL to gstatic image icon for this task. This icon shows up on the task list panel along with the... |
| `isDeprecated` | `boolean` | The deprecation status of the current task. Default value is false; |
| `name` | `string` | The actual class name or the annotated name of the task. Task Author should initialize this field... |
| `standaloneExternalDocHtml` | `string` | External-facing documention for standalone IP in pantheon embedded in the RHP for this task. Non ... |
| `status` | `string` | Allows author to indicate if the task is ready to use or not. If not set, then it will default to... |
| `system` | `string` |  |
| `tags` | `array<string>` | A set of tags that pertain to a particular task. This can be used to improve the searchability of... |

### `EnterpriseCrmEventbusProtoTaskMetadataAdmin`

Admins are owners of a Task, and have all permissions on a particular task identified by the task name. By default, Eventbus periodically scans all task metadata and syncs (adds) any new admins defined here to Zanzibar.

| Property | Type | Description |
|----------|------|-------------|
| `googleGroupEmail` | `string` |  |
| `userEmail` | `string` |  |

### `EnterpriseCrmEventbusProtoTaskUiConfig`

Task authors would use this type to configure the UI for a particular task by specifying what UI config modules should be included to compose the UI. Learn more about config module framework:

| Property | Type | Description |
|----------|------|-------------|
| `taskUiModuleConfigs` | `array<EnterpriseCrmEventbusProtoTaskUiModuleConfig>` | Configurations of included config modules. |

### `EnterpriseCrmEventbusProtoTaskUiModuleConfig`

Task author would use this type to configure a config module.

| Property | Type | Description |
|----------|------|-------------|
| `moduleId` | `string` | ID of the config module. |

### `EnterpriseCrmEventbusProtoTeardown`

| Property | Type | Description |
|----------|------|-------------|
| `teardownTaskConfigs` | `array<EnterpriseCrmEventbusProtoTeardownTaskConfig>` | Required. |

### `EnterpriseCrmEventbusProtoTeardownTaskConfig`

| Property | Type | Description |
|----------|------|-------------|
| `creatorEmail` | `string` | The creator's email address. |
| `name` | `string` | Required. Unique identifier of the teardown task within this Config. We use this field as the ide... |
| `nextTeardownTask` | `EnterpriseCrmEventbusProtoNextTeardownTask` |  |
| `parameters` | `EnterpriseCrmEventbusProtoEventParameters` | The parameters the user can pass to this task. |
| `properties` | `EnterpriseCrmEventbusProtoEventBusProperties` |  |
| `teardownTaskImplementationClassName` | `string` | Required. Implementation class name. |

### `EnterpriseCrmEventbusProtoToken`

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` |  |
| `value` | `string` |  |

### `EnterpriseCrmEventbusProtoTransformExpression`

| Property | Type | Description |
|----------|------|-------------|
| `initialValue` | `EnterpriseCrmEventbusProtoBaseValue` | Initial value upon which to perform transformations. |
| `transformationFunctions` | `array<EnterpriseCrmEventbusProtoFunction>` | Transformations to be applied sequentially. |

### `EnterpriseCrmEventbusProtoTriggerCriteria`

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `string` | Required. Standard filter expression, when true the workflow will be executed. If there's no trig... |
| `parameters` | `EnterpriseCrmEventbusProtoEventParameters` | Optional. To be used in TaskConfig for the implementation class. |
| `triggerCriteriaTaskImplementationClassName` | `string` | Optional. Implementation class name. The class should implement the “TypedTask” interface. |

### `EnterpriseCrmEventbusProtoValueType`

Used for define type for values. Currently supported value types include int, string, double, array, and any proto message.

| Property | Type | Description |
|----------|------|-------------|
| `booleanValue` | `boolean` |  |
| `doubleArray` | `EnterpriseCrmEventbusProtoDoubleArray` |  |
| `doubleValue` | `number` |  |
| `intArray` | `EnterpriseCrmEventbusProtoIntArray` |  |
| `intValue` | `string` |  |
| `protoValue` | `object` |  |
| `stringArray` | `EnterpriseCrmEventbusProtoStringArray` |  |
| `stringValue` | `string` |  |

### `EnterpriseCrmEventbusProtoWorkflowAlertConfig`

Message to be used to configure custom alerting in the {@code EventConfig} protos for an event.

| Property | Type | Description |
|----------|------|-------------|
| `aggregationPeriod` | `string` | For an EXPECTED_MIN threshold, this aggregation_period must be lesser than 24 hours. |
| `alertDisabled` | `boolean` | Set to false by default. When set to true, the metrics are not aggregated or pushed to Monarch fo... |
| `alertName` | `string` | A name to identify this alert. This will be displayed in the alert subject. If set, this name sho... |
| `clientId` | `string` | Client associated with this alert configuration. |
| `durationThresholdMs` | `string` | Should be specified only for *AVERAGE_DURATION and *PERCENTILE_DURATION metrics. This member shou... |
| `errorEnumList` | `EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList` |  |
| `metricType` | `string` |  |
| `numAggregationPeriods` | `integer` | For how many contiguous aggregation periods should the expected min or max be violated for the al... |
| `onlyFinalAttempt` | `boolean` | For either events or tasks, depending on the type of alert, count only final attempts, not retries. |
| `playbookUrl` | `string` | Link to a playbook for resolving the issue that triggered this alert. |
| `thresholdType` | `string` | The threshold type, whether lower(expected_min) or upper(expected_max), for which this alert is b... |
| `thresholdValue` | `EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue` | The metric value, above or below which the alert should be triggered. |
| `warningEnumList` | `EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList` |  |

### `EnterpriseCrmEventbusStats`

Stats for the requested dimensions: QPS, duration, and error/warning rate

| Property | Type | Description |
|----------|------|-------------|
| `dimensions` | `EnterpriseCrmEventbusStatsDimensions` | Dimensions that these stats have been aggregated on. |
| `durationInSeconds` | `number` | Average duration in seconds. |
| `errorRate` | `number` | Average error rate. |
| `qps` | `number` | Queries per second. |
| `warningRate` | `number` | Average warning rate. |

### `EnterpriseCrmEventbusStatsDimensions`

| Property | Type | Description |
|----------|------|-------------|
| `clientId` | `string` |  |
| `enumFilterType` | `string` | Whether to include or exclude the enums matching the regex. |
| `errorEnumString` | `string` |  |
| `retryAttempt` | `string` |  |
| `taskName` | `string` |  |
| `taskNumber` | `string` |  |
| `triggerId` | `string` | Stats have been or will be aggregated on set fields for any semantically-meaningful combination. |
| `warningEnumString` | `string` |  |
| `workflowId` | `string` |  |
| `workflowName` | `string` |  |

### `EnterpriseCrmFrontendsEventbusProtoBooleanParameterArray`

| Property | Type | Description |
|----------|------|-------------|
| `booleanValues` | `array<boolean>` |  |

### `EnterpriseCrmFrontendsEventbusProtoDoubleParameterArray`

| Property | Type | Description |
|----------|------|-------------|
| `doubleValues` | `array<number>` |  |

### `EnterpriseCrmFrontendsEventbusProtoEventExecutionDetails`

Contains the details of the execution info of this event: this includes the tasks execution details plus the event execution statistics. Next available id: 12

| Property | Type | Description |
|----------|------|-------------|
| `cancelReason` | `string` | If the execution is manually canceled, this field will contain the reason for cancellation. |
| `eventAttemptStats` | `array<EnterpriseCrmEventbusProtoEventExecutionDetailsEventAttemptStats>` |  |
| `eventExecutionSnapshot` | `array<EnterpriseCrmFrontendsEventbusProtoEventExecutionSnapshot>` | After snapshot migration, this field will no longer be populated, but old execution snapshots wil... |
| `eventExecutionSnapshotsSize` | `string` | Total size of all event_execution_snapshots for an execution |
| `eventExecutionState` | `string` | The execution state of this event. |
| `eventRetriesFromBeginningCount` | `integer` | Indicates the number of times the execution has restarted from the beginning. |
| `logFilePath` | `string` | The log file path (aka. cns address) for this event. |
| `networkAddress` | `string` | The network address (aka. bns address) that indicates where the event executor is running. |
| `nextExecutionTime` | `string` | Next scheduled execution time in case the execution status was RETRY_ON_HOLD. |
| `ryeLockUnheldCount` | `integer` | Used internally and shouldn't be exposed to users. A counter for the cron job to record how many ... |

### `EnterpriseCrmFrontendsEventbusProtoEventExecutionInfo`

Contains all the execution details for a workflow instance. Next available id: 27

| Property | Type | Description |
|----------|------|-------------|
| `clientId` | `string` | The event data user sends as request. |
| `cloudLoggingDetails` | `EnterpriseCrmEventbusProtoCloudLoggingDetails` | Cloud Logging details for execution info |
| `createTime` | `string` | Auto-generated. |
| `errorCode` | `CrmlogErrorCode` | Final error-code if event failed. |
| `errors` | `array<EnterpriseCrmEventbusProtoErrorDetail>` | Errors, warnings, and informationals associated with the workflow/task. The order in which the er... |
| `eventExecutionDetails` | `EnterpriseCrmFrontendsEventbusProtoEventExecutionDetails` | The execution info about this event. |
| `eventExecutionInfoId` | `string` | Auto-generated primary key. |
| `executionTraceInfo` | `EnterpriseCrmEventbusProtoExecutionTraceInfo` | Execution trace info to aggregate parent-child executions. |
| `integrationVersionUserLabel` | `string` | User-defined label that annotates the executed integration version. |
| `lastModifiedTime` | `string` | Auto-generated. |
| `postMethod` | `string` | The ways user posts this event. |
| `product` | `string` | Which Google product the execution_info belongs to. If not set, the execution_info belongs to Int... |
| `replayInfo` | `EnterpriseCrmFrontendsEventbusProtoEventExecutionInfoReplayInfo` | Replay info for the execution |
| `requestId` | `string` | Optional. This is used to de-dup incoming request. |
| `requestParams` | `EnterpriseCrmFrontendsEventbusProtoEventParameters` | Event parameters come in as part of the request. |
| `responseParams` | `EnterpriseCrmFrontendsEventbusProtoEventParameters` | Event parameters come out as part of the response. |
| `snapshotNumber` | `string` | Workflow snapshot number. |
| `tenant` | `string` | Tenant this event is created. Used to reschedule the event to correct tenant. |
| `triggerId` | `string` | The trigger id of the workflow trigger config. If both trigger_id and client_id is present, the w... |
| `workflowId` | `string` | Required. Pointer to the workflow it is executing. |
| `workflowName` | `string` | Name of the workflow. |
| `workflowRetryBackoffIntervalSeconds` | `string` | Time interval in seconds to schedule retry of workflow in manifold when workflow is already running |

### `EnterpriseCrmFrontendsEventbusProtoEventExecutionInfoReplayInfo`

Contains the details of the execution info: this includes the replay reason and replay tree connecting executions in a parent-child relationship

| Property | Type | Description |
|----------|------|-------------|
| `originalExecutionInfoId` | `string` | If this execution is a replay of another execution, then this field contains the original executi... |
| `replayMode` | `string` | Replay mode for the execution |
| `replayReason` | `string` | reason for replay |
| `replayedExecutionInfoIds` | `array<string>` | If this execution has been replayed, then this field contains the execution ids of the replayed e... |

### `EnterpriseCrmFrontendsEventbusProtoEventExecutionSnapshot`

| Property | Type | Description |
|----------|------|-------------|
| `checkpointTaskNumber` | `string` | Indicates "right after which checkpoint task's execution" this snapshot is taken. |
| `conditionResults` | `array<EnterpriseCrmEventbusProtoConditionResult>` | All of the computed conditions that been calculated. |
| `diffParams` | `EnterpriseCrmFrontendsEventbusProtoEventParameters` | The parameters in Event object that differs from last snapshot. |
| `eventExecutionInfoId` | `string` | Points to the event execution info this snapshot belongs to. |
| `eventExecutionSnapshotId` | `string` | Auto-generated. Used as primary key for EventExecutionSnapshots table. |
| `eventExecutionSnapshotMetadata` | `EnterpriseCrmEventbusProtoEventExecutionSnapshotEventExecutionSnapshotMetadata` |  |
| `eventParams` | `EnterpriseCrmFrontendsEventbusProtoEventParameters` | The parameters in Event object. |
| `snapshotTime` | `string` | Indicates when this snapshot is taken. |
| `taskExecutionDetails` | `array<EnterpriseCrmEventbusProtoTaskExecutionDetails>` | All of the task execution details at the given point of time. |
| `taskName` | `string` | The task name associated with this snapshot. Could be empty. |

### `EnterpriseCrmFrontendsEventbusProtoEventParameters`

LINT.IfChange This message is used for processing and persisting (when applicable) key value pair parameters for each event in the event bus. Please see

| Property | Type | Description |
|----------|------|-------------|
| `parameters` | `array<EnterpriseCrmFrontendsEventbusProtoParameterEntry>` | Parameters are a part of Event and can be used to communicate between different tasks that are pa... |

### `EnterpriseCrmFrontendsEventbusProtoIntParameterArray`

| Property | Type | Description |
|----------|------|-------------|
| `intValues` | `array<string>` |  |

### `EnterpriseCrmFrontendsEventbusProtoParamSpecEntry`

Key-value pair of EventBus task parameters. Next id: 13

| Property | Type | Description |
|----------|------|-------------|
| `className` | `string` | The FQCN of the Java object this represents. A string, for example, would be "java.lang.String". ... |
| `collectionElementClassName` | `string` | If it is a collection of objects, this would be the FCQN of every individual element in the colle... |
| `config` | `EnterpriseCrmEventbusProtoParamSpecEntryConfig` | Optional fields, such as help text and other useful info. |
| `dataType` | `string` | The data type of the parameter. |
| `defaultValue` | `EnterpriseCrmFrontendsEventbusProtoParameterValueType` | Default values for the defined keys. Each value can either be string, int, double or any proto me... |
| `isDeprecated` | `boolean` | If set, this entry is deprecated, so further use of this parameter should be prohibited. |
| `isOutput` | `boolean` |  |
| `jsonSchema` | `string` | If the data_type is JSON_VALUE, then this will define its schema. |
| `key` | `string` | Key is used to retrieve the corresponding parameter value. This should be unique for a given task... |
| `protoDef` | `EnterpriseCrmEventbusProtoParamSpecEntryProtoDefinition` | Populated if this represents a proto or proto array. |
| `required` | `boolean` | If set, the user must provide an input value for this parameter. |
| `validationRule` | `EnterpriseCrmEventbusProtoParamSpecEntryValidationRule` | Rule used to validate inputs (individual values and collection elements) for this parameter. |

### `EnterpriseCrmFrontendsEventbusProtoParamSpecsMessage`

| Property | Type | Description |
|----------|------|-------------|
| `parameters` | `array<EnterpriseCrmFrontendsEventbusProtoParamSpecEntry>` |  |

### `EnterpriseCrmFrontendsEventbusProtoParameterEntry`

Key-value pair of EventBus parameters.

| Property | Type | Description |
|----------|------|-------------|
| `dataType` | `string` | Explicitly getting the type of the parameter. |
| `key` | `string` | Key is used to retrieve the corresponding parameter value. This should be unique for a given fire... |
| `masked` | `boolean` | True if this parameter should be masked in the logs |
| `value` | `EnterpriseCrmFrontendsEventbusProtoParameterValueType` | Values for the defined keys. Each value can either be string, int, double or any proto message. |

### `EnterpriseCrmFrontendsEventbusProtoParameterMap`

A generic multi-map that holds key value pairs. They keys and values can be of any type, unless specified.

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<EnterpriseCrmFrontendsEventbusProtoParameterMapEntry>` |  |
| `keyType` | `string` | Option to specify key value type for all entries of the map. If provided then field types for all... |
| `valueType` | `string` |  |

### `EnterpriseCrmFrontendsEventbusProtoParameterMapEntry`

Entry is a pair of key and value.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `EnterpriseCrmFrontendsEventbusProtoParameterMapField` |  |
| `value` | `EnterpriseCrmFrontendsEventbusProtoParameterMapField` |  |

### `EnterpriseCrmFrontendsEventbusProtoParameterMapField`

Field represents either the key or value in an entry.

| Property | Type | Description |
|----------|------|-------------|
| `literalValue` | `EnterpriseCrmFrontendsEventbusProtoParameterValueType` | Passing a literal value. |
| `referenceKey` | `string` | Referencing one of the WF variables. |

### `EnterpriseCrmFrontendsEventbusProtoParameterValueType`

To support various types of parameter values. Next available id: 14

| Property | Type | Description |
|----------|------|-------------|
| `booleanArray` | `EnterpriseCrmFrontendsEventbusProtoBooleanParameterArray` |  |
| `booleanValue` | `boolean` |  |
| `doubleArray` | `EnterpriseCrmFrontendsEventbusProtoDoubleParameterArray` |  |
| `doubleValue` | `number` |  |
| `intArray` | `EnterpriseCrmFrontendsEventbusProtoIntParameterArray` |  |
| `intValue` | `string` |  |
| `jsonValue` | `string` |  |
| `protoArray` | `EnterpriseCrmFrontendsEventbusProtoProtoParameterArray` |  |
| `protoValue` | `object` |  |
| `serializedObjectValue` | `EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter` |  |
| `stringArray` | `EnterpriseCrmFrontendsEventbusProtoStringParameterArray` |  |
| `stringValue` | `string` |  |

### `EnterpriseCrmFrontendsEventbusProtoProtoParameterArray`

| Property | Type | Description |
|----------|------|-------------|
| `protoValues` | `array<object>` |  |

### `EnterpriseCrmFrontendsEventbusProtoRollbackStrategy`

Next available id: 4

| Property | Type | Description |
|----------|------|-------------|
| `parameters` | `EnterpriseCrmFrontendsEventbusProtoEventParameters` | Optional. The customized parameters the user can pass to this task. |
| `rollbackTaskImplementationClassName` | `string` | Required. This is the name of the task that needs to be executed upon rollback of this task. |
| `taskNumbersToRollback` | `array<string>` | Required. These are the tasks numbers of the tasks whose `rollback_strategy.rollback_task_impleme... |

### `EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter`

| Property | Type | Description |
|----------|------|-------------|
| `objectValue` | `string` |  |

### `EnterpriseCrmFrontendsEventbusProtoStringParameterArray`

| Property | Type | Description |
|----------|------|-------------|
| `stringValues` | `array<string>` |  |

### `EnterpriseCrmFrontendsEventbusProtoTaskConfig`

The task configuration details. This is not the implementation of Task. There might be multiple TaskConfigs for the same Task.

| Property | Type | Description |
|----------|------|-------------|
| `alertConfigs` | `array<EnterpriseCrmEventbusProtoTaskAlertConfig>` | Alert configurations on error rate, warning rate, number of runs, durations, etc. |
| `conditionalFailurePolicies` | `EnterpriseCrmEventbusProtoConditionalFailurePolicies` | Optional. Determines the number of times the task will be retried on failure and with what retry ... |
| `createTime` | `string` | Auto-generated. |
| `creatorEmail` | `string` | The creator's email address. Auto-generated from the user's email. |
| `description` | `string` | User-provided description intended to give more business context about the task. |
| `disableStrictTypeValidation` | `boolean` | If this config contains a TypedTask, allow validation to succeed if an input is read from the out... |
| `errorCatcherId` | `string` | Optional Error catcher id of the error catch flow which will be executed when execution error hap... |
| `externalTaskType` | `string` |  |
| `failurePolicy` | `EnterpriseCrmEventbusProtoFailurePolicy` | Optional. Determines the number of times the task will be retried on failure and with what retry ... |
| `incomingEdgeCount` | `integer` | The number of edges leading into this TaskConfig. |
| `jsonValidationOption` | `string` | If set, overrides the option configured in the Task implementation class. |
| `label` | `string` | User-provided label that is attached to this TaskConfig in the UI. |
| `lastModifiedTime` | `string` | Auto-generated. |
| `nextTasks` | `array<EnterpriseCrmEventbusProtoNextTask>` | The set of tasks that are next in line to be executed as per the execution graph defined for the ... |
| `nextTasksExecutionPolicy` | `string` | The policy dictating the execution of the next set of tasks for the current task. |
| `parameters` | `object` | The customized parameters the user can pass to this task. |
| `position` | `EnterpriseCrmEventbusProtoCoordinate` | Optional. Informs the front-end application where to draw this task config on the UI. |
| `precondition` | `string` | Optional. Standard filter expression evaluated before execution. Independent of other conditions ... |
| `preconditionLabel` | `string` | Optional. User-provided label that is attached to precondition in the UI. |
| `rollbackStrategy` | `EnterpriseCrmFrontendsEventbusProtoRollbackStrategy` | Optional. Contains information about what needs to be done upon failure (either a permanent error... |
| `successPolicy` | `EnterpriseCrmEventbusProtoSuccessPolicy` | Determines what action to take upon successful task completion. |
| `synchronousCallFailurePolicy` | `EnterpriseCrmEventbusProtoFailurePolicy` | Optional. Determines the number of times the task will be retried on failure and with what retry ... |
| `taskEntity` | `EnterpriseCrmFrontendsEventbusProtoTaskEntity` | Copy of the task entity that this task config is an instance of. |
| `taskExecutionStrategy` | `string` | The policy dictating the execution strategy of this task. |
| `taskName` | `string` | The name for the task. |
| `taskNumber` | `string` | REQUIRED: the identifier of this task within its parent event config, specified by the client. Th... |
| `taskSpec` | `string` | A string template that allows user to configure task parameters (with either literal default valu... |
| `taskTemplateName` | `string` | Used to define task-template name if task is of type task-template |
| `taskType` | `string` | Defines the type of the task |

### `EnterpriseCrmFrontendsEventbusProtoTaskEntity`

Contains a task's metadata and associated information. Next available id: 7

| Property | Type | Description |
|----------|------|-------------|
| `disabledForVpcSc` | `boolean` | True if the task has conflict with vpcsc |
| `metadata` | `EnterpriseCrmEventbusProtoTaskMetadata` | Metadata inclueds the task name, author and so on. |
| `paramSpecs` | `EnterpriseCrmFrontendsEventbusProtoParamSpecsMessage` | Declarations for inputs/outputs for a TypedTask. This is also associated with the METADATA mask. |
| `stats` | `EnterpriseCrmEventbusStats` | Deprecated - statistics from the Monarch query. |
| `taskType` | `string` | Defines the type of the task |
| `uiConfig` | `EnterpriseCrmEventbusProtoTaskUiConfig` | UI configuration for this task Also associated with the METADATA mask. |

### `EnterpriseCrmFrontendsEventbusProtoTriggerConfig`

Configuration detail of a trigger. Next available id: 22

| Property | Type | Description |
|----------|------|-------------|
| `alertConfig` | `array<EnterpriseCrmEventbusProtoWorkflowAlertConfig>` | An alert threshold configuration for the [trigger + client + workflow] tuple. If these values are... |
| `cloudSchedulerConfig` | `EnterpriseCrmEventbusProtoCloudSchedulerConfig` |  |
| `description` | `string` | User-provided description intended to give more business context about the task. |
| `enabledClients` | `array<string>` | Required. The list of client ids which are enabled to execute the workflow using this trigger. In... |
| `errorCatcherId` | `string` | Optional Error catcher id of the error catch flow which will be executed when execution error hap... |
| `inputVariables` | `EnterpriseCrmFrontendsEventbusProtoTriggerConfigVariables` | Optional. List of input variables for the api trigger. |
| `label` | `string` | The user created label for a particular trigger. |
| `nextTasksExecutionPolicy` | `string` | Dictates how next tasks will be executed. |
| `outputVariables` | `EnterpriseCrmFrontendsEventbusProtoTriggerConfigVariables` | Optional. List of output variables for the api trigger. |
| `pauseWorkflowExecutions` | `boolean` | Optional. If set to true, any upcoming requests for this trigger config will be paused and the ex... |
| `position` | `EnterpriseCrmEventbusProtoCoordinate` | Optional. Informs the front-end application where to draw this trigger config on the UI. |
| `properties` | `object` | Configurable properties of the trigger, not to be confused with workflow parameters. E.g. "name" ... |
| `startTasks` | `array<EnterpriseCrmEventbusProtoNextTask>` | Set of tasks numbers from where the workflow execution is started by this trigger. If this is emp... |
| `triggerCriteria` | `EnterpriseCrmEventbusProtoTriggerCriteria` | Optional. When set, Eventbus will run the task specified in the trigger_criteria and validate the... |
| `triggerId` | `string` | The backend trigger ID. |
| `triggerName` | `string` | Optional. Name of the trigger This is added to identify the type of trigger. This is avoid the lo... |
| `triggerNumber` | `string` | Required. A number to uniquely identify each trigger config within the workflow on UI. |
| `triggerType` | `string` |  |

### `EnterpriseCrmFrontendsEventbusProtoTriggerConfigVariables`

Variables names mapped to api trigger.

| Property | Type | Description |
|----------|------|-------------|
| `names` | `array<string>` | Optional. List of variable names. |

### `EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry`

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `EnterpriseCrmEventbusProtoAttributes` | Metadata information about the parameters. |
| `children` | `array<EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry>` | Child parameters nested within this parameter. This field only applies to protobuf parameters |
| `containsLargeData` | `boolean` | Indicates whether this variable contains large data and need to be uploaded to Cloud Storage. |
| `dataType` | `string` | The data type of the parameter. |
| `defaultValue` | `EnterpriseCrmFrontendsEventbusProtoParameterValueType` | Default values for the defined keys. Each value can either be string, int, double or any proto me... |
| `description` | `string` | Optional. The description about the parameter |
| `inOutType` | `string` | Specifies the input/output type for the parameter. |
| `isTransient` | `boolean` | Whether this parameter is a transient parameter. |
| `jsonSchema` | `string` | This schema will be used to validate runtime JSON-typed values of this parameter. |
| `key` | `string` | Key is used to retrieve the corresponding parameter value. This should be unique for a given fire... |
| `name` | `string` | The name (without prefix) to be displayed in the UI for this parameter. E.g. if the key is "foo.b... |
| `producedBy` | `EnterpriseCrmEventbusProtoNodeIdentifier` | The identifier of the node (TaskConfig/TriggerConfig) this parameter was produced by, if it is a ... |
| `producer` | `string` |  |
| `protoDefName` | `string` | The name of the protobuf type if the parameter has a protobuf data type. |
| `protoDefPath` | `string` | If the data type is of type proto or proto array, this field needs to be populated with the fully... |
| `required` | `boolean` |  |

### `EnterpriseCrmFrontendsEventbusProtoWorkflowParameters`

LINT.IfChange This is the frontend version of WorkflowParameters. It's exactly like the backend version except that instead of flattening protobuf parameters and treating every field and subfield of a protobuf parameter as a separate parameter, the fields/subfields of a protobuf parameter will be nested as "children" (see 'children' field below) parameters of the parent parameter. Please refer to enterprise/crm/eventbus/proto/workflow_parameters.proto for more information about WorkflowParameters.

| Property | Type | Description |
|----------|------|-------------|
| `parameters` | `array<EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry>` | Parameters are a part of Event and can be used to communiticate between different tasks that are ... |

### `GoogleCloudConnectorsV1AuthConfig`

AuthConfig defines details of a authentication type.

| Property | Type | Description |
|----------|------|-------------|
| `additionalVariables` | `array<GoogleCloudConnectorsV1ConfigVariable>` | Optional. List containing additional auth configs. |
| `authKey` | `string` | Optional. Identifier key for auth config |
| `authType` | `string` | Optional. The type of authentication configured. |
| `oauth2AuthCodeFlow` | `GoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlow` | Oauth2AuthCodeFlow. |
| `oauth2AuthCodeFlowGoogleManaged` | `GoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlowGoogleManaged` | Oauth2AuthCodeFlowGoogleManaged. |
| `oauth2ClientCredentials` | `GoogleCloudConnectorsV1AuthConfigOauth2ClientCredentials` | Oauth2ClientCredentials. |
| `oauth2JwtBearer` | `GoogleCloudConnectorsV1AuthConfigOauth2JwtBearer` | Oauth2JwtBearer. |
| `sshPublicKey` | `GoogleCloudConnectorsV1AuthConfigSshPublicKey` | SSH Public Key. |
| `userPassword` | `GoogleCloudConnectorsV1AuthConfigUserPassword` | UserPassword. |

### `GoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlow`

Parameters to support Oauth 2.0 Auth Code Grant Authentication. See https://www.rfc-editor.org/rfc/rfc6749#section-1.3.1 for more details.

| Property | Type | Description |
|----------|------|-------------|
| `authCode` | `string` | Optional. Authorization code to be exchanged for access and refresh tokens. |
| `authUri` | `string` | Optional. Auth URL for Authorization Code Flow |
| `clientId` | `string` | Optional. Client ID for user-provided OAuth app. |
| `clientSecret` | `GoogleCloudConnectorsV1Secret` | Optional. Client secret for user-provided OAuth app. |
| `enablePkce` | `boolean` | Optional. Whether to enable PKCE when the user performs the auth code flow. |
| `pkceVerifier` | `string` | Optional. PKCE verifier to be used during the auth code exchange. |
| `redirectUri` | `string` | Optional. Redirect URI to be provided during the auth code exchange. |
| `scopes` | `array<string>` | Optional. Scopes the connection will request when the user performs the auth code flow. |

### `GoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlowGoogleManaged`

Parameters to support Oauth 2.0 Auth Code Grant Authentication using Google Provided OAuth Client. See https://tools.ietf.org/html/rfc6749#section-1.3.1 for more details.

| Property | Type | Description |
|----------|------|-------------|
| `authCode` | `string` | Optional. Authorization code to be exchanged for access and refresh tokens. |
| `redirectUri` | `string` | Optional. Redirect URI to be provided during the auth code exchange. |
| `scopes` | `array<string>` | Required. Scopes the connection will request when the user performs the auth code flow. |

### `GoogleCloudConnectorsV1AuthConfigOauth2ClientCredentials`

Parameters to support Oauth 2.0 Client Credentials Grant Authentication. See https://tools.ietf.org/html/rfc6749#section-1.3.4 for more details.

| Property | Type | Description |
|----------|------|-------------|
| `clientId` | `string` | Optional. The client identifier. |
| `clientSecret` | `GoogleCloudConnectorsV1Secret` | Optional. Secret version reference containing the client secret. |

### `GoogleCloudConnectorsV1AuthConfigOauth2JwtBearer`

Parameters to support JSON Web Token (JWT) Profile for Oauth 2.0 Authorization Grant based authentication. See https://tools.ietf.org/html/rfc7523 for more details.

| Property | Type | Description |
|----------|------|-------------|
| `clientKey` | `GoogleCloudConnectorsV1Secret` | Optional. Secret version reference containing a PKCS#8 PEM-encoded private key associated with th... |
| `jwtClaims` | `GoogleCloudConnectorsV1AuthConfigOauth2JwtBearerJwtClaims` | Optional. JwtClaims providers fields to generate the token. |

### `GoogleCloudConnectorsV1AuthConfigOauth2JwtBearerJwtClaims`

JWT claims used for the jwt-bearer authorization grant.

| Property | Type | Description |
|----------|------|-------------|
| `audience` | `string` | Optional. Value for the "aud" claim. |
| `issuer` | `string` | Optional. Value for the "iss" claim. |
| `subject` | `string` | Optional. Value for the "sub" claim. |

### `GoogleCloudConnectorsV1AuthConfigSshPublicKey`

Parameters to support Ssh public key Authentication.

| Property | Type | Description |
|----------|------|-------------|
| `certType` | `string` | Optional. Format of SSH Client cert. |
| `sshClientCert` | `GoogleCloudConnectorsV1Secret` | Optional. SSH Client Cert. It should contain both public and private key. |
| `sshClientCertPass` | `GoogleCloudConnectorsV1Secret` | Optional. Password (passphrase) for ssh client certificate if it has one. |
| `username` | `string` | Optional. The user account used to authenticate. |

### `GoogleCloudConnectorsV1AuthConfigUserPassword`

Parameters to support Username and Password Authentication.

| Property | Type | Description |
|----------|------|-------------|
| `password` | `GoogleCloudConnectorsV1Secret` | Optional. Secret version reference containing the password. |
| `username` | `string` | Optional. Username. |

### `GoogleCloudConnectorsV1BillingConfig`

Billing config for the connection.

| Property | Type | Description |
|----------|------|-------------|
| `billingCategory` | `string` | Output only. Billing category for the connector. |

### `GoogleCloudConnectorsV1ConfigVariable`

ConfigVariable represents a configuration variable present in a Connection. or AuthConfig.

| Property | Type | Description |
|----------|------|-------------|
| `boolValue` | `boolean` | Value is a bool. |
| `encryptionKeyValue` | `GoogleCloudConnectorsV1EncryptionKey` | Value is a Encryption Key. |
| `intValue` | `string` | Value is an integer |
| `key` | `string` | Optional. Key of the config variable. |
| `secretValue` | `GoogleCloudConnectorsV1Secret` | Value is a secret. |
| `stringValue` | `string` | Value is a string. |

### `GoogleCloudConnectorsV1Connection`

Connection represents an instance of connector.

| Property | Type | Description |
|----------|------|-------------|
| `asyncOperationsEnabled` | `boolean` | Optional. Async operations enabled for the connection. If Async Operations is enabled, Connection... |
| `authConfig` | `GoogleCloudConnectorsV1AuthConfig` | Optional. Configuration for establishing the connection's authentication with an external system. |
| `authOverrideEnabled` | `boolean` | Optional. Auth override enabled for the connection. If Auth Override is enabled, Connection allow... |
| `billingConfig` | `GoogleCloudConnectorsV1BillingConfig` | Output only. Billing config for the connection. |
| `configVariables` | `array<GoogleCloudConnectorsV1ConfigVariable>` | Optional. Configuration for configuring the connection with an external system. |
| `connectionRevision` | `string` | Output only. Connection revision. This field is only updated when the connection is created or up... |
| `connectorVersion` | `string` | Required. Connector version on which the connection is created. The format is: projects/*/locatio... |
| `connectorVersionInfraConfig` | `GoogleCloudConnectorsV1ConnectorVersionInfraConfig` | Output only. Infra configs supported by Connector Version. |
| `connectorVersionLaunchStage` | `string` | Output only. Flag to mark the version indicating the launch stage. |
| `createTime` | `string` | Output only. Created time. |
| `description` | `string` | Optional. Description of the resource. |
| `destinationConfigs` | `array<GoogleCloudConnectorsV1DestinationConfig>` | Optional. Configuration of the Connector's destination. Only accepted for Connectors that accepts... |
| `envoyImageLocation` | `string` | Output only. GCR location where the envoy image is stored. formatted like: gcr.io/{bucketName}/{i... |
| `euaOauthAuthConfig` | `GoogleCloudConnectorsV1AuthConfig` | Optional. Additional Oauth2.0 Auth config for EUA. If the connection is configured using non-OAut... |
| `eventingConfig` | `GoogleCloudConnectorsV1EventingConfig` | Optional. Eventing config of a connection |
| `eventingEnablementType` | `string` | Optional. Eventing enablement type. Will be nil if eventing is not enabled. |
| `eventingRuntimeData` | `GoogleCloudConnectorsV1EventingRuntimeData` | Output only. Eventing Runtime Data. |
| `fallbackOnAdminCredentials` | `boolean` | Optional. Fallback on admin credentials for the connection. If this both auth_override_enabled an... |
| `host` | `string` | Output only. The name of the Hostname of the Service Directory service with TLS. |
| `imageLocation` | `string` | Output only. GCR location where the runtime image is stored. formatted like: gcr.io/{bucketName}/... |
| `isTrustedTester` | `boolean` | Output only. Is trusted tester program enabled for the project. |
| `labels` | `object` | Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on la... |
| `lockConfig` | `GoogleCloudConnectorsV1LockConfig` | Optional. Configuration that indicates whether or not the Connection can be edited. |
| `logConfig` | `GoogleCloudConnectorsV1LogConfig` | Optional. Log configuration for the connection. |
| `name` | `string` | Output only. Resource name of the Connection. Format: projects/{project}/locations/{location}/con... |
| `nodeConfig` | `GoogleCloudConnectorsV1NodeConfig` | Optional. Node configuration for the connection. |
| `serviceAccount` | `string` | Optional. Service account needed for runtime plane to access Google Cloud resources. |
| `serviceDirectory` | `string` | Output only. The name of the Service Directory service name. Used for Private Harpoon to resolve ... |
| `sslConfig` | `GoogleCloudConnectorsV1SslConfig` | Optional. Ssl config of a connection |
| `status` | `GoogleCloudConnectorsV1ConnectionStatus` | Output only. Current status of the connection. |
| `subscriptionType` | `string` | Output only. This subscription type enum states the subscription type of the project. |
| `suspended` | `boolean` | Optional. Suspended indicates if a user has suspended a connection or not. |
| `tlsServiceDirectory` | `string` | Output only. The name of the Service Directory service with TLS. |
| `trafficShapingConfigs` | `array<GoogleCloudConnectorsV1TrafficShapingConfig>` | Optional. Traffic shaping configuration for the connection. |
| `updateTime` | `string` | Output only. Updated time. |

### `GoogleCloudConnectorsV1ConnectionStatus`

ConnectionStatus indicates the state of the connection.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Description. |
| `state` | `string` | State. |
| `status` | `string` | Status provides detailed information for the state. |

### `GoogleCloudConnectorsV1ConnectorVersionInfraConfig`

This configuration provides infra configs like rate limit threshold which need to be configurable for every connector version

| Property | Type | Description |
|----------|------|-------------|
| `connectionRatelimitWindowSeconds` | `string` | Output only. The window used for ratelimiting runtime requests to connections. |
| `deploymentModel` | `string` | Output only. Indicates whether connector is deployed on GKE/CloudRun |
| `deploymentModelMigrationState` | `string` | Output only. Status of the deployment model migration. |
| `hpaConfig` | `GoogleCloudConnectorsV1HPAConfig` | Output only. HPA autoscaling config. |
| `internalclientRatelimitThreshold` | `string` | Output only. Max QPS supported for internal requests originating from Connd. |
| `maxInstanceRequestConcurrency` | `integer` | Output only. Max instance request concurrency. |
| `ratelimitThreshold` | `string` | Output only. Max QPS supported by the connector version before throttling of requests. |
| `resourceLimits` | `GoogleCloudConnectorsV1ResourceLimits` | Output only. System resource limits. |
| `resourceRequests` | `GoogleCloudConnectorsV1ResourceRequests` | Output only. System resource requests. |
| `sharedDeployment` | `string` | Output only. The name of shared connector deployment. |
| `tlsMigrationState` | `string` | Output only. Status of the TLS migration. |

### `GoogleCloudConnectorsV1Destination`

| Property | Type | Description |
|----------|------|-------------|
| `host` | `string` | For publicly routable host. |
| `port` | `integer` | The port is the target port number that is accepted by the destination. |
| `serviceAttachment` | `string` | PSC service attachments. Format: projects/*/regions/*/serviceAttachments/* |

### `GoogleCloudConnectorsV1DestinationConfig`

Define the Connectors target endpoint.

| Property | Type | Description |
|----------|------|-------------|
| `destinations` | `array<GoogleCloudConnectorsV1Destination>` | The destinations for the key. |
| `key` | `string` | The key is the destination identifier that is supported by the Connector. |

### `GoogleCloudConnectorsV1EncryptionKey`

Encryption Key value.

| Property | Type | Description |
|----------|------|-------------|
| `kmsKeyName` | `string` | Optional. The [KMS key name] with which the content of the Operation is encrypted. The expected f... |
| `type` | `string` | Type. |

### `GoogleCloudConnectorsV1EnrichmentConfig`

Data enrichment configuration.

| Property | Type | Description |
|----------|------|-------------|
| `appendAcl` | `boolean` | Optional. Append ACL to the event. |

### `GoogleCloudConnectorsV1EventingConfig`

Eventing Configuration of a connection next: 19

| Property | Type | Description |
|----------|------|-------------|
| `additionalVariables` | `array<GoogleCloudConnectorsV1ConfigVariable>` | Optional. Additional eventing related field values |
| `authConfig` | `GoogleCloudConnectorsV1AuthConfig` | Optional. Auth details for the webhook adapter. |
| `deadLetterConfig` | `GoogleCloudConnectorsV1EventingConfigDeadLetterConfig` | Optional. Dead letter configuration for eventing of a connection. |
| `enrichmentConfig` | `GoogleCloudConnectorsV1EnrichmentConfig` | Optional. Data enrichment configuration. |
| `enrichmentEnabled` | `boolean` | Optional. Enrichment Enabled. |
| `eventsListenerIngressEndpoint` | `string` | Optional. Ingress endpoint of the event listener. This is used only when private connectivity is ... |
| `listenerAuthConfig` | `GoogleCloudConnectorsV1AuthConfig` | Optional. Auth details for the event listener. |
| `privateConnectivityAllowlistedProjects` | `array<string>` | Optional. List of projects to be allowlisted for the service attachment created in the tenant pro... |
| `privateConnectivityEnabled` | `boolean` | Optional. Private Connectivity Enabled. |
| `proxyDestinationConfig` | `GoogleCloudConnectorsV1DestinationConfig` | Optional. Proxy for Eventing auto-registration. |
| `registrationDestinationConfig` | `GoogleCloudConnectorsV1DestinationConfig` | Optional. Registration endpoint for auto registration. |
| `sslConfig` | `GoogleCloudConnectorsV1SslConfig` | Optional. Ssl config of a connection |

### `GoogleCloudConnectorsV1EventingConfigDeadLetterConfig`

Dead Letter configuration details provided by the user.

| Property | Type | Description |
|----------|------|-------------|
| `projectId` | `string` | Optional. Project which has the topic given. |
| `topic` | `string` | Optional. Topic to push events which couldn't be processed. |

### `GoogleCloudConnectorsV1EventingRuntimeData`

Eventing runtime data has the details related to eventing managed by the system.

| Property | Type | Description |
|----------|------|-------------|
| `eventsListenerEndpoint` | `string` | Output only. Events listener endpoint. The value will populated after provisioning the events lis... |
| `eventsListenerPscSa` | `string` | Output only. Events listener PSC Service attachment. The value will be populated after provisioni... |
| `status` | `GoogleCloudConnectorsV1EventingStatus` | Output only. Current status of eventing. |
| `webhookData` | `GoogleCloudConnectorsV1EventingRuntimeDataWebhookData` | Output only. Webhook data. |
| `webhookSubscriptions` | `GoogleCloudConnectorsV1EventingRuntimeDataWebhookSubscriptions` | Output only. Webhook subscriptions. |

### `GoogleCloudConnectorsV1EventingRuntimeDataWebhookData`

WebhookData has details of webhook configuration.

| Property | Type | Description |
|----------|------|-------------|
| `additionalVariables` | `array<GoogleCloudConnectorsV1ConfigVariable>` | Output only. Additional webhook related field values. |
| `createTime` | `string` | Output only. Timestamp when the webhook was created. |
| `id` | `string` | Output only. ID to uniquely identify webhook. |
| `name` | `string` | Output only. Name of the Webhook |
| `nextRefreshTime` | `string` | Output only. Next webhook refresh time. Will be null if refresh is not supported. |
| `updateTime` | `string` | Output only. Timestamp when the webhook was last updated. |

### `GoogleCloudConnectorsV1EventingRuntimeDataWebhookSubscriptions`

WebhookSubscriptions has details of webhook subscriptions.

| Property | Type | Description |
|----------|------|-------------|
| `webhookData` | `array<GoogleCloudConnectorsV1EventingRuntimeDataWebhookData>` | Output only. Webhook data. |

### `GoogleCloudConnectorsV1EventingStatus`

EventingStatus indicates the state of eventing.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Output only. Description of error if State is set to "ERROR". |
| `state` | `string` | Output only. State. |

### `GoogleCloudConnectorsV1HPAConfig`

Autoscaling config for connector deployment system metrics.

| Property | Type | Description |
|----------|------|-------------|
| `cpuUtilizationThreshold` | `string` | Output only. Percent CPU utilization where HPA triggers autoscaling. |
| `memoryUtilizationThreshold` | `string` | Output only. Percent Memory utilization where HPA triggers autoscaling. |

### `GoogleCloudConnectorsV1LockConfig`

Determines whether or no a connection is locked. If locked, a reason must be specified.

| Property | Type | Description |
|----------|------|-------------|
| `locked` | `boolean` | Optional. Indicates whether or not the connection is locked. |
| `reason` | `string` | Optional. Describes why a connection is locked. |

### `GoogleCloudConnectorsV1LogConfig`

Log configuration for the connection.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Optional. Enabled represents whether logging is enabled or not for a connection. |
| `level` | `string` | Optional. Log configuration level. |

### `GoogleCloudConnectorsV1NodeConfig`

Node configuration for the connection.

| Property | Type | Description |
|----------|------|-------------|
| `maxNodeCount` | `integer` | Optional. Maximum number of nodes in the runtime nodes. |
| `minNodeCount` | `integer` | Optional. Minimum number of nodes in the runtime nodes. |

### `GoogleCloudConnectorsV1ResourceLimits`

Resource limits defined for connection pods of a given connector type.

| Property | Type | Description |
|----------|------|-------------|
| `cpu` | `string` | Output only. CPU limit. |
| `memory` | `string` | Output only. Memory limit. |

### `GoogleCloudConnectorsV1ResourceRequests`

Resource requests defined for connection pods of a given connector type.

| Property | Type | Description |
|----------|------|-------------|
| `cpu` | `string` | Output only. CPU request. |
| `memory` | `string` | Output only. Memory request. |

### `GoogleCloudConnectorsV1Secret`

Secret provides a reference to entries in Secret Manager.

| Property | Type | Description |
|----------|------|-------------|
| `secretVersion` | `string` | Optional. The resource name of the secret version in the format, format as: `projects/*/secrets/*... |

### `GoogleCloudConnectorsV1SslConfig`

SSL Configuration of a connection

| Property | Type | Description |
|----------|------|-------------|
| `additionalVariables` | `array<GoogleCloudConnectorsV1ConfigVariable>` | Optional. Additional SSL related field values |
| `clientCertType` | `string` | Optional. Type of Client Cert (PEM/JKS/.. etc.) |
| `clientCertificate` | `GoogleCloudConnectorsV1Secret` | Optional. Client Certificate |
| `clientPrivateKey` | `GoogleCloudConnectorsV1Secret` | Optional. Client Private Key |
| `clientPrivateKeyPass` | `GoogleCloudConnectorsV1Secret` | Optional. Secret containing the passphrase protecting the Client Private Key |
| `privateServerCertificate` | `GoogleCloudConnectorsV1Secret` | Optional. Private Server Certificate. Needs to be specified if trust model is `PRIVATE`. |
| `serverCertType` | `string` | Optional. Type of Server Cert (PEM/JKS/.. etc.) |
| `trustModel` | `string` | Optional. Trust Model of the SSL connection |
| `type` | `string` | Optional. Controls the ssl type for the given connector version. |
| `useSsl` | `boolean` | Optional. Bool for enabling SSL |

### `GoogleCloudConnectorsV1TrafficShapingConfig`

* TrafficShapingConfig defines the configuration for shaping API traffic by specifying a quota limit and the duration over which this limit is enforced. This configuration helps to control and manage the rate at which API calls are made on the client side, preventing service overload on the backend. For example: - if the quota limit is 100 calls per 10 seconds, then the message would be: { quota_limit: 100 duration: { seconds: 10 } } - if the quota limit is 100 calls per 5 minutes, then the message would be: { quota_limit: 100 duration: { seconds: 300 } } - if the quota limit is 10000 calls per day, then the message would be: { quota_limit: 10000 duration: { seconds: 86400 } and so on.

| Property | Type | Description |
|----------|------|-------------|
| `duration` | `string` | Required. * The duration over which the API call quota limits are calculated. This duration is us... |
| `quotaLimit` | `string` | Required. Maximum number of api calls allowed. |

### `GoogleCloudIntegrationsV1alphaAccessToken`

The access token represents the authorization of a specific application to access specific parts of a user’s data.

| Property | Type | Description |
|----------|------|-------------|
| `accessToken` | `string` | The access token encapsulating the security identity of a process or thread. |
| `accessTokenExpireTime` | `string` | Required. The approximate time until the access token retrieved is valid. |
| `refreshToken` | `string` | If the access token will expire, use the refresh token to obtain another access token. |
| `refreshTokenExpireTime` | `string` | The approximate time until the refresh token retrieved is valid. |
| `tokenType` | `string` | Only support "bearer" token in v1 as bearer token is the predominant type used with OAuth 2.0. |

### `GoogleCloudIntegrationsV1alphaApiTriggerResource`

List of API triggerID and their workflow resource name.

| Property | Type | Description |
|----------|------|-------------|
| `integrationResource` | `string` | Required. Integration where the API is published |
| `triggerId` | `array<string>` | Required. Trigger Id of the API trigger(s) in the integration |

### `GoogleCloudIntegrationsV1alphaAssertion`

An assertion which will check for a condition over task execution status or an expression for task output variables

| Property | Type | Description |
|----------|------|-------------|
| `assertionStrategy` | `string` | Optional. The type of assertion to perform. |
| `condition` | `string` | Optional. Standard filter expression for ASSERT_CONDITION to succeed |
| `parameter` | `GoogleCloudIntegrationsV1alphaEventParameter` | Optional. Key-value pair for ASSERT_EQUALS, ASSERT_NOT_EQUALS, ASSERT_CONTAINS to succeed |
| `retryCount` | `integer` | Number of times given task should be retried in case of ASSERT_FAILED_EXECUTION |

### `GoogleCloudIntegrationsV1alphaAssertionResult`

The result of an assertion.

| Property | Type | Description |
|----------|------|-------------|
| `assertion` | `GoogleCloudIntegrationsV1alphaAssertion` | Assertion that was run. |
| `failureMessage` | `string` | Details of the assertion failure |
| `status` | `string` | Status of assertion to signify if the assertion succeeded or failed |
| `taskName` | `string` | Task name of task where the assertion was run. |
| `taskNumber` | `string` | Task number of task where the assertion was run. |

### `GoogleCloudIntegrationsV1alphaAttemptStats`

Status for the execution attempt.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | The end time of the integration execution for current attempt. |
| `startTime` | `string` | The start time of the integration execution for current attempt. This could be in the future if i... |

### `GoogleCloudIntegrationsV1alphaAuthConfig`

The AuthConfig resource use to hold channels and connection config data.

| Property | Type | Description |
|----------|------|-------------|
| `certificateId` | `string` | Certificate id for client certificate |
| `createTime` | `string` | Output only. The timestamp when the auth config is created. |
| `creatorEmail` | `string` | The creator's email address. Generated based on the End User Credentials/LOAS role of the user ma... |
| `credentialType` | `string` | Required. Credential type of the encrypted credential. |
| `decryptedCredential` | `GoogleCloudIntegrationsV1alphaCredential` | Raw auth credentials. |
| `description` | `string` | Optional. A description of the auth config. |
| `displayName` | `string` | Required. The name of the auth config. |
| `encryptedCredential` | `string` | Auth credential encrypted by Cloud KMS. Can be decrypted as Credential with proper KMS key. |
| `expiryNotificationDuration` | `array<string>` | Optional. User can define the time to receive notification after which the auth config becomes in... |
| `lastModifierEmail` | `string` | The last modifier's email address. Generated based on the End User Credentials/LOAS role of the u... |
| `name` | `string` | Resource name of the auth config. For more information, see Manage authentication profiles. proje... |
| `overrideValidTime` | `string` | Optional. User provided expiry time to override. For the example of Salesforce, username/password... |
| `reason` | `string` | Output only. The reason / details of the current status. |
| `state` | `string` | Output only. The status of the auth config. |
| `updateTime` | `string` | Output only. The timestamp when the auth config is modified. |
| `validTime` | `string` | Optional. The time until the auth config is valid. Empty or max value is considered the auth conf... |
| `visibility` | `string` | Optional. The visibility of the auth config. |

### `GoogleCloudIntegrationsV1alphaAuthToken`

The credentials to authenticate a user agent with a server that is put in HTTP Authorization request header.

| Property | Type | Description |
|----------|------|-------------|
| `token` | `string` | The token for the auth type. |
| `type` | `string` | Authentication type, e.g. "Basic", "Bearer", etc. |

### `GoogleCloudIntegrationsV1alphaBooleanParameterArray`

This message only contains a field of boolean array.

| Property | Type | Description |
|----------|------|-------------|
| `booleanValues` | `array<boolean>` | Boolean array. |

### `GoogleCloudIntegrationsV1alphaCancelExecutionRequest`

Request for cancelling an execution.

| Property | Type | Description |
|----------|------|-------------|
| `cancelReason` | `string` | Required. Reason for cancelling the execution. This is provided by the client requesting the canc... |

### `GoogleCloudIntegrationsV1alphaCancelExecutionResponse`

Response for cancelling an execution.

| Property | Type | Description |
|----------|------|-------------|
| `isCanceled` | `boolean` | True if cancellation performed successfully. |

### `GoogleCloudIntegrationsV1alphaCertificate`

The certificate definition

| Property | Type | Description |
|----------|------|-------------|
| `certificateStatus` | `string` | Status of the certificate |
| `credentialId` | `string` | Immutable. Credential id that will be used to register with trawler |
| `description` | `string` | Description of the certificate |
| `displayName` | `string` | Required. Name of the certificate |
| `name` | `string` | Output only. Auto generated primary key |
| `rawCertificate` | `GoogleCloudIntegrationsV1alphaClientCertificate` | Input only. Raw client certificate which would be registered with trawler |
| `requestorId` | `string` | Immutable. Requestor ID to be used to register certificate with trawler |
| `validEndTime` | `string` | Output only. The timestamp after which certificate will expire |
| `validStartTime` | `string` | Output only. The timestamp after which certificate will be valid |

### `GoogleCloudIntegrationsV1alphaChangeCustomerConfigRequest`

Request for the ChangeCustomerConfig rpc

| Property | Type | Description |
|----------|------|-------------|
| `customerConfig` | `GoogleCloudIntegrationsV1alphaCustomerConfig` | Optional. The customer configuration to be updated. |
| `updateMask` | `string` | Required. Field mask specifying the fields in the customer config that have been modified and mus... |

### `GoogleCloudIntegrationsV1alphaChangeCustomerConfigResponse`

Response for the ChangeCustomerConfig rpc

| Property | Type | Description |
|----------|------|-------------|
| `customerConfig` | `GoogleCloudIntegrationsV1alphaCustomerConfig` | Required. The updated customer configuration. |

### `GoogleCloudIntegrationsV1alphaClientCertificate`

Contains client certificate information

| Property | Type | Description |
|----------|------|-------------|
| `encryptedPrivateKey` | `string` | The ssl certificate encoded in PEM format. This string must include the begin header and end foot... |
| `passphrase` | `string` | 'passphrase' should be left unset if private key is not encrypted. Note that 'passphrase' is not ... |
| `sslCertificate` | `string` | The ssl certificate encoded in PEM format. This string must include the begin header and end foot... |

### `GoogleCloudIntegrationsV1alphaClientConfig`

The configuration information for the Client

| Property | Type | Description |
|----------|------|-------------|
| `billingType` | `string` | Indicates the billing type of the client |
| `clientState` | `string` | Indicates the activity state the client |
| `cloudKmsConfig` | `GoogleCloudIntegrationsV1alphaCloudKmsConfig` |  |
| `createTime` | `string` | The timestamp when the client was first created. |
| `customerConfig` | `GoogleCloudIntegrationsV1alphaCustomerConfig` | Optional. Customer configuration information for the given client. |
| `description` | `string` | Description of what the client is used for |
| `enableHttpCall` | `boolean` | Optional. |
| `enableInternalIp` | `boolean` | Optional. Indicates the client enables internal IP feature, this is applicable for internal clien... |
| `enableManagedAiFeatures` | `boolean` | Optional. |
| `enableVariableMasking` | `boolean` | Optional. |
| `id` | `string` | Globally unique ID (project_id + region) |
| `isGmek` | `boolean` | Optional. Indicates the client is provisioned with CMEK or GMEK. |
| `p4ServiceAccount` | `string` | The service agent associated with this client |
| `projectId` | `string` | The GCP project id of the client associated with |
| `region` | `string` | The region the client is linked to. |
| `runAsServiceAccount` | `string` |  |

### `GoogleCloudIntegrationsV1alphaCloudKmsConfig`

Configuration information for Client's Cloud KMS information

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | Required. A Cloud KMS key is a named object containing one or more key versions, along with metad... |
| `keyVersion` | `string` | Optional. Each version of a key contains key material used for encryption or signing. A key's ver... |
| `kmsLocation` | `string` | Required. Location name of the key ring, e.g. "us-west1". |
| `kmsProjectId` | `string` | Optional. The gcp project id of the project where the kms key stored. If empty, the kms key is st... |
| `kmsRing` | `string` | Required. A key ring organizes keys in a specific Google Cloud location and allows you to manage ... |

### `GoogleCloudIntegrationsV1alphaCloudLoggingDetails`

Cloud Logging details for execution info

| Property | Type | Description |
|----------|------|-------------|
| `cloudLoggingSeverity` | `string` | Optional. Severity selected by the customer for the logs to be sent to Cloud Logging, for the int... |
| `enableCloudLogging` | `boolean` | Optional. Status of whether Cloud Logging is enabled or not for the integration version getting e... |

### `GoogleCloudIntegrationsV1alphaCloudSchedulerConfig`

Cloud Scheduler Trigger configuration

| Property | Type | Description |
|----------|------|-------------|
| `cronTab` | `string` | Required. The cron tab of cloud scheduler trigger. |
| `errorMessage` | `string` | Optional. When the job was deleted from Pantheon UI, error_message will be populated when Get/Lis... |
| `location` | `string` | Required. The location where associated cloud scheduler job will be created |
| `serviceAccountEmail` | `string` | Required. Service account used by Cloud Scheduler to trigger the integration at scheduled time |

### `GoogleCloudIntegrationsV1alphaConditionalFailurePolicies`

Conditional task failur retry strategies

| Property | Type | Description |
|----------|------|-------------|
| `defaultFailurePolicy` | `GoogleCloudIntegrationsV1alphaFailurePolicy` | The default failure policy to be applied if no conditional failure policy matches. |
| `failurePolicies` | `array<GoogleCloudIntegrationsV1alphaFailurePolicy>` | The list of failure policies that will be applied to the task in order. |

### `GoogleCloudIntegrationsV1alphaConnectionSchemaMetadata`

Metadata of runtime connection schema.

| Property | Type | Description |
|----------|------|-------------|
| `actions` | `array<string>` | List of actions. |
| `entities` | `array<string>` | List of entity names. |

### `GoogleCloudIntegrationsV1alphaCoordinate`

Configuration detail of coordinate, it used for UI

| Property | Type | Description |
|----------|------|-------------|
| `x` | `integer` | Required. X axis of the coordinate |
| `y` | `integer` | Required. Y axis of the coordinate |

### `GoogleCloudIntegrationsV1alphaCreateAppsScriptProjectRequest`

Request for CreateAppsScriptProject rpc call.

| Property | Type | Description |
|----------|------|-------------|
| `appsScriptProject` | `string` | The name of the Apps Script project to be created. |
| `authConfigId` | `string` | The auth config id necessary to fetch the necessary credentials to create the project for externa... |

### `GoogleCloudIntegrationsV1alphaCreateAppsScriptProjectResponse`

Response for CreateAppsScriptProject rpc call.

| Property | Type | Description |
|----------|------|-------------|
| `projectId` | `string` | The created AppsScriptProject ID. |

### `GoogleCloudIntegrationsV1alphaCreateCloudFunctionRequest`

Request for Creating Cloud Function rpc call.

| Property | Type | Description |
|----------|------|-------------|
| `functionName` | `string` | The function name of CF to be created |
| `functionRegion` | `string` | The function region of CF to be created |
| `gcfApiVersion` | `string` | Optional. The api version of CF to be created |
| `projectId` | `string` | Indicates the id of the GCP project that the function will be created in. |

### `GoogleCloudIntegrationsV1alphaCreateCloudFunctionResponse`

Response for Creating Cloud Function rpc call.

| Property | Type | Description |
|----------|------|-------------|
| `triggerUrl` | `string` | The trigger url that will be returned |

### `GoogleCloudIntegrationsV1alphaCredential`

Defines parameters for a single, canonical credential.

| Property | Type | Description |
|----------|------|-------------|
| `authToken` | `GoogleCloudIntegrationsV1alphaAuthToken` | Auth token credential |
| `credentialType` | `string` | Credential type associated with auth config. |
| `jwt` | `GoogleCloudIntegrationsV1alphaJwt` | JWT credential |
| `oauth2AuthorizationCode` | `GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCode` | The api_key and oauth2_implicit are not covered in v1 and will be picked up once v1 is implemente... |
| `oauth2ClientCredentials` | `GoogleCloudIntegrationsV1alphaOAuth2ClientCredentials` | OAuth2Implicit oauth2_implicit = 5; OAuth2 client credentials |
| `oauth2ResourceOwnerCredentials` | `GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials` | OAuth2 resource owner credentials |
| `oidcToken` | `GoogleCloudIntegrationsV1alphaOidcToken` | Google OIDC ID Token |
| `serviceAccountCredentials` | `GoogleCloudIntegrationsV1alphaServiceAccountCredentials` | Service account credential |
| `usernameAndPassword` | `GoogleCloudIntegrationsV1alphaUsernameAndPassword` | Username and password credential |

### `GoogleCloudIntegrationsV1alphaCustomerConfig`

Customer configuration information for the given client

| Property | Type | Description |
|----------|------|-------------|
| `cloudKmsConfig` | `GoogleCloudIntegrationsV1alphaCloudKmsConfig` | Optional. Cloud KMS config for Auth Module to encrypt/decrypt credentials. |
| `enableHttpCall` | `boolean` | Optional. Indicates if the client should be allowed to make HTTP calls. True if http call feature... |
| `enableManagedAiFeatures` | `boolean` | Optional. Indicates if the client should be allowed to use managed AI features, i.e. using Cloud ... |
| `enableVariableMasking` | `boolean` | Optional. True if variable masking feature should be turned on for this region. |
| `runAsServiceAccount` | `string` | Optional. Run-as service account to be updated for the provisioned client. |

### `GoogleCloudIntegrationsV1alphaDeprovisionClientRequest`

Request for the Deprovision rpc

### `GoogleCloudIntegrationsV1alphaDoubleParameterArray`

This message only contains a field of double number array.

| Property | Type | Description |
|----------|------|-------------|
| `doubleValues` | `array<number>` | Double number array. |

### `GoogleCloudIntegrationsV1alphaDownloadExecutionResponse`

Response for downloading an execution.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | The content of downloaded execution. |

### `GoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse`

Response for DownloadIntegrationVersion.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | String representation of the requested file. |
| `files` | `array<GoogleCloudIntegrationsV1alphaSerializedFile>` | List containing String represendation for multiple file with type. |

### `GoogleCloudIntegrationsV1alphaDownloadJsonPackageResponse`

Response for DownloadJsonPackage.

| Property | Type | Description |
|----------|------|-------------|
| `files` | `array<GoogleCloudIntegrationsV1alphaFile>` | List containing JSON for multiple file with type information. |

### `GoogleCloudIntegrationsV1alphaDownloadTemplateResponse`

Response for DownloadTemplate.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | String representation of the template. |

### `GoogleCloudIntegrationsV1alphaDownloadTestCaseResponse`

Response for DownloadTestCase.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | String representation of the test case. |

### `GoogleCloudIntegrationsV1alphaEnumerateConnectorPlatformRegionsResponse`

Response containing all provisioned regions for Connector Platform.

| Property | Type | Description |
|----------|------|-------------|
| `regions` | `array<string>` | All regions where Connector Platform is provisioned. |

### `GoogleCloudIntegrationsV1alphaErrorCatcherConfig`

Configuration detail of a error catch task

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. User-provided description intended to give more business context about the error catche... |
| `errorCatcherId` | `string` | Required. An error catcher id is string representation for the error catcher config. Within a wor... |
| `errorCatcherNumber` | `string` | Required. A number to uniquely identify each error catcher config within the workflow on UI. |
| `label` | `string` | Optional. The user created label for a particular error catcher. Optional. |
| `position` | `GoogleCloudIntegrationsV1alphaCoordinate` | Optional. Informs the front-end application where to draw this error catcher config on the UI. |
| `startErrorTasks` | `array<GoogleCloudIntegrationsV1alphaNextTask>` | Required. The set of start tasks that are to be executed for the error catch flow |

### `GoogleCloudIntegrationsV1alphaEventParameter`

This message is used for processing and persisting (when applicable) key value pair parameters for each event in the event bus. Next available id: 4

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | Key is used to retrieve the corresponding parameter value. This should be unique for a given fire... |
| `masked` | `boolean` | True if this parameter should be masked in the logs |
| `value` | `GoogleCloudIntegrationsV1alphaValueType` | Values for the defined keys. Each value can either be string, int, double or any proto message. |

### `GoogleCloudIntegrationsV1alphaExecuteEventResponse`

The response for executing an integration.

| Property | Type | Description |
|----------|------|-------------|
| `executionId` | `string` | The id of the execution corresponding to this run of integration. |

### `GoogleCloudIntegrationsV1alphaExecuteIntegrationsRequest`

The request for executing an integration.

| Property | Type | Description |
|----------|------|-------------|
| `doNotPropagateError` | `boolean` | Optional. Flag to determine how to should propagate errors. If this flag is set to be true, it wi... |
| `executionId` | `string` | Optional. The id of the ON_HOLD execution to be resumed. |
| `inputParameters` | `object` | Optional. Input parameters used by integration execution. |
| `parameterEntries` | `array<EnterpriseCrmFrontendsEventbusProtoParameterEntry>` | Optional. Parameters are a part of Event and can be used to communicate between different tasks t... |
| `parameters` | `EnterpriseCrmFrontendsEventbusProtoEventParameters` | Optional. Passed in as parameters to each integration execution. Redacted |
| `requestId` | `string` | Optional. This is used to de-dup incoming request: if the duplicate request was detected, the res... |
| `triggerId` | `string` | Required. Matched against all {@link TriggerConfig}s across all integrations. i.e. TriggerConfig.... |

### `GoogleCloudIntegrationsV1alphaExecuteIntegrationsResponse`

The response for executing an integration.

| Property | Type | Description |
|----------|------|-------------|
| `eventParameters` | `EnterpriseCrmFrontendsEventbusProtoEventParameters` | Details for the integration that were executed. |
| `executionFailed` | `boolean` | Is true if any execution in the integration failed. False otherwise. |
| `executionId` | `string` | The id of the execution corresponding to this run of integration. |
| `outputParameters` | `object` | OUTPUT parameters in format of Map. Where Key is the name of the parameter. Note: Name of the sys... |
| `parameterEntries` | `array<EnterpriseCrmFrontendsEventbusProtoParameterEntry>` | Parameters are a part of Event and can be used to communicate between different tasks that are pa... |
| `parameters` | `object` | Optional. OUTPUT parameters from integration execution. |

### `GoogleCloudIntegrationsV1alphaExecuteTestCaseRequest`

The request for executing a functional test.

| Property | Type | Description |
|----------|------|-------------|
| `inputParameters` | `object` | Optional. Input parameters used by test case execution. |

### `GoogleCloudIntegrationsV1alphaExecuteTestCaseResponse`

The response for executing a functional test.

| Property | Type | Description |
|----------|------|-------------|
| `assertionResults` | `array<GoogleCloudIntegrationsV1alphaAssertionResult>` | Results of each assertions ran during execution of test case. |
| `executionId` | `string` | The id of the execution corresponding to this run of integration. |
| `outputParameters` | `object` | OUTPUT parameters in format of Map. Where Key is the name of the parameter. Note: Name of the sys... |
| `testExecutionState` | `string` | State of the test case execution |

### `GoogleCloudIntegrationsV1alphaExecuteTestCasesRequest`

Request for ExecuteTestCases.

### `GoogleCloudIntegrationsV1alphaExecuteTestCasesResponse`

Response for ExecuteTestCases.

| Property | Type | Description |
|----------|------|-------------|
| `executeTestCaseResponses` | `array<GoogleCloudIntegrationsV1alphaExecuteTestCaseResponse>` | Results of each execution of test cases in an integration version. |

### `GoogleCloudIntegrationsV1alphaExecution`

The Execution resource contains detailed information of an individual integration execution.

| Property | Type | Description |
|----------|------|-------------|
| `cloudKmsKey` | `string` | Optional. Cloud KMS resource name for the CMEK encryption key. |
| `cloudLoggingDetails` | `GoogleCloudIntegrationsV1alphaCloudLoggingDetails` | Cloud Logging details for the integration version |
| `createTime` | `string` | Output only. Created time of the execution. |
| `directSubExecutions` | `array<GoogleCloudIntegrationsV1alphaExecution>` | Direct sub executions of the following Execution. |
| `eventExecutionDetails` | `EnterpriseCrmEventbusProtoEventExecutionDetails` | The execution info about this event. |
| `executionDetails` | `GoogleCloudIntegrationsV1alphaExecutionDetails` | Detailed info of this execution. |
| `executionMethod` | `string` | The ways user posts this event. |
| `integrationVersionState` | `string` | Output only. State of the integration version |
| `name` | `string` | Auto-generated primary key. |
| `replayInfo` | `GoogleCloudIntegrationsV1alphaExecutionReplayInfo` | Output only. Replay info for the execution |
| `requestParameters` | `object` | Event parameters come in as part of the request. |
| `requestParams` | `array<EnterpriseCrmFrontendsEventbusProtoParameterEntry>` | Event parameters come in as part of the request. |
| `responseParameters` | `object` | Event parameters returned as part of the response. In the case of error, the `ErrorInfo` field is... |
| `responseParams` | `array<EnterpriseCrmFrontendsEventbusProtoParameterEntry>` |  |
| `snapshotNumber` | `string` | Output only. An increasing sequence that is set when a new snapshot is created |
| `triggerId` | `string` | The trigger id of the integration trigger config. If both trigger_id and client_id is present, th... |
| `updateTime` | `string` | Output only. Last modified time of the execution. |

### `GoogleCloudIntegrationsV1alphaExecutionDetails`

Contains the details of the execution info: this includes the tasks execution details plus the event execution statistics.

| Property | Type | Description |
|----------|------|-------------|
| `attemptStats` | `array<GoogleCloudIntegrationsV1alphaAttemptStats>` | List of Start and end time of the execution attempts. |
| `eventExecutionSnapshotsSize` | `string` | Total size of all event_execution_snapshots for an execution |
| `executionSnapshots` | `array<GoogleCloudIntegrationsV1alphaExecutionSnapshot>` | List of snapshots taken during the execution. |
| `state` | `string` | Status of the execution. |

### `GoogleCloudIntegrationsV1alphaExecutionReplayInfo`

Contains the details of the execution info: this includes the replay reason and replay tree connecting executions in a parent-child relationship

| Property | Type | Description |
|----------|------|-------------|
| `originalExecutionInfoId` | `string` | If this execution is a replay of another execution, then this field contains the original executi... |
| `replayMode` | `string` | Replay mode for the execution |
| `replayReason` | `string` | reason for replay |
| `replayedExecutionInfoIds` | `array<string>` | If this execution has been replayed, then this field contains the execution ids of the replayed e... |

### `GoogleCloudIntegrationsV1alphaExecutionSnapshot`

Contains the snapshot of the execution for a given checkpoint.

| Property | Type | Description |
|----------|------|-------------|
| `checkpointTaskNumber` | `string` | Indicates "after which checkpoint task's execution" this snapshot is taken. |
| `executionSnapshotMetadata` | `GoogleCloudIntegrationsV1alphaExecutionSnapshotExecutionSnapshotMetadata` | Metadata of the execution snapshot. |
| `params` | `object` | Parameters used during the execution. |
| `taskExecutionDetails` | `array<GoogleCloudIntegrationsV1alphaTaskExecutionDetails>` | All of the task execution details at the given point of time. |

### `GoogleCloudIntegrationsV1alphaExecutionSnapshotExecutionSnapshotMetadata`

Metadata of the execution snapshot.

| Property | Type | Description |
|----------|------|-------------|
| `ancestorIterationNumbers` | `array<string>` | Ancestor iteration number for the task(it will only be non-empty if the task is under 'private wo... |
| `ancestorTaskNumbers` | `array<string>` | Ancestor task number for the task(it will only be non-empty if the task is under 'private workflow') |
| `executionAttempt` | `integer` | the execution attempt number this snapshot belongs to. |
| `integrationName` | `string` | The direct integration which the event execution snapshots belongs to |
| `task` | `string` | the task name associated with this snapshot. |
| `taskAttempt` | `integer` | the task attempt number this snapshot belongs to. |
| `taskLabel` | `string` | the task label associated with this snapshot. Could be empty. |
| `taskNumber` | `string` | The task number associated with this snapshot. |

### `GoogleCloudIntegrationsV1alphaFailurePolicy`

Policy that defines the task retry logic and failure type. If no FailurePolicy is defined for a task, all its dependent tasks will not be executed (i.e, a `retry_strategy` of NONE will be applied).

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `string` | Optional. The string condition that will be evaluated to determine if the task should be retried ... |
| `intervalTime` | `string` | Required if retry_strategy is FIXED_INTERVAL or LINEAR/EXPONENTIAL_BACKOFF/RESTART_INTEGRATION_WI... |
| `maxRetries` | `integer` | Required if retry_strategy is FIXED_INTERVAL or LINEAR/EXPONENTIAL_BACKOFF/RESTART_INTEGRATION_WI... |
| `retryStrategy` | `string` | Defines what happens to the task upon failure. |

### `GoogleCloudIntegrationsV1alphaFile`

To store Integration version related file i.e. Integration Version, Config variable etc.

| Property | Type | Description |
|----------|------|-------------|
| `integrationConfig` | `object` | Integration version config file |
| `integrationVersion` | `GoogleCloudIntegrationsV1alphaIntegrationVersion` | Integration version |
| `type` | `string` | File information like Integration version, Integration Config variables etc. |

### `GoogleCloudIntegrationsV1alphaGenerateOpenApiSpecRequest`

Request for GenerateOpenApiSpec.

| Property | Type | Description |
|----------|------|-------------|
| `apiTriggerResources` | `array<GoogleCloudIntegrationsV1alphaApiTriggerResource>` | Required. List of api triggers |
| `fileFormat` | `string` | Required. File format for generated spec. |

### `GoogleCloudIntegrationsV1alphaGenerateOpenApiSpecResponse`

Response of the GenerateOpenApiSpec API.

| Property | Type | Description |
|----------|------|-------------|
| `openApiSpec` | `string` | Open API spec as per the required format |

### `GoogleCloudIntegrationsV1alphaGenerateTokenResponse`

Returns success or error message

| Property | Type | Description |
|----------|------|-------------|
| `message` | `string` | The message that notifies the user if the request succeeded or not. |

### `GoogleCloudIntegrationsV1alphaGetClientMetadataResponse`

Response for the GetClientMetadata rpc

| Property | Type | Description |
|----------|------|-------------|
| `properties` | `GoogleCloudIntegrationsV1alphaProjectProperties` | Required. Required: The client configuration that was requested |

### `GoogleCloudIntegrationsV1alphaGetClientResponse`

Response for the GetClient rpc

| Property | Type | Description |
|----------|------|-------------|
| `client` | `GoogleCloudIntegrationsV1alphaClientConfig` | Required. Required: The client configuration that was requested |

### `GoogleCloudIntegrationsV1alphaImportTemplateRequest`

Request to Import template

| Property | Type | Description |
|----------|------|-------------|
| `integration` | `string` | Required. Resource Name of the integration where template needs to be imported/inserted. |
| `subIntegrations` | `object` | Optional. Sub Integration which would be created via templates. |

### `GoogleCloudIntegrationsV1alphaImportTemplateResponse`

Response for import template

| Property | Type | Description |
|----------|------|-------------|
| `integrationVersion` | `GoogleCloudIntegrationsV1alphaIntegrationVersion` | IntegrationVersion after the import. |
| `subIntegrationVersions` | `array<GoogleCloudIntegrationsV1alphaIntegrationVersion>` | Sub integration versions which are imported. |

### `GoogleCloudIntegrationsV1alphaIntParameterArray`

This message only contains a field of integer array.

| Property | Type | Description |
|----------|------|-------------|
| `intValues` | `array<string>` | Integer array. |

### `GoogleCloudIntegrationsV1alphaIntegration`

The integration definition.

| Property | Type | Description |
|----------|------|-------------|
| `active` | `boolean` | Required. If any integration version is published. |
| `createTime` | `string` | Required. Output only. Auto-generated. |
| `creatorEmail` | `string` | Output only. The creator's email address. Generated based on the End User Credentials/LOAS role o... |
| `description` | `string` | Optional. |
| `lastModifierEmail` | `string` | Required. The last modifier of this integration |
| `name` | `string` | Required. The resource name of the integration. |
| `updateTime` | `string` | Output only. Auto-generated. |

### `GoogleCloudIntegrationsV1alphaIntegrationAlertConfig`

Message to be used to configure custom alerting in the {@code EventConfig} protos for an event.

| Property | Type | Description |
|----------|------|-------------|
| `aggregationPeriod` | `string` | The period over which the metric value should be aggregated and evaluated. Format is , where inte... |
| `alertThreshold` | `integer` | For how many contiguous aggregation periods should the expected min or max be violated for the al... |
| `disableAlert` | `boolean` | Set to false by default. When set to true, the metrics are not aggregated or pushed to Monarch fo... |
| `displayName` | `string` | Name of the alert. This will be displayed in the alert subject. If set, this name should be uniqu... |
| `durationThreshold` | `string` | Should be specified only for *AVERAGE_DURATION and *PERCENTILE_DURATION metrics. This member shou... |
| `metricType` | `string` | The type of metric. |
| `onlyFinalAttempt` | `boolean` | For either events or tasks, depending on the type of alert, count only final attempts, not retries. |
| `thresholdType` | `string` | The threshold type, whether lower(expected_min) or upper(expected_max), for which this alert is b... |
| `thresholdValue` | `GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValue` | The metric value, above or below which the alert should be triggered. |

### `GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValue`

The threshold value of the metric, above or below which the alert should be triggered. See EventAlertConfig or TaskAlertConfig for the different alert metric types in each case. For the *RATE metrics, one or both of these fields may be set. Zero is the default value and can be left at that. For *PERCENTILE_DURATION metrics, one or both of these fields may be set, and also, the duration threshold value should be specified in the threshold_duration_ms member below. For *AVERAGE_DURATION metrics, these fields should not be set at all. A different member, threshold_duration_ms, must be set in the EventAlertConfig or the TaskAlertConfig.

| Property | Type | Description |
|----------|------|-------------|
| `absolute` | `string` | Absolute value threshold. |
| `percentage` | `integer` | Percentage threshold. |

### `GoogleCloudIntegrationsV1alphaIntegrationConfigParameter`

Integration Config Parameter is defined in the integration config and are used to provide external configuration for integration. It provide information about data types of the expected parameters and provide any default values or value. They can also be used to add custom attributes.

| Property | Type | Description |
|----------|------|-------------|
| `parameter` | `GoogleCloudIntegrationsV1alphaIntegrationParameter` | Optional. Integration Parameter to provide the default value, data type and attributes required f... |
| `value` | `GoogleCloudIntegrationsV1alphaValueType` | Values for the defined keys. Each value can either be string, int, double or any proto message or... |

### `GoogleCloudIntegrationsV1alphaIntegrationParameter`

Integration Parameter is defined in the integration config and are used to provide information about data types of the expected parameters and provide any default values if needed. They can also be used to add custom attributes. These are static in nature and should not be used for dynamic event definition.

| Property | Type | Description |
|----------|------|-------------|
| `containsLargeData` | `boolean` | Indicates whether this variable contains large data and need to be uploaded to Cloud Storage. |
| `dataType` | `string` | Type of the parameter. |
| `defaultValue` | `GoogleCloudIntegrationsV1alphaValueType` | Default values for the defined keys. Each value can either be string, int, double or any proto me... |
| `description` | `string` | Optional. Description of the parameter. |
| `displayName` | `string` | The name (without prefix) to be displayed in the UI for this parameter. E.g. if the key is "foo.b... |
| `inputOutputType` | `string` | Specifies the input/output type for the parameter. |
| `isTransient` | `boolean` | Whether this parameter is a transient parameter. |
| `jsonSchema` | `string` | This schema will be used to validate runtime JSON-typed values of this parameter. |
| `key` | `string` | Key is used to retrieve the corresponding parameter value. This should be unique for a given fire... |
| `masked` | `boolean` | True if this parameter should be masked in the logs |
| `producer` | `string` | The identifier of the node (TaskConfig/TriggerConfig) this parameter was produced by, if it is a ... |
| `searchable` | `boolean` | Searchable in the execution log or not. |

### `GoogleCloudIntegrationsV1alphaIntegrationVersion`

The integration version definition.

| Property | Type | Description |
|----------|------|-------------|
| `cloudKmsKey` | `string` | Optional. Cloud KMS resource name for the CMEK encryption key. |
| `cloudLoggingDetails` | `GoogleCloudIntegrationsV1alphaCloudLoggingDetails` | Optional. Cloud Logging details for the integration version |
| `createTime` | `string` | Output only. Auto-generated. |
| `createdFromTemplate` | `string` | Optional. Optional. The resource name of the template from which the integration is created. |
| `databasePersistencePolicy` | `string` | Optional. Flag to disable database persistence for execution data, including event execution info... |
| `description` | `string` | Optional. The integration description. |
| `enableVariableMasking` | `boolean` | Optional. True if variable masking feature should be turned on for this version |
| `errorCatcherConfigs` | `array<GoogleCloudIntegrationsV1alphaErrorCatcherConfig>` | Optional. Error Catch Task configuration for the integration. It's optional. |
| `integrationConfigParameters` | `array<GoogleCloudIntegrationsV1alphaIntegrationConfigParameter>` | Optional. Config Parameters that are expected to be passed to the integration when an integration... |
| `integrationParameters` | `array<GoogleCloudIntegrationsV1alphaIntegrationParameter>` | Optional. Parameters that are expected to be passed to the integration when an event is triggered... |
| `integrationParametersInternal` | `EnterpriseCrmFrontendsEventbusProtoWorkflowParameters` | Optional. Parameters that are expected to be passed to the integration when an event is triggered... |
| `lastModifierEmail` | `string` | Optional. The last modifier's email address. Generated based on the End User Credentials/LOAS rol... |
| `lockHolder` | `string` | Optional. The edit lock holder's email address. Generated based on the End User Credentials/LOAS ... |
| `name` | `string` | Output only. Auto-generated primary key. |
| `origin` | `string` | Optional. The origin that indicates where this integration is coming from. |
| `parentTemplateId` | `string` | Optional. The id of the template which was used to create this integration_version. |
| `runAsServiceAccount` | `string` | Optional. The run-as service account email, if set and auth config is not configured, that will b... |
| `snapshotNumber` | `string` | Output only. An increasing sequence that is set when a new snapshot is created. The last created ... |
| `state` | `string` | Output only. User should not set it as an input. |
| `status` | `string` | Output only. Generated by eventbus. User should not set it as an input. |
| `taskConfigs` | `array<GoogleCloudIntegrationsV1alphaTaskConfig>` | Optional. Task configuration for the integration. It's optional, but the integration doesn't do a... |
| `taskConfigsInternal` | `array<EnterpriseCrmFrontendsEventbusProtoTaskConfig>` | Optional. Task configuration for the integration. It's optional, but the integration doesn't do a... |
| `teardown` | `EnterpriseCrmEventbusProtoTeardown` | Optional. Contains a graph of tasks that will be executed before putting the event in a terminal ... |
| `triggerConfigs` | `array<GoogleCloudIntegrationsV1alphaTriggerConfig>` | Optional. Trigger configurations. |
| `triggerConfigsInternal` | `array<EnterpriseCrmFrontendsEventbusProtoTriggerConfig>` | Optional. Trigger configurations. |
| `updateTime` | `string` | Output only. Auto-generated. |
| `userLabel` | `string` | Optional. A user-defined label that annotates an integration version. Typically, this is only set... |

### `GoogleCloudIntegrationsV1alphaIntegrationVersionTemplate`

Define the template of IntegrationVersion.

| Property | Type | Description |
|----------|------|-------------|
| `integrationVersion` | `GoogleCloudIntegrationsV1alphaIntegrationVersion` | Required. Templatized version of integration. |
| `key` | `string` | Required. Unique Key of the IntegrationVersion. |

### `GoogleCloudIntegrationsV1alphaJwt`

Represents JSON web token(JWT), which is a compact, URL-safe means of representing claims to be transferred between two parties, enabling the claims to be digitally signed or integrity protected.

| Property | Type | Description |
|----------|------|-------------|
| `jwt` | `string` | The token calculated by the header, payload and signature. |
| `jwtHeader` | `string` | Identifies which algorithm is used to generate the signature. |
| `jwtPayload` | `string` | Contains a set of claims. The JWT specification defines seven Registered Claim Names which are th... |
| `secret` | `string` | User's pre-shared secret to sign the token. |

### `GoogleCloudIntegrationsV1alphaLiftSuspensionRequest`

Request for lift Suspension

| Property | Type | Description |
|----------|------|-------------|
| `suspensionResult` | `string` | User passed in suspension result and will be used to control workflow execution branching behavio... |

### `GoogleCloudIntegrationsV1alphaLiftSuspensionResponse`

Response of lift Suspense

| Property | Type | Description |
|----------|------|-------------|
| `eventExecutionInfoId` | `string` | Execution Id that will be returned |

### `GoogleCloudIntegrationsV1alphaLinkAppsScriptProjectRequest`

Request for LinkAppsScriptProject rpc call.

| Property | Type | Description |
|----------|------|-------------|
| `scriptId` | `string` | The id of the Apps Script project to be linked. |

### `GoogleCloudIntegrationsV1alphaLinkAppsScriptProjectResponse`

Response for LinkAppsScriptProject rpc call.

| Property | Type | Description |
|----------|------|-------------|
| `scriptId` | `string` | The id of the linked Apps Script project. |

### `GoogleCloudIntegrationsV1alphaListAuthConfigsResponse`

Response to list AuthConfigs.

| Property | Type | Description |
|----------|------|-------------|
| `authConfigs` | `array<GoogleCloudIntegrationsV1alphaAuthConfig>` | The list of AuthConfigs retrieved. |
| `nextPageToken` | `string` | The token used to retrieve the next page of results. |

### `GoogleCloudIntegrationsV1alphaListCertificatesResponse`

Response to list Certificates.

| Property | Type | Description |
|----------|------|-------------|
| `certificates` | `array<GoogleCloudIntegrationsV1alphaCertificate>` | The list of Certificates retrieved. |
| `nextPageToken` | `string` | The token used to retrieve the next page of results. |

### `GoogleCloudIntegrationsV1alphaListConnectionsResponse`

Response containing Connections listed by region.

| Property | Type | Description |
|----------|------|-------------|
| `connections` | `array<GoogleCloudConnectorsV1Connection>` | Connections. |
| `nextPageToken` | `string` | Next page token. |

### `GoogleCloudIntegrationsV1alphaListExecutionsResponse`

Response for listing the integration execution data.

| Property | Type | Description |
|----------|------|-------------|
| `executionInfos` | `array<EnterpriseCrmFrontendsEventbusProtoEventExecutionInfo>` | Required. The detailed information of requested executions. |
| `executions` | `array<GoogleCloudIntegrationsV1alphaExecution>` | The detailed information of requested executions |
| `nextPageToken` | `string` | The token used to retrieve the next page results. |

### `GoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse`

Response for ListIntegrationVersions.

| Property | Type | Description |
|----------|------|-------------|
| `integrationVersions` | `array<GoogleCloudIntegrationsV1alphaIntegrationVersion>` | The integrations which match the request. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `noPermission` | `boolean` | Whether the user has no permission on the version or not. |

### `GoogleCloudIntegrationsV1alphaListIntegrationsResponse`

Response for ListIntegrations.

| Property | Type | Description |
|----------|------|-------------|
| `integrations` | `array<GoogleCloudIntegrationsV1alphaIntegration>` | The integrations which match the request. |
| `nextPageToken` | `string` | The next page token for the response. |

### `GoogleCloudIntegrationsV1alphaListRuntimeActionSchemasResponse`

Response for listing RuntimeActionSchemas for a specific Connection.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Next page token. |
| `runtimeActionSchemas` | `array<GoogleCloudIntegrationsV1alphaRuntimeActionSchema>` | Runtime action schemas. |

### `GoogleCloudIntegrationsV1alphaListRuntimeEntitySchemasResponse`

Response for listing RuntimeEntitySchemas for a specific Connection.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Next page token. |
| `runtimeEntitySchemas` | `array<GoogleCloudIntegrationsV1alphaRuntimeEntitySchema>` | Runtime entity schemas. |

### `GoogleCloudIntegrationsV1alphaListSfdcChannelsResponse`

Response to list SfdcChannels.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The token used to retrieve the next page of results. |
| `sfdcChannels` | `array<GoogleCloudIntegrationsV1alphaSfdcChannel>` | The list of SfdcChannels retrieved. |

### `GoogleCloudIntegrationsV1alphaListSfdcInstancesResponse`

Response to list SfdcInstances.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The token used to retrieve the next page of results. |
| `sfdcInstances` | `array<GoogleCloudIntegrationsV1alphaSfdcInstance>` | The list of SfdcInstances retrieved. |

### `GoogleCloudIntegrationsV1alphaListSuspensionsResponse`

Response for Suspensions.ListSuspensions.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to retrieve the next page of results. |
| `suspensions` | `array<GoogleCloudIntegrationsV1alphaSuspension>` | The suspensions for the relevant execution which the caller has permissions to view and resolve. |

### `GoogleCloudIntegrationsV1alphaListTemplatesResponse`

Response for a request to list templates

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The token used to retrieve the next page results. |
| `templates` | `array<GoogleCloudIntegrationsV1alphaTemplate>` | List of templates retrieved. |

### `GoogleCloudIntegrationsV1alphaListTestCasesResponse`

Response for ListTestCases

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `testCases` | `array<GoogleCloudIntegrationsV1alphaTestCase>` | The test cases corresponding to the specified filter |

### `GoogleCloudIntegrationsV1alphaMockConfig`

The configuration for mocking of a task during test execution Next available id: 4

| Property | Type | Description |
|----------|------|-------------|
| `failedExecutions` | `string` | Optional. Number of times the given task should fail for failure mock strategy |
| `mockStrategy` | `string` | Mockstrategy defines how the particular task should be mocked during test execution |
| `parameters` | `array<GoogleCloudIntegrationsV1alphaEventParameter>` | Optional. List of key-value pairs for specific mock strategy |

### `GoogleCloudIntegrationsV1alphaNextTask`

The task that is next in line to be executed, if the condition specified evaluated to true.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `string` | Standard filter expression for this task to become an eligible next task. |
| `description` | `string` | User-provided description intended to give additional business context about the task. |
| `displayName` | `string` | User-provided label that is attached to this edge in the UI. |
| `taskConfigId` | `string` | ID of the next task. |
| `taskId` | `string` | Task number of the next task. |

### `GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCode`

The OAuth Type where the client sends request with the client id and requested scopes to auth endpoint. User sees a consent screen and auth code is received at specified redirect url afterwards. The auth code is then combined with the client id and secret and sent to the token endpoint in exchange for the access and refresh token. The refresh token can be used to fetch new access tokens.

| Property | Type | Description |
|----------|------|-------------|
| `accessToken` | `GoogleCloudIntegrationsV1alphaAccessToken` | The access token received from the token endpoint. |
| `applyReauthPolicy` | `boolean` | Indicates if the user has opted in Google Reauth Policy. If opted in, the refresh token will be v... |
| `authCode` | `string` | The Auth Code that is used to initially retrieve the access token. |
| `authEndpoint` | `string` | The auth url endpoint to send the auth code request to. |
| `authParams` | `GoogleCloudIntegrationsV1alphaParameterMap` | The auth parameters sent along with the auth code request. |
| `clientId` | `string` | The client's id. |
| `clientSecret` | `string` | The client's secret. |
| `requestType` | `string` | Represent how to pass parameters to fetch access token |
| `scope` | `string` | A space-delimited list of requested scope permissions. |
| `tokenEndpoint` | `string` | The token url endpoint to send the token request to. |
| `tokenParams` | `GoogleCloudIntegrationsV1alphaParameterMap` | The token parameters sent along with the token request. |

### `GoogleCloudIntegrationsV1alphaOAuth2ClientCredentials`

For client credentials grant, the client sends a POST request with grant_type as 'client_credentials' to the authorization server. The authorization server will respond with a JSON object containing the access token.

| Property | Type | Description |
|----------|------|-------------|
| `accessToken` | `GoogleCloudIntegrationsV1alphaAccessToken` | Access token fetched from the authorization server. |
| `clientId` | `string` | The client's ID. |
| `clientSecret` | `string` | The client's secret. |
| `requestType` | `string` | Represent how to pass parameters to fetch access token |
| `scope` | `string` | A space-delimited list of requested scope permissions. |
| `tokenEndpoint` | `string` | The token endpoint is used by the client to obtain an access token by presenting its authorizatio... |
| `tokenParams` | `GoogleCloudIntegrationsV1alphaParameterMap` | Token parameters for the auth request. |

### `GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials`

For resource owner credentials grant, the client will ask the user for their authorization credentials (ususally a username and password) and send a POST request to the authorization server. The authorization server will respond with a JSON object containing the access token.

| Property | Type | Description |
|----------|------|-------------|
| `accessToken` | `GoogleCloudIntegrationsV1alphaAccessToken` | Access token fetched from the authorization server. |
| `clientId` | `string` | The client's ID. |
| `clientSecret` | `string` | The client's secret. |
| `password` | `string` | The user's password. |
| `requestType` | `string` | Represent how to pass parameters to fetch access token |
| `scope` | `string` | A space-delimited list of requested scope permissions. |
| `tokenEndpoint` | `string` | The token endpoint is used by the client to obtain an access token by presenting its authorizatio... |
| `tokenParams` | `GoogleCloudIntegrationsV1alphaParameterMap` | Token parameters for the auth request. |
| `username` | `string` | The user's username. |

### `GoogleCloudIntegrationsV1alphaOidcToken`

OIDC Token

| Property | Type | Description |
|----------|------|-------------|
| `audience` | `string` | Audience to be used when generating OIDC token. The audience claim identifies the recipients that... |
| `serviceAccountEmail` | `string` | The service account email to be used as the identity for the token. |
| `token` | `string` | ID token obtained for the service account |
| `tokenExpireTime` | `string` | The approximate time until the token retrieved is valid. |

### `GoogleCloudIntegrationsV1alphaParameterMap`

A generic multi-map that holds key value pairs. They keys and values can be of any type, unless specified.

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<GoogleCloudIntegrationsV1alphaParameterMapEntry>` | A list of parameter map entries. |
| `keyType` | `string` | Option to specify key type for all entries of the map. If provided then field types for all entri... |
| `valueType` | `string` | Option to specify value type for all entries of the map. If provided then field types for all ent... |

### `GoogleCloudIntegrationsV1alphaParameterMapEntry`

Entry is a pair of key and value.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `GoogleCloudIntegrationsV1alphaParameterMapField` | Key of the map entry. |
| `value` | `GoogleCloudIntegrationsV1alphaParameterMapField` | Value of the map entry. |

### `GoogleCloudIntegrationsV1alphaParameterMapField`

Field represents either the key or value in an entry.

| Property | Type | Description |
|----------|------|-------------|
| `literalValue` | `GoogleCloudIntegrationsV1alphaValueType` | Passing a literal value. |
| `referenceKey` | `string` | Referencing one of the Integration variables. |

### `GoogleCloudIntegrationsV1alphaProjectProperties`

Metadata information for the given project

| Property | Type | Description |
|----------|------|-------------|
| `billingType` | `string` | Required. Required: The client billing type that was requested |
| `ipEnablementState` | `string` | An enum value of what the enablement state is for the given project |
| `provisionedRegions` | `array<string>` | A list of provisioned regions on the current project |

### `GoogleCloudIntegrationsV1alphaProvisionClientPostProcessorRequest`

Request for PostProvisioning rpc call.

| Property | Type | Description |
|----------|------|-------------|
| `workflows` | `array<string>` | Optional. Indicate which workflows to create |

### `GoogleCloudIntegrationsV1alphaProvisionClientPostProcessorResponse`

Response for PostProvisioning rpc call.

### `GoogleCloudIntegrationsV1alphaProvisionClientRequest`

Request for the Provision rpc

| Property | Type | Description |
|----------|------|-------------|
| `cloudKmsConfig` | `GoogleCloudIntegrationsV1alphaCloudKmsConfig` | Optional. OPTIONAL: Cloud KMS config for AuthModule to encrypt/decrypt credentials. |
| `createSampleWorkflows` | `boolean` | Optional. Indicates if sample workflow should be created along with provisioning |
| `enableHttpCall` | `boolean` | Optional. Indicates if the client should be allowed to make HTTP calls. |
| `enableManagedAiFeatures` | `boolean` | Optional. Indicates if the client should be allowed to use managed AI features, i.e. using Cloud ... |
| `provisionGmek` | `boolean` | Optional. Deprecated. Indicates provision with GMEK or CMEK. This field is deprecated and the pro... |
| `runAsServiceAccount` | `string` | Optional. User input run-as service account, if empty, will bring up a new default service account |
| `skipCpProvision` | `boolean` | Optional. Indicates if skip CP provision or not |

### `GoogleCloudIntegrationsV1alphaPublishIntegrationVersionRequest`

Request for PublishIntegrationVersion.

| Property | Type | Description |
|----------|------|-------------|
| `configParameters` | `object` | Optional. Config parameters used during integration execution. |

### `GoogleCloudIntegrationsV1alphaPublishIntegrationVersionResponse`

Response for PublishIntegrationVersion.

### `GoogleCloudIntegrationsV1alphaReplaceServiceAccountRequest`

Request for the ReplaceServiceAccount rpc

| Property | Type | Description |
|----------|------|-------------|
| `runAsServiceAccount` | `string` | Required. REQUIRED: Run-as service account to be updated |

### `GoogleCloudIntegrationsV1alphaReplayExecutionRequest`

Request for replaying an execution.

| Property | Type | Description |
|----------|------|-------------|
| `modifiedParameters` | `object` | Optional. The modified input parameters for replay. - Provide values for all the fields in the 'u... |
| `replayMode` | `string` | Optional. The mode of the replay. |
| `replayReason` | `string` | Required. The user provided reason for replaying the execution. |
| `updateMask` | `string` | Optional. The list of parameters to be updated. - If the `update_mask` is not specified, all the ... |

### `GoogleCloudIntegrationsV1alphaReplayExecutionResponse`

Response for replaying an execution.

| Property | Type | Description |
|----------|------|-------------|
| `executionId` | `string` | Next ID: 4 The id of the execution corresponding to this run of the integration. |
| `outputParameters` | `object` | OUTPUT parameters in format of Map. Where Key is the name of the parameter. The parameters would ... |
| `replayedExecutionId` | `string` | The execution id which is replayed. |

### `GoogleCloudIntegrationsV1alphaResolveSuspensionRequest`

Request for [Suspensions.ResolveSuspensions].

| Property | Type | Description |
|----------|------|-------------|
| `suspension` | `GoogleCloudIntegrationsV1alphaSuspension` | Suspension, containing the event_execution_info_id, task_id, and state to set on the correspondin... |

### `GoogleCloudIntegrationsV1alphaResolveSuspensionResponse`

Response for Suspensions.ResolveSuspensions.

### `GoogleCloudIntegrationsV1alphaRuntimeActionSchema`

Metadata of an action, including schemas for its inputs and outputs.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` | Name of the action. |
| `inputSchema` | `string` | Input parameter schema for the action. |
| `outputSchema` | `string` | Output parameter schema for the action. |

### `GoogleCloudIntegrationsV1alphaRuntimeEntitySchema`

Metadata of an entity, including a schema for its properties.

| Property | Type | Description |
|----------|------|-------------|
| `arrayFieldSchema` | `string` | The above schema, but for an array of the associated entity. |
| `entity` | `string` | Name of the entity. |
| `fieldSchema` | `string` | List of fields in the entity. |

### `GoogleCloudIntegrationsV1alphaScheduleIntegrationsRequest`

The request for scheduling an integration.

| Property | Type | Description |
|----------|------|-------------|
| `inputParameters` | `object` | Optional. Input parameters used by integration execution. |
| `parameterEntries` | `array<EnterpriseCrmFrontendsEventbusProtoParameterEntry>` | Parameters are a part of Event and can be used to communicate between different tasks that are pa... |
| `parameters` | `EnterpriseCrmEventbusProtoEventParameters` | Passed in as parameters to each integration execution. |
| `requestId` | `string` | This is used to de-dup incoming request: if the duplicate request was detected, the response from... |
| `scheduleTime` | `string` | The time that the integration should be executed. If the time is less or equal to the current tim... |
| `triggerId` | `string` | Required. Matched against all {@link TriggerConfig}s across all integrations. i.e. TriggerConfig.... |
| `userGeneratedExecutionId` | `string` | Optional. This is a unique id provided by the method caller. If provided this will be used as the... |

### `GoogleCloudIntegrationsV1alphaScheduleIntegrationsResponse`

The response for executing an integration.

| Property | Type | Description |
|----------|------|-------------|
| `executionInfoIds` | `array<string>` | The execution info id for the executed integrations. |

### `GoogleCloudIntegrationsV1alphaSearchIntegrationsResponse`

Response for SearchIntegrations.

| Property | Type | Description |
|----------|------|-------------|
| `integrations` | `array<GoogleCloudIntegrationsV1alphaSearchIntegrationsResponseIntegrationSearchResult>` | The list of integrations that match the search criteria. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `GoogleCloudIntegrationsV1alphaSearchIntegrationsResponseIntegrationSearchResult`

The integration search result with integration level information.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The create time of the integration version. |
| `creator` | `string` | The creator of the integration version. |
| `description` | `string` | The description of the integration version. |
| `id` | `string` | The integration id. |
| `name` | `string` | The integration document metadata. |
| `region` | `string` | The region of the integration version. |
| `status` | `string` | Output only. The status of the integration version. |
| `version` | `string` | The version of the integration version. |

### `GoogleCloudIntegrationsV1alphaSearchTemplatesResponse`

Response for a request to search templates

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The token used to retrieve the next page results. |
| `templates` | `array<GoogleCloudIntegrationsV1alphaTemplate>` | List of templates retrieved. |

### `GoogleCloudIntegrationsV1alphaSerializedFile`

To store string representation of Integration file.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | String representation of the file content. |
| `file` | `string` | File information like Integration version, Integration Config variables etc. |

### `GoogleCloudIntegrationsV1alphaServiceAccountCredentials`

Represents the service account which can be used to generate access token for authenticating the service call.

| Property | Type | Description |
|----------|------|-------------|
| `scope` | `string` | A space-delimited list of requested scope permissions. |
| `serviceAccount` | `string` | Name of the service account that has the permission to make the request. |

### `GoogleCloudIntegrationsV1alphaSfdcChannel`

The SfdcChannel that points to a CDC or Platform Event Channel.

| Property | Type | Description |
|----------|------|-------------|
| `channelTopic` | `string` | Required. The Channel topic defined by salesforce once an channel is opened |
| `createTime` | `string` | Output only. Time when the channel is created |
| `deleteTime` | `string` | Output only. Time when the channel was deleted. Empty if not deleted. |
| `description` | `string` | Optional. The description for this channel |
| `displayName` | `string` | Optional. Client level unique name/alias to easily reference a channel. |
| `isActive` | `boolean` | Output only. Indicated if a channel has any active integrations referencing it. Set to false when... |
| `lastReplayId` | `string` | Output only. Last sfdc messsage replay id for channel |
| `name` | `string` | Resource name of the SFDC channel projects/{project}/locations/{location}/sfdcInstances/{sfdc_ins... |
| `updateTime` | `string` | Output only. Time when the channel was last updated |

### `GoogleCloudIntegrationsV1alphaSfdcInstance`

The SfdcInstance resource use to hold channels and connection config data.

| Property | Type | Description |
|----------|------|-------------|
| `authConfigId` | `array<string>` | A list of AuthConfigs that can be tried to open the channel to SFDC |
| `createTime` | `string` | Output only. Time when the instance is created |
| `deleteTime` | `string` | Output only. Time when the instance was deleted. Empty if not deleted. |
| `description` | `string` | Optional. A description of the sfdc instance. |
| `displayName` | `string` | Optional. User selected unique name/alias to easily reference an instance. |
| `name` | `string` | Resource name of the SFDC instance projects/{project}/locations/{location}/sfdcInstances/{sfdcIns... |
| `serviceAuthority` | `string` | Optional. URL used for API calls after authentication (the login authority is configured within t... |
| `sfdcOrgId` | `string` | The SFDC Org Id. This is defined in salesforce. |
| `updateTime` | `string` | Output only. Time when the instance was last updated |

### `GoogleCloudIntegrationsV1alphaShareTemplateRequest`

Request to Share template

| Property | Type | Description |
|----------|------|-------------|
| `resourceNames` | `array<string>` | Optional. Project name resources to share the template. The project names is expected in resource... |

### `GoogleCloudIntegrationsV1alphaStringParameterArray`

This message only contains a field of string array.

| Property | Type | Description |
|----------|------|-------------|
| `stringValues` | `array<string>` | String array. |

### `GoogleCloudIntegrationsV1alphaSuccessPolicy`

Policy that dictates the behavior for the task after it completes successfully.

| Property | Type | Description |
|----------|------|-------------|
| `finalState` | `string` | State to which the execution snapshot status will be set if the task succeeds. |

### `GoogleCloudIntegrationsV1alphaSuspension`

A record representing a suspension.

| Property | Type | Description |
|----------|------|-------------|
| `approvalConfig` | `GoogleCloudIntegrationsV1alphaSuspensionApprovalConfig` | Controls the notifications and approval permissions for this suspension. |
| `audit` | `GoogleCloudIntegrationsV1alphaSuspensionAudit` | Metadata pertaining to the resolution of this suspension. |
| `createTime` | `string` | Output only. Auto-generated. |
| `eventExecutionInfoId` | `string` | Required. ID of the associated execution. |
| `integration` | `string` | Required. The name of the originating integration. |
| `lastModifyTime` | `string` | Output only. Auto-generated. |
| `name` | `string` | Resource name for suspensions suspension/{suspension_id} |
| `state` | `string` | Required. State of this suspension, indicating what action a resolver has taken. |
| `suspensionConfig` | `EnterpriseCrmEventbusProtoSuspensionConfig` | Controls the notifications and resolver permissions for this suspension. |
| `taskId` | `string` | Required. Task id of the associated SuspensionTask. |

### `GoogleCloudIntegrationsV1alphaSuspensionApprovalConfig`

Configurations for approving the Suspension.

| Property | Type | Description |
|----------|------|-------------|
| `customMessage` | `string` | Information to provide for recipients. |
| `emailAddresses` | `array<string>` | Email addresses to send approval request to. |
| `expiration` | `GoogleCloudIntegrationsV1alphaSuspensionApprovalExpiration` | Indicates the next steps when no external actions happen on the suspension. |

### `GoogleCloudIntegrationsV1alphaSuspensionApprovalExpiration`

Expiration configs for the approval request.

| Property | Type | Description |
|----------|------|-------------|
| `expireTime` | `string` | Output only. Time after which the suspension expires, if no action taken. |
| `liftWhenExpired` | `boolean` | Whether the suspension will be REJECTED or LIFTED upon expiration. REJECTED is the default behavior. |
| `remindTime` | `string` | Time after the previous suspension action reminder, if any, is sent using the selected notificati... |

### `GoogleCloudIntegrationsV1alphaSuspensionAudit`

Contains when and by whom the suspension was resolved.

| Property | Type | Description |
|----------|------|-------------|
| `resolveTime` | `string` | Time at which this suspension was resolved. |
| `resolver` | `string` | Email address of the person who resolved this suspension. |

### `GoogleCloudIntegrationsV1alphaSwitchEncryptionRequest`

Request for the SwitchEncryption rpc

| Property | Type | Description |
|----------|------|-------------|
| `cloudKmsConfig` | `GoogleCloudIntegrationsV1alphaCloudKmsConfig` | Required. REQUIRED: Cloud KMS config for AuthModule to encrypt/decrypt credentials. |

### `GoogleCloudIntegrationsV1alphaSwitchVariableMaskingRequest`

Request to enable/disable variable masking for a provisioned client

| Property | Type | Description |
|----------|------|-------------|
| `enableVariableMasking` | `boolean` | Required. REQUIRED: True if variable masking feature should be turned on for this region |

### `GoogleCloudIntegrationsV1alphaTakeoverEditLockRequest`

Request for TakeoverEditLock.

### `GoogleCloudIntegrationsV1alphaTakeoverEditLockResponse`

Response for TakeoverEditLock.

| Property | Type | Description |
|----------|------|-------------|
| `integrationVersion` | `GoogleCloudIntegrationsV1alphaIntegrationVersion` | Version after the lock is acquired by the new user. |

### `GoogleCloudIntegrationsV1alphaTakeoverTestCaseEditLockRequest`

Request for TakeoverTestCaseEditLock.

### `GoogleCloudIntegrationsV1alphaTaskConfig`

The task configuration details. This is not the implementation of Task. There might be multiple TaskConfigs for the same Task.

| Property | Type | Description |
|----------|------|-------------|
| `conditionalFailurePolicies` | `GoogleCloudIntegrationsV1alphaConditionalFailurePolicies` | Optional. The list of conditional failure policies that will be applied to the task in order. |
| `description` | `string` | Optional. User-provided description intended to give additional business context about the task. |
| `displayName` | `string` | Optional. User-provided label that is attached to this TaskConfig in the UI. |
| `errorCatcherId` | `string` | Optional. Optional Error catcher id of the error catch flow which will be executed when execution... |
| `externalTaskType` | `string` | Optional. External task type of the task |
| `failurePolicy` | `GoogleCloudIntegrationsV1alphaFailurePolicy` | Optional. Determines the number of times the task will be retried on failure and with what retry ... |
| `jsonValidationOption` | `string` | Optional. If set, overrides the option configured in the Task implementation class. |
| `nextTasks` | `array<GoogleCloudIntegrationsV1alphaNextTask>` | Optional. The set of tasks that are next in line to be executed as per the execution graph define... |
| `nextTasksExecutionPolicy` | `string` | Optional. The policy dictating the execution of the next set of tasks for the current task. |
| `parameters` | `object` | Optional. The customized parameters the user can pass to this task. |
| `position` | `GoogleCloudIntegrationsV1alphaCoordinate` | Optional. Informs the front-end application where to draw this error catcher config on the UI. |
| `successPolicy` | `GoogleCloudIntegrationsV1alphaSuccessPolicy` | Optional. Determines what action to take upon successful task completion. |
| `synchronousCallFailurePolicy` | `GoogleCloudIntegrationsV1alphaFailurePolicy` | Optional. Determines the number of times the task will be retried on failure and with what retry ... |
| `task` | `string` | Optional. The name for the task. |
| `taskExecutionStrategy` | `string` | Optional. The policy dictating the execution strategy of this task. |
| `taskId` | `string` | Required. The identifier of this task within its parent event config, specified by the client. Th... |
| `taskTemplate` | `string` | Optional. Used to define task-template name if task is of type task-template |

### `GoogleCloudIntegrationsV1alphaTaskExecutionDetails`

Contains the details of the execution of this task.

| Property | Type | Description |
|----------|------|-------------|
| `taskAttemptStats` | `array<GoogleCloudIntegrationsV1alphaAttemptStats>` | Status for the current task execution attempt. |
| `taskExecutionState` | `string` | The execution state of this task. |
| `taskNumber` | `string` | Pointer to the task config it used for execution. |

### `GoogleCloudIntegrationsV1alphaTemplate`

Defines the template for Application Integration

| Property | Type | Description |
|----------|------|-------------|
| `author` | `string` | Optional. Creator of the template. |
| `categories` | `array<string>` | Required. Categories associated with the Template. The categories listed below will be utilized f... |
| `components` | `array<GoogleCloudIntegrationsV1alphaTemplateComponent>` | Optional. Components being used in the template. This could be used to categorize and filter. |
| `createTime` | `string` | Output only. Auto-generated. |
| `description` | `string` | Optional. Description of the template. The length should not be more than 255 characters |
| `displayName` | `string` | Required. The name of the template |
| `docLink` | `string` | Optional. Link to template documentation. |
| `lastUsedTime` | `string` | Optional. Time the template was last used. |
| `name` | `string` | Identifier. Resource name of the template. |
| `sharedWith` | `array<string>` | Required. Resource names with which the template is shared for example ProjectNumber/Ord id |
| `tags` | `array<string>` | Required. Tags which are used to identify templates. These tags could be for business use case, c... |
| `templateBundle` | `GoogleCloudIntegrationsV1alphaTemplateBundle` | Required. Bundle which is part of the templates. The template entities in the bundle would be con... |
| `updateTime` | `string` | Output only. Auto-generated |
| `usageCount` | `string` | Optional. Number of template usages. |
| `usageInfo` | `string` | Optional. Information on how to use the template. This should contain detailed information about ... |
| `visibility` | `string` | Required. Visibility of the template. |

### `GoogleCloudIntegrationsV1alphaTemplateBundle`

Define the bundle of the template.

| Property | Type | Description |
|----------|------|-------------|
| `integrationVersionTemplate` | `GoogleCloudIntegrationsV1alphaIntegrationVersionTemplate` | Required. Main integration templates of the template bundle. |
| `subIntegrationVersionTemplates` | `array<GoogleCloudIntegrationsV1alphaIntegrationVersionTemplate>` | Optional. Sub integration templates which would be added along with main integration. |

### `GoogleCloudIntegrationsV1alphaTemplateComponent`

Define the components that are present in a template.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Optional. Name of the component. |
| `type` | `string` | Optional. Type of the component. |

### `GoogleCloudIntegrationsV1alphaTestCase`

Defines the functional test case for Application Integration. Next available id: 15

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Auto-generated. |
| `creatorEmail` | `string` | Optional. The creator's email address. Generated based on the End User Credentials/LOAS role of t... |
| `databasePersistencePolicy` | `string` | Optional. Various policies for how to persist the test execution info including execution info, e... |
| `description` | `string` | Optional. Description of the test case. |
| `displayName` | `string` | Required. The display name of test case. |
| `lastModifierEmail` | `string` | The last modifier's email address. Generated based on the End User Credentials/LOAS role of the u... |
| `lockHolderEmail` | `string` | Optional. The edit lock holder's email address. Generated based on the End User Credentials/LOAS ... |
| `name` | `string` | Output only. Auto-generated primary key. |
| `testInputParameters` | `array<GoogleCloudIntegrationsV1alphaIntegrationParameter>` | Optional. Parameters that are expected to be passed to the test case when the test case is trigge... |
| `testTaskConfigs` | `array<GoogleCloudIntegrationsV1alphaTestTaskConfig>` | Optional. However, the test case doesn't mock or assert anything without test_task_configs. |
| `triggerConfig` | `GoogleCloudIntegrationsV1alphaTriggerConfig` | Optional. Auto-generated. |
| `triggerId` | `string` | Required. This defines the trigger ID in workflow which is considered to be executed as starting ... |
| `updateTime` | `string` | Auto-generated. |

### `GoogleCloudIntegrationsV1alphaTestIntegrationsRequest`

The request for testing an integration.

| Property | Type | Description |
|----------|------|-------------|
| `clientId` | `string` | Required. This is used to identify the client on whose behalf the event will be executed. |
| `configParameters` | `object` | Optional. Config parameters used during integration execution. |
| `deadlineSecondsTime` | `string` | Optional. custom deadline of the rpc |
| `inputParameters` | `object` | Optional. Input parameters used during integration execution. |
| `integrationVersion` | `GoogleCloudIntegrationsV1alphaIntegrationVersion` | Required. integration config to execute the workflow |
| `parameters` | `EnterpriseCrmFrontendsEventbusProtoEventParameters` | Optional. Passed in as parameters to each integration execution. |
| `testMode` | `boolean` | Optional. Can be specified in the event request, otherwise false (default). If true, enables task... |
| `triggerId` | `string` | Required. The trigger id of the integration trigger config. If both trigger_id and client_id is p... |

### `GoogleCloudIntegrationsV1alphaTestIntegrationsResponse`

The response for testing an integration.

| Property | Type | Description |
|----------|------|-------------|
| `eventParameters` | `EnterpriseCrmFrontendsEventbusProtoEventParameters` | Details for the integration that were executed. |
| `executionFailed` | `boolean` | Is true if any execution in the integration failed. False otherwise. |
| `executionId` | `string` | The id of the execution corresponding to this run of integration. |
| `parameterEntries` | `array<EnterpriseCrmFrontendsEventbusProtoParameterEntry>` | Parameters are a part of Event and can be used to communicate between different tasks that are pa... |
| `parameters` | `object` | Optional. Parameters are a part of Event and can be used to communicate between different tasks t... |

### `GoogleCloudIntegrationsV1alphaTestTaskConfig`

The task mock configuration details and assertions for functional tests. Next available id: 6

| Property | Type | Description |
|----------|------|-------------|
| `assertions` | `array<GoogleCloudIntegrationsV1alphaAssertion>` | Optional. List of conditions or expressions which should be evaluated to true unless there is a b... |
| `mockConfig` | `GoogleCloudIntegrationsV1alphaMockConfig` | Optional. Defines how to mock the given task during test execution |
| `task` | `string` | Required. This defines in the test case, the task name in integration which will be mocked by thi... |
| `taskConfig` | `GoogleCloudIntegrationsV1alphaTaskConfig` | Optional. Auto-generated. |
| `taskNumber` | `string` | Required. This defines in the test case, the task in integration which will be mocked by this tes... |

### `GoogleCloudIntegrationsV1alphaToggleHttpRequest`

Request to enable/disable http call for a provisioned client

| Property | Type | Description |
|----------|------|-------------|
| `enableHttpCall` | `boolean` | Required. REQUIRED: True if http call feature should be turned on for this region |

### `GoogleCloudIntegrationsV1alphaTriggerConfig`

Configuration detail of a trigger.

| Property | Type | Description |
|----------|------|-------------|
| `alertConfig` | `array<GoogleCloudIntegrationsV1alphaIntegrationAlertConfig>` | Optional. An alert threshold configuration for the [trigger + client + integration] tuple. If the... |
| `cloudSchedulerConfig` | `GoogleCloudIntegrationsV1alphaCloudSchedulerConfig` | Optional. Cloud Scheduler Trigger related metadata |
| `description` | `string` | Optional. User-provided description intended to give additional business context about the task. |
| `errorCatcherId` | `string` | Optional. Optional Error catcher id of the error catch flow which will be executed when execution... |
| `inputVariables` | `GoogleCloudIntegrationsV1alphaTriggerConfigVariables` | Optional. List of input variables for the api trigger. |
| `label` | `string` | Optional. The user created label for a particular trigger. |
| `nextTasksExecutionPolicy` | `string` | Optional. Dictates how next tasks will be executed. |
| `outputVariables` | `GoogleCloudIntegrationsV1alphaTriggerConfigVariables` | Optional. List of output variables for the api trigger. |
| `position` | `GoogleCloudIntegrationsV1alphaCoordinate` | Optional. Informs the front-end application where to draw this error catcher config on the UI. |
| `properties` | `object` | Optional. Configurable properties of the trigger, not to be confused with integration parameters.... |
| `startTasks` | `array<GoogleCloudIntegrationsV1alphaNextTask>` | Optional. Set of tasks numbers from where the integration execution is started by this trigger. I... |
| `trigger` | `string` | Optional. Name of the trigger. Example: "API Trigger", "Cloud Pub Sub Trigger" When set will be s... |
| `triggerId` | `string` | Optional. Auto-generated trigger ID. The ID is based on the properties that you define in the tri... |
| `triggerNumber` | `string` | Required. A number to uniquely identify each trigger config within the integration on UI. |
| `triggerType` | `string` | Optional. Type of trigger |

### `GoogleCloudIntegrationsV1alphaTriggerConfigVariables`

Variables names mapped to api trigger.

| Property | Type | Description |
|----------|------|-------------|
| `names` | `array<string>` | Optional. List of variable names. |

### `GoogleCloudIntegrationsV1alphaUnpublishIntegrationVersionRequest`

Request for UnpublishIntegrationVersion.

### `GoogleCloudIntegrationsV1alphaUnshareTemplateRequest`

Request to Unshare template

| Property | Type | Description |
|----------|------|-------------|
| `resourceNames` | `array<string>` | Optional. Project name resources to unshare the template. The project names is expected in resour... |

### `GoogleCloudIntegrationsV1alphaUploadIntegrationVersionRequest`

Request for UploadIntegrationVersion.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | The textproto of the IntegrationVersion. |
| `fileFormat` | `string` | File format for upload request. |

### `GoogleCloudIntegrationsV1alphaUploadIntegrationVersionResponse`

Response for UploadIntegrationVersion.

| Property | Type | Description |
|----------|------|-------------|
| `integrationVersion` | `GoogleCloudIntegrationsV1alphaIntegrationVersion` | The uploaded integration. |

### `GoogleCloudIntegrationsV1alphaUploadTemplateRequest`

Request for UploadTemplate.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | Required. The textproto of the template. |
| `fileFormat` | `string` | Required. File format for upload request. |

### `GoogleCloudIntegrationsV1alphaUploadTemplateResponse`

Response for UploadTemplate.

| Property | Type | Description |
|----------|------|-------------|
| `template` | `GoogleCloudIntegrationsV1alphaTemplate` | The uploaded Template |

### `GoogleCloudIntegrationsV1alphaUploadTestCaseRequest`

Request for UploadTestCase.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | The textproto of the test case. |
| `fileFormat` | `string` | File format for upload request. |

### `GoogleCloudIntegrationsV1alphaUploadTestCaseResponse`

Response for UploadTestCase.

| Property | Type | Description |
|----------|------|-------------|
| `testCase` | `GoogleCloudIntegrationsV1alphaTestCase` | The uploaded TestCase |

### `GoogleCloudIntegrationsV1alphaUseTemplateRequest`

Request to Use template

| Property | Type | Description |
|----------|------|-------------|
| `integrationDetails` | `GoogleCloudIntegrationsV1alphaUseTemplateRequestIntegrationDetails` | Required. Integration details which would be created via templates. |
| `integrationRegion` | `string` | Required. The region of the Integration to be created. |
| `subIntegrations` | `object` | Optional. Sub Integration which would be created via templates. |

### `GoogleCloudIntegrationsV1alphaUseTemplateRequestIntegrationDetails`

Sub Integration which would be created via templates.

| Property | Type | Description |
|----------|------|-------------|
| `integration` | `string` | Required. Name of the sub integration which would be created via templates. |
| `integrationDescription` | `string` | Optional. Description of the sub integration which would be created via templates. |

### `GoogleCloudIntegrationsV1alphaUseTemplateResponse`

Response for use template

| Property | Type | Description |
|----------|------|-------------|
| `integrationVersion` | `GoogleCloudIntegrationsV1alphaIntegrationVersion` | IntegrationVersion which is created. |
| `subIntegrationVersions` | `array<GoogleCloudIntegrationsV1alphaIntegrationVersion>` | Sub integration versions which are created. |

### `GoogleCloudIntegrationsV1alphaUsernameAndPassword`

Username and password pair.

| Property | Type | Description |
|----------|------|-------------|
| `password` | `string` | Password to be used |
| `username` | `string` | Username to be used |

### `GoogleCloudIntegrationsV1alphaValueType`

The type of the parameter.

| Property | Type | Description |
|----------|------|-------------|
| `booleanArray` | `GoogleCloudIntegrationsV1alphaBooleanParameterArray` | Boolean Array. |
| `booleanValue` | `boolean` | Boolean. |
| `doubleArray` | `GoogleCloudIntegrationsV1alphaDoubleParameterArray` | Double Number Array. |
| `doubleValue` | `number` | Double Number. |
| `intArray` | `GoogleCloudIntegrationsV1alphaIntParameterArray` | Integer Array. |
| `intValue` | `string` | Integer. |
| `jsonValue` | `string` | Json. |
| `stringArray` | `GoogleCloudIntegrationsV1alphaStringParameterArray` | String Array. |
| `stringValue` | `string` | String. |

### `GoogleInternalCloudCrmEventbusV3PostToQueueWithTriggerIdRequest`

LINT.IfChange Use this request to post all workflows associated with a given trigger id. Next available id: 13

| Property | Type | Description |
|----------|------|-------------|
| `clientId` | `string` | Optional. If the client id is provided, then the combination of trigger id and client id is match... |
| `ignoreErrorIfNoActiveWorkflow` | `boolean` | Optional. Flag to determine whether clients would suppress a warning when no ACTIVE workflows are... |
| `parameters` | `EnterpriseCrmEventbusProtoEventParameters` | Passed in as parameters to each workflow execution. Optional. |
| `priority` | `string` | The request priority this request should be processed at. For internal users: |
| `quotaRetryCount` | `integer` | Optional. This is a field to see the quota retry count for integration execution |
| `requestId` | `string` | Optional. This is used to de-dup incoming request: if the duplicate request was detected, the res... |
| `resourceName` | `string` | This field is only required when using Admin Access. The resource name of target, or the parent r... |
| `scheduledTime` | `string` | Optional. Time in milliseconds since epoch when the given event would be scheduled. |
| `testMode` | `boolean` | Optional. Sets test mode in {@link enterprise/crm/eventbus/event_message.proto}. |
| `triggerId` | `string` | Matched against all {@link TriggerConfig}s across all workflows. i.e. TriggerConfig.trigger_id.eq... |
| `userGeneratedExecutionId` | `string` | This is a unique id provided by the method caller. If provided this will be used as the execution... |
| `workflowName` | `string` | Optional. If provided, the workflow_name is used to filter all the matched workflows having same ... |

### `GoogleProtobufEmpty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

