# Apps Script API - API Reference

**Version**: `v1` | **Methods**: 16 | **Schemas**: 31

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `script.processes.listScriptProcesses` | GET | `v1/processes:listScriptProcesses` | List information about a script's executed processes, such as process type and current status. |
| `script.processes.list` | GET | `v1/processes` | List information about processes made by or on behalf of a user, such as process type and current... |
| `script.projects.get` | GET | `v1/projects/{scriptId}` | Gets a script project's metadata. |
| `script.projects.updateContent` | PUT | `v1/projects/{scriptId}/content` | Updates the content of the specified script project. This content is stored as the HEAD version, ... |
| `script.projects.getMetrics` | GET | `v1/projects/{scriptId}/metrics` | Get metrics data for scripts, such as number of executions and active users. |
| `script.projects.create` | POST | `v1/projects` | Creates a new, empty script project with no script files and a base manifest file. |
| `script.projects.getContent` | GET | `v1/projects/{scriptId}/content` | Gets the content of the script project, including the code source and metadata for each script file. |
| `script.projects.deployments.get` | GET | `v1/projects/{scriptId}/deployments/{deploymentId}` | Gets a deployment of an Apps Script project. |
| `script.projects.deployments.list` | GET | `v1/projects/{scriptId}/deployments` | Lists the deployments of an Apps Script project. |
| `script.projects.deployments.create` | POST | `v1/projects/{scriptId}/deployments` | Creates a deployment of an Apps Script project. |
| `script.projects.deployments.update` | PUT | `v1/projects/{scriptId}/deployments/{deploymentId}` | Updates a deployment of an Apps Script project. |
| `script.projects.deployments.delete` | DELETE | `v1/projects/{scriptId}/deployments/{deploymentId}` | Deletes a deployment of an Apps Script project. |
| `script.projects.versions.get` | GET | `v1/projects/{scriptId}/versions/{versionNumber}` | Gets a version of a script project. |
| `script.projects.versions.list` | GET | `v1/projects/{scriptId}/versions` | List the versions of a script project. |
| `script.projects.versions.create` | POST | `v1/projects/{scriptId}/versions` | Creates a new immutable version using the current code, with a unique version number. |
| `script.scripts.run` | POST | `v1/scripts/{scriptId}:run` |  |

### `script.processes.listScriptProcesses`

**GET** `v1/processes:listScriptProcesses`

List information about a script's executed processes, such as process type and current status.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pageSize` | `integer` | query | No | The maximum number of returned processes per page of results. Defaults to 50. |
| `pageToken` | `string` | query | No | The token for continuing a previous list request on the next page. This should be set to the value of `nextPageToken`... |
| `scriptId` | `string` | query | No | The script ID of the project whose processes are listed. |
| `scriptProcessFilter.deploymentId` | `string` | query | No | Optional field used to limit returned processes to those originating from projects with a specific deployment ID. |
| `scriptProcessFilter.endTime` | `string` | query | No | Optional field used to limit returned processes to those that completed on or before the given timestamp. |
| `scriptProcessFilter.functionName` | `string` | query | No | Optional field used to limit returned processes to those originating from a script function with the given function n... |
| `scriptProcessFilter.startTime` | `string` | query | No | Optional field used to limit returned processes to those that were started on or after the given timestamp. |
| `scriptProcessFilter.statuses` | `string` | query | No | Optional field used to limit returned processes to those having one of the specified process statuses. |
| `scriptProcessFilter.types` | `string` | query | No | Optional field used to limit returned processes to those having one of the specified process types. |
| `scriptProcessFilter.userAccessLevels` | `string` | query | No | Optional field used to limit returned processes to those having one of the specified user access levels. |

**Response**: `ListScriptProcessesResponse`

```typescript
const res = await script.processes.listScriptProcesses({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/script.processes`

---

### `script.processes.list`

**GET** `v1/processes`

List information about processes made by or on behalf of a user, such as process type and current status.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pageSize` | `integer` | query | No | The maximum number of returned processes per page of results. Defaults to 50. |
| `pageToken` | `string` | query | No | The token for continuing a previous list request on the next page. This should be set to the value of `nextPageToken`... |
| `userProcessFilter.deploymentId` | `string` | query | No | Optional field used to limit returned processes to those originating from projects with a specific deployment ID. |
| `userProcessFilter.endTime` | `string` | query | No | Optional field used to limit returned processes to those that completed on or before the given timestamp. |
| `userProcessFilter.functionName` | `string` | query | No | Optional field used to limit returned processes to those originating from a script function with the given function n... |
| `userProcessFilter.projectName` | `string` | query | No | Optional field used to limit returned processes to those originating from projects with project names containing a sp... |
| `userProcessFilter.scriptId` | `string` | query | No | Optional field used to limit returned processes to those originating from projects with a specific script ID. |
| `userProcessFilter.startTime` | `string` | query | No | Optional field used to limit returned processes to those that were started on or after the given timestamp. |
| `userProcessFilter.statuses` | `string` | query | No | Optional field used to limit returned processes to those having one of the specified process statuses. |
| `userProcessFilter.types` | `string` | query | No | Optional field used to limit returned processes to those having one of the specified process types. |
| `userProcessFilter.userAccessLevels` | `string` | query | No | Optional field used to limit returned processes to those having one of the specified user access levels. |

**Response**: `ListUserProcessesResponse`

```typescript
const res = await script.processes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/script.processes`

---

### `script.projects.get`

**GET** `v1/projects/{scriptId}`

Gets a script project's metadata.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `scriptId` | `string` | path | Yes | The script project's Drive ID. |

**Response**: `Project`

```typescript
const res = await script.projects.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/script.projects`
- `https://www.googleapis.com/auth/script.projects.readonly`

---

### `script.projects.updateContent`

**PUT** `v1/projects/{scriptId}/content`

Updates the content of the specified script project. This content is stored as the HEAD version, and is used when the script is executed as a trigger, in the script editor, in add-on preview mode, or as a web app or Apps Script API in development mode. This clears all the existing files in the project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `scriptId` | `string` | path | Yes | The script project's Drive ID. |

**Request body**: `Content`

**Response**: `Content`

```typescript
const res = await script.projects.updateContent({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/script.projects`

---

### `script.projects.getMetrics`

**GET** `v1/projects/{scriptId}/metrics`

Get metrics data for scripts, such as number of executions and active users.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `scriptId` | `string` | path | Yes | Required field indicating the script to get metrics for. |
| `metricsFilter.deploymentId` | `string` | query | No | Optional field indicating a specific deployment to retrieve metrics from. |
| `metricsGranularity` | `string` | query | No | Required field indicating what granularity of metrics are returned. |

**Response**: `Metrics`

```typescript
const res = await script.projects.getMetrics({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/script.metrics`

---

### `script.projects.create`

**POST** `v1/projects`

Creates a new, empty script project with no script files and a base manifest file.

**Request body**: `CreateProjectRequest`

**Response**: `Project`

```typescript
const res = await script.projects.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/script.projects`

---

### `script.projects.getContent`

**GET** `v1/projects/{scriptId}/content`

Gets the content of the script project, including the code source and metadata for each script file.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `scriptId` | `string` | path | Yes | The script project's Drive ID. |
| `versionNumber` | `integer` | query | No | The version number of the project to retrieve. If not provided, the project's HEAD version is returned. |

**Response**: `Content`

```typescript
const res = await script.projects.getContent({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/script.projects`
- `https://www.googleapis.com/auth/script.projects.readonly`

---

### `script.projects.deployments.get`

**GET** `v1/projects/{scriptId}/deployments/{deploymentId}`

Gets a deployment of an Apps Script project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `scriptId` | `string` | path | Yes | The script project's Drive ID. |
| `deploymentId` | `string` | path | Yes | The deployment ID. |

**Response**: `Deployment`

```typescript
const res = await script.deployments.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/script.deployments`
- `https://www.googleapis.com/auth/script.deployments.readonly`

---

### `script.projects.deployments.list`

**GET** `v1/projects/{scriptId}/deployments`

Lists the deployments of an Apps Script project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `scriptId` | `string` | path | Yes | The script project's Drive ID. |
| `pageSize` | `integer` | query | No | The maximum number of deployments on each returned page. Defaults to 50. |
| `pageToken` | `string` | query | No | The token for continuing a previous list request on the next page. This should be set to the value of `nextPageToken`... |

**Response**: `ListDeploymentsResponse`

```typescript
const res = await script.deployments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/script.deployments`
- `https://www.googleapis.com/auth/script.deployments.readonly`

---

### `script.projects.deployments.create`

**POST** `v1/projects/{scriptId}/deployments`

Creates a deployment of an Apps Script project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `scriptId` | `string` | path | Yes | The script project's Drive ID. |

**Request body**: `DeploymentConfig`

**Response**: `Deployment`

```typescript
const res = await script.deployments.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/script.deployments`

---

### `script.projects.deployments.update`

**PUT** `v1/projects/{scriptId}/deployments/{deploymentId}`

Updates a deployment of an Apps Script project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `scriptId` | `string` | path | Yes | The script project's Drive ID. |
| `deploymentId` | `string` | path | Yes | The deployment ID for this deployment. |

**Request body**: `UpdateDeploymentRequest`

**Response**: `Deployment`

```typescript
const res = await script.deployments.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/script.deployments`

---

### `script.projects.deployments.delete`

**DELETE** `v1/projects/{scriptId}/deployments/{deploymentId}`

Deletes a deployment of an Apps Script project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `scriptId` | `string` | path | Yes | The script project's Drive ID. |
| `deploymentId` | `string` | path | Yes | The deployment ID to be undeployed. |

**Response**: `Empty`

```typescript
const res = await script.deployments.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/script.deployments`

---

### `script.projects.versions.get`

**GET** `v1/projects/{scriptId}/versions/{versionNumber}`

Gets a version of a script project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `scriptId` | `string` | path | Yes | The script project's Drive ID. |
| `versionNumber` | `integer` | path | Yes | The version number. |

**Response**: `Version`

```typescript
const res = await script.versions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/script.projects`
- `https://www.googleapis.com/auth/script.projects.readonly`

---

### `script.projects.versions.list`

**GET** `v1/projects/{scriptId}/versions`

List the versions of a script project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `scriptId` | `string` | path | Yes | The script project's Drive ID. |
| `pageSize` | `integer` | query | No | The maximum number of versions on each returned page. Defaults to 50. |
| `pageToken` | `string` | query | No | The token for continuing a previous list request on the next page. This should be set to the value of `nextPageToken`... |

**Response**: `ListVersionsResponse`

```typescript
const res = await script.versions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/script.projects`
- `https://www.googleapis.com/auth/script.projects.readonly`

---

### `script.projects.versions.create`

**POST** `v1/projects/{scriptId}/versions`

Creates a new immutable version using the current code, with a unique version number.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `scriptId` | `string` | path | Yes | The script project's Drive ID. |

**Request body**: `Version`

**Response**: `Version`

```typescript
const res = await script.versions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/script.projects`

---

### `script.scripts.run`

**POST** `v1/scripts/{scriptId}:run`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `scriptId` | `string` | path | Yes | The script ID of the script to be executed. Find the script ID on the **Project settings** page under "IDs." As multi... |

**Request body**: `ExecutionRequest`

**Response**: `Operation`

```typescript
const res = await script.scripts.run({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.google.com/calendar/feeds`
- `https://www.google.com/m8/feeds`
- `https://www.googleapis.com/auth/admin.directory.group`
- `https://www.googleapis.com/auth/admin.directory.user`
- `https://www.googleapis.com/auth/documents`
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/forms`
- `https://www.googleapis.com/auth/forms.currentonly`
- `https://www.googleapis.com/auth/groups`
- `https://www.googleapis.com/auth/spreadsheets`
- `https://www.googleapis.com/auth/userinfo.email`

---

## Schemas

### `Content`

The Content resource.

| Property | Type | Description |
|----------|------|-------------|
| `files` | `array<File>` | The list of script project files. One of the files is a script manifest; it must be named "appssc... |
| `scriptId` | `string` | The script project's Drive ID. |

### `CreateProjectRequest`

Request to create a script project.

| Property | Type | Description |
|----------|------|-------------|
| `parentId` | `string` | The Drive ID of a parent file that the created script project is bound to. This is usually the ID... |
| `title` | `string` | The title for the project. |

### `Deployment`

Representation of a single script deployment.

| Property | Type | Description |
|----------|------|-------------|
| `deploymentConfig` | `DeploymentConfig` | The deployment configuration. |
| `deploymentId` | `string` | The deployment ID for this deployment. |
| `entryPoints` | `array<EntryPoint>` | The deployment's entry points. |
| `updateTime` | `string` | Last modified date time stamp. |

### `DeploymentConfig`

Metadata the defines how a deployment is configured.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | The description for this deployment. |
| `manifestFileName` | `string` | The manifest file name for this deployment. |
| `scriptId` | `string` | The script project's Drive ID. |
| `versionNumber` | `integer` | The version number on which this deployment is based. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `EntryPoint`

A configuration that defines how a deployment is accessed externally.

| Property | Type | Description |
|----------|------|-------------|
| `addOn` | `GoogleAppsScriptTypeAddOnEntryPoint` | Add-on properties. |
| `entryPointType` | `string` | The type of the entry point. |
| `executionApi` | `GoogleAppsScriptTypeExecutionApiEntryPoint` | An entry point specification for Apps Script API execution calls. |
| `webApp` | `GoogleAppsScriptTypeWebAppEntryPoint` | An entry point specification for web apps. |

### `ExecutionError`

An object that provides information about the nature of an error resulting from an attempted execution of a script function using the Apps Script API. If a run call succeeds but the script function (or Apps Script itself) throws an exception, the response body's error field contains a Status object. The `Status` object's `details` field contains an array with a single one of these `ExecutionError` objects.

| Property | Type | Description |
|----------|------|-------------|
| `errorMessage` | `string` | The error message thrown by Apps Script, usually localized into the user's language. |
| `errorType` | `string` | The error type, for example `TypeError` or `ReferenceError`. If the error type is unavailable, th... |
| `scriptStackTraceElements` | `array<ScriptStackTraceElement>` | An array of objects that provide a stack trace through the script to show where the execution fai... |

### `ExecutionRequest`

A request to run the function in a script. The script is identified by the specified `script_id`. Executing a function on a script returns results based on the implementation of the script.

| Property | Type | Description |
|----------|------|-------------|
| `devMode` | `boolean` | If `true` and the user is an owner of the script, the script runs at the most recently saved vers... |
| `function` | `string` | The name of the function to execute in the given script. The name does not include parentheses or... |
| `parameters` | `array<any>` | The parameters to be passed to the function being executed. The object type for each parameter sh... |
| `sessionState` | `string` | *Deprecated*. For use with Android add-ons only. An ID that represents the user's current session... |

### `ExecutionResponse`

An object that provides the return value of a function executed using the Apps Script API. If the script function returns successfully, the response body's response field contains this `ExecutionResponse` object.

| Property | Type | Description |
|----------|------|-------------|
| `result` | `any` | The return value of the script function. The type matches the object type returned in Apps Script... |

### `File`

An individual file within a script project. A file is a third-party source code created by one or more developers. It can be a server-side JS code, HTML, or a configuration file. Each script project can contain multiple files.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Creation date timestamp. |
| `functionSet` | `GoogleAppsScriptTypeFunctionSet` | The defined set of functions in the script file, if any. |
| `lastModifyUser` | `GoogleAppsScriptTypeUser` | The user who modified the file most recently. The details visible in this object are controlled b... |
| `name` | `string` | The name of the file. The file extension is not part of the file name, which can be identified fr... |
| `source` | `string` | The file content. |
| `type` | `string` | The type of the file. |
| `updateTime` | `string` | Last modified date timestamp. |

### `GoogleAppsScriptTypeAddOnEntryPoint`

An add-on entry point.

| Property | Type | Description |
|----------|------|-------------|
| `addOnType` | `string` | The add-on's required list of supported container types. |
| `description` | `string` | The add-on's optional description. |
| `helpUrl` | `string` | The add-on's optional help URL. |
| `postInstallTipUrl` | `string` | The add-on's required post install tip URL. |
| `reportIssueUrl` | `string` | The add-on's optional report issue URL. |
| `title` | `string` | The add-on's required title. |

### `GoogleAppsScriptTypeExecutionApiConfig`

API executable entry point configuration.

| Property | Type | Description |
|----------|------|-------------|
| `access` | `string` | Who has permission to run the API executable. |

### `GoogleAppsScriptTypeExecutionApiEntryPoint`

An API executable entry point.

| Property | Type | Description |
|----------|------|-------------|
| `entryPointConfig` | `GoogleAppsScriptTypeExecutionApiConfig` | The entry point's configuration. |

### `GoogleAppsScriptTypeFunction`

Represents a function in a script project.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The function name in the script project. |
| `parameters` | `array<string>` | The ordered list of parameter names of the function in the script project. |

### `GoogleAppsScriptTypeFunctionSet`

A set of functions. No duplicates are permitted.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<GoogleAppsScriptTypeFunction>` | A list of functions composing the set. |

### `GoogleAppsScriptTypeProcess`

Representation of a single script process execution that was started from the script editor, a trigger, an application, or using the Apps Script API. This is distinct from the `Operation` resource, which only represents executions started via the Apps Script API.

| Property | Type | Description |
|----------|------|-------------|
| `duration` | `string` | Duration the execution spent executing. |
| `functionName` | `string` | Name of the function the started the execution. |
| `processStatus` | `string` | The executions status. |
| `processType` | `string` | The executions type. |
| `projectName` | `string` | Name of the script being executed. |
| `runtimeVersion` | `string` | Which version of maestro to use to execute the script. |
| `startTime` | `string` | Time the execution started. |
| `userAccessLevel` | `string` | The executing users access level to the script. |

### `GoogleAppsScriptTypeUser`

A simple user profile resource.

| Property | Type | Description |
|----------|------|-------------|
| `domain` | `string` | The user's domain. |
| `email` | `string` | The user's identifying email address. |
| `name` | `string` | The user's display name. |
| `photoUrl` | `string` | The user's photo. |

### `GoogleAppsScriptTypeWebAppConfig`

Web app entry point configuration.

| Property | Type | Description |
|----------|------|-------------|
| `access` | `string` | Who has permission to run the web app. |
| `executeAs` | `string` | Who to execute the web app as. |

### `GoogleAppsScriptTypeWebAppEntryPoint`

A web application entry point.

| Property | Type | Description |
|----------|------|-------------|
| `entryPointConfig` | `GoogleAppsScriptTypeWebAppConfig` | The entry point's configuration. |
| `url` | `string` | The URL for the web application. |

### `ListDeploymentsResponse`

Response with the list of deployments for the specified Apps Script project.

| Property | Type | Description |
|----------|------|-------------|
| `deployments` | `array<Deployment>` | The list of deployments. |
| `nextPageToken` | `string` | The token that can be used in the next call to get the next page of results. |

### `ListScriptProcessesResponse`

Response with the list of Process resources.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token for the next page of results. If empty, there are no more pages remaining. |
| `processes` | `array<GoogleAppsScriptTypeProcess>` | List of processes matching request parameters. |

### `ListUserProcessesResponse`

Response with the list of Process resources.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token for the next page of results. If empty, there are no more pages remaining. |
| `processes` | `array<GoogleAppsScriptTypeProcess>` | List of processes matching request parameters. |

### `ListVersionsResponse`

Response with the list of the versions for the specified script project.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The token use to fetch the next page of records. if not exist in the response, that means no more... |
| `versions` | `array<Version>` | The list of versions. |

### `Metrics`

Resource containing usage stats for a given script, based on the supplied filter and mask present in the request.

| Property | Type | Description |
|----------|------|-------------|
| `activeUsers` | `array<MetricsValue>` | Number of active users. |
| `failedExecutions` | `array<MetricsValue>` | Number of failed executions. |
| `totalExecutions` | `array<MetricsValue>` | Number of total executions. |

### `MetricsValue`

Metrics value that holds number of executions counted.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | Required field indicating the end time of the interval. |
| `startTime` | `string` | Required field indicating the start time of the interval. |
| `value` | `string` | Indicates the number of executions counted. |

### `Operation`

A representation of an execution of an Apps Script function started with run. The execution response does not arrive until the function finishes executing. The maximum execution runtime is listed in the [Apps Script quotas guide](/apps-script/guides/services/quotas#current_limitations). After execution has started, it can have one of four outcomes: - If the script function returns successfully, the response field contains an ExecutionResponse object with the function's return value in the object's `result` field. - If the script function (or Apps Script itself) throws an exception, the error field contains a Status object. The `Status` object's `details` field contains an array with a single ExecutionError object that provides information about the nature of the error. - If the execution has not yet completed, the done field is `false` and the neither the `response` nor `error` fields are present. - If the `run` call itself fails (for example, because of a malformed request or an authorization error), the method returns an HTTP response code in the 4XX range with a different format for the response body. Client libraries automatically convert a 4XX response into an exception class.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | This field indicates whether the script execution has completed. A completed execution has a popu... |
| `error` | `Status` | If a `run` call succeeds but the script function (or Apps Script itself) throws an exception, thi... |
| `response` | `object` | If the script function returns successfully, this field contains an ExecutionResponse object with... |

### `Project`

The script project resource.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | When the script was created. |
| `creator` | `GoogleAppsScriptTypeUser` | User who originally created the script. |
| `lastModifyUser` | `GoogleAppsScriptTypeUser` | User who last modified the script. |
| `parentId` | `string` | The parent's Drive ID that the script will be attached to. This is usually the ID of a Google Doc... |
| `scriptId` | `string` | The script project's Drive ID. |
| `title` | `string` | The title for the project. |
| `updateTime` | `string` | When the script was last updated. |

### `ScriptStackTraceElement`

A stack trace through the script that shows where the execution failed.

| Property | Type | Description |
|----------|------|-------------|
| `function` | `string` | The name of the function that failed. |
| `lineNumber` | `integer` | The line number where the script failed. |

### `Status`

If a `run` call succeeds but the script function (or Apps Script itself) throws an exception, the response body's error field contains this `Status` object.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code. For this API, this value either: - 10, indicating a `SCRIPT_TIMEOUT` error, - 3,... |
| `details` | `array<object>` | An array that contains a single ExecutionError object that provides information about the nature ... |
| `message` | `string` | A developer-facing error message, which is in English. Any user-facing error message is localized... |

### `UpdateDeploymentRequest`

Request with deployment information to update an existing deployment.

| Property | Type | Description |
|----------|------|-------------|
| `deploymentConfig` | `DeploymentConfig` | The deployment configuration. |

### `Version`

A resource representing a script project version. A version is a "snapshot" of a script project and is similar to a read-only branched release. When creating deployments, the version to use must be specified.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | When the version was created. |
| `description` | `string` | The description for this version. |
| `scriptId` | `string` | The script project's Drive ID. |
| `versionNumber` | `integer` | The incremental ID that is created by Apps Script when a version is created. This is system assig... |

