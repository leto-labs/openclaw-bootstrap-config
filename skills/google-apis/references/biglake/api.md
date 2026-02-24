# BigLake API - API Reference

**Version**: `v1` | **Methods**: 24 | **Schemas**: 19

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `biglake.projects.locations.catalogs.get` | GET | `v1/{+name}` | Gets the catalog specified by the resource name. |
| `biglake.projects.locations.catalogs.create` | POST | `v1/{+parent}/catalogs` | Creates a new catalog. |
| `biglake.projects.locations.catalogs.delete` | DELETE | `v1/{+name}` | Deletes an existing catalog specified by the catalog ID. |
| `biglake.projects.locations.catalogs.list` | GET | `v1/{+parent}/catalogs` | List all catalogs in a specified project. |
| `biglake.projects.locations.catalogs.databases.create` | POST | `v1/{+parent}/databases` | Creates a new database. |
| `biglake.projects.locations.catalogs.databases.patch` | PATCH | `v1/{+name}` | Updates an existing database specified by the database ID. |
| `biglake.projects.locations.catalogs.databases.delete` | DELETE | `v1/{+name}` | Deletes an existing database specified by the database ID. |
| `biglake.projects.locations.catalogs.databases.list` | GET | `v1/{+parent}/databases` | List all databases in a specified catalog. |
| `biglake.projects.locations.catalogs.databases.get` | GET | `v1/{+name}` | Gets the database specified by the resource name. |
| `biglake.projects.locations.catalogs.databases.tables.patch` | PATCH | `v1/{+name}` | Updates an existing table specified by the table ID. |
| `biglake.projects.locations.catalogs.databases.tables.get` | GET | `v1/{+name}` | Gets the table specified by the resource name. |
| `biglake.projects.locations.catalogs.databases.tables.list` | GET | `v1/{+parent}/tables` | List all tables in a specified database. |
| `biglake.projects.locations.catalogs.databases.tables.rename` | POST | `v1/{+name}:rename` | Renames an existing table specified by the table ID. |
| `biglake.projects.locations.catalogs.databases.tables.delete` | DELETE | `v1/{+name}` | Deletes an existing table specified by the table ID. |
| `biglake.projects.locations.catalogs.databases.tables.create` | POST | `v1/{+parent}/tables` | Creates a new table. |
| `biglake.projects.catalogs.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Tests the IAM permissions for the specified catalog. |
| `biglake.projects.catalogs.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the IAM policy for the specified Catalog. |
| `biglake.projects.catalogs.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the IAM policy for the specified catalog. |
| `biglake.projects.catalogs.namespaces.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Tests the IAM permissions for the specified namespace. |
| `biglake.projects.catalogs.namespaces.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the IAM policy for the specified catalog. |
| `biglake.projects.catalogs.namespaces.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the IAM policy for the specified Catalog. |
| `biglake.projects.catalogs.namespaces.tables.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the IAM policy for the specified catalog. |
| `biglake.projects.catalogs.namespaces.tables.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Tests the IAM permissions for the specified table. |
| `biglake.projects.catalogs.namespaces.tables.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the IAM policy for the specified Catalog. |

### `biglake.projects.locations.catalogs.get`

**GET** `v1/{+name}`

Gets the catalog specified by the resource name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the catalog to retrieve. Format: projects/{project_id_or_number}/locations/{location_id}/catalo... |

**Response**: `Catalog`

```typescript
const res = await biglake.catalogs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `biglake.projects.locations.catalogs.create`

**POST** `v1/{+parent}/catalogs`

Creates a new catalog.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where this catalog will be created. Format: projects/{project_id_or_number}/locations/{... |
| `catalogId` | `string` | query | No | Required. The ID to use for the catalog, which will become the final component of the catalog's resource name. |

**Request body**: `Catalog`

**Response**: `Catalog`

```typescript
const res = await biglake.catalogs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `biglake.projects.locations.catalogs.delete`

**DELETE** `v1/{+name}`

Deletes an existing catalog specified by the catalog ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the catalog to delete. Format: projects/{project_id_or_number}/locations/{location_id}/catalogs... |

**Response**: `Catalog`

```typescript
const res = await biglake.catalogs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `biglake.projects.locations.catalogs.list`

**GET** `v1/{+parent}/catalogs`

List all catalogs in a specified project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of catalogs. Format: projects/{project_id_or_number}/locations/{loca... |
| `pageSize` | `integer` | query | No | The maximum number of catalogs to return. The service may return fewer than this value. If unspecified, at most 50 ca... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListCatalogs` call. Provide this to retrieve the subsequent page. When pagina... |

**Response**: `ListCatalogsResponse`

```typescript
const res = await biglake.catalogs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `biglake.projects.locations.catalogs.databases.create`

**POST** `v1/{+parent}/databases`

Creates a new database.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where this database will be created. Format: projects/{project_id_or_number}/locations/... |
| `databaseId` | `string` | query | No | Required. The ID to use for the database, which will become the final component of the database's resource name. |

**Request body**: `Database`

**Response**: `Database`

```typescript
const res = await biglake.databases.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `biglake.projects.locations.catalogs.databases.patch`

**PATCH** `v1/{+name}`

Updates an existing database specified by the database ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The resource name. Format: projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}... |
| `updateMask` | `string` | query | No | The list of fields to update. For the `FieldMask` definition, see https://developers.google.com/protocol-buffers/docs... |

**Request body**: `Database`

**Response**: `Database`

```typescript
const res = await biglake.databases.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `biglake.projects.locations.catalogs.databases.delete`

**DELETE** `v1/{+name}`

Deletes an existing database specified by the database ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the database to delete. Format: projects/{project_id_or_number}/locations/{location_id}/catalog... |

**Response**: `Database`

```typescript
const res = await biglake.databases.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `biglake.projects.locations.catalogs.databases.list`

**GET** `v1/{+parent}/databases`

List all databases in a specified catalog.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of databases. Format: projects/{project_id_or_number}/locations/{loc... |
| `pageSize` | `integer` | query | No | The maximum number of databases to return. The service may return fewer than this value. If unspecified, at most 50 d... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListDatabases` call. Provide this to retrieve the subsequent page. When pagin... |

**Response**: `ListDatabasesResponse`

```typescript
const res = await biglake.databases.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `biglake.projects.locations.catalogs.databases.get`

**GET** `v1/{+name}`

Gets the database specified by the resource name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the database to retrieve. Format: projects/{project_id_or_number}/locations/{location_id}/catal... |

**Response**: `Database`

```typescript
const res = await biglake.databases.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `biglake.projects.locations.catalogs.databases.tables.patch`

**PATCH** `v1/{+name}`

Updates an existing table specified by the table ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The resource name. Format: projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}... |
| `updateMask` | `string` | query | No | The list of fields to update. For the `FieldMask` definition, see https://developers.google.com/protocol-buffers/docs... |

**Request body**: `Table`

**Response**: `Table`

```typescript
const res = await biglake.tables.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `biglake.projects.locations.catalogs.databases.tables.get`

**GET** `v1/{+name}`

Gets the table specified by the resource name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the table to retrieve. Format: projects/{project_id_or_number}/locations/{location_id}/catalogs... |

**Response**: `Table`

```typescript
const res = await biglake.tables.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `biglake.projects.locations.catalogs.databases.tables.list`

**GET** `v1/{+parent}/tables`

List all tables in a specified database.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of tables. Format: projects/{project_id_or_number}/locations/{locati... |
| `pageSize` | `integer` | query | No | The maximum number of tables to return. The service may return fewer than this value. If unspecified, at most 50 tabl... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListTables` call. Provide this to retrieve the subsequent page. When paginati... |
| `view` | `string` | query | No | The view for the returned tables. |

**Response**: `ListTablesResponse`

```typescript
const res = await biglake.tables.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `biglake.projects.locations.catalogs.databases.tables.rename`

**POST** `v1/{+name}:rename`

Renames an existing table specified by the table ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The table's `name` field is used to identify the table to rename. Format: projects/{project_id_or_number}/l... |

**Request body**: `RenameTableRequest`

**Response**: `Table`

```typescript
const res = await biglake.tables.rename({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `biglake.projects.locations.catalogs.databases.tables.delete`

**DELETE** `v1/{+name}`

Deletes an existing table specified by the table ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the table to delete. Format: projects/{project_id_or_number}/locations/{location_id}/catalogs/{... |

**Response**: `Table`

```typescript
const res = await biglake.tables.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `biglake.projects.locations.catalogs.databases.tables.create`

**POST** `v1/{+parent}/tables`

Creates a new table.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where this table will be created. Format: projects/{project_id_or_number}/locations/{lo... |
| `tableId` | `string` | query | No | Required. The ID to use for the table, which will become the final component of the table's resource name. |

**Request body**: `Table`

**Response**: `Table`

```typescript
const res = await biglake.tables.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `biglake.projects.catalogs.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Tests the IAM permissions for the specified catalog.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await biglake.catalogs.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `biglake.projects.catalogs.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the IAM policy for the specified Catalog.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await biglake.catalogs.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `biglake.projects.catalogs.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the IAM policy for the specified catalog.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await biglake.catalogs.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `biglake.projects.catalogs.namespaces.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Tests the IAM permissions for the specified namespace.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await biglake.namespaces.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `biglake.projects.catalogs.namespaces.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the IAM policy for the specified catalog.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await biglake.namespaces.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `biglake.projects.catalogs.namespaces.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the IAM policy for the specified Catalog.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await biglake.namespaces.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `biglake.projects.catalogs.namespaces.tables.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the IAM policy for the specified catalog.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await biglake.tables.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `biglake.projects.catalogs.namespaces.tables.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Tests the IAM permissions for the specified table.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await biglake.tables.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `biglake.projects.catalogs.namespaces.tables.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the IAM policy for the specified Catalog.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await biglake.tables.getIamPolicy({
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

### `Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `Catalog`

Catalog is the container of databases.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The creation time of the catalog. |
| `deleteTime` | `string` | Output only. The deletion time of the catalog. Only set after the catalog is deleted. |
| `expireTime` | `string` | Output only. The time when this catalog is considered expired. Only set after the catalog is dele... |
| `name` | `string` | Output only. The resource name. Format: projects/{project_id_or_number}/locations/{location_id}/c... |
| `updateTime` | `string` | Output only. The last modification time of the catalog. |

### `Database`

Database is the container of tables.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The creation time of the database. |
| `deleteTime` | `string` | Output only. The deletion time of the database. Only set after the database is deleted. |
| `expireTime` | `string` | Output only. The time when this database is considered expired. Only set after the database is de... |
| `hiveOptions` | `HiveDatabaseOptions` | Options of a Hive database. |
| `name` | `string` | Output only. The resource name. Format: projects/{project_id_or_number}/locations/{location_id}/c... |
| `type` | `string` | The database type. |
| `updateTime` | `string` | Output only. The last modification time of the database. |

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `HiveDatabaseOptions`

Options of a Hive database.

| Property | Type | Description |
|----------|------|-------------|
| `locationUri` | `string` | Cloud Storage folder URI where the database data is stored, starting with "gs://". |
| `parameters` | `object` | Stores user supplied Hive database parameters. |

### `HiveTableOptions`

Options of a Hive table.

| Property | Type | Description |
|----------|------|-------------|
| `parameters` | `object` | Stores user supplied Hive table parameters. |
| `storageDescriptor` | `StorageDescriptor` | Stores physical storage information of the data. |
| `tableType` | `string` | Hive table type. For example, MANAGED_TABLE, EXTERNAL_TABLE. |

### `ListCatalogsResponse`

Response message for the ListCatalogs method.

| Property | Type | Description |
|----------|------|-------------|
| `catalogs` | `array<Catalog>` | The catalogs from the specified project. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `ListDatabasesResponse`

Response message for the ListDatabases method.

| Property | Type | Description |
|----------|------|-------------|
| `databases` | `array<Database>` | The databases from the specified catalog. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `ListTablesResponse`

Response message for the ListTables method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `tables` | `array<Table>` | The tables from the specified database. |

### `Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `auditConfigs` | `array<AuditConfig>` | Specifies cloud audit logging configuration for this policy. |
| `bindings` | `array<Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `RenameTableRequest`

Request message for the RenameTable method in MetastoreService

| Property | Type | Description |
|----------|------|-------------|
| `newName` | `string` | Required. The new `name` for the specified table, must be in the same database. Format: projects/... |

### `SerDeInfo`

Serializer and deserializer information.

| Property | Type | Description |
|----------|------|-------------|
| `serializationLib` | `string` | The fully qualified Java class name of the serialization library. |

### `SetIamPolicyRequest`

Request message for `SetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `Policy` | REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited ... |
| `updateMask` | `string` | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mas... |

### `StorageDescriptor`

Stores physical storage information of the data.

| Property | Type | Description |
|----------|------|-------------|
| `inputFormat` | `string` | The fully qualified Java class name of the input format. |
| `locationUri` | `string` | Cloud Storage folder URI where the table data is stored, starting with "gs://". |
| `outputFormat` | `string` | The fully qualified Java class name of the output format. |
| `serdeInfo` | `SerDeInfo` | Serializer and deserializer information. |

### `Table`

Represents a table.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The creation time of the table. |
| `deleteTime` | `string` | Output only. The deletion time of the table. Only set after the table is deleted. |
| `etag` | `string` | The checksum of a table object computed by the server based on the value of other fields. It may ... |
| `expireTime` | `string` | Output only. The time when this table is considered expired. Only set after the table is deleted. |
| `hiveOptions` | `HiveTableOptions` | Options of a Hive table. |
| `name` | `string` | Output only. The resource name. Format: projects/{project_id_or_number}/locations/{location_id}/c... |
| `type` | `string` | The table type. |
| `updateTime` | `string` | Output only. The last modification time of the table. |

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

