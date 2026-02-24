# Firebase Data Connect API - API Reference

**Version**: `v1` | **Methods**: 28 | **Schemas**: 36

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `firebasedataconnect.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `firebasedataconnect.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `firebasedataconnect.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `firebasedataconnect.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `firebasedataconnect.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `firebasedataconnect.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `firebasedataconnect.projects.locations.services.executeGraphql` | POST | `v1/{+name}:executeGraphql` | Execute any GraphQL query and mutation against the Firebase Data Connect's generated GraphQL sche... |
| `firebasedataconnect.projects.locations.services.executeGraphqlRead` | POST | `v1/{+name}:executeGraphqlRead` | Execute any GraphQL query against the Firebase Data Connect's generated GraphQL schema. Grants fu... |
| `firebasedataconnect.projects.locations.services.introspectGraphql` | POST | `v1/{+name}:introspectGraphql` | Execute introspection query against the Firebase Data Connect's generated GraphQL schema. GraphQL... |
| `firebasedataconnect.projects.locations.services.list` | GET | `v1/{+parent}/services` | Lists Services in a given project and location. |
| `firebasedataconnect.projects.locations.services.get` | GET | `v1/{+name}` | Gets details of a single Service. |
| `firebasedataconnect.projects.locations.services.create` | POST | `v1/{+parent}/services` | Creates a new Service in a given project and location. |
| `firebasedataconnect.projects.locations.services.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single Service. |
| `firebasedataconnect.projects.locations.services.delete` | DELETE | `v1/{+name}` | Deletes a single Service. |
| `firebasedataconnect.projects.locations.services.connectors.executeQuery` | POST | `v1/{+name}:executeQuery` | Execute a predefined query in a Connector. |
| `firebasedataconnect.projects.locations.services.connectors.executeMutation` | POST | `v1/{+name}:executeMutation` | Execute a predefined mutation in a Connector. |
| `firebasedataconnect.projects.locations.services.connectors.impersonateQuery` | POST | `v1/{+name}:impersonateQuery` | Impersonate a query defined on a Firebase Data Connect connector. It grants the admin SDK access ... |
| `firebasedataconnect.projects.locations.services.connectors.impersonateMutation` | POST | `v1/{+name}:impersonateMutation` | Impersonate a mutation defined on a Firebase Data Connect connector. It grants the admin SDK acce... |
| `firebasedataconnect.projects.locations.services.connectors.list` | GET | `v1/{+parent}/connectors` | Lists Connectors in a given project and location. |
| `firebasedataconnect.projects.locations.services.connectors.get` | GET | `v1/{+name}` | Gets details of a single Connector. |
| `firebasedataconnect.projects.locations.services.connectors.create` | POST | `v1/{+parent}/connectors` | Creates a new Connector in a given project and location. The operations are validated against and... |
| `firebasedataconnect.projects.locations.services.connectors.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single Connector, and creates a new ConnectorRevision with the update... |
| `firebasedataconnect.projects.locations.services.connectors.delete` | DELETE | `v1/{+name}` | Deletes a single Connector. |
| `firebasedataconnect.projects.locations.services.schemas.get` | GET | `v1/{+name}` | Gets details of a single Schema. |
| `firebasedataconnect.projects.locations.services.schemas.list` | GET | `v1/{+parent}/schemas` | Lists Schemas in a given project and location. |
| `firebasedataconnect.projects.locations.services.schemas.create` | POST | `v1/{+parent}/schemas` | Creates a new Schema in a given project and location. Only creation of `schemas/main` is supporte... |
| `firebasedataconnect.projects.locations.services.schemas.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single Schema, and creates a new SchemaRevision with the updated Schema. |
| `firebasedataconnect.projects.locations.services.schemas.delete` | DELETE | `v1/{+name}` | Deletes a single Schema. Because the schema and connectors must be compatible at all times, if th... |

### `firebasedataconnect.projects.locations.list`

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
const res = await firebasedataconnect.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebasedataconnect.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await firebasedataconnect.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebasedataconnect.projects.locations.operations.list`

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
const res = await firebasedataconnect.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebasedataconnect.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await firebasedataconnect.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebasedataconnect.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await firebasedataconnect.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebasedataconnect.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await firebasedataconnect.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebasedataconnect.projects.locations.services.executeGraphql`

**POST** `v1/{+name}:executeGraphql`

Execute any GraphQL query and mutation against the Firebase Data Connect's generated GraphQL schema. Grants full read and write access to the connected data sources. Note: Use introspection query to explore the generated GraphQL schema.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The relative resource name of Firebase Data Connect service, in the format: ``` projects/{project}/location... |

**Request body**: `GraphqlRequest`

**Response**: `GraphqlResponse`

```typescript
const res = await firebasedataconnect.services.executeGraphql({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebasedataconnect.projects.locations.services.executeGraphqlRead`

**POST** `v1/{+name}:executeGraphqlRead`

Execute any GraphQL query against the Firebase Data Connect's generated GraphQL schema. Grants full read to the connected data sources. `ExecuteGraphqlRead` is identical to `ExecuteGraphql` except it only accepts read-only query.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The relative resource name of Firebase Data Connect service, in the format: ``` projects/{project}/location... |

**Request body**: `GraphqlRequest`

**Response**: `GraphqlResponse`

```typescript
const res = await firebasedataconnect.services.executeGraphqlRead({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebasedataconnect.projects.locations.services.introspectGraphql`

**POST** `v1/{+name}:introspectGraphql`

Execute introspection query against the Firebase Data Connect's generated GraphQL schema. GraphQL introspection query provides metadata such as what tables the schema have, what queries and mutations can be performed on the schema, and so on. Read more at https://graphql.org/learn/introspection. IntrospectGraphql can read schema metadata but cannot read rows from Cloud SQL instance, which can be done via ExecuteGraphqlRead.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The relative resource name of Firebase Data Connect service, in the format: ``` projects/{project}/location... |

**Request body**: `GraphqlRequest`

**Response**: `GraphqlResponse`

```typescript
const res = await firebasedataconnect.services.introspectGraphql({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebasedataconnect.projects.locations.services.list`

**GET** `v1/{+parent}/services`

Lists Services in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Value of parent. |
| `filter` | `string` | query | No | Optional. Filtering results. |
| `orderBy` | `string` | query | No | Optional. Hint for how to order the results. |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListServices` call. Provide this to retrieve the subsequent page. W... |

**Response**: `ListServicesResponse`

```typescript
const res = await firebasedataconnect.services.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebasedataconnect.projects.locations.services.get`

**GET** `v1/{+name}`

Gets details of a single Service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the service to retrieve, in the format: ``` projects/{project}/locations/{location}/services/{s... |

**Response**: `Service`

```typescript
const res = await firebasedataconnect.services.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebasedataconnect.projects.locations.services.create`

**POST** `v1/{+parent}/services`

Creates a new Service in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Value of parent. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `serviceId` | `string` | query | No | Required. The ID to use for the service, which will become the final component of the service's resource name. |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request and preview the Service, but do not actually create it. |

**Request body**: `Service`

**Response**: `Operation`

```typescript
const res = await firebasedataconnect.services.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebasedataconnect.projects.locations.services.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single Service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The relative resource name of the Firebase Data Connect service, in the format: ``` projects/{project}/lo... |
| `allowMissing` | `boolean` | query | No | Optional. If true and the Service is not found, a new Service will be created. In this case, `update_mask` is ignored. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the Service resource by the update. The field... |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request and preview the Service, but do not actually update it. |

**Request body**: `Service`

**Response**: `Operation`

```typescript
const res = await firebasedataconnect.services.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebasedataconnect.projects.locations.services.delete`

**DELETE** `v1/{+name}`

Deletes a single Service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the service to delete, in the format: ``` projects/{project}/locations/{location}/services/{ser... |
| `allowMissing` | `boolean` | query | No | Optional. If true and the Service is not found, the request will succeed but no action will be taken on the server. |
| `etag` | `string` | query | No | Optional. The etag of the Service. If this is provided, it must match the server's etag. |
| `force` | `boolean` | query | No | Optional. If set to true, any child resources (i.e. Schema, SchemaRevisions, Connectors, and ConnectorRevisions) will... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request and preview the Service, but do not actually delete it. |

**Response**: `Operation`

```typescript
const res = await firebasedataconnect.services.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebasedataconnect.projects.locations.services.connectors.executeQuery`

**POST** `v1/{+name}:executeQuery`

Execute a predefined query in a Connector.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the connector to find the predefined query, in the format: ``` projects/{project}/loca... |

**Request body**: `ExecuteQueryRequest`

**Response**: `ExecuteQueryResponse`

```typescript
const res = await firebasedataconnect.connectors.executeQuery({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebasedataconnect.projects.locations.services.connectors.executeMutation`

**POST** `v1/{+name}:executeMutation`

Execute a predefined mutation in a Connector.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the connector to find the predefined mutation, in the format: ``` projects/{project}/l... |

**Request body**: `ExecuteMutationRequest`

**Response**: `ExecuteMutationResponse`

```typescript
const res = await firebasedataconnect.connectors.executeMutation({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebasedataconnect.projects.locations.services.connectors.impersonateQuery`

**POST** `v1/{+name}:impersonateQuery`

Impersonate a query defined on a Firebase Data Connect connector. It grants the admin SDK access to queries defined in the given connector. The caller can choose to impersonate a particular Firebase Auth user, or skip @auth completely.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the connector to find the predefined query/mutation, in the format: ``` projects/{proj... |

**Request body**: `ImpersonateRequest`

**Response**: `GraphqlResponse`

```typescript
const res = await firebasedataconnect.connectors.impersonateQuery({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebasedataconnect.projects.locations.services.connectors.impersonateMutation`

**POST** `v1/{+name}:impersonateMutation`

Impersonate a mutation defined on a Firebase Data Connect connector. It grants the admin SDK access to mutations defined in the given connector. The caller can choose to impersonate a particular Firebase Auth user, or skip @auth completely.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the connector to find the predefined query/mutation, in the format: ``` projects/{proj... |

**Request body**: `ImpersonateRequest`

**Response**: `GraphqlResponse`

```typescript
const res = await firebasedataconnect.connectors.impersonateMutation({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebasedataconnect.projects.locations.services.connectors.list`

**GET** `v1/{+parent}/connectors`

Lists Connectors in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Value of parent. |
| `filter` | `string` | query | No | Optional. Filtering results. |
| `orderBy` | `string` | query | No | Optional. Hint for how to order the results. |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListConnectors` call. Provide this to retrieve the subsequent page.... |

**Response**: `ListConnectorsResponse`

```typescript
const res = await firebasedataconnect.connectors.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebasedataconnect.projects.locations.services.connectors.get`

**GET** `v1/{+name}`

Gets details of a single Connector.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the connector to retrieve, in the format: ``` projects/{project}/locations/{location}/services/... |

**Response**: `Connector`

```typescript
const res = await firebasedataconnect.connectors.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebasedataconnect.projects.locations.services.connectors.create`

**POST** `v1/{+parent}/connectors`

Creates a new Connector in a given project and location. The operations are validated against and must be compatible with the active schema. If the operations and schema are not compatible or if the schema is not present, this will result in an error.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Value for parent. |
| `connectorId` | `string` | query | No | Required. The ID to use for the connector, which will become the final component of the connector's resource name. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request and preview the Connector, but do not actually create it. |

**Request body**: `Connector`

**Response**: `Operation`

```typescript
const res = await firebasedataconnect.connectors.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebasedataconnect.projects.locations.services.connectors.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single Connector, and creates a new ConnectorRevision with the updated Connector. The operations are validated against and must be compatible with the live schema. If the operations and schema are not compatible or if the schema is not present, this will result in an error.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The relative resource name of the connector, in the format: ``` projects/{project}/locations/{location}/s... |
| `allowMissing` | `boolean` | query | No | Optional. If true and the Connector is not found, a new Connector will be created. In this case, `update_mask` is ign... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the Connector resource by the update. The fie... |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request and preview the Connector, but do not actually update it. |

**Request body**: `Connector`

**Response**: `Operation`

```typescript
const res = await firebasedataconnect.connectors.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebasedataconnect.projects.locations.services.connectors.delete`

**DELETE** `v1/{+name}`

Deletes a single Connector.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the connector to delete, in the format: ``` projects/{project}/locations/{location}/services/{s... |
| `allowMissing` | `boolean` | query | No | Optional. If true and the Connector is not found, the request will succeed but no action will be taken on the server. |
| `etag` | `string` | query | No | Optional. The etag of the Connector. If this is provided, it must match the server's etag. |
| `force` | `boolean` | query | No | Optional. If set to true, any child resources (i.e. ConnectorRevisions) will also be deleted. Otherwise, the request ... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request and preview the Connector, but do not actually delete it. |

**Response**: `Operation`

```typescript
const res = await firebasedataconnect.connectors.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebasedataconnect.projects.locations.services.schemas.get`

**GET** `v1/{+name}`

Gets details of a single Schema.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the schema to retrieve, in the format: ``` projects/{project}/locations/{location}/services/{se... |

**Response**: `Schema`

```typescript
const res = await firebasedataconnect.schemas.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebasedataconnect.projects.locations.services.schemas.list`

**GET** `v1/{+parent}/schemas`

Lists Schemas in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Value of parent. |
| `filter` | `string` | query | No | Optional. Filtering results. |
| `orderBy` | `string` | query | No | Optional. Hint for how to order the results. |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListSchemas` call. Provide this to retrieve the subsequent page. Wh... |

**Response**: `ListSchemasResponse`

```typescript
const res = await firebasedataconnect.schemas.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebasedataconnect.projects.locations.services.schemas.create`

**POST** `v1/{+parent}/schemas`

Creates a new Schema in a given project and location. Only creation of `schemas/main` is supported and calling create with any other schema ID will result in an error.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Value for parent. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `schemaId` | `string` | query | No | Required. The ID to use for the schema, which will become the final component of the schema's resource name. Currentl... |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request and preview the Schema, but do not actually update it. |

**Request body**: `Schema`

**Response**: `Operation`

```typescript
const res = await firebasedataconnect.schemas.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebasedataconnect.projects.locations.services.schemas.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single Schema, and creates a new SchemaRevision with the updated Schema.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The relative resource name of the schema, in the format: ``` projects/{project}/locations/{location}/serv... |
| `allowMissing` | `boolean` | query | No | Optional. If true and the Schema is not found, a new Schema will be created. In this case, `update_mask` is ignored. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the Schema resource by the update. The fields... |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request and preview the Schema, but do not actually update it. |

**Request body**: `Schema`

**Response**: `Operation`

```typescript
const res = await firebasedataconnect.schemas.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebasedataconnect.projects.locations.services.schemas.delete`

**DELETE** `v1/{+name}`

Deletes a single Schema. Because the schema and connectors must be compatible at all times, if this is called while any connectors are active, this will result in an error.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the schema to delete, in the format: ``` projects/{project}/locations/{location}/services/{serv... |
| `allowMissing` | `boolean` | query | No | Optional. If true and the Schema is not found, the request will succeed but no action will be taken on the server. |
| `etag` | `string` | query | No | Optional. The etag of the Schema. If this is provided, it must match the server's etag. |
| `force` | `boolean` | query | No | Optional. If set to true, any child resources (i.e. SchemaRevisions) will also be deleted. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request and preview the Schema, but do not actually delete it. |

**Response**: `Operation`

```typescript
const res = await firebasedataconnect.schemas.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `ClientCache`

Client caching settings of a connector.

| Property | Type | Description |
|----------|------|-------------|
| `entityIdIncluded` | `boolean` | Optional. A field that, if true, means that responses served by this connector will include entit... |
| `strictValidationEnabled` | `boolean` | Optional. A field that, if true, enables stricter validation on the connector source code to make... |

### `CloudSqlInstance`

Settings for CloudSQL instance configuration.

| Property | Type | Description |
|----------|------|-------------|
| `instance` | `string` | Required. Name of the CloudSQL instance, in the format: ``` projects/{project}/locations/{locatio... |

### `Connector`

Connector consists of a set of operations, i.e. queries and mutations.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Optional. Stores small amounts of arbitrary data. |
| `clientCache` | `ClientCache` | Optional. The client cache settings of the connector. |
| `createTime` | `string` | Output only. [Output only] Create time stamp. |
| `displayName` | `string` | Optional. Mutable human-readable name. 63 character limit. |
| `etag` | `string` | Output only. This checksum is computed by the server based on the value of other fields, and may ... |
| `labels` | `object` | Optional. Labels as key value pairs. |
| `name` | `string` | Identifier. The relative resource name of the connector, in the format: ``` projects/{project}/lo... |
| `reconciling` | `boolean` | Output only. A field that if true, indicates that the system is working to compile and deploy the... |
| `source` | `Source` | Required. The source files that comprise the connector. |
| `uid` | `string` | Output only. System-assigned, unique identifier. |
| `updateTime` | `string` | Output only. [Output only] Update time stamp. |

### `DataConnectProperties`

Data Connect specific properties for a path under response.data.

| Property | Type | Description |
|----------|------|-------------|
| `entityId` | `string` | A single Entity ID. Set if the path points to a single entity. |
| `entityIds` | `array<string>` | A list of Entity IDs. Set if the path points to an array of entities. An ID is present for each e... |
| `maxAge` | `string` | The server-suggested duration before data under path is considered stale. |
| `path` | `array<any>` | The path under response.data where the rest of the fields apply. Each element may be a string (fi... |

### `Datasource`

A data source that backs Firebase Data Connect services.

| Property | Type | Description |
|----------|------|-------------|
| `httpGraphql` | `HttpGraphql` | HTTP GraphQL server webhook configurations. |
| `postgresql` | `PostgreSql` | PostgreSQL configurations. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `ExecuteMutationRequest`

The ExecuteMutation request to Firebase Data Connect.

| Property | Type | Description |
|----------|------|-------------|
| `operationName` | `string` | Required. The name of the GraphQL operation name. Required because all Connector operations must ... |
| `variables` | `object` | Optional. Values for GraphQL variables provided in this request. |

### `ExecuteMutationResponse`

The ExecuteMutation response from Firebase Data Connect.

| Property | Type | Description |
|----------|------|-------------|
| `data` | `object` | The result of executing the requested operation. |
| `errors` | `array<GraphqlError>` | Errors of this response. |
| `extensions` | `GraphqlResponseExtensions` | Additional response information. |

### `ExecuteQueryRequest`

The ExecuteQuery request to Firebase Data Connect.

| Property | Type | Description |
|----------|------|-------------|
| `operationName` | `string` | Required. The name of the GraphQL operation name. Required because all Connector operations must ... |
| `variables` | `object` | Optional. Values for GraphQL variables provided in this request. |

### `ExecuteQueryResponse`

The ExecuteQuery response from Firebase Data Connect.

| Property | Type | Description |
|----------|------|-------------|
| `data` | `object` | The result of executing the requested operation. |
| `errors` | `array<GraphqlError>` | Errors of this response. |
| `extensions` | `GraphqlResponseExtensions` | Additional response information. |

### `File`

Individual files.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | Required. The file's textual content. |
| `path` | `string` | Required. The file name including folder path, if applicable. The path should be relative to a lo... |

### `GraphqlError`

GraphqlError conforms to the GraphQL error spec. https://spec.graphql.org/draft/#sec-Errors Firebase Data Connect API surfaces `GraphqlError` in various APIs: - Upon compile error, `UpdateSchema` and `UpdateConnector` return Code.Invalid_Argument with a list of `GraphqlError` in error details. - Upon query compile error, `ExecuteGraphql`, `ExecuteGraphqlRead` and `IntrospectGraphql` return Code.OK with a list of `GraphqlError` in response body. - Upon query execution error, `ExecuteGraphql`, `ExecuteGraphqlRead`, `ExecuteMutation`, `ExecuteQuery`, `IntrospectGraphql`, `ImpersonateQuery` and `ImpersonateMutation` all return Code.OK with a list of `GraphqlError` in response body.

| Property | Type | Description |
|----------|------|-------------|
| `extensions` | `GraphqlErrorExtensions` | Additional error information. |
| `locations` | `array<SourceLocation>` | The source locations where the error occurred. Locations should help developers and toolings iden... |
| `message` | `string` | The detailed error message. The message should help developer understand the underlying problem w... |
| `path` | `array<any>` | The result field which could not be populated due to error. Clients can use path to identify whet... |

### `GraphqlErrorExtensions`

GraphqlErrorExtensions contains additional information of `GraphqlError`.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | Maps to canonical gRPC codes. If not specified, it represents `Code.INTERNAL`. |
| `debugDetails` | `string` | More detailed error message to assist debugging. It contains application business logic that are ... |
| `file` | `string` | The source file name where the error occurred. Included only for `UpdateSchema` and `UpdateConnec... |
| `warningLevel` | `string` | Warning level describes the severity and required action to suppress this warning when Firebase C... |
| `workarounds` | `array<Workaround>` | Workarounds provide suggestions to address the compile errors or warnings. |

### `GraphqlRequest`

The GraphQL request to Firebase Data Connect. It strives to match the GraphQL over HTTP spec. https://github.com/graphql/graphql-over-http/blob/main/spec/GraphQLOverHTTP.md#post

| Property | Type | Description |
|----------|------|-------------|
| `extensions` | `GraphqlRequestExtensions` | Optional. Additional GraphQL request information. |
| `operationName` | `string` | Optional. The name of the GraphQL operation name. Required only if `query` contains multiple oper... |
| `query` | `string` | Required. The GraphQL query document source. |
| `variables` | `object` | Optional. Values for GraphQL variables provided in this request. |

### `GraphqlRequestExtensions`

GraphqlRequestExtensions contains additional information of `GraphqlRequest`.

| Property | Type | Description |
|----------|------|-------------|
| `impersonate` | `Impersonation` | Optional. If set, impersonate a request with given Firebase Auth context and evaluate the auth po... |

### `GraphqlResponse`

The GraphQL response from Firebase Data Connect. It strives to match the GraphQL over HTTP spec. Note: Firebase Data Connect always responds with `Content-Type: application/json`. https://github.com/graphql/graphql-over-http/blob/main/spec/GraphQLOverHTTP.md#body

| Property | Type | Description |
|----------|------|-------------|
| `data` | `object` | The result of the execution of the requested operation. If an error was raised before execution b... |
| `errors` | `array<GraphqlError>` | Errors of this response. If the data entry in the response is not present, the errors entry must ... |
| `extensions` | `GraphqlResponseExtensions` | Additional response information. It conforms to https://spec.graphql.org/draft/#sec-Extensions . |

### `GraphqlResponseExtensions`

GraphqlResponseExtensions contains additional information of `GraphqlResponse` or `ExecuteQueryResponse`.

| Property | Type | Description |
|----------|------|-------------|
| `dataConnect` | `array<DataConnectProperties>` | Data Connect specific GraphQL extension, a list of paths and properties. |

### `HttpGraphql`

Settings for HTTP GraphQL server webhook.

| Property | Type | Description |
|----------|------|-------------|
| `timeout` | `string` | Optional. Timeout duration for the HTTP request. |
| `uri` | `string` | Required. The endpoint of the HTTP GraphQL server. |

### `ImpersonateRequest`

The Impersonate request to Firebase Data Connect.

| Property | Type | Description |
|----------|------|-------------|
| `extensions` | `GraphqlRequestExtensions` | Optional. Additional GraphQL request information. |
| `operationName` | `string` | Required. The name of the GraphQL operation name. Required because all Connector operations must ... |
| `variables` | `object` | Optional. Values for GraphQL variables provided in this request. |

### `Impersonation`

Impersonation configures the Firebase Auth context to impersonate.

| Property | Type | Description |
|----------|------|-------------|
| `authClaims` | `object` | Evaluate the auth policy with a customized JWT auth token. Should follow the Firebase Auth token ... |
| `includeDebugDetails` | `boolean` | Optional. If set, include debug details in GraphQL error extensions. |
| `unauthenticated` | `boolean` | Evaluate the auth policy as an unauthenticated request. Can only be set to true. |

### `ListConnectorsResponse`

Message for response to listing Connectors. By default, `connectors.source` will not be included in the response. To specify the fields included in the response, the response field mask can be provided by using the query parameter `$fields` or the header `X-Goog-FieldMask`.

| Property | Type | Description |
|----------|------|-------------|
| `connectors` | `array<Connector>` | The list of Connectors. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
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

### `ListSchemasResponse`

Message for response to listing Schemas. By default, `schemas.source` will not be included in the response. To specify the fields included in the response, the response field mask can be provided by using the query parameter `$fields` or the header `X-Goog-FieldMask`.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `schemas` | `array<Schema>` | The list of Schemas. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListServicesResponse`

Message for response to listing Services.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `services` | `array<Service>` | The list of Services. |
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

Represents the metadata of the long-running operation. Note: This message is auto-generated by CCFE. CCFE's storage, called Resource Metadata Store (RMS), holds metadata about long-running operations (i.e. OperationMetadata) and resources (i.e. ResourceMetadata). OperationMetadata documents the status of the operation. See [CCFE documentation for sidechannel data](https://g3doc.corp.google.com/cloud/control2/g3doc/dev/codelab_extras/sidechannel.md?cl=head#sidechannel-data) and yaqs/4289526912465764352.

| Property | Type | Description |
|----------|------|-------------|
| `apiVersion` | `string` | Output only. API version used to start the operation. |
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `requestedCancellation` | `boolean` | Output only. Identifies whether the user has requested cancellation of the operation. Operations ... |
| `statusMessage` | `string` | Output only. Human-readable status of the operation, if any. |
| `target` | `string` | Output only. Server-defined resource path for the target of the operation. |
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

### `PostgreSql`

Settings for PostgreSQL data source.

| Property | Type | Description |
|----------|------|-------------|
| `cloudSql` | `CloudSqlInstance` | Cloud SQL configurations. |
| `database` | `string` | Required. Name of the PostgreSQL database. |
| `ephemeral` | `boolean` | Output only. Ephemeral is true if this data connect service is served from temporary in-memory em... |
| `schemaMigration` | `string` | Optional. Configure how to perform Postgresql schema migration. |
| `schemaValidation` | `string` | Optional. Configure how much Postgresql schema validation to perform. |
| `unlinked` | `boolean` | No Postgres data source is linked. If set, don't allow `database` and `schema_validation` to be c... |

### `Schema`

The application schema of a Firebase Data Connect service.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Optional. Stores small amounts of arbitrary data. |
| `createTime` | `string` | Output only. [Output only] Create time stamp. |
| `datasources` | `array<Datasource>` | Required. The data sources linked in the schema. |
| `displayName` | `string` | Optional. Mutable human-readable name. 63 character limit. |
| `etag` | `string` | Output only. This checksum is computed by the server based on the value of other fields, and may ... |
| `labels` | `object` | Optional. Labels as key value pairs. |
| `name` | `string` | Identifier. The relative resource name of the schema, in the format: ``` projects/{project}/locat... |
| `reconciling` | `boolean` | Output only. A field that if true, indicates that the system is working to compile and deploy the... |
| `source` | `Source` | Required. The source files that comprise the application schema. |
| `uid` | `string` | Output only. System-assigned, unique identifier. |
| `updateTime` | `string` | Output only. [Output only] Update time stamp. |

### `Service`

A Firebase Data Connect service.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Optional. Stores small amounts of arbitrary data. |
| `createTime` | `string` | Output only. [Output only] Create time stamp. |
| `displayName` | `string` | Optional. Mutable human-readable name. 63 character limit. |
| `etag` | `string` | Output only. This checksum is computed by the server based on the value of other fields, and may ... |
| `labels` | `object` | Optional. Labels as key value pairs. |
| `name` | `string` | Identifier. The relative resource name of the Firebase Data Connect service, in the format: ``` p... |
| `reconciling` | `boolean` | Output only. A field that if true, indicates that the system is working update the service. |
| `uid` | `string` | Output only. System-assigned, unique identifier. |
| `updateTime` | `string` | Output only. [Output only] Update time stamp. |

### `Source`

Used to represent a set of source files.

| Property | Type | Description |
|----------|------|-------------|
| `files` | `array<File>` | Required. The files that comprise the source set. |

### `SourceLocation`

SourceLocation references a location in a GraphQL source.

| Property | Type | Description |
|----------|------|-------------|
| `column` | `integer` | Column number starting at 1. |
| `line` | `integer` | Line number starting at 1. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `Workaround`

Workaround provides suggestions to address errors and warnings.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Description of this workaround. |
| `reason` | `string` | Why would this workaround address the error and warning. |
| `replace` | `string` | A suggested code snippet to fix the error and warning. |

