# Connectors API - API Reference

**Version**: `v2` | **Methods**: 25 | **Schemas**: 62

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `connectors.projects.locations.connections.listCustomToolNames` | GET | `v2/{+name}:listCustomToolNames` | Lists custom tool names. |
| `connectors.projects.locations.connections.checkStatus` | GET | `v2/{+name}:checkStatus` | Reports the status of the connection. Note that when the connection is in a state that is not ACT... |
| `connectors.projects.locations.connections.generateConnectionToolspecOverride` | POST | `v2/{+name}:generateConnectionToolspecOverride` | Generate toolspec override for the given list of toolNames. |
| `connectors.projects.locations.connections.executeSqlQuery` | POST | `v2/{+connection}:executeSqlQuery` | Executes a SQL statement specified in the body of the request. An example of this SQL statement i... |
| `connectors.projects.locations.connections.checkReadiness` | GET | `v2/{+name}:checkReadiness` | Reports readiness status of the connector. Similar logic to GetStatus but modified for kubernetes... |
| `connectors.projects.locations.connections.refreshAccessToken` | POST | `v2/{+name}:refreshAccessToken` | RefreshAccessToken exchanges the OAuth refresh token (and other necessary data) for a new access ... |
| `connectors.projects.locations.connections.exchangeAuthCode` | POST | `v2/{+name}:exchangeAuthCode` | ExchangeAuthCode exchanges the OAuth authorization code (and other necessary data) for an access ... |
| `connectors.projects.locations.connections.tools` | POST | `v2/{+parent}/tools` | Lists all available tools with POST. |
| `connectors.projects.locations.connections.tools.list` | GET | `v2/{+parent}/tools` | Lists all available tools. |
| `connectors.projects.locations.connections.tools.execute` | POST | `v2/{+name}:execute` | Executes a specific tool. |
| `connectors.projects.locations.connections.resources.get` | GET | `v2/{+name}` | Gets a specific resource. |
| `connectors.projects.locations.connections.resources.getResourcePost` | POST | `v2/{+name}` | Gets a specific resource with POST. |
| `connectors.projects.locations.connections.resources.list` | GET | `v2/{+parent}/resources` | Lists all available resources. |
| `connectors.projects.locations.connections.entityTypes.get` | GET | `v2/{+name}` | Gets metadata of given entity type |
| `connectors.projects.locations.connections.entityTypes.list` | GET | `v2/{+parent}/entityTypes` | Lists metadata related to all entity types present in the external system. |
| `connectors.projects.locations.connections.entityTypes.entities.deleteEntitiesWithConditions` | POST | `v2/{+entityType}/entities:deleteEntitiesWithConditions` | Deletes entities based on conditions specified in the request and not on entity id. |
| `connectors.projects.locations.connections.entityTypes.entities.create` | POST | `v2/{+parent}/entities` | Creates a new entity row of the specified entity type in the external system. The field values fo... |
| `connectors.projects.locations.connections.entityTypes.entities.delete` | DELETE | `v2/{+name}` | Deletes an existing entity row matching the entity type and entity id specified in the request. |
| `connectors.projects.locations.connections.entityTypes.entities.updateEntitiesWithConditions` | POST | `v2/{+entityType}/entities:updateEntitiesWithConditions` | Updates entities based on conditions specified in the request and not on entity id. |
| `connectors.projects.locations.connections.entityTypes.entities.get` | GET | `v2/{+name}` | Gets a single entity row matching the entity type and entity id specified in the request. |
| `connectors.projects.locations.connections.entityTypes.entities.patch` | PATCH | `v2/{+name}` | Updates an existing entity row matching the entity type and entity id specified in the request. T... |
| `connectors.projects.locations.connections.entityTypes.entities.list` | GET | `v2/{+parent}/entities` | Lists entity rows of a particular entity type contained in the request. Note: 1. Currently, only ... |
| `connectors.projects.locations.connections.actions.list` | GET | `v2/{+parent}/actions` | Gets the schema of all the actions supported by the connector. |
| `connectors.projects.locations.connections.actions.get` | GET | `v2/{+name}` | Gets the schema of the given action. |
| `connectors.projects.locations.connections.actions.execute` | POST | `v2/{+name}:execute` | Executes an action with the name specified in the request. The input parameters for executing the... |

### `connectors.projects.locations.connections.listCustomToolNames`

**GET** `v2/{+name}:listCustomToolNames`

Lists custom tool names.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the Connection. Format: projects/{project}/locations/{location}/connections/{connection} |

**Response**: `ListCustomToolNamesResponse`

```typescript
const res = await connectors.connections.listCustomToolNames({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `connectors.projects.locations.connections.checkStatus`

**GET** `v2/{+name}:checkStatus`

Reports the status of the connection. Note that when the connection is in a state that is not ACTIVE, the implementation of this RPC method must return a Status with the corresponding State instead of returning a gRPC status code that is not "OK", which indicates that ConnectionStatus itself, not the connection, failed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |
| `executionConfig.headers` | `string` | query | No | headers to be used for the request. For example: headers:'{"x-integration-connectors-managed-connection-id":"conn-id"... |

**Response**: `CheckStatusResponse`

```typescript
const res = await connectors.connections.checkStatus({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `connectors.projects.locations.connections.generateConnectionToolspecOverride`

**POST** `v2/{+name}:generateConnectionToolspecOverride`

Generate toolspec override for the given list of toolNames.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the Connection. Format: projects/{project}/locations/{location}/connections/{connection} |

**Request body**: `GenerateCustomToolspecRequest`

**Response**: `GenerateCustomToolspecResponse`

```typescript
const res = await connectors.connections.generateConnectionToolspecOverride({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `connectors.projects.locations.connections.executeSqlQuery`

**POST** `v2/{+connection}:executeSqlQuery`

Executes a SQL statement specified in the body of the request. An example of this SQL statement in the case of Salesforce connector would be 'select * from Account a, Order o where a.Id = o.AccountId'.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `connection` | `string` | path | Yes | Required. Resource name of the Connection. Format: projects/{project}/locations/{location}/connections/{connection} |

**Request body**: `ExecuteSqlQueryRequest`

**Response**: `ExecuteSqlQueryResponse`

```typescript
const res = await connectors.connections.executeSqlQuery({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `connectors.projects.locations.connections.checkReadiness`

**GET** `v2/{+name}:checkReadiness`

Reports readiness status of the connector. Similar logic to GetStatus but modified for kubernetes health check to understand.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Response**: `CheckReadinessResponse`

```typescript
const res = await connectors.connections.checkReadiness({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `connectors.projects.locations.connections.refreshAccessToken`

**POST** `v2/{+name}:refreshAccessToken`

RefreshAccessToken exchanges the OAuth refresh token (and other necessary data) for a new access token (and new associated credentials).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Request body**: `RefreshAccessTokenRequest`

**Response**: `RefreshAccessTokenResponse`

```typescript
const res = await connectors.connections.refreshAccessToken({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `connectors.projects.locations.connections.exchangeAuthCode`

**POST** `v2/{+name}:exchangeAuthCode`

ExchangeAuthCode exchanges the OAuth authorization code (and other necessary data) for an access token (and associated credentials).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Request body**: `ExchangeAuthCodeRequest`

**Response**: `ExchangeAuthCodeResponse`

```typescript
const res = await connectors.connections.exchangeAuthCode({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `connectors.projects.locations.connections.tools`

**POST** `v2/{+parent}/tools`

Lists all available tools with POST.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the Connection. Format: projects/{project}/locations/{location}/connections/{connection} |

**Request body**: `ListToolsPostRequest`

**Response**: `ListToolsResponse`

```typescript
const res = await connectors.connections.tools({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `connectors.projects.locations.connections.tools.list`

**GET** `v2/{+parent}/tools`

Lists all available tools.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the Connection. Format: projects/{project}/locations/{location}/connections/{connection} |
| `executionConfig.headers` | `string` | query | No | headers to be used for the request. For example: headers:'{"x-integration-connectors-managed-connection-id":"conn-id"... |
| `pageSize` | `integer` | query | No | Page size. |
| `pageToken` | `string` | query | No | Page token. |

**Response**: `ListToolsResponse`

```typescript
const res = await connectors.tools.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `connectors.projects.locations.connections.tools.execute`

**POST** `v2/{+name}:execute`

Executes a specific tool.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the Tool. Format: projects/{project}/locations/{location}/connections/{connection}/tools/{... |

**Request body**: `ExecuteToolRequest`

**Response**: `ExecuteToolResponse`

```typescript
const res = await connectors.tools.execute({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `connectors.projects.locations.connections.resources.get`

**GET** `v2/{+name}`

Gets a specific resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the Resource. Format: projects/{project}/locations/{location}/connections/{connection}/res... |
| `executionConfig.headers` | `string` | query | No | headers to be used for the request. For example: headers:'{"x-integration-connectors-managed-connection-id":"conn-id"... |

**Response**: `GetResourceResponse`

```typescript
const res = await connectors.resources.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `connectors.projects.locations.connections.resources.getResourcePost`

**POST** `v2/{+name}`

Gets a specific resource with POST.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the Resource. Format: projects/{project}/locations/{location}/connections/{connection}/res... |

**Request body**: `GetResourcePostRequest`

**Response**: `GetResourceResponse`

```typescript
const res = await connectors.resources.getResourcePost({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `connectors.projects.locations.connections.resources.list`

**GET** `v2/{+parent}/resources`

Lists all available resources.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the connection. Format: projects/{project}/locations/{location}/connections/{connection} |
| `executionConfig.headers` | `string` | query | No | headers to be used for the request. For example: headers:'{"x-integration-connectors-managed-connection-id":"conn-id"... |
| `pageSize` | `integer` | query | No | Optional. Page size for the request. |
| `pageToken` | `string` | query | No | Optional. Page token for the request. |

**Response**: `ListResourcesResponse`

```typescript
const res = await connectors.resources.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `connectors.projects.locations.connections.entityTypes.get`

**GET** `v2/{+name}`

Gets metadata of given entity type

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the Entity Type. Format: projects/{project}/locations/{location}/connections/{connection}/... |
| `contextMetadata` | `string` | query | No | Context metadata for request could be used to fetch customization of entity type schema. |
| `executionConfig.headers` | `string` | query | No | headers to be used for the request. For example: headers:'{"x-integration-connectors-managed-connection-id":"conn-id"... |
| `view` | `string` | query | No | Specifies view for entity type schema. |

**Response**: `EntityType`

```typescript
const res = await connectors.entityTypes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `connectors.projects.locations.connections.entityTypes.list`

**GET** `v2/{+parent}/entityTypes`

Lists metadata related to all entity types present in the external system.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the Entity Type. Format: projects/{project}/locations/{location}/connections/{connection} |
| `executionConfig.headers` | `string` | query | No | headers to be used for the request. For example: headers:'{"x-integration-connectors-managed-connection-id":"conn-id"... |
| `pageSize` | `integer` | query | No | Number of entity types to return. Defaults to 25. |
| `pageToken` | `string` | query | No | Page token, return from a previous ListEntityTypes call, that can be used retrieve the next page of content. If unspe... |
| `view` | `string` | query | No | Specifies which fields of the Entity Type are returned in the response. |

**Response**: `ListEntityTypesResponse`

```typescript
const res = await connectors.entityTypes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `connectors.projects.locations.connections.entityTypes.entities.deleteEntitiesWithConditions`

**POST** `v2/{+entityType}/entities:deleteEntitiesWithConditions`

Deletes entities based on conditions specified in the request and not on entity id.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `entityType` | `string` | path | Yes | Required. Resource name of the Entity Type. Format: projects/{project}/locations/{location}/connections/{connection}/... |
| `conditions` | `string` | query | No | Required. Conditions to be used when deleting entities. From a proto standpoint, There are no restrictions on what ca... |
| `executionConfig.headers` | `string` | query | No | headers to be used for the request. For example: headers:'{"x-integration-connectors-managed-connection-id":"conn-id"... |

**Response**: `Empty`

```typescript
const res = await connectors.entities.deleteEntitiesWithConditions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `connectors.projects.locations.connections.entityTypes.entities.create`

**POST** `v2/{+parent}/entities`

Creates a new entity row of the specified entity type in the external system. The field values for creating the row are contained in the body of the request. The response message contains a `Entity` message object returned as a response by the external system.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the Entity Type. Format: projects/{project}/locations/{location}/connections/{connection}/... |
| `executionConfig.headers` | `string` | query | No | headers to be used for the request. For example: headers:'{"x-integration-connectors-managed-connection-id":"conn-id"... |

**Request body**: `Entity`

**Response**: `Entity`

```typescript
const res = await connectors.entities.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `connectors.projects.locations.connections.entityTypes.entities.delete`

**DELETE** `v2/{+name}`

Deletes an existing entity row matching the entity type and entity id specified in the request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the Entity Type. Format: projects/{project}/locations/{location}/connections/{connection}/... |
| `executionConfig.headers` | `string` | query | No | headers to be used for the request. For example: headers:'{"x-integration-connectors-managed-connection-id":"conn-id"... |

**Response**: `Empty`

```typescript
const res = await connectors.entities.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `connectors.projects.locations.connections.entityTypes.entities.updateEntitiesWithConditions`

**POST** `v2/{+entityType}/entities:updateEntitiesWithConditions`

Updates entities based on conditions specified in the request and not on entity id.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `entityType` | `string` | path | Yes | Required. Resource name of the Entity Type. Format: projects/{project}/locations/{location}/connections/{connection}/... |
| `conditions` | `string` | query | No | Required. Conditions to be used when updating entities. From a proto standpoint, There are no restrictions on what ca... |
| `executionConfig.headers` | `string` | query | No | headers to be used for the request. For example: headers:'{"x-integration-connectors-managed-connection-id":"conn-id"... |

**Request body**: `Entity`

**Response**: `UpdateEntitiesWithConditionsResponse`

```typescript
const res = await connectors.entities.updateEntitiesWithConditions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `connectors.projects.locations.connections.entityTypes.entities.get`

**GET** `v2/{+name}`

Gets a single entity row matching the entity type and entity id specified in the request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the Entity Type. Format: projects/{project}/locations/{location}/connections/{connection}/... |
| `executionConfig.headers` | `string` | query | No | headers to be used for the request. For example: headers:'{"x-integration-connectors-managed-connection-id":"conn-id"... |

**Response**: `Entity`

```typescript
const res = await connectors.entities.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `connectors.projects.locations.connections.entityTypes.entities.patch`

**PATCH** `v2/{+name}`

Updates an existing entity row matching the entity type and entity id specified in the request. The fields in the entity row that need to be modified are contained in the body of the request. All unspecified fields are left unchanged. The response message contains a `Entity` message object returned as a response by the external system.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Resource name of the Entity. Format: projects/{project}/locations/{location}/connections/{connection}/en... |
| `executionConfig.headers` | `string` | query | No | headers to be used for the request. For example: headers:'{"x-integration-connectors-managed-connection-id":"conn-id"... |

**Request body**: `Entity`

**Response**: `Entity`

```typescript
const res = await connectors.entities.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `connectors.projects.locations.connections.entityTypes.entities.list`

**GET** `v2/{+parent}/entities`

Lists entity rows of a particular entity type contained in the request. Note: 1. Currently, only max of one 'sort_by' column is supported. 2. If no 'sort_by' column is provided, the primary key of the table is used. If zero or more than one primary key is available, we default to the unpaginated list entities logic which only returns the first page. 3. The values of the 'sort_by' columns must uniquely identify an entity row, otherwise undefined behaviors may be observed during pagination. 4. Since transactions are not supported, any updates, inserts or deletes during pagination can lead to stale data being returned or other unexpected behaviors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the Entity Type. Format: projects/{project}/locations/{location}/connections/{connection}/... |
| `conditions` | `string` | query | No | Conditions to be used when listing entities. From a proto standpoint, There are no restrictions on what can be passed... |
| `executionConfig.headers` | `string` | query | No | headers to be used for the request. For example: headers:'{"x-integration-connectors-managed-connection-id":"conn-id"... |
| `pageSize` | `integer` | query | No | Number of entity rows to return. Defaults page size = 25. Max page size = 200. |
| `pageToken` | `string` | query | No | Page token value if available from a previous request. |
| `sortBy` | `string` | query | No | List of 'sort_by' columns to use when returning the results. |
| `sortOrder` | `string` | query | No | List of 'sort_order' columns to use when returning the results. |

**Response**: `ListEntitiesResponse`

```typescript
const res = await connectors.entities.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `connectors.projects.locations.connections.actions.list`

**GET** `v2/{+parent}/actions`

Gets the schema of all the actions supported by the connector.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name of the Action. Format: projects/{project}/locations/{location}/connections/{connection} |
| `executionConfig.headers` | `string` | query | No | headers to be used for the request. For example: headers:'{"x-integration-connectors-managed-connection-id":"conn-id"... |
| `pageSize` | `integer` | query | No | Number of Actions to return. Defaults to 25. |
| `pageToken` | `string` | query | No | Page token, return from a previous ListActions call, that can be used retrieve the next page of content. If unspecifi... |
| `view` | `string` | query | No | Specifies which fields of the Action are returned in the response. |

**Response**: `ListActionsResponse`

```typescript
const res = await connectors.actions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `connectors.projects.locations.connections.actions.get`

**GET** `v2/{+name}`

Gets the schema of the given action.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the Action. Format: projects/{project}/locations/{location}/connections/{connection}/actio... |
| `executionConfig.headers` | `string` | query | No | headers to be used for the request. For example: headers:'{"x-integration-connectors-managed-connection-id":"conn-id"... |
| `view` | `string` | query | No | Specified view of the action schema. |

**Response**: `Action`

```typescript
const res = await connectors.actions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `connectors.projects.locations.connections.actions.execute`

**POST** `v2/{+name}:execute`

Executes an action with the name specified in the request. The input parameters for executing the action are passed through the body of the ExecuteAction request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the Action. Format: projects/{project}/locations/{location}/connections/{connection}/actio... |

**Request body**: `ExecuteActionRequest`

**Response**: `ExecuteActionResponse`

```typescript
const res = await connectors.actions.execute({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AccessCredentials`

AccessCredentials includes the OAuth access token, and the other fields returned along with it.

| Property | Type | Description |
|----------|------|-------------|
| `accessToken` | `string` | OAuth access token. |
| `expiresIn` | `string` | Duration till the access token expires. |
| `refreshToken` | `string` | OAuth refresh token. |

### `Action`

Action message contains metadata information about a single action present in the external system.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Brief Description of action |
| `displayName` | `string` | Display Name of action to be shown on client side |
| `inputJsonSchema` | `JsonSchema` | JsonSchema representation of this actions's input schema |
| `inputParameters` | `array<InputParameter>` | List containing input parameter metadata. |
| `metadata` | `object` | Metadata like service latency, etc. |
| `name` | `string` | Name of the action. |
| `resultJsonSchema` | `JsonSchema` | JsonSchema representation of this actions's result schema |
| `resultMetadata` | `array<ResultMetadata>` | List containing the metadata of result fields. |

### `AuthCodeData`

AuthCodeData contains the data the runtime plane will give the connector backend in exchange for access and refresh tokens.

| Property | Type | Description |
|----------|------|-------------|
| `authCode` | `string` | OAuth authorization code. |
| `pkceVerifier` | `string` | OAuth PKCE verifier, needed if PKCE is enabled for this particular connection. |
| `redirectUri` | `string` | OAuth redirect URI passed in during the auth code flow, required by some OAuth backends. |
| `scopes` | `array<string>` | Scopes the connection will request when the user performs the auth code flow. |

### `CheckReadinessResponse`

Response containing status of the connector for readiness prober.

| Property | Type | Description |
|----------|------|-------------|
| `status` | `string` |  |

### `CheckStatusResponse`

The status of the connector.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | When the connector is not in ACTIVE state, the description must be populated to specify the reaso... |
| `metadata` | `object` | Metadata like service latency, etc. |
| `state` | `string` | State of the connector. |

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

### `Entity`

'Entity row'/ 'Entity' refers to a single row of an entity type.

| Property | Type | Description |
|----------|------|-------------|
| `fields` | `object` | Fields of the entity. The key is name of the field and the value contains the applicable `google.... |
| `metadata` | `object` | Metadata like service latency, etc. |
| `name` | `string` | Output only. Resource name of the Entity. Format: projects/{project}/locations/{location}/connect... |

### `EntityType`

EntityType message contains metadata information about a single entity type present in the external system.

| Property | Type | Description |
|----------|------|-------------|
| `defaultSortBy` | `string` |  |
| `fields` | `array<Field>` | List containing metadata information about each field of the entity type. |
| `jsonSchema` | `JsonSchema` | JsonSchema representation of this entity's schema |
| `metadata` | `object` | Metadata like service latency, etc. |
| `name` | `string` | The name of the entity type. |
| `operations` | `array<string>` |  |

### `ExchangeAuthCodeRequest`

ExchangeAuthCodeRequest currently includes the auth code data.

| Property | Type | Description |
|----------|------|-------------|
| `authCodeData` | `AuthCodeData` | Optional. AuthCodeData contains the data the runtime requires to exchange for access and refresh ... |
| `executionConfig` | `ExecutionConfig` | ExecutionConfig contains the configuration for the execution of the request. |
| `oauth2Config` | `OAuth2Config` | OAuth2Config contains the OAuth2 config for the connection. |

### `ExchangeAuthCodeResponse`

ExchangeAuthCodeResponse includes the returned access token and its associated credentials.

| Property | Type | Description |
|----------|------|-------------|
| `accessCredentials` | `AccessCredentials` |  |
| `metadata` | `object` | Metadata like service latency, etc. |

### `ExecuteActionRequest`

Request message for ActionService.ExecuteAction

| Property | Type | Description |
|----------|------|-------------|
| `executionConfig` | `ExecutionConfig` | Execution config for the request. |
| `parameters` | `object` | Parameters for executing the action. The parameters can be key/value pairs or nested structs. |

### `ExecuteActionResponse`

Response message for ActionService.ExecuteAction

| Property | Type | Description |
|----------|------|-------------|
| `metadata` | `object` | Metadata like service latency, etc. |
| `results` | `array<object>` | In the case of successful invocation of the specified action, the results Struct contains values ... |

### `ExecuteSqlQueryRequest`

An execute sql query request containing the query and the connection to execute it on.

| Property | Type | Description |
|----------|------|-------------|
| `query` | `Query` | Required. SQL statement passed by clients like Integration Platform, the query is passed as-is to... |

### `ExecuteSqlQueryResponse`

A response returned by the connection after executing the sql query.

| Property | Type | Description |
|----------|------|-------------|
| `results` | `array<object>` | In the case of successful execution of the query the response contains results returned by the ex... |

### `ExecuteToolRequest`

Request message for ConnectorAgentService.ExecuteTool

| Property | Type | Description |
|----------|------|-------------|
| `executionConfig` | `ExecutionConfig` | execution config for the request. |
| `parameters` | `object` | Input parameters for the tool. |
| `toolDefinition` | `object` | Tool definition for the tool to be executed. |

### `ExecuteToolResponse`

Response message for ConnectorAgentService.ExecuteTool

| Property | Type | Description |
|----------|------|-------------|
| `metadata` | `object` | Metadata like service latency, etc. |
| `result` | `object` | Output from the tool execution. |

### `ExecutionConfig`

| Property | Type | Description |
|----------|------|-------------|
| `headers` | `string` | headers to be used for the request. For example: headers:'{"x-integration-connectors-managed-conn... |

### `Field`

Message contains EntityType's Field metadata.

| Property | Type | Description |
|----------|------|-------------|
| `additionalDetails` | `object` | The following map contains fields that are not explicitly mentioned above,this give connectors th... |
| `dataType` | `string` | The data type of the Field. |
| `defaultValue` | `any` | The following field specifies the default value of the Field provided by the external system if a... |
| `description` | `string` | A brief description of the Field. |
| `jsonSchema` | `JsonSchema` | JsonSchema of the field, applicable only if field is of type `STRUCT` |
| `key` | `boolean` | The following boolean field specifies if the current Field acts as a primary key or id if the par... |
| `name` | `string` | Name of the Field. |
| `nullable` | `boolean` | Specifies whether a null value is allowed. |
| `reference` | `Reference` | Reference captures the association between two different entity types. Value links to the referen... |

### `GenerateCustomToolspecRequest`

| Property | Type | Description |
|----------|------|-------------|
| `toolNames` | `array<ToolName>` | list of tools to be generated. |

### `GenerateCustomToolspecResponse`

| Property | Type | Description |
|----------|------|-------------|
| `toolSpec` | `ToolSpec` | tool spec that has tool_defitions array containing the tools for all sted tool_names. |

### `GetResourcePostRequest`

Request message for ConnectorAgentService.GetResourcePost

| Property | Type | Description |
|----------|------|-------------|
| `executionConfig` | `ExecutionConfig` | execution config for the request. |
| `toolSpec` | `ToolSpec` | List of tool specifications. |

### `GetResourceResponse`

| Property | Type | Description |
|----------|------|-------------|
| `data` | `string` | The content of the resource. |
| `metadata` | `object` | Metadata like service latency, etc. |
| `mimeType` | `string` | The MIME type of the resource. |

### `InputParameter`

Input Parameter message contains metadata about the parameters required for executing an Action.

| Property | Type | Description |
|----------|------|-------------|
| `additionalDetails` | `object` | The following map contains fields that are not explicitly mentioned above,this give connectors th... |
| `dataType` | `string` | The data type of the Parameter |
| `defaultValue` | `any` | The following field specifies the default value of the Parameter provided by the external system ... |
| `description` | `string` | A brief description of the Parameter. |
| `jsonSchema` | `JsonSchema` | JsonSchema of the parameter, applicable only if parameter is of type `STRUCT` |
| `name` | `string` | Name of the Parameter. |
| `nullable` | `boolean` | Specifies whether a null value is allowed. |

### `Instance`

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
| `maintenanceSettings` | `MaintenanceSettings` | Optional. The MaintenanceSettings associated with instance. |
| `name` | `string` | Unique name of the resource. It uses the form: `projects/{project_number}/locations/{location_id}... |
| `notificationParameters` | `object` | Optional. notification_parameter are information that service producers may like to include that ... |
| `producerMetadata` | `object` | Output only. Custom string attributes used primarily to expose producer-specific information in m... |
| `provisionedResources` | `array<ProvisionedResource>` | Output only. The list of data plane resources provisioned for this instance, e.g. compute VMs. Se... |
| `slmInstanceTemplate` | `string` | Link to the SLM instance template. Only populated when updating SLM instances via SSA's Actuation... |
| `sloMetadata` | `SloMetadata` | Output only. SLO metadata for instance classification in the Standardized dataplane SLO platform.... |
| `softwareVersions` | `object` | Software versions that are used to deploy this instance. This can be mutated by rollout services. |
| `state` | `string` | Output only. Current lifecycle state of the resource (e.g. if it's being created or ready to use). |
| `tenantProjectId` | `string` | Output only. ID of the associated GCP tenant project. See go/get-instance-metadata. |
| `updateTime` | `string` | Output only. Timestamp when the resource was last modified. |

### `JsonSchema`

JsonSchema representation of schema metadata

| Property | Type | Description |
|----------|------|-------------|
| `additionalDetails` | `object` | Additional details apart from standard json schema fields, this gives flexibility to store metada... |
| `default` | `any` | The default value of the field or object described by this schema. |
| `description` | `string` | A description of this schema. |
| `enum` | `array<any>` | Possible values for an enumeration. This works in conjunction with `type` to represent types with... |
| `format` | `string` | Format of the value as per https://json-schema.org/understanding-json-schema/reference/string.htm... |
| `items` | `JsonSchema` | Schema that applies to array values, applicable only if this is of type `array`. |
| `jdbcType` | `string` | JDBC datatype of the field. |
| `properties` | `object` | The child schemas, applicable only if this is of type `object`. The key is the name of the proper... |
| `required` | `array<string>` | Whether this property is required. |
| `type` | `array<string>` | JSON Schema Validation: A Vocabulary for Structural Validation of JSON |

### `ListActionsResponse`

Response message for ActionService.ListActions

| Property | Type | Description |
|----------|------|-------------|
| `actions` | `array<Action>` | List of action metadata. |
| `metadata` | `object` | Metadata like service latency, etc. |
| `nextPageToken` | `string` | Next page token if more actions available. |
| `unsupportedActionNames` | `array<string>` | List of actions which contain unsupported Datatypes. Check datatype.proto for more information. |

### `ListCustomToolNamesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `toolNames` | `array<ToolName>` | List of custom tools. |

### `ListEntitiesResponse`

Response message for EntityService.ListEntities

| Property | Type | Description |
|----------|------|-------------|
| `entities` | `array<Entity>` | List containing entity rows. |
| `metadata` | `object` | Metadata like service latency, etc. |
| `nextPageToken` | `string` | Next page token if more records are available. |

### `ListEntityTypesResponse`

Response message for EntityService.ListEntityTypes

| Property | Type | Description |
|----------|------|-------------|
| `metadata` | `object` | Metadata like service latency, etc. |
| `nextPageToken` | `string` | Next page token if more entity types available. |
| `types` | `array<EntityType>` | List of metadata related to all entity types. |
| `unsupportedTypeNames` | `array<string>` | List of entity type names which contain unsupported Datatypes. Check datatype.proto for more info... |

### `ListResourcesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `metadata` | `object` | Metadata like service latency, etc. |
| `nextPageToken` | `string` | Next page token if more resources available. |
| `resources` | `array<Resource>` | List of available resources. |

### `ListToolsPostRequest`

Request message for ConnectorAgentService.ListToolsPost

| Property | Type | Description |
|----------|------|-------------|
| `executionConfig` | `ExecutionConfig` | execution config for the request. |
| `pageSize` | `integer` | Page size. |
| `pageToken` | `string` | Page token. |
| `toolSpec` | `ToolSpec` | List of tool specifications. |

### `ListToolsResponse`

Response message for ConnectorAgentService.ListTools

| Property | Type | Description |
|----------|------|-------------|
| `metadata` | `object` | Metadata like service latency, etc. |
| `nextPageToken` | `string` | Next page token. |
| `tools` | `array<Tool>` | List of available tools. |

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

Maintenance schedule which is exposed to customer and potentially end user, indicating published upcoming future maintenance schedule

| Property | Type | Description |
|----------|------|-------------|
| `canReschedule` | `boolean` | This field is deprecated, and will be always set to true since reschedule can happen multiple tim... |
| `endTime` | `string` | The scheduled end time for the maintenance. |
| `rolloutManagementPolicy` | `string` | The rollout management policy this maintenance schedule is associated with. When doing reschedule... |
| `scheduleDeadlineTime` | `string` | schedule_deadline_time is the time deadline any schedule start time cannot go beyond, including r... |
| `startTime` | `string` | The scheduled start time for the maintenance. |

### `MaintenanceSettings`

Maintenance settings associated with instance. Allows service producers and end users to assign settings that controls maintenance on this instance.

| Property | Type | Description |
|----------|------|-------------|
| `exclude` | `boolean` | Optional. Exclude instance from maintenance. When true, rollout service will not attempt maintena... |
| `isRollback` | `boolean` | Optional. If the update call is triggered from rollback, set the value as true. |
| `maintenancePolicies` | `object` | Optional. The MaintenancePolicies that have been attached to the instance. The key must be of the... |

### `MaintenanceWindow`

MaintenanceWindow definition.

| Property | Type | Description |
|----------|------|-------------|
| `dailyCycle` | `DailyCycle` | Daily cycle. |
| `weeklyCycle` | `WeeklyCycle` | Weekly cycle. |

### `NodeSloMetadata`

Node information for custom per-node SLO implementations. SSA does not support per-node SLO, but producers can populate per-node information in SloMetadata for custom precomputations. SSA Eligibility Exporter will emit per-node metric based on this information.

| Property | Type | Description |
|----------|------|-------------|
| `location` | `string` | The location of the node, if different from instance location. |
| `nodeId` | `string` | The id of the node. This should be equal to SaasInstanceNode.node_id. |
| `perSliEligibility` | `PerSliSloEligibility` | If present, this will override eligibility for the node coming from instance or exclusions for sp... |

### `NotificationParameter`

Contains notification related data.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<string>` | Optional. Array of string values. e.g. instance's replica information. |

### `OAuth2Config`

| Property | Type | Description |
|----------|------|-------------|
| `authUri` | `string` | Authorization Server URL/Token Endpoint for Authorization Code Flow |
| `clientId` | `string` | Client ID for the OAuth2 flow. |
| `clientSecret` | `string` | Client secret for the OAuth2 flow. |

### `PerSliSloEligibility`

PerSliSloEligibility is a mapping from an SLI name to eligibility.

| Property | Type | Description |
|----------|------|-------------|
| `eligibilities` | `object` | An entry in the eligibilities map specifies an eligibility for a particular SLI for the given ins... |

### `ProvisionedResource`

Describes provisioned dataplane resources.

| Property | Type | Description |
|----------|------|-------------|
| `resourceType` | `string` | Type of the resource. This can be either a GCP resource or a custom one (e.g. another cloud provi... |
| `resourceUrl` | `string` | URL identifying the resource, e.g. "https://www.googleapis.com/compute/v1/projects/...)". |

### `Query`

A wrapper around the SQL query statement. This is needed so that the JSON representation of ExecuteSqlQueryRequest has the following format: `{"query":"select *"}`.

| Property | Type | Description |
|----------|------|-------------|
| `maxRows` | `string` | Sets the limit for the maximum number of rows returned after the query execution. |
| `query` | `string` | Required. Sql query to execute. |
| `queryParameters` | `array<QueryParameter>` | In the struct, the value corresponds to the value of query parameter and date type corresponds to... |
| `timeout` | `string` | Sets the number of seconds the driver will wait for a query to execute. |

### `QueryParameter`

Query parameter definition

| Property | Type | Description |
|----------|------|-------------|
| `dataType` | `string` |  |
| `value` | `any` |  |

### `Reference`

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Name of the reference field. |
| `type` | `string` | Name of reference entity type. |

### `RefreshAccessTokenRequest`

RefreshAccessTokenRequest includes the refresh token.

| Property | Type | Description |
|----------|------|-------------|
| `executionConfig` | `ExecutionConfig` | ExecutionConfig contains the configuration for the execution of the request. |
| `oauth2Config` | `OAuth2Config` | OAuth2Config contains the OAuth2 config for the connection. |
| `refreshToken` | `string` | Optional. Refresh Token String. If the Refresh Token is not provided, the runtime will read the d... |

### `RefreshAccessTokenResponse`

RefreshAccessTokenResponse includes the returned access token and its associated credentials.

| Property | Type | Description |
|----------|------|-------------|
| `accessCredentials` | `AccessCredentials` |  |
| `metadata` | `object` | Metadata like service latency, etc. |

### `Resource`

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | A description of what this resource represents. |
| `mimeType` | `string` | The MIME type of this resource, if known. |
| `name` | `string` | A human-readable name for this resource. |
| `size` | `string` | The size of the raw resource content, in bytes, if known. |
| `uri` | `string` | The URI of this resource. |

### `ResultMetadata`

Result Metadata message contains metadata about the result returned after executing an Action.

| Property | Type | Description |
|----------|------|-------------|
| `dataType` | `string` | The data type of the metadata field |
| `defaultValue` | `any` | The following field specifies the default value of the Parameter provided by the external system ... |
| `description` | `string` | A brief description of the metadata field. |
| `jsonSchema` | `JsonSchema` | JsonSchema of the result, applicable only if parameter is of type `STRUCT` |
| `name` | `string` | Name of the metadata field. |
| `nullable` | `boolean` | Specifies whether a null value is allowed. |

### `Schedule`

Configure the schedule.

| Property | Type | Description |
|----------|------|-------------|
| `day` | `string` | Allows to define schedule that runs specified day of the week. |
| `duration` | `string` | Output only. Duration of the time window, set by service producer. |
| `startTime` | `TimeOfDay` | Time within the window to start the operations. |

### `SloEligibility`

SloEligibility is a tuple containing eligibility value: true if an instance is eligible for SLO calculation or false if it should be excluded from all SLO-related calculations along with a user-defined reason.

| Property | Type | Description |
|----------|------|-------------|
| `eligible` | `boolean` | Whether an instance is eligible or ineligible. |
| `reason` | `string` | User-defined reason for the current value of instance eligibility. Usually, this can be directly ... |

### `SloMetadata`

SloMetadata contains resources required for proper SLO classification of the instance.

| Property | Type | Description |
|----------|------|-------------|
| `nodes` | `array<NodeSloMetadata>` | Optional. List of nodes. Some producers need to use per-node metadata to calculate SLO. This fiel... |
| `perSliEligibility` | `PerSliSloEligibility` | Optional. Multiple per-instance SLI eligibilities which apply for individual SLIs. |
| `tier` | `string` | Name of the SLO tier the Instance belongs to. This name will be expected to match the tiers speci... |

### `TimeOfDay`

Represents a time of day. The date and time zone are either not significant or are specified elsewhere. An API may choose to allow leap seconds. Related types are google.type.Date and `google.protobuf.Timestamp`.

| Property | Type | Description |
|----------|------|-------------|
| `hours` | `integer` | Hours of a day in 24 hour format. Must be greater than or equal to 0 and typically must be less t... |
| `minutes` | `integer` | Minutes of an hour. Must be greater than or equal to 0 and less than or equal to 59. |
| `nanos` | `integer` | Fractions of seconds, in nanoseconds. Must be greater than or equal to 0 and less than or equal t... |
| `seconds` | `integer` | Seconds of a minute. Must be greater than or equal to 0 and typically must be less than or equal ... |

### `Tool`

Message representing a single tool.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `ToolAnnotations` | Annotations for the tool. |
| `dependsOn` | `array<string>` | List of tool names that this tool depends on. |
| `description` | `string` | Description of the tool. |
| `inputSchema` | `JsonSchema` | JSON schema for the input parameters of the tool. |
| `name` | `string` | Name of the tool. |
| `outputSchema` | `JsonSchema` | JSON schema for the output of the tool. |

### `ToolAnnotations`

ToolAnnotations holds annotations for a tool.

| Property | Type | Description |
|----------|------|-------------|
| `destructiveHint` | `boolean` | If true, the tool may perform destructive updates to its environment. If false, the tool performs... |
| `idempotentHint` | `boolean` | If true, calling the tool repeatedly with the same arguments will have no additional effect on th... |
| `openWorldHint` | `boolean` | If true, this tool may interact with an "open world" of external entities. If false, the tool's d... |
| `readOnlyHint` | `boolean` | If true, the tool does not modify its environment. |
| `title` | `string` | A human-readable title for the tool. |

### `ToolName`

| Property | Type | Description |
|----------|------|-------------|
| `entityName` | `string` | Entity name for which the tool was generated. |
| `name` | `string` | Tool name that was generated in the list tools call. |
| `operation` | `string` | Operation for which the tool was generated. |

### `ToolSpec`

| Property | Type | Description |
|----------|------|-------------|
| `toolDefinitions` | `array<object>` | List of tool definitions. |
| `toolSpecVersion` | `string` | Version of the tool spec. Format: providerId/connectorId/versionId/toolSpecId |

### `UpdateEntitiesWithConditionsResponse`

Response message for EntityService.UpdateEntitiesWithConditions

| Property | Type | Description |
|----------|------|-------------|
| `metadata` | `object` | Metadata like service latency, etc. |
| `response` | `object` | Response returned by the external system. |

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

