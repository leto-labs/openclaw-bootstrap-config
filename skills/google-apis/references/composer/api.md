# Cloud Composer API - API Reference

**Version**: `v1` | **Methods**: 29 | **Schemas**: 64

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `composer.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `composer.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `composer.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `composer.projects.locations.environments.create` | POST | `v1/{+parent}/environments` | Create a new environment. |
| `composer.projects.locations.environments.get` | GET | `v1/{+name}` | Get an existing environment. |
| `composer.projects.locations.environments.list` | GET | `v1/{+parent}/environments` | List environments. |
| `composer.projects.locations.environments.patch` | PATCH | `v1/{+name}` | Update an environment. |
| `composer.projects.locations.environments.delete` | DELETE | `v1/{+name}` | Delete an environment. |
| `composer.projects.locations.environments.restartWebServer` | POST | `v1/{+name}:restartWebServer` | Restart Airflow web server. |
| `composer.projects.locations.environments.executeAirflowCommand` | POST | `v1/{+environment}:executeAirflowCommand` | Executes Airflow CLI command. |
| `composer.projects.locations.environments.stopAirflowCommand` | POST | `v1/{+environment}:stopAirflowCommand` | Stops Airflow CLI command execution. |
| `composer.projects.locations.environments.pollAirflowCommand` | POST | `v1/{+environment}:pollAirflowCommand` | Polls Airflow CLI command execution and fetches logs. |
| `composer.projects.locations.environments.checkUpgrade` | POST | `v1/{+environment}:checkUpgrade` | Check if an upgrade operation on the environment will succeed. In case of problems detailed info ... |
| `composer.projects.locations.environments.saveSnapshot` | POST | `v1/{+environment}:saveSnapshot` | Creates a snapshots of a Cloud Composer environment. As a result of this operation, snapshot of e... |
| `composer.projects.locations.environments.loadSnapshot` | POST | `v1/{+environment}:loadSnapshot` | Loads a snapshot of a Cloud Composer environment. As a result of this operation, a snapshot of en... |
| `composer.projects.locations.environments.databaseFailover` | POST | `v1/{+environment}:databaseFailover` | Triggers database failover (only for highly resilient environments). |
| `composer.projects.locations.environments.fetchDatabaseProperties` | GET | `v1/{+environment}:fetchDatabaseProperties` | Fetches database properties. |
| `composer.projects.locations.environments.workloads.list` | GET | `v1/{+parent}/workloads` | Lists workloads in a Cloud Composer environment. Workload is a unit that runs a single Composer c... |
| `composer.projects.locations.environments.userWorkloadsSecrets.create` | POST | `v1/{+parent}/userWorkloadsSecrets` | Creates a user workloads Secret. This method is supported for Cloud Composer environments in vers... |
| `composer.projects.locations.environments.userWorkloadsSecrets.get` | GET | `v1/{+name}` | Gets an existing user workloads Secret. Values of the "data" field in the response are cleared. T... |
| `composer.projects.locations.environments.userWorkloadsSecrets.list` | GET | `v1/{+parent}/userWorkloadsSecrets` | Lists user workloads Secrets. This method is supported for Cloud Composer environments in version... |
| `composer.projects.locations.environments.userWorkloadsSecrets.update` | PUT | `v1/{+name}` | Updates a user workloads Secret. This method is supported for Cloud Composer environments in vers... |
| `composer.projects.locations.environments.userWorkloadsSecrets.delete` | DELETE | `v1/{+name}` | Deletes a user workloads Secret. This method is supported for Cloud Composer environments in vers... |
| `composer.projects.locations.environments.userWorkloadsConfigMaps.create` | POST | `v1/{+parent}/userWorkloadsConfigMaps` | Creates a user workloads ConfigMap. This method is supported for Cloud Composer environments in v... |
| `composer.projects.locations.environments.userWorkloadsConfigMaps.get` | GET | `v1/{+name}` | Gets an existing user workloads ConfigMap. This method is supported for Cloud Composer environmen... |
| `composer.projects.locations.environments.userWorkloadsConfigMaps.list` | GET | `v1/{+parent}/userWorkloadsConfigMaps` | Lists user workloads ConfigMaps. This method is supported for Cloud Composer environments in vers... |
| `composer.projects.locations.environments.userWorkloadsConfigMaps.update` | PUT | `v1/{+name}` | Updates a user workloads ConfigMap. This method is supported for Cloud Composer environments in v... |
| `composer.projects.locations.environments.userWorkloadsConfigMaps.delete` | DELETE | `v1/{+name}` | Deletes a user workloads ConfigMap. This method is supported for Cloud Composer environments in v... |
| `composer.projects.locations.imageVersions.list` | GET | `v1/{+parent}/imageVersions` | List ImageVersions for provided location. |

### `composer.projects.locations.operations.list`

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
const res = await composer.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudcomposer`

---

### `composer.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await composer.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudcomposer`

---

### `composer.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await composer.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudcomposer`

---

### `composer.projects.locations.environments.create`

**POST** `v1/{+parent}/environments`

Create a new environment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The parent must be of the form "projects/{projectId}/locations/{locationId}". |

**Request body**: `Environment`

**Response**: `Operation`

```typescript
const res = await composer.environments.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudcomposer`

---

### `composer.projects.locations.environments.get`

**GET** `v1/{+name}`

Get an existing environment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource name of the environment to get, in the form: "projects/{projectId}/locations/{locationId}/environments/{... |

**Response**: `Environment`

```typescript
const res = await composer.environments.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudcomposer`

---

### `composer.projects.locations.environments.list`

**GET** `v1/{+parent}/environments`

List environments.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | List environments in the given project and location, in the form: "projects/{projectId}/locations/{locationId}" |
| `pageSize` | `integer` | query | No | The maximum number of environments to return. |
| `pageToken` | `string` | query | No | The next_page_token value returned from a previous List request, if any. |

**Response**: `ListEnvironmentsResponse`

```typescript
const res = await composer.environments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudcomposer`

---

### `composer.projects.locations.environments.patch`

**PATCH** `v1/{+name}`

Update an environment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The relative resource name of the environment to update, in the form: "projects/{projectId}/locations/{locationId}/en... |
| `updateMask` | `string` | query | No | Required. A comma-separated list of paths, relative to `Environment`, of fields to update. For example, to set the ve... |

**Request body**: `Environment`

**Response**: `Operation`

```typescript
const res = await composer.environments.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudcomposer`

---

### `composer.projects.locations.environments.delete`

**DELETE** `v1/{+name}`

Delete an environment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The environment to delete, in the form: "projects/{projectId}/locations/{locationId}/environments/{environmentId}" |

**Response**: `Operation`

```typescript
const res = await composer.environments.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudcomposer`

---

### `composer.projects.locations.environments.restartWebServer`

**POST** `v1/{+name}:restartWebServer`

Restart Airflow web server.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the environment to restart the web server for, in the form: "projects/{projectId}/loca... |

**Request body**: `RestartWebServerRequest`

**Response**: `Operation`

```typescript
const res = await composer.environments.restartWebServer({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudcomposer`

---

### `composer.projects.locations.environments.executeAirflowCommand`

**POST** `v1/{+environment}:executeAirflowCommand`

Executes Airflow CLI command.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `environment` | `string` | path | Yes | The resource name of the environment in the form: "projects/{projectId}/locations/{locationId}/environments/{environm... |

**Request body**: `ExecuteAirflowCommandRequest`

**Response**: `ExecuteAirflowCommandResponse`

```typescript
const res = await composer.environments.executeAirflowCommand({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudcomposer`

---

### `composer.projects.locations.environments.stopAirflowCommand`

**POST** `v1/{+environment}:stopAirflowCommand`

Stops Airflow CLI command execution.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `environment` | `string` | path | Yes | The resource name of the environment in the form: "projects/{projectId}/locations/{locationId}/environments/{environm... |

**Request body**: `StopAirflowCommandRequest`

**Response**: `StopAirflowCommandResponse`

```typescript
const res = await composer.environments.stopAirflowCommand({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudcomposer`

---

### `composer.projects.locations.environments.pollAirflowCommand`

**POST** `v1/{+environment}:pollAirflowCommand`

Polls Airflow CLI command execution and fetches logs.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `environment` | `string` | path | Yes | The resource name of the environment in the form: "projects/{projectId}/locations/{locationId}/environments/{environm... |

**Request body**: `PollAirflowCommandRequest`

**Response**: `PollAirflowCommandResponse`

```typescript
const res = await composer.environments.pollAirflowCommand({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudcomposer`

---

### `composer.projects.locations.environments.checkUpgrade`

**POST** `v1/{+environment}:checkUpgrade`

Check if an upgrade operation on the environment will succeed. In case of problems detailed info can be found in the returned Operation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `environment` | `string` | path | Yes | Required. The resource name of the environment to check upgrade for, in the form: "projects/{projectId}/locations/{lo... |

**Request body**: `CheckUpgradeRequest`

**Response**: `Operation`

```typescript
const res = await composer.environments.checkUpgrade({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudcomposer`

---

### `composer.projects.locations.environments.saveSnapshot`

**POST** `v1/{+environment}:saveSnapshot`

Creates a snapshots of a Cloud Composer environment. As a result of this operation, snapshot of environment's state is stored in a location specified in the SaveSnapshotRequest.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `environment` | `string` | path | Yes | The resource name of the source environment in the form: "projects/{projectId}/locations/{locationId}/environments/{e... |

**Request body**: `SaveSnapshotRequest`

**Response**: `Operation`

```typescript
const res = await composer.environments.saveSnapshot({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudcomposer`

---

### `composer.projects.locations.environments.loadSnapshot`

**POST** `v1/{+environment}:loadSnapshot`

Loads a snapshot of a Cloud Composer environment. As a result of this operation, a snapshot of environment's specified in LoadSnapshotRequest is loaded into the environment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `environment` | `string` | path | Yes | The resource name of the target environment in the form: "projects/{projectId}/locations/{locationId}/environments/{e... |

**Request body**: `LoadSnapshotRequest`

**Response**: `Operation`

```typescript
const res = await composer.environments.loadSnapshot({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudcomposer`

---

### `composer.projects.locations.environments.databaseFailover`

**POST** `v1/{+environment}:databaseFailover`

Triggers database failover (only for highly resilient environments).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `environment` | `string` | path | Yes | Target environment: "projects/{projectId}/locations/{locationId}/environments/{environmentId}" |

**Request body**: `DatabaseFailoverRequest`

**Response**: `Operation`

```typescript
const res = await composer.environments.databaseFailover({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudcomposer`

---

### `composer.projects.locations.environments.fetchDatabaseProperties`

**GET** `v1/{+environment}:fetchDatabaseProperties`

Fetches database properties.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `environment` | `string` | path | Yes | Required. The resource name of the environment, in the form: "projects/{projectId}/locations/{locationId}/environment... |

**Response**: `FetchDatabasePropertiesResponse`

```typescript
const res = await composer.environments.fetchDatabaseProperties({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudcomposer`

---

### `composer.projects.locations.environments.workloads.list`

**GET** `v1/{+parent}/workloads`

Lists workloads in a Cloud Composer environment. Workload is a unit that runs a single Composer component. This method is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The environment name to get workloads for, in the form: "projects/{projectId}/locations/{locationId}/enviro... |
| `filter` | `string` | query | No | Optional. The list filter. Currently only supports equality on the type field. The value of a field specified in the ... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of environments to return. |
| `pageToken` | `string` | query | No | Optional. The next_page_token value returned from a previous List request, if any. |

**Response**: `ListWorkloadsResponse`

```typescript
const res = await composer.workloads.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudcomposer`

---

### `composer.projects.locations.environments.userWorkloadsSecrets.create`

**POST** `v1/{+parent}/userWorkloadsSecrets`

Creates a user workloads Secret. This method is supported for Cloud Composer environments in versions composer-3-airflow-*.*.*-build.* and newer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The environment name to create a Secret for, in the form: "projects/{projectId}/locations/{locationId}/envi... |

**Request body**: `UserWorkloadsSecret`

**Response**: `UserWorkloadsSecret`

```typescript
const res = await composer.userWorkloadsSecrets.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudcomposer`

---

### `composer.projects.locations.environments.userWorkloadsSecrets.get`

**GET** `v1/{+name}`

Gets an existing user workloads Secret. Values of the "data" field in the response are cleared. This method is supported for Cloud Composer environments in versions composer-3-airflow-*.*.*-build.* and newer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Secret to get, in the form: "projects/{projectId}/locations/{locationId}/environme... |

**Response**: `UserWorkloadsSecret`

```typescript
const res = await composer.userWorkloadsSecrets.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudcomposer`

---

### `composer.projects.locations.environments.userWorkloadsSecrets.list`

**GET** `v1/{+parent}/userWorkloadsSecrets`

Lists user workloads Secrets. This method is supported for Cloud Composer environments in versions composer-3-airflow-*.*.*-build.* and newer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. List Secrets in the given environment, in the form: "projects/{projectId}/locations/{locationId}/environmen... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of Secrets to return. |
| `pageToken` | `string` | query | No | Optional. The next_page_token value returned from a previous List request, if any. |

**Response**: `ListUserWorkloadsSecretsResponse`

```typescript
const res = await composer.userWorkloadsSecrets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudcomposer`

---

### `composer.projects.locations.environments.userWorkloadsSecrets.update`

**PUT** `v1/{+name}`

Updates a user workloads Secret. This method is supported for Cloud Composer environments in versions composer-3-airflow-*.*.*-build.* and newer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the Secret, in the form: "projects/{projectId}/locations/{locationId}/environments/{... |

**Request body**: `UserWorkloadsSecret`

**Response**: `UserWorkloadsSecret`

```typescript
const res = await composer.userWorkloadsSecrets.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudcomposer`

---

### `composer.projects.locations.environments.userWorkloadsSecrets.delete`

**DELETE** `v1/{+name}`

Deletes a user workloads Secret. This method is supported for Cloud Composer environments in versions composer-3-airflow-*.*.*-build.* and newer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The Secret to delete, in the form: "projects/{projectId}/locations/{locationId}/environments/{environmentId... |

**Response**: `Empty`

```typescript
const res = await composer.userWorkloadsSecrets.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudcomposer`

---

### `composer.projects.locations.environments.userWorkloadsConfigMaps.create`

**POST** `v1/{+parent}/userWorkloadsConfigMaps`

Creates a user workloads ConfigMap. This method is supported for Cloud Composer environments in versions composer-3-airflow-*.*.*-build.* and newer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The environment name to create a ConfigMap for, in the form: "projects/{projectId}/locations/{locationId}/e... |

**Request body**: `UserWorkloadsConfigMap`

**Response**: `UserWorkloadsConfigMap`

```typescript
const res = await composer.userWorkloadsConfigMaps.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudcomposer`

---

### `composer.projects.locations.environments.userWorkloadsConfigMaps.get`

**GET** `v1/{+name}`

Gets an existing user workloads ConfigMap. This method is supported for Cloud Composer environments in versions composer-3-airflow-*.*.*-build.* and newer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the ConfigMap to get, in the form: "projects/{projectId}/locations/{locationId}/enviro... |

**Response**: `UserWorkloadsConfigMap`

```typescript
const res = await composer.userWorkloadsConfigMaps.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudcomposer`

---

### `composer.projects.locations.environments.userWorkloadsConfigMaps.list`

**GET** `v1/{+parent}/userWorkloadsConfigMaps`

Lists user workloads ConfigMaps. This method is supported for Cloud Composer environments in versions composer-3-airflow-*.*.*-build.* and newer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. List ConfigMaps in the given environment, in the form: "projects/{projectId}/locations/{locationId}/environ... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of ConfigMaps to return. |
| `pageToken` | `string` | query | No | Optional. The next_page_token value returned from a previous List request, if any. |

**Response**: `ListUserWorkloadsConfigMapsResponse`

```typescript
const res = await composer.userWorkloadsConfigMaps.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudcomposer`

---

### `composer.projects.locations.environments.userWorkloadsConfigMaps.update`

**PUT** `v1/{+name}`

Updates a user workloads ConfigMap. This method is supported for Cloud Composer environments in versions composer-3-airflow-*.*.*-build.* and newer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the ConfigMap, in the form: "projects/{projectId}/locations/{locationId}/environment... |

**Request body**: `UserWorkloadsConfigMap`

**Response**: `UserWorkloadsConfigMap`

```typescript
const res = await composer.userWorkloadsConfigMaps.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudcomposer`

---

### `composer.projects.locations.environments.userWorkloadsConfigMaps.delete`

**DELETE** `v1/{+name}`

Deletes a user workloads ConfigMap. This method is supported for Cloud Composer environments in versions composer-3-airflow-*.*.*-build.* and newer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The ConfigMap to delete, in the form: "projects/{projectId}/locations/{locationId}/environments/{environmen... |

**Response**: `Empty`

```typescript
const res = await composer.userWorkloadsConfigMaps.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudcomposer`

---

### `composer.projects.locations.imageVersions.list`

**GET** `v1/{+parent}/imageVersions`

List ImageVersions for provided location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | List ImageVersions in the given project and location, in the form: "projects/{projectId}/locations/{locationId}" |
| `includePastReleases` | `boolean` | query | No | Whether or not image versions from old releases should be included. |
| `pageSize` | `integer` | query | No | The maximum number of image_versions to return. |
| `pageToken` | `string` | query | No | The next_page_token value returned from a previous List request, if any. |

**Response**: `ListImageVersionsResponse`

```typescript
const res = await composer.imageVersions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloudcomposer`

---

## Schemas

### `AirflowMetadataRetentionPolicyConfig`

The policy for airflow metadata database retention.

| Property | Type | Description |
|----------|------|-------------|
| `retentionDays` | `integer` | Optional. How many days data should be retained for. |
| `retentionMode` | `string` | Optional. Retention can be either enabled or disabled. |

### `AllowedIpRange`

Allowed IP range with user-provided description.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. User-provided description. It must contain at most 300 characters. |
| `value` | `string` | IP address or range, defined using CIDR notation, of requests that this rule applies to. Examples... |

### `CheckUpgradeRequest`

Request to check whether image upgrade will succeed.

| Property | Type | Description |
|----------|------|-------------|
| `imageVersion` | `string` | Optional. The version of the software running in the environment. This encapsulates both the vers... |

### `CheckUpgradeResponse`

Message containing information about the result of an upgrade check operation.

| Property | Type | Description |
|----------|------|-------------|
| `buildLogUri` | `string` | Output only. Url for a docker build log of an upgraded image. |
| `configConflicts` | `array<ConfigConflict>` | Output only. Contains information about environment configuration that is incompatible with the n... |
| `containsPypiModulesConflict` | `string` | Output only. Whether build has succeeded or failed on modules conflicts. |
| `imageVersion` | `string` | Composer image for which the build was happening. |
| `pypiConflictBuildLogExtract` | `string` | Output only. Extract from a docker image build log containing information about pypi modules conf... |
| `pypiDependencies` | `object` | Pypi dependencies specified in the environment configuration, at the time when the build was trig... |

### `CidrBlock`

CIDR block with an optional name.

| Property | Type | Description |
|----------|------|-------------|
| `cidrBlock` | `string` | CIDR block that must be specified in CIDR notation. |
| `displayName` | `string` | User-defined name that identifies the CIDR block. |

### `CloudDataLineageIntegration`

Configuration for Cloud Data Lineage integration.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Optional. Whether or not Cloud Data Lineage integration is enabled. |

### `ComposerWorkload`

Information about a single workload.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Name of a workload. |
| `status` | `ComposerWorkloadStatus` | Output only. Status of a workload. |
| `type` | `string` | Type of a workload. |

### `ComposerWorkloadStatus`

Workload status.

| Property | Type | Description |
|----------|------|-------------|
| `detailedStatusMessage` | `string` | Output only. Detailed message of the status. |
| `state` | `string` | Output only. Workload state. |
| `statusMessage` | `string` | Output only. Text to provide more descriptive status. |

### `ConfigConflict`

Environment configuration conflict.

| Property | Type | Description |
|----------|------|-------------|
| `message` | `string` | Conflict message. |
| `type` | `string` | Conflict type. It can be blocking or non-blocking. |

### `DagProcessorResource`

Configuration for resources used by Airflow DAG processors. This field is supported for Cloud Composer environments in versions composer-3-airflow-*.*.*-build.* and newer.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `integer` | Optional. The number of DAG processors. If not provided or set to 0, a single DAG processor insta... |
| `cpu` | `number` | Optional. CPU request and limit for a single Airflow DAG processor replica. |
| `memoryGb` | `number` | Optional. Memory (GB) request and limit for a single Airflow DAG processor replica. |
| `storageGb` | `number` | Optional. Storage (GB) request and limit for a single Airflow DAG processor replica. |

### `DataRetentionConfig`

The configuration setting for Airflow database data retention mechanism.

| Property | Type | Description |
|----------|------|-------------|
| `airflowMetadataRetentionConfig` | `AirflowMetadataRetentionPolicyConfig` | Optional. The retention policy for airflow metadata database. |
| `taskLogsRetentionConfig` | `TaskLogsRetentionConfig` | Optional. The configuration settings for task logs retention |

### `DatabaseConfig`

The configuration of Cloud SQL instance that is used by the Apache Airflow software.

| Property | Type | Description |
|----------|------|-------------|
| `machineType` | `string` | Optional. Cloud SQL machine type used by Airflow database. It has to be one of: db-n1-standard-2,... |
| `zone` | `string` | Optional. The Compute Engine zone where the Airflow database is created. If zone is provided, it ... |

### `DatabaseFailoverRequest`

Request to trigger database failover (only for highly resilient environments).

### `DatabaseFailoverResponse`

Response for DatabaseFailoverRequest.

### `Date`

Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by ... |
| `month` | `integer` | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `year` | `integer` | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `EncryptionConfig`

The encryption options for the Cloud Composer environment and its dependencies.Supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.

| Property | Type | Description |
|----------|------|-------------|
| `kmsKeyName` | `string` | Optional. Customer-managed Encryption Key available through Google's Key Management Service. Cann... |

### `Environment`

An environment for running orchestration tasks.

| Property | Type | Description |
|----------|------|-------------|
| `config` | `EnvironmentConfig` | Optional. Configuration parameters for this environment. |
| `createTime` | `string` | Output only. The time at which this environment was created. |
| `labels` | `object` | Optional. User-defined labels for this environment. The labels map can contain no more than 64 en... |
| `name` | `string` | Identifier. The resource name of the environment, in the form: "projects/{projectId}/locations/{l... |
| `satisfiesPzi` | `boolean` | Output only. Reserved for future use. |
| `satisfiesPzs` | `boolean` | Output only. Reserved for future use. |
| `state` | `string` | The current state of the environment. |
| `storageConfig` | `StorageConfig` | Optional. Storage configuration for this environment. |
| `updateTime` | `string` | Output only. The time at which this environment was last modified. |
| `uuid` | `string` | Output only. The UUID (Universally Unique IDentifier) associated with this environment. This valu... |

### `EnvironmentConfig`

Configuration information for an environment.

| Property | Type | Description |
|----------|------|-------------|
| `airflowByoidUri` | `string` | Output only. The 'bring your own identity' variant of the URI of the Apache Airflow Web UI hosted... |
| `airflowUri` | `string` | Output only. The URI of the Apache Airflow Web UI hosted within this environment (see [Airflow we... |
| `dagGcsPrefix` | `string` | Output only. The Cloud Storage prefix of the DAGs for this environment. Although Cloud Storage ob... |
| `dataRetentionConfig` | `DataRetentionConfig` | Optional. The configuration setting for Airflow database data retention mechanism. |
| `databaseConfig` | `DatabaseConfig` | Optional. The configuration settings for Cloud SQL instance used internally by Apache Airflow sof... |
| `encryptionConfig` | `EncryptionConfig` | Optional. The encryption options for the Cloud Composer environment and its dependencies. Cannot ... |
| `environmentSize` | `string` | Optional. The size of the Cloud Composer environment. This field is supported for Cloud Composer ... |
| `gkeCluster` | `string` | Output only. The Kubernetes Engine cluster used to run this environment. |
| `maintenanceWindow` | `MaintenanceWindow` | Optional. The maintenance window is the period when Cloud Composer components may undergo mainten... |
| `masterAuthorizedNetworksConfig` | `MasterAuthorizedNetworksConfig` | Optional. The configuration options for GKE cluster master authorized networks. By default master... |
| `nodeConfig` | `NodeConfig` | Optional. The configuration used for the Kubernetes Engine cluster. |
| `nodeCount` | `integer` | The number of nodes in the Kubernetes Engine cluster that will be used to run this environment. T... |
| `privateEnvironmentConfig` | `PrivateEnvironmentConfig` | Optional. The configuration used for the Private IP Cloud Composer environment. |
| `recoveryConfig` | `RecoveryConfig` | Optional. The Recovery settings configuration of an environment. This field is supported for Clou... |
| `resilienceMode` | `string` | Optional. Resilience mode of the Cloud Composer Environment. This field is supported for Cloud Co... |
| `softwareConfig` | `SoftwareConfig` | Optional. The configuration settings for software inside the environment. |
| `webServerConfig` | `WebServerConfig` | Optional. The configuration settings for the Airflow web server App Engine instance. |
| `webServerNetworkAccessControl` | `WebServerNetworkAccessControl` | Optional. The network-level access control policy for the Airflow web server. If unspecified, no ... |
| `workloadsConfig` | `WorkloadsConfig` | Optional. The workloads configuration settings for the GKE cluster associated with the Cloud Comp... |

### `ExecuteAirflowCommandRequest`

Execute Airflow Command request.

| Property | Type | Description |
|----------|------|-------------|
| `command` | `string` | Airflow command. |
| `parameters` | `array<string>` | Parameters for the Airflow command/subcommand as an array of arguments. It may contain positional... |
| `subcommand` | `string` | Airflow subcommand. |

### `ExecuteAirflowCommandResponse`

Response to ExecuteAirflowCommandRequest.

| Property | Type | Description |
|----------|------|-------------|
| `error` | `string` | Error message. Empty if there was no error. |
| `executionId` | `string` | The unique ID of the command execution for polling. |
| `pod` | `string` | The name of the pod where the command is executed. |
| `podNamespace` | `string` | The namespace of the pod where the command is executed. |

### `ExitInfo`

Information about how a command ended.

| Property | Type | Description |
|----------|------|-------------|
| `error` | `string` | Error message. Empty if there was no error. |
| `exitCode` | `integer` | The exit code from the command execution. |

### `FetchDatabasePropertiesResponse`

Response for FetchDatabasePropertiesRequest.

| Property | Type | Description |
|----------|------|-------------|
| `isFailoverReplicaAvailable` | `boolean` | The availability status of the failover replica. A false status indicates that the failover repli... |
| `primaryGceZone` | `string` | The Compute Engine zone that the instance is currently serving from. |
| `secondaryGceZone` | `string` | The Compute Engine zone that the failover instance is currently serving from for a regional Cloud... |

### `IPAllocationPolicy`

Configuration for controlling how IPs are allocated in the GKE cluster running the Apache Airflow software.

| Property | Type | Description |
|----------|------|-------------|
| `clusterIpv4CidrBlock` | `string` | Optional. The IP address range used to allocate IP addresses to pods in the GKE cluster. For Clou... |
| `clusterSecondaryRangeName` | `string` | Optional. The name of the GKE cluster's secondary range used to allocate IP addresses to pods. Fo... |
| `servicesIpv4CidrBlock` | `string` | Optional. The IP address range of the services IP addresses in this GKE cluster. For Cloud Compos... |
| `servicesSecondaryRangeName` | `string` | Optional. The name of the services' secondary range used to allocate IP addresses to the GKE clus... |
| `useIpAliases` | `boolean` | Optional. Whether or not to enable Alias IPs in the GKE cluster. If `true`, a VPC-native cluster ... |

### `ImageVersion`

ImageVersion information

| Property | Type | Description |
|----------|------|-------------|
| `creationDisabled` | `boolean` | Whether it is impossible to create an environment with the image version. |
| `imageVersionId` | `string` | The string identifier of the ImageVersion, in the form: "composer-x.y.z-airflow-a.b.c" |
| `isDefault` | `boolean` | Whether this is the default ImageVersion used by Composer during environment creation if no input... |
| `releaseDate` | `Date` | The date of the version release. |
| `supportedPythonVersions` | `array<string>` | supported python versions |
| `upgradeDisabled` | `boolean` | Whether it is impossible to upgrade an environment running with the image version. |

### `Line`

Contains information about a single line from logs.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | Text content of the log line. |
| `lineNumber` | `integer` | Number of the line. |

### `ListEnvironmentsResponse`

The environments in a project and location.

| Property | Type | Description |
|----------|------|-------------|
| `environments` | `array<Environment>` | The list of environments returned by a ListEnvironmentsRequest. |
| `nextPageToken` | `string` | The page token used to query for the next page if one exists. |

### `ListImageVersionsResponse`

The ImageVersions in a project and location.

| Property | Type | Description |
|----------|------|-------------|
| `imageVersions` | `array<ImageVersion>` | The list of supported ImageVersions in a location. |
| `nextPageToken` | `string` | The page token used to query for the next page if one exists. |

### `ListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<Operation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `ListUserWorkloadsConfigMapsResponse`

The user workloads ConfigMaps for a given environment.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The page token used to query for the next page if one exists. |
| `userWorkloadsConfigMaps` | `array<UserWorkloadsConfigMap>` | The list of ConfigMaps returned by a ListUserWorkloadsConfigMapsRequest. |

### `ListUserWorkloadsSecretsResponse`

The user workloads Secrets for a given environment.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The page token used to query for the next page if one exists. |
| `userWorkloadsSecrets` | `array<UserWorkloadsSecret>` | The list of Secrets returned by a ListUserWorkloadsSecretsRequest. |

### `ListWorkloadsResponse`

Response to ListWorkloadsRequest.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The page token used to query for the next page if one exists. |
| `workloads` | `array<ComposerWorkload>` | The list of environment workloads. |

### `LoadSnapshotRequest`

Request to load a snapshot into a Cloud Composer environment.

| Property | Type | Description |
|----------|------|-------------|
| `skipAirflowOverridesSetting` | `boolean` | Whether or not to skip setting Airflow overrides when loading the environment's state. |
| `skipEnvironmentVariablesSetting` | `boolean` | Whether or not to skip setting environment variables when loading the environment's state. |
| `skipGcsDataCopying` | `boolean` | Whether or not to skip copying Cloud Storage data when loading the environment's state. |
| `skipPypiPackagesInstallation` | `boolean` | Whether or not to skip installing Pypi packages when loading the environment's state. |
| `snapshotPath` | `string` | A Cloud Storage path to a snapshot to load, e.g.: "gs://my-bucket/snapshots/project_location_envi... |

### `LoadSnapshotResponse`

Response to LoadSnapshotRequest.

### `MaintenanceWindow`

The configuration settings for Cloud Composer maintenance window. The following example: ``` { "startTime":"2019-08-01T01:00:00Z" "endTime":"2019-08-01T07:00:00Z" "recurrence":"FREQ=WEEKLY;BYDAY=TU,WE" } ``` would define a maintenance window between 01 and 07 hours UTC during each Tuesday and Wednesday.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | Required. Maintenance window end time. It is used only to calculate the duration of the maintenan... |
| `recurrence` | `string` | Required. Maintenance window recurrence. Format is a subset of [RFC-5545](https://tools.ietf.org/... |
| `startTime` | `string` | Required. Start time of the first recurrence of the maintenance window. |

### `MasterAuthorizedNetworksConfig`

Configuration options for the master authorized networks feature. Enabled master authorized networks will disallow all external traffic to access Kubernetes master through HTTPS except traffic from the given CIDR blocks, Google Compute Engine Public IPs and Google Prod IPs.

| Property | Type | Description |
|----------|------|-------------|
| `cidrBlocks` | `array<CidrBlock>` | Up to 50 external networks that could access Kubernetes master through HTTPS. |
| `enabled` | `boolean` | Optional. Whether or not master authorized networks feature is enabled. |

### `NetworkingConfig`

Configuration options for networking connections in the Composer 2 environment.

| Property | Type | Description |
|----------|------|-------------|
| `connectionType` | `string` | Optional. Indicates the user requested specific connection type between Tenant and Customer proje... |

### `NodeConfig`

The configuration information for the Kubernetes Engine nodes running the Apache Airflow software.

| Property | Type | Description |
|----------|------|-------------|
| `composerInternalIpv4CidrBlock` | `string` | Optional. The IP range in CIDR notation to use internally by Cloud Composer. IP addresses are not... |
| `composerNetworkAttachment` | `string` | Optional. Network Attachment that Cloud Composer environment is connected to, which provides conn... |
| `diskSizeGb` | `integer` | Optional. The disk size in GB used for node VMs. Minimum size is 30GB. If unspecified, defaults t... |
| `enableIpMasqAgent` | `boolean` | Optional. Deploys 'ip-masq-agent' daemon set in the GKE cluster and defines nonMasqueradeCIDRs eq... |
| `ipAllocationPolicy` | `IPAllocationPolicy` | Optional. The configuration for controlling how IPs are allocated in the GKE cluster. |
| `location` | `string` | Optional. The Compute Engine [zone](/compute/docs/regions-zones) in which to deploy the VMs used ... |
| `machineType` | `string` | Optional. The Compute Engine [machine type](/compute/docs/machine-types) used for cluster instanc... |
| `network` | `string` | Optional. The Compute Engine network to be used for machine communications, specified as a [relat... |
| `oauthScopes` | `array<string>` | Optional. The set of Google API scopes to be made available on all node VMs. If `oauth_scopes` is... |
| `serviceAccount` | `string` | Optional. The Google Cloud Platform Service Account to be used by the node VMs. If a service acco... |
| `subnetwork` | `string` | Optional. The Compute Engine subnetwork to be used for machine communications, specified as a [re... |
| `tags` | `array<string>` | Optional. The list of instance tags applied to all node VMs. Tags are used to identify valid sour... |

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

Metadata describing an operation.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the operation was submitted to the server. |
| `endTime` | `string` | Output only. The time when the operation terminated, regardless of its success. This field is uns... |
| `operationType` | `string` | Output only. The type of operation being performed. |
| `resource` | `string` | Output only. The resource being operated on, as a [relative resource name]( /apis/design/resource... |
| `resourceUuid` | `string` | Output only. The UUID of the resource being operated on. |
| `state` | `string` | Output only. The current operation state. |

### `PollAirflowCommandRequest`

Poll Airflow Command request.

| Property | Type | Description |
|----------|------|-------------|
| `executionId` | `string` | The unique ID of the command execution. |
| `nextLineNumber` | `integer` | Line number from which new logs should be fetched. |
| `pod` | `string` | The name of the pod where the command is executed. |
| `podNamespace` | `string` | The namespace of the pod where the command is executed. |

### `PollAirflowCommandResponse`

Response to PollAirflowCommandRequest.

| Property | Type | Description |
|----------|------|-------------|
| `exitInfo` | `ExitInfo` | The result exit status of the command. |
| `output` | `array<Line>` | Output from the command execution. It may not contain the full output and the caller may need to ... |
| `outputEnd` | `boolean` | Whether the command execution has finished and there is no more output. |

### `PrivateClusterConfig`

Configuration options for the private GKE cluster in a Cloud Composer environment.

| Property | Type | Description |
|----------|------|-------------|
| `enablePrivateEndpoint` | `boolean` | Optional. If `true`, access to the public endpoint of the GKE cluster is denied. |
| `masterIpv4CidrBlock` | `string` | Optional. The CIDR block from which IPv4 range for GKE master will be reserved. If left blank, th... |
| `masterIpv4ReservedRange` | `string` | Output only. The IP range in CIDR notation to use for the hosted master network. This range is us... |

### `PrivateEnvironmentConfig`

The configuration information for configuring a Private IP Cloud Composer environment.

| Property | Type | Description |
|----------|------|-------------|
| `cloudComposerConnectionSubnetwork` | `string` | Optional. When specified, the environment will use Private Service Connect instead of VPC peering... |
| `cloudComposerNetworkIpv4CidrBlock` | `string` | Optional. The CIDR block from which IP range for Cloud Composer Network in tenant project will be... |
| `cloudComposerNetworkIpv4ReservedRange` | `string` | Output only. The IP range reserved for the tenant project's Cloud Composer network. This field is... |
| `cloudSqlIpv4CidrBlock` | `string` | Optional. The CIDR block from which IP range in tenant project will be reserved for Cloud SQL. Ne... |
| `enablePrivateBuildsOnly` | `boolean` | Optional. If `true`, builds performed during operations that install Python packages have only pr... |
| `enablePrivateEnvironment` | `boolean` | Optional. If `true`, a Private IP Cloud Composer environment is created. If this field is set to ... |
| `enablePrivatelyUsedPublicIps` | `boolean` | Optional. When enabled, IPs from public (non-RFC1918) ranges can be used for `IPAllocationPolicy.... |
| `networkingConfig` | `NetworkingConfig` | Optional. Configuration for the network connections configuration in the environment. |
| `networkingType` | `string` | Optional. Networking type for the environment, either private or public. |
| `privateClusterConfig` | `PrivateClusterConfig` | Optional. Configuration for the private GKE cluster for a Private IP Cloud Composer environment. |
| `webServerIpv4CidrBlock` | `string` | Optional. The CIDR block from which IP range for web server will be reserved. Needs to be disjoin... |
| `webServerIpv4ReservedRange` | `string` | Output only. The IP range reserved for the tenant project's App Engine VMs. This field is support... |

### `RecoveryConfig`

The Recovery settings of an environment.

| Property | Type | Description |
|----------|------|-------------|
| `scheduledSnapshotsConfig` | `ScheduledSnapshotsConfig` | Optional. The configuration for scheduled snapshot creation mechanism. |

### `RestartWebServerRequest`

Restart Airflow web server.

### `SaveSnapshotRequest`

Request to create a snapshot of a Cloud Composer environment.

| Property | Type | Description |
|----------|------|-------------|
| `snapshotLocation` | `string` | Location in a Cloud Storage where the snapshot is going to be stored, e.g.: "gs://my-bucket/snaps... |

### `SaveSnapshotResponse`

Response to SaveSnapshotRequest.

| Property | Type | Description |
|----------|------|-------------|
| `snapshotPath` | `string` | The fully-resolved Cloud Storage path of the created snapshot, e.g.: "gs://my-bucket/snapshots/pr... |

### `ScheduledSnapshotsConfig`

The configuration for scheduled snapshot creation mechanism.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Optional. Whether scheduled snapshots creation is enabled. |
| `snapshotCreationSchedule` | `string` | Optional. The cron expression representing the time when snapshots creation mechanism runs. This ... |
| `snapshotLocation` | `string` | Optional. The Cloud Storage location for storing automatically created snapshots. |
| `timeZone` | `string` | Optional. Time zone that sets the context to interpret snapshot_creation_schedule. |

### `SchedulerResource`

Configuration for resources used by Airflow schedulers.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `integer` | Optional. The number of schedulers. |
| `cpu` | `number` | Optional. CPU request and limit for a single Airflow scheduler replica. |
| `memoryGb` | `number` | Optional. Memory (GB) request and limit for a single Airflow scheduler replica. |
| `storageGb` | `number` | Optional. Storage (GB) request and limit for a single Airflow scheduler replica. |

### `SoftwareConfig`

Specifies the selection and configuration of software inside the environment.

| Property | Type | Description |
|----------|------|-------------|
| `airflowConfigOverrides` | `object` | Optional. Apache Airflow configuration properties to override. Property keys contain the section ... |
| `cloudDataLineageIntegration` | `CloudDataLineageIntegration` | Optional. The configuration for Cloud Data Lineage integration. |
| `envVariables` | `object` | Optional. Additional environment variables to provide to the Apache Airflow scheduler, worker, an... |
| `imageVersion` | `string` | Optional. The version of the software running in the environment. This encapsulates both the vers... |
| `pypiPackages` | `object` | Optional. Custom Python Package Index (PyPI) packages to be installed in the environment. Keys re... |
| `pythonVersion` | `string` | Optional. The major version of Python used to run the Apache Airflow scheduler, worker, and webse... |
| `schedulerCount` | `integer` | Optional. The number of schedulers for Airflow. This field is supported for Cloud Composer enviro... |
| `webServerPluginsMode` | `string` | Optional. Whether or not the web server uses custom plugins. If unspecified, the field defaults t... |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `StopAirflowCommandRequest`

Stop Airflow Command request.

| Property | Type | Description |
|----------|------|-------------|
| `executionId` | `string` | The unique ID of the command execution. |
| `force` | `boolean` | If true, the execution is terminated forcefully (SIGKILL). If false, the execution is stopped gra... |
| `pod` | `string` | The name of the pod where the command is executed. |
| `podNamespace` | `string` | The namespace of the pod where the command is executed. |

### `StopAirflowCommandResponse`

Response to StopAirflowCommandRequest.

| Property | Type | Description |
|----------|------|-------------|
| `isDone` | `boolean` | Whether the execution is still running. |
| `output` | `array<string>` | Output message from stopping execution request. |

### `StorageConfig`

The configuration for data storage in the environment.

| Property | Type | Description |
|----------|------|-------------|
| `bucket` | `string` | Optional. The name of the Cloud Storage bucket used by the environment. No `gs://` prefix. |

### `TaskLogsRetentionConfig`

The configuration setting for Task Logs.

| Property | Type | Description |
|----------|------|-------------|
| `storageMode` | `string` | Optional. The mode of storage for Airflow workers task logs. |

### `TriggererResource`

Configuration for resources used by Airflow triggerers.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `integer` | Optional. The number of triggerers. |
| `cpu` | `number` | Optional. CPU request and limit for a single Airflow triggerer replica. |
| `memoryGb` | `number` | Optional. Memory (GB) request and limit for a single Airflow triggerer replica. |

### `UserWorkloadsConfigMap`

User workloads ConfigMap used by Airflow tasks that run with Kubernetes executor or KubernetesPodOperator.

| Property | Type | Description |
|----------|------|-------------|
| `data` | `object` | Optional. The "data" field of Kubernetes ConfigMap, organized in key-value pairs. For details see... |
| `name` | `string` | Identifier. The resource name of the ConfigMap, in the form: "projects/{projectId}/locations/{loc... |

### `UserWorkloadsSecret`

User workloads Secret used by Airflow tasks that run with Kubernetes executor or KubernetesPodOperator.

| Property | Type | Description |
|----------|------|-------------|
| `data` | `object` | Optional. The "data" field of Kubernetes Secret, organized in key-value pairs, which can contain ... |
| `name` | `string` | Identifier. The resource name of the Secret, in the form: "projects/{projectId}/locations/{locati... |

### `WebServerConfig`

The configuration settings for the Airflow web server App Engine instance. Supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*

| Property | Type | Description |
|----------|------|-------------|
| `machineType` | `string` | Optional. Machine type on which Airflow web server is running. It has to be one of: composer-n1-w... |

### `WebServerNetworkAccessControl`

Network-level access control policy for the Airflow web server.

| Property | Type | Description |
|----------|------|-------------|
| `allowedIpRanges` | `array<AllowedIpRange>` | A collection of allowed IP ranges with descriptions. |

### `WebServerResource`

Configuration for resources used by Airflow web server.

| Property | Type | Description |
|----------|------|-------------|
| `cpu` | `number` | Optional. CPU request and limit for Airflow web server. |
| `memoryGb` | `number` | Optional. Memory (GB) request and limit for Airflow web server. |
| `storageGb` | `number` | Optional. Storage (GB) request and limit for Airflow web server. |

### `WorkerResource`

Configuration for resources used by Airflow workers.

| Property | Type | Description |
|----------|------|-------------|
| `cpu` | `number` | Optional. CPU request and limit for a single Airflow worker replica. |
| `maxCount` | `integer` | Optional. Maximum number of workers for autoscaling. |
| `memoryGb` | `number` | Optional. Memory (GB) request and limit for a single Airflow worker replica. |
| `minCount` | `integer` | Optional. Minimum number of workers for autoscaling. |
| `storageGb` | `number` | Optional. Storage (GB) request and limit for a single Airflow worker replica. |

### `WorkloadsConfig`

The Kubernetes workloads configuration for GKE cluster associated with the Cloud Composer environment. Supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.

| Property | Type | Description |
|----------|------|-------------|
| `dagProcessor` | `DagProcessorResource` | Optional. Resources used by Airflow DAG processors. This field is supported for Cloud Composer en... |
| `scheduler` | `SchedulerResource` | Optional. Resources used by Airflow schedulers. |
| `triggerer` | `TriggererResource` | Optional. Resources used by Airflow triggerers. |
| `webServer` | `WebServerResource` | Optional. Resources used by Airflow web server. |
| `worker` | `WorkerResource` | Optional. Resources used by Airflow workers. |

