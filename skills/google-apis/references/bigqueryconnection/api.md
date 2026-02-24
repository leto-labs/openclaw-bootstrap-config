# BigQuery Connection API - API Reference

**Version**: `v1` | **Methods**: 8 | **Schemas**: 32

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `bigqueryconnection.projects.locations.connections.get` | GET | `v1/{+name}` | Returns specified connection. |
| `bigqueryconnection.projects.locations.connections.delete` | DELETE | `v1/{+name}` | Deletes connection and associated credential. |
| `bigqueryconnection.projects.locations.connections.patch` | PATCH | `v1/{+name}` | Updates the specified connection. For security reasons, also resets credential if connection prop... |
| `bigqueryconnection.projects.locations.connections.create` | POST | `v1/{+parent}/connections` | Creates a new connection. |
| `bigqueryconnection.projects.locations.connections.getIamPolicy` | POST | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `bigqueryconnection.projects.locations.connections.list` | GET | `v1/{+parent}/connections` | Returns a list of connections in the given project. |
| `bigqueryconnection.projects.locations.connections.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `bigqueryconnection.projects.locations.connections.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |

### `bigqueryconnection.projects.locations.connections.get`

**GET** `v1/{+name}`

Returns specified connection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the requested connection, for example: `projects/{project_id}/locations/{location_id}/connections/{... |

**Response**: `Connection`

```typescript
const res = await bigqueryconnection.connections.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigqueryconnection.projects.locations.connections.delete`

**DELETE** `v1/{+name}`

Deletes connection and associated credential.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the deleted connection, for example: `projects/{project_id}/locations/{location_id}/connections/{co... |

**Response**: `Empty`

```typescript
const res = await bigqueryconnection.connections.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigqueryconnection.projects.locations.connections.patch`

**PATCH** `v1/{+name}`

Updates the specified connection. For security reasons, also resets credential if connection properties are in the update field mask.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the connection to update, for example: `projects/{project_id}/locations/{location_id}/connections/{... |
| `updateMask` | `string` | query | No | Required. Update mask for the connection fields to be updated. |

**Request body**: `Connection`

**Response**: `Connection`

```typescript
const res = await bigqueryconnection.connections.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigqueryconnection.projects.locations.connections.create`

**POST** `v1/{+parent}/connections`

Creates a new connection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. Must be in the format `projects/{project_id}/locations/{location_id}` |
| `connectionId` | `string` | query | No | Optional. Connection id that should be assigned to the created connection. |

**Request body**: `Connection`

**Response**: `Connection`

```typescript
const res = await bigqueryconnection.connections.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigqueryconnection.projects.locations.connections.getIamPolicy`

**POST** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await bigqueryconnection.connections.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigqueryconnection.projects.locations.connections.list`

**GET** `v1/{+parent}/connections`

Returns a list of connections in the given project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. Must be in the form: `projects/{project_id}/locations/{location_id}` |
| `pageSize` | `integer` | query | No | Required. Page size. |
| `pageToken` | `string` | query | No | Page token. |

**Response**: `ListConnectionsResponse`

```typescript
const res = await bigqueryconnection.connections.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigqueryconnection.projects.locations.connections.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await bigqueryconnection.connections.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigqueryconnection.projects.locations.connections.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await bigqueryconnection.connections.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

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

### `AwsAccessRole`

Authentication method for Amazon Web Services (AWS) that uses Google owned Google service account to assume into customer's AWS IAM Role.

| Property | Type | Description |
|----------|------|-------------|
| `iamRoleId` | `string` | The user’s AWS IAM Role that trusts the Google-owned AWS IAM user Connection. |
| `identity` | `string` | A unique Google-owned and Google-generated identity for the Connection. This identity will be use... |

### `AwsProperties`

Connection properties specific to Amazon Web Services (AWS).

| Property | Type | Description |
|----------|------|-------------|
| `accessRole` | `AwsAccessRole` | Authentication using Google owned service account to assume into customer's AWS IAM Role. |

### `AzureProperties`

Container for connection properties specific to Azure.

| Property | Type | Description |
|----------|------|-------------|
| `application` | `string` | Output only. The name of the Azure Active Directory Application. |
| `clientId` | `string` | Output only. The client id of the Azure Active Directory Application. |
| `customerTenantId` | `string` | The id of customer's directory that host the data. |
| `federatedApplicationClientId` | `string` | The client ID of the user's Azure Active Directory Application used for a federated connection. |
| `identity` | `string` | Output only. A unique Google-owned and Google-generated identity for the Connection. This identit... |
| `objectId` | `string` | Output only. The object id of the Azure Active Directory Application. |
| `redirectUri` | `string` | The URL user will be redirected to after granting consent during connection setup. |

### `Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `CloudResourceProperties`

Container for connection properties for delegation of access to GCP resources.

| Property | Type | Description |
|----------|------|-------------|
| `serviceAccountId` | `string` | Output only. The account ID of the service created for the purpose of this connection. The servic... |

### `CloudSpannerProperties`

Connection properties specific to Cloud Spanner.

| Property | Type | Description |
|----------|------|-------------|
| `database` | `string` | Cloud Spanner database in the form `project/instance/database' |
| `databaseRole` | `string` | Optional. Cloud Spanner database role for fine-grained access control. The Cloud Spanner admin sh... |
| `maxParallelism` | `integer` | Allows setting max parallelism per query when executing on Spanner independent compute resources.... |
| `useDataBoost` | `boolean` | If set, the request will be executed via Spanner independent compute resources. REQUIRES: `use_pa... |
| `useParallelism` | `boolean` | If parallelism should be used when reading from Cloud Spanner |
| `useServerlessAnalytics` | `boolean` | Deprecated: prefer use_data_boost instead. If the serverless analytics service should be used to ... |

### `CloudSqlCredential`

Credential info for the Cloud SQL.

| Property | Type | Description |
|----------|------|-------------|
| `password` | `string` | The password for the credential. |
| `username` | `string` | The username for the credential. |

### `CloudSqlProperties`

Connection properties specific to the Cloud SQL.

| Property | Type | Description |
|----------|------|-------------|
| `credential` | `CloudSqlCredential` | Input only. Cloud SQL credential. |
| `database` | `string` | Database name. |
| `instanceId` | `string` | Cloud SQL instance ID in the form `project:location:instance`. |
| `serviceAccountId` | `string` | Output only. The account ID of the service used for the purpose of this connection. When the conn... |
| `type` | `string` | Type of the Cloud SQL database. |

### `Connection`

Configuration parameters to establish connection with an external data source, except the credential attributes.

| Property | Type | Description |
|----------|------|-------------|
| `aws` | `AwsProperties` | Amazon Web Services (AWS) properties. |
| `azure` | `AzureProperties` | Azure properties. |
| `cloudResource` | `CloudResourceProperties` | Cloud Resource properties. |
| `cloudSpanner` | `CloudSpannerProperties` | Cloud Spanner properties. |
| `cloudSql` | `CloudSqlProperties` | Cloud SQL properties. |
| `configuration` | `ConnectorConfiguration` | Optional. Connector configuration. |
| `creationTime` | `string` | Output only. The creation timestamp of the connection. |
| `description` | `string` | User provided description. |
| `friendlyName` | `string` | User provided display name for the connection. |
| `hasCredential` | `boolean` | Output only. True, if credential is configured for this connection. |
| `kmsKeyName` | `string` | Optional. The Cloud KMS key that is used for credentials encryption. If omitted, internal Google ... |
| `lastModifiedTime` | `string` | Output only. The last update timestamp of the connection. |
| `name` | `string` | Output only. The resource name of the connection in the form of: `projects/{project_id}/locations... |
| `salesforceDataCloud` | `SalesforceDataCloudProperties` | Optional. Salesforce DataCloud properties. This field is intended for use only by Salesforce part... |
| `spark` | `SparkProperties` | Spark properties. |

### `ConnectorConfiguration`

Represents concrete parameter values for Connector Configuration.

| Property | Type | Description |
|----------|------|-------------|
| `asset` | `ConnectorConfigurationAsset` | Data asset. |
| `authentication` | `ConnectorConfigurationAuthentication` | Client authentication. |
| `connectorId` | `string` | Required. Immutable. The ID of the Connector these parameters are configured for. |
| `endpoint` | `ConnectorConfigurationEndpoint` | Specifies how to reach the remote system this connection is pointing to. |
| `network` | `ConnectorConfigurationNetwork` | Networking configuration. |

### `ConnectorConfigurationAsset`

Data Asset - a resource within instance of the system, reachable under specified endpoint. For example a database name in a SQL DB.

| Property | Type | Description |
|----------|------|-------------|
| `database` | `string` | Name of the database. |
| `googleCloudResource` | `string` | Full Google Cloud resource name - https://cloud.google.com/apis/design/resource_names#full_resour... |

### `ConnectorConfigurationAuthentication`

Client authentication.

| Property | Type | Description |
|----------|------|-------------|
| `serviceAccount` | `string` | Output only. Google-managed service account associated with this connection, e.g., `service-{proj... |
| `usernamePassword` | `ConnectorConfigurationUsernamePassword` | Username/password authentication. |

### `ConnectorConfigurationEndpoint`

Remote endpoint specification.

| Property | Type | Description |
|----------|------|-------------|
| `hostPort` | `string` | Host and port in a format of `hostname:port` as defined in https://www.ietf.org/rfc/rfc3986.html#... |

### `ConnectorConfigurationNetwork`

Network related configuration.

| Property | Type | Description |
|----------|------|-------------|
| `privateServiceConnect` | `ConnectorConfigurationPrivateServiceConnect` | Private Service Connect networking configuration. |

### `ConnectorConfigurationPrivateServiceConnect`

Private Service Connect configuration.

| Property | Type | Description |
|----------|------|-------------|
| `networkAttachment` | `string` | Required. Network Attachment name in the format of `projects/{project}/regions/{region}/networkAt... |

### `ConnectorConfigurationSecret`

Secret value parameter.

| Property | Type | Description |
|----------|------|-------------|
| `plaintext` | `string` | Input only. Secret as plaintext. |
| `secretType` | `string` | Output only. Indicates type of secret. Can be used to check type of stored secret value even if i... |

### `ConnectorConfigurationUsernamePassword`

Username and Password authentication.

| Property | Type | Description |
|----------|------|-------------|
| `password` | `ConnectorConfigurationSecret` | Required. Password. |
| `username` | `string` | Required. Username. |

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

### `ListConnectionsResponse`

The response for ConnectionService.ListConnections.

| Property | Type | Description |
|----------|------|-------------|
| `connections` | `array<Connection>` | List of connections. |
| `nextPageToken` | `string` | Next page token. |

### `MetastoreServiceConfig`

Configuration of the Dataproc Metastore Service.

| Property | Type | Description |
|----------|------|-------------|
| `metastoreService` | `string` | Optional. Resource name of an existing Dataproc Metastore service. Example: * `projects/[project_... |

### `Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `auditConfigs` | `array<AuditConfig>` | Specifies cloud audit logging configuration for this policy. |
| `bindings` | `array<Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `SalesforceDataCloudProperties`

Connection properties specific to Salesforce DataCloud. This is intended for use only by Salesforce partner projects.

| Property | Type | Description |
|----------|------|-------------|
| `identity` | `string` | Output only. A unique Google-owned and Google-generated service account identity for the connection. |
| `instanceUri` | `string` | The URL to the user's Salesforce DataCloud instance. |
| `tenantId` | `string` | The ID of the user's Salesforce tenant. |

### `SetIamPolicyRequest`

Request message for `SetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `Policy` | REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited ... |
| `updateMask` | `string` | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mas... |

### `SparkHistoryServerConfig`

Configuration of the Spark History Server.

| Property | Type | Description |
|----------|------|-------------|
| `dataprocCluster` | `string` | Optional. Resource name of an existing Dataproc Cluster to act as a Spark History Server for the ... |

### `SparkProperties`

Container for connection properties to execute stored procedures for Apache Spark.

| Property | Type | Description |
|----------|------|-------------|
| `metastoreServiceConfig` | `MetastoreServiceConfig` | Optional. Dataproc Metastore Service configuration for the connection. |
| `serviceAccountId` | `string` | Output only. The account ID of the service created for the purpose of this connection. The servic... |
| `sparkHistoryServerConfig` | `SparkHistoryServerConfig` | Optional. Spark History Server configuration for the connection. |

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

