# AI Platform Training & Prediction API - API Reference

**Version**: `v1` | **Methods**: 46 | **Schemas**: 86

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `ml.projects.predict` | POST | `v1/{+name}:predict` | Performs online prediction on the data in the request. {% dynamic include "/ai-platform/includes/... |
| `ml.projects.explain` | POST | `v1/{+name}:explain` | Performs explanation on the data in the request. {% dynamic include "/ai-platform/includes/___exp... |
| `ml.projects.getConfig` | GET | `v1/{+name}:getConfig` | Get the service account information associated with your project. You need this information in or... |
| `ml.projects.jobs.get` | GET | `v1/{+name}` | Describes a job. |
| `ml.projects.jobs.patch` | PATCH | `v1/{+name}` | Updates a specific job resource. Currently the only supported fields to update are `labels`. |
| `ml.projects.jobs.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `ml.projects.jobs.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `ml.projects.jobs.list` | GET | `v1/{+parent}/jobs` | Lists the jobs in the project. If there are no jobs that match the request parameters, the list r... |
| `ml.projects.jobs.create` | POST | `v1/{+parent}/jobs` | Creates a training or a batch prediction job. |
| `ml.projects.jobs.cancel` | POST | `v1/{+name}:cancel` | Cancels a running job. |
| `ml.projects.jobs.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `ml.projects.models.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `ml.projects.models.create` | POST | `v1/{+parent}/models` | Creates a model which will later contain one or more versions. You must add at least one version ... |
| `ml.projects.models.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `ml.projects.models.get` | GET | `v1/{+name}` | Gets information about a model, including its name, the description (if set), and the default ver... |
| `ml.projects.models.patch` | PATCH | `v1/{+name}` | Updates a specific model resource. Currently the only supported fields to update are `description... |
| `ml.projects.models.list` | GET | `v1/{+parent}/models` | Lists the models in a project. Each project can contain multiple models, and each model can have ... |
| `ml.projects.models.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `ml.projects.models.delete` | DELETE | `v1/{+name}` | Deletes a model. You can only delete a model if there are no versions in it. You can delete versi... |
| `ml.projects.models.versions.delete` | DELETE | `v1/{+name}` | Deletes a model version. Each model can have multiple versions deployed and in use at any given t... |
| `ml.projects.models.versions.patch` | PATCH | `v1/{+name}` | Updates the specified Version resource. Currently the only update-able fields are `description`, ... |
| `ml.projects.models.versions.list` | GET | `v1/{+parent}/versions` | Gets basic information about all the versions of a model. If you expect that a model has many ver... |
| `ml.projects.models.versions.setDefault` | POST | `v1/{+name}:setDefault` | Designates a version to be the default for the model. The default version is used for prediction ... |
| `ml.projects.models.versions.create` | POST | `v1/{+parent}/versions` | Creates a new version of a model from a trained TensorFlow model. If the version created in the c... |
| `ml.projects.models.versions.get` | GET | `v1/{+name}` | Gets information about a model version. Models can have multiple versions. You can call projects.... |
| `ml.projects.locations.list` | GET | `v1/{+parent}/locations` | List all locations that provides at least one type of CMLE capability. |
| `ml.projects.locations.get` | GET | `v1/{+name}` | Get the complete list of CMLE capabilities in a location, along with their location-specific prop... |
| `ml.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `ml.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `ml.projects.locations.studies.delete` | DELETE | `v1/{+name}` | Deletes a study. |
| `ml.projects.locations.studies.get` | GET | `v1/{+name}` | Gets a study. |
| `ml.projects.locations.studies.create` | POST | `v1/{+parent}/studies` | Creates a study. |
| `ml.projects.locations.studies.list` | GET | `v1/{+parent}/studies` | Lists all the studies in a region for an associated project. |
| `ml.projects.locations.studies.trials.complete` | POST | `v1/{+name}:complete` | Marks a trial as complete. |
| `ml.projects.locations.studies.trials.get` | GET | `v1/{+name}` | Gets a trial. |
| `ml.projects.locations.studies.trials.listOptimalTrials` | POST | `v1/{+parent}/trials:listOptimalTrials` | Lists the pareto-optimal trials for multi-objective study or the optimal trials for single-object... |
| `ml.projects.locations.studies.trials.delete` | DELETE | `v1/{+name}` | Deletes a trial. |
| `ml.projects.locations.studies.trials.addMeasurement` | POST | `v1/{+name}:addMeasurement` | Adds a measurement of the objective metrics to a trial. This measurement is assumed to have been ... |
| `ml.projects.locations.studies.trials.list` | GET | `v1/{+parent}/trials` | Lists the trials associated with a study. |
| `ml.projects.locations.studies.trials.stop` | POST | `v1/{+name}:stop` | Stops a trial. |
| `ml.projects.locations.studies.trials.create` | POST | `v1/{+parent}/trials` | Adds a user provided trial to a study. |
| `ml.projects.locations.studies.trials.checkEarlyStoppingState` | POST | `v1/{+name}:checkEarlyStoppingState` | Checks whether a trial should stop or not. Returns a long-running operation. When the operation i... |
| `ml.projects.locations.studies.trials.suggest` | POST | `v1/{+parent}/trials:suggest` | Adds one or more trials to a study, with parameter values suggested by AI Platform Vizier. Return... |
| `ml.projects.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `ml.projects.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `ml.projects.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |

### `ml.projects.predict`

**POST** `v1/{+name}:predict`

Performs online prediction on the data in the request. {% dynamic include "/ai-platform/includes/___predict-request" %}

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of a model or a version. Authorization: requires the `predict` permission on the specifie... |

**Request body**: `GoogleCloudMlV1__PredictRequest`

**Response**: `GoogleApi__HttpBody`

```typescript
const res = await ml.projects.predict({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ml.projects.explain`

**POST** `v1/{+name}:explain`

Performs explanation on the data in the request. {% dynamic include "/ai-platform/includes/___explain-request" %}

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of a model or a version. Authorization: requires the `predict` permission on the specifie... |

**Request body**: `GoogleCloudMlV1__ExplainRequest`

**Response**: `GoogleApi__HttpBody`

```typescript
const res = await ml.projects.explain({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ml.projects.getConfig`

**GET** `v1/{+name}:getConfig`

Get the service account information associated with your project. You need this information in order to grant the service account permissions for the Google Cloud Storage location where you put your model training code for training the model with Google Cloud Machine Learning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The project name. |

**Response**: `GoogleCloudMlV1__GetConfigResponse`

```typescript
const res = await ml.projects.getConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ml.projects.jobs.get`

**GET** `v1/{+name}`

Describes a job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the job to get the description of. |

**Response**: `GoogleCloudMlV1__Job`

```typescript
const res = await ml.jobs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `ml.projects.jobs.patch`

**PATCH** `v1/{+name}`

Updates a specific job resource. Currently the only supported fields to update are `labels`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The job name. |
| `updateMask` | `string` | query | No | Required. Specifies the path, relative to `Job`, of the field to update. To adopt etag mechanism, include `etag` fiel... |

**Request body**: `GoogleCloudMlV1__Job`

**Response**: `GoogleCloudMlV1__Job`

```typescript
const res = await ml.jobs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ml.projects.jobs.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `GoogleIamV1__Policy`

```typescript
const res = await ml.jobs.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ml.projects.jobs.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GoogleIamV1__SetIamPolicyRequest`

**Response**: `GoogleIamV1__Policy`

```typescript
const res = await ml.jobs.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ml.projects.jobs.list`

**GET** `v1/{+parent}/jobs`

Lists the jobs in the project. If there are no jobs that match the request parameters, the list request returns an empty response body: {}.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project for which to list jobs. |
| `filter` | `string` | query | No | Optional. Specifies the subset of jobs to retrieve. You can filter on the value of one or more attributes of the job ... |
| `pageSize` | `integer` | query | No | Optional. The number of jobs to retrieve per "page" of results. If there are more remaining results than this number,... |
| `pageToken` | `string` | query | No | Optional. A page token to request the next page of results. You get the token from the `next_page_token` field of the... |

**Response**: `GoogleCloudMlV1__ListJobsResponse`

```typescript
const res = await ml.jobs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `ml.projects.jobs.create`

**POST** `v1/{+parent}/jobs`

Creates a training or a batch prediction job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project name. |

**Request body**: `GoogleCloudMlV1__Job`

**Response**: `GoogleCloudMlV1__Job`

```typescript
const res = await ml.jobs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ml.projects.jobs.cancel`

**POST** `v1/{+name}:cancel`

Cancels a running job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the job to cancel. |

**Request body**: `GoogleCloudMlV1__CancelJobRequest`

**Response**: `GoogleProtobuf__Empty`

```typescript
const res = await ml.jobs.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ml.projects.jobs.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `GoogleIamV1__TestIamPermissionsRequest`

**Response**: `GoogleIamV1__TestIamPermissionsResponse`

```typescript
const res = await ml.jobs.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ml.projects.models.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `GoogleIamV1__Policy`

```typescript
const res = await ml.models.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ml.projects.models.create`

**POST** `v1/{+parent}/models`

Creates a model which will later contain one or more versions. You must add at least one version before you can request predictions from the model. Add versions by calling projects.models.versions.create.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project name. |

**Request body**: `GoogleCloudMlV1__Model`

**Response**: `GoogleCloudMlV1__Model`

```typescript
const res = await ml.models.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ml.projects.models.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GoogleIamV1__SetIamPolicyRequest`

**Response**: `GoogleIamV1__Policy`

```typescript
const res = await ml.models.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ml.projects.models.get`

**GET** `v1/{+name}`

Gets information about a model, including its name, the description (if set), and the default version (if at least one version of the model has been deployed).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the model. |

**Response**: `GoogleCloudMlV1__Model`

```typescript
const res = await ml.models.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `ml.projects.models.patch`

**PATCH** `v1/{+name}`

Updates a specific model resource. Currently the only supported fields to update are `description` and `default_version.name`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The project name. |
| `updateMask` | `string` | query | No | Required. Specifies the path, relative to `Model`, of the field to update. For example, to change the description of ... |

**Request body**: `GoogleCloudMlV1__Model`

**Response**: `GoogleLongrunning__Operation`

```typescript
const res = await ml.models.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ml.projects.models.list`

**GET** `v1/{+parent}/models`

Lists the models in a project. Each project can contain multiple models, and each model can have multiple versions. If there are no models that match the request parameters, the list request returns an empty response body: {}.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project whose models are to be listed. |
| `filter` | `string` | query | No | Optional. Specifies the subset of models to retrieve. |
| `pageSize` | `integer` | query | No | Optional. The number of models to retrieve per "page" of results. If there are more remaining results than this numbe... |
| `pageToken` | `string` | query | No | Optional. A page token to request the next page of results. You get the token from the `next_page_token` field of the... |

**Response**: `GoogleCloudMlV1__ListModelsResponse`

```typescript
const res = await ml.models.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `ml.projects.models.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `GoogleIamV1__TestIamPermissionsRequest`

**Response**: `GoogleIamV1__TestIamPermissionsResponse`

```typescript
const res = await ml.models.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ml.projects.models.delete`

**DELETE** `v1/{+name}`

Deletes a model. You can only delete a model if there are no versions in it. You can delete versions by calling projects.models.versions.delete.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the model. |

**Response**: `GoogleLongrunning__Operation`

```typescript
const res = await ml.models.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ml.projects.models.versions.delete`

**DELETE** `v1/{+name}`

Deletes a model version. Each model can have multiple versions deployed and in use at any given time. Use this method to remove a single version. Note: You cannot delete the version that is set as the default version of the model unless it is the only remaining version.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the version. You can get the names of all the versions of a model by calling projects.models.ve... |

**Response**: `GoogleLongrunning__Operation`

```typescript
const res = await ml.versions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ml.projects.models.versions.patch`

**PATCH** `v1/{+name}`

Updates the specified Version resource. Currently the only update-able fields are `description`, `requestLoggingConfig`, `autoScaling.minNodes`, and `manualScaling.nodes`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the model. |
| `updateMask` | `string` | query | No | Required. Specifies the path, relative to `Version`, of the field to update. Must be present and non-empty. For examp... |

**Request body**: `GoogleCloudMlV1__Version`

**Response**: `GoogleLongrunning__Operation`

```typescript
const res = await ml.versions.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ml.projects.models.versions.list`

**GET** `v1/{+parent}/versions`

Gets basic information about all the versions of a model. If you expect that a model has many versions, or if you need to handle only a limited number of results at a time, you can request that the list be retrieved in batches (called pages). If there are no versions that match the request parameters, the list request returns an empty response body: {}.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the model for which to list the version. |
| `filter` | `string` | query | No | Optional. Specifies the subset of versions to retrieve. |
| `pageSize` | `integer` | query | No | Optional. The number of versions to retrieve per "page" of results. If there are more remaining results than this num... |
| `pageToken` | `string` | query | No | Optional. A page token to request the next page of results. You get the token from the `next_page_token` field of the... |

**Response**: `GoogleCloudMlV1__ListVersionsResponse`

```typescript
const res = await ml.versions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `ml.projects.models.versions.setDefault`

**POST** `v1/{+name}:setDefault`

Designates a version to be the default for the model. The default version is used for prediction requests made against the model that don't specify a version. The first version to be created for a model is automatically set as the default. You must make any subsequent changes to the default version setting manually using this method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the version to make the default for the model. You can get the names of all the versions of a m... |

**Request body**: `GoogleCloudMlV1__SetDefaultVersionRequest`

**Response**: `GoogleCloudMlV1__Version`

```typescript
const res = await ml.versions.setDefault({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ml.projects.models.versions.create`

**POST** `v1/{+parent}/versions`

Creates a new version of a model from a trained TensorFlow model. If the version created in the cloud by this call is the first deployed version of the specified model, it will be made the default version of the model. When you add a version to a model that already has one or more versions, the default version does not automatically change. If you want a new version to be the default, you must call projects.models.versions.setDefault.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the model. |

**Request body**: `GoogleCloudMlV1__Version`

**Response**: `GoogleLongrunning__Operation`

```typescript
const res = await ml.versions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ml.projects.models.versions.get`

**GET** `v1/{+name}`

Gets information about a model version. Models can have multiple versions. You can call projects.models.versions.list to get the same information that this method returns for all of the versions of a model.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the version. |

**Response**: `GoogleCloudMlV1__Version`

```typescript
const res = await ml.versions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ml.projects.locations.list`

**GET** `v1/{+parent}/locations`

List all locations that provides at least one type of CMLE capability.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project for which available locations are to be listed (since some locations might be white... |
| `pageSize` | `integer` | query | No | Optional. The number of locations to retrieve per "page" of results. If there are more remaining results than this nu... |
| `pageToken` | `string` | query | No | Optional. A page token to request the next page of results. You get the token from the `next_page_token` field of the... |

**Response**: `GoogleCloudMlV1__ListLocationsResponse`

```typescript
const res = await ml.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `ml.projects.locations.get`

**GET** `v1/{+name}`

Get the complete list of CMLE capabilities in a location, along with their location-specific properties.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the location. |

**Response**: `GoogleCloudMlV1__Location`

```typescript
const res = await ml.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `ml.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Response**: `GoogleProtobuf__Empty`

```typescript
const res = await ml.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ml.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunning__Operation`

```typescript
const res = await ml.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ml.projects.locations.studies.delete`

**DELETE** `v1/{+name}`

Deletes a study.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The study name. |

**Response**: `GoogleProtobuf__Empty`

```typescript
const res = await ml.studies.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ml.projects.locations.studies.get`

**GET** `v1/{+name}`

Gets a study.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The study name. |

**Response**: `GoogleCloudMlV1__Study`

```typescript
const res = await ml.studies.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ml.projects.locations.studies.create`

**POST** `v1/{+parent}/studies`

Creates a study.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location that the study belongs to. Format: projects/{project}/locations/{location} |
| `studyId` | `string` | query | No | Required. The ID to use for the study, which will become the final component of the study's resource name. |

**Request body**: `GoogleCloudMlV1__Study`

**Response**: `GoogleCloudMlV1__Study`

```typescript
const res = await ml.studies.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ml.projects.locations.studies.list`

**GET** `v1/{+parent}/studies`

Lists all the studies in a region for an associated project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location that the study belongs to. Format: projects/{project}/locations/{location} |

**Response**: `GoogleCloudMlV1__ListStudiesResponse`

```typescript
const res = await ml.studies.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ml.projects.locations.studies.trials.complete`

**POST** `v1/{+name}:complete`

Marks a trial as complete.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The trial name.metat |

**Request body**: `GoogleCloudMlV1__CompleteTrialRequest`

**Response**: `GoogleCloudMlV1__Trial`

```typescript
const res = await ml.trials.complete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ml.projects.locations.studies.trials.get`

**GET** `v1/{+name}`

Gets a trial.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The trial name. |

**Response**: `GoogleCloudMlV1__Trial`

```typescript
const res = await ml.trials.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ml.projects.locations.studies.trials.listOptimalTrials`

**POST** `v1/{+parent}/trials:listOptimalTrials`

Lists the pareto-optimal trials for multi-objective study or the optimal trials for single-objective study. The definition of pareto-optimal can be checked in wiki page. https://en.wikipedia.org/wiki/Pareto_efficiency

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the study that the pareto-optimal trial belongs to. |

**Request body**: `GoogleCloudMlV1__ListOptimalTrialsRequest`

**Response**: `GoogleCloudMlV1__ListOptimalTrialsResponse`

```typescript
const res = await ml.trials.listOptimalTrials({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ml.projects.locations.studies.trials.delete`

**DELETE** `v1/{+name}`

Deletes a trial.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The trial name. |

**Response**: `GoogleProtobuf__Empty`

```typescript
const res = await ml.trials.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ml.projects.locations.studies.trials.addMeasurement`

**POST** `v1/{+name}:addMeasurement`

Adds a measurement of the objective metrics to a trial. This measurement is assumed to have been taken before the trial is complete.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The trial name. |

**Request body**: `GoogleCloudMlV1__AddTrialMeasurementRequest`

**Response**: `GoogleCloudMlV1__Trial`

```typescript
const res = await ml.trials.addMeasurement({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ml.projects.locations.studies.trials.list`

**GET** `v1/{+parent}/trials`

Lists the trials associated with a study.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the study that the trial belongs to. |

**Response**: `GoogleCloudMlV1__ListTrialsResponse`

```typescript
const res = await ml.trials.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ml.projects.locations.studies.trials.stop`

**POST** `v1/{+name}:stop`

Stops a trial.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The trial name. |

**Request body**: `GoogleCloudMlV1__StopTrialRequest`

**Response**: `GoogleCloudMlV1__Trial`

```typescript
const res = await ml.trials.stop({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ml.projects.locations.studies.trials.create`

**POST** `v1/{+parent}/trials`

Adds a user provided trial to a study.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the study that the trial belongs to. |

**Request body**: `GoogleCloudMlV1__Trial`

**Response**: `GoogleCloudMlV1__Trial`

```typescript
const res = await ml.trials.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ml.projects.locations.studies.trials.checkEarlyStoppingState`

**POST** `v1/{+name}:checkEarlyStoppingState`

Checks whether a trial should stop or not. Returns a long-running operation. When the operation is successful, it will contain a CheckTrialEarlyStoppingStateResponse.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The trial name. |

**Request body**: `GoogleCloudMlV1__CheckTrialEarlyStoppingStateRequest`

**Response**: `GoogleLongrunning__Operation`

```typescript
const res = await ml.trials.checkEarlyStoppingState({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ml.projects.locations.studies.trials.suggest`

**POST** `v1/{+parent}/trials:suggest`

Adds one or more trials to a study, with parameter values suggested by AI Platform Vizier. Returns a long-running operation associated with the generation of trial suggestions. When this long-running operation succeeds, it will contain a SuggestTrialsResponse.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the study that the trial belongs to. |

**Request body**: `GoogleCloudMlV1__SuggestTrialsRequest`

**Response**: `GoogleLongrunning__Operation`

```typescript
const res = await ml.trials.suggest({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ml.projects.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Response**: `GoogleProtobuf__Empty`

```typescript
const res = await ml.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ml.projects.operations.list`

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

**Response**: `GoogleLongrunning__ListOperationsResponse`

```typescript
const res = await ml.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ml.projects.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunning__Operation`

```typescript
const res = await ml.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `GoogleApi__HttpBody`

Message that represents an arbitrary HTTP body. It should only be used for payload formats that can't be represented as JSON, such as raw binary or an HTML page. This message can be used both in streaming and non-streaming API methods in the request as well as the response. It can be used as a top-level request field, which is convenient if one wants to extract parameters from either the URL or HTTP template into the request fields and also want access to the raw HTTP body. Example: message GetResourceRequest { // A unique request id. string request_id = 1; // The raw HTTP body is bound to this field. google.api.HttpBody http_body = 2; } service ResourceService { rpc GetResource(GetResourceRequest) returns (google.api.HttpBody); rpc UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty); } Example with streaming methods: service CaldavService { rpc GetCalendar(stream google.api.HttpBody) returns (stream google.api.HttpBody); rpc UpdateCalendar(stream google.api.HttpBody) returns (stream google.api.HttpBody); } Use of this type only changes how the request and response bodies are handled, all other features will continue to work unchanged.

| Property | Type | Description |
|----------|------|-------------|
| `contentType` | `string` | The HTTP Content-Type header value specifying the content type of the body. |
| `data` | `string` | The HTTP request/response body as raw binary. |
| `extensions` | `array<object>` | Application specific response metadata. Must be set in the first response for streaming APIs. |

### `GoogleCloudMlV1_AutomatedStoppingConfig_DecayCurveAutomatedStoppingConfig`

| Property | Type | Description |
|----------|------|-------------|
| `useElapsedTime` | `boolean` | If true, measurement.elapsed_time is used as the x-axis of each Trials Decay Curve. Otherwise, Me... |

### `GoogleCloudMlV1_AutomatedStoppingConfig_MedianAutomatedStoppingConfig`

The median automated stopping rule stops a pending trial if the trial's best objective_value is strictly below the median 'performance' of all completed trials reported up to the trial's last measurement. Currently, 'performance' refers to the running average of the objective values reported by the trial in each measurement.

| Property | Type | Description |
|----------|------|-------------|
| `useElapsedTime` | `boolean` | If true, the median automated stopping rule applies to measurement.use_elapsed_time, which means ... |

### `GoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric`

An observed value of a metric.

| Property | Type | Description |
|----------|------|-------------|
| `objectiveValue` | `number` | The objective value at this training step. |
| `trainingStep` | `string` | The global training step for this metric. |

### `GoogleCloudMlV1_Measurement_Metric`

A message representing a metric in the measurement.

| Property | Type | Description |
|----------|------|-------------|
| `metric` | `string` | Required. Metric name. |
| `value` | `number` | Required. The value for this metric. |

### `GoogleCloudMlV1_StudyConfigParameterSpec_CategoricalValueSpec`

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<string>` | Must be specified if type is `CATEGORICAL`. The list of possible categories. |

### `GoogleCloudMlV1_StudyConfigParameterSpec_DiscreteValueSpec`

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<number>` | Must be specified if type is `DISCRETE`. A list of feasible points. The list should be in strictl... |

### `GoogleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec`

| Property | Type | Description |
|----------|------|-------------|
| `maxValue` | `number` | Must be specified if type is `DOUBLE`. Maximum value of the parameter. |
| `minValue` | `number` | Must be specified if type is `DOUBLE`. Minimum value of the parameter. |

### `GoogleCloudMlV1_StudyConfigParameterSpec_IntegerValueSpec`

| Property | Type | Description |
|----------|------|-------------|
| `maxValue` | `string` | Must be specified if type is `INTEGER`. Maximum value of the parameter. |
| `minValue` | `string` | Must be specified if type is `INTEGER`. Minimum value of the parameter. |

### `GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentCategoricalValueSpec`

Represents the spec to match categorical values from parent parameter.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<string>` | Matches values of the parent parameter with type 'CATEGORICAL'. All values must exist in `categor... |

### `GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentDiscreteValueSpec`

Represents the spec to match discrete values from parent parameter.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<number>` | Matches values of the parent parameter with type 'DISCRETE'. All values must exist in `discrete_v... |

### `GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentIntValueSpec`

Represents the spec to match integer values from parent parameter.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<string>` | Matches values of the parent parameter with type 'INTEGER'. All values must lie in `integer_value... |

### `GoogleCloudMlV1_StudyConfig_MetricSpec`

Represents a metric to optimize.

| Property | Type | Description |
|----------|------|-------------|
| `goal` | `string` | Required. The optimization goal of the metric. |
| `metric` | `string` | Required. The name of the metric. |

### `GoogleCloudMlV1_StudyConfig_ParameterSpec`

Represents a single parameter to optimize.

| Property | Type | Description |
|----------|------|-------------|
| `categoricalValueSpec` | `GoogleCloudMlV1_StudyConfigParameterSpec_CategoricalValueSpec` | The value spec for a 'CATEGORICAL' parameter. |
| `childParameterSpecs` | `array<GoogleCloudMlV1_StudyConfig_ParameterSpec>` | A child node is active if the parameter's value matches the child node's matching_parent_values. ... |
| `discreteValueSpec` | `GoogleCloudMlV1_StudyConfigParameterSpec_DiscreteValueSpec` | The value spec for a 'DISCRETE' parameter. |
| `doubleValueSpec` | `GoogleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec` | The value spec for a 'DOUBLE' parameter. |
| `integerValueSpec` | `GoogleCloudMlV1_StudyConfigParameterSpec_IntegerValueSpec` | The value spec for an 'INTEGER' parameter. |
| `parameter` | `string` | Required. The parameter name must be unique amongst all ParameterSpecs. |
| `parentCategoricalValues` | `GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentCategoricalValueSpec` |  |
| `parentDiscreteValues` | `GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentDiscreteValueSpec` |  |
| `parentIntValues` | `GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentIntValueSpec` |  |
| `scaleType` | `string` | How the parameter should be scaled. Leave unset for categorical parameters. |
| `type` | `string` | Required. The type of the parameter. |

### `GoogleCloudMlV1_Trial_Parameter`

A message representing a parameter to be tuned. Contains the name of the parameter and the suggested value to use for this trial.

| Property | Type | Description |
|----------|------|-------------|
| `floatValue` | `number` | Must be set if ParameterType is DOUBLE or DISCRETE. |
| `intValue` | `string` | Must be set if ParameterType is INTEGER |
| `parameter` | `string` | The name of the parameter. |
| `stringValue` | `string` | Must be set if ParameterTypeis CATEGORICAL |

### `GoogleCloudMlV1__AcceleratorConfig`

Represents a hardware accelerator request config. Note that the AcceleratorConfig can be used in both Jobs and Versions. Learn more about [accelerators for training](/ml-engine/docs/using-gpus) and [accelerators for online prediction](/ml-engine/docs/machine-types-online-prediction#gpus).

| Property | Type | Description |
|----------|------|-------------|
| `count` | `string` | The number of accelerators to attach to each machine running the job. |
| `type` | `string` | The type of accelerator to use. |

### `GoogleCloudMlV1__AddTrialMeasurementRequest`

The request message for the AddTrialMeasurement service method.

| Property | Type | Description |
|----------|------|-------------|
| `measurement` | `GoogleCloudMlV1__Measurement` | Required. The measurement to be added to a trial. |

### `GoogleCloudMlV1__AutoScaling`

Options for automatically scaling a model.

| Property | Type | Description |
|----------|------|-------------|
| `maxNodes` | `integer` | The maximum number of nodes to scale this model under load. The actual value will depend on resou... |
| `metrics` | `array<GoogleCloudMlV1__MetricSpec>` | MetricSpec contains the specifications to use to calculate the desired nodes count. |
| `minNodes` | `integer` | Optional. The minimum number of nodes to allocate for this model. These nodes are always up, star... |

### `GoogleCloudMlV1__AutomatedStoppingConfig`

Configuration for Automated Early Stopping of Trials. If no implementation_config is set, automated early stopping will not be run.

| Property | Type | Description |
|----------|------|-------------|
| `decayCurveStoppingConfig` | `GoogleCloudMlV1_AutomatedStoppingConfig_DecayCurveAutomatedStoppingConfig` |  |
| `medianAutomatedStoppingConfig` | `GoogleCloudMlV1_AutomatedStoppingConfig_MedianAutomatedStoppingConfig` |  |

### `GoogleCloudMlV1__BuiltInAlgorithmOutput`

Represents output related to a built-in algorithm Job.

| Property | Type | Description |
|----------|------|-------------|
| `framework` | `string` | Framework on which the built-in algorithm was trained. |
| `modelPath` | `string` | The Cloud Storage path to the `model/` directory where the training job saves the trained model. ... |
| `pythonVersion` | `string` | Python version on which the built-in algorithm was trained. |
| `runtimeVersion` | `string` | AI Platform runtime version on which the built-in algorithm was trained. |

### `GoogleCloudMlV1__CancelJobRequest`

Request message for the CancelJob method.

### `GoogleCloudMlV1__Capability`

| Property | Type | Description |
|----------|------|-------------|
| `availableAccelerators` | `array<string>` | Available accelerators for the capability. |
| `type` | `string` |  |

### `GoogleCloudMlV1__CheckTrialEarlyStoppingStateMetatdata`

This message will be placed in the metadata field of a google.longrunning.Operation associated with a CheckTrialEarlyStoppingState request.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | The time at which the operation was submitted. |
| `study` | `string` | The name of the study that the trial belongs to. |
| `trial` | `string` | The trial name. |

### `GoogleCloudMlV1__CheckTrialEarlyStoppingStateRequest`

The request message for the CheckTrialEarlyStoppingState service method.

### `GoogleCloudMlV1__CheckTrialEarlyStoppingStateResponse`

The message will be placed in the response field of a completed google.longrunning.Operation associated with a CheckTrialEarlyStoppingState request.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | The time at which operation processing completed. |
| `shouldStop` | `boolean` | True if the Trial should stop. |
| `startTime` | `string` | The time at which the operation was started. |

### `GoogleCloudMlV1__CompleteTrialRequest`

The request message for the CompleteTrial service method.

| Property | Type | Description |
|----------|------|-------------|
| `finalMeasurement` | `GoogleCloudMlV1__Measurement` | Optional. If provided, it will be used as the completed trial's final_measurement; Otherwise, the... |
| `infeasibleReason` | `string` | Optional. A human readable reason why the trial was infeasible. This should only be provided if `... |
| `trialInfeasible` | `boolean` | Optional. True if the trial cannot be run with the given Parameter, and final_measurement will be... |

### `GoogleCloudMlV1__Config`

| Property | Type | Description |
|----------|------|-------------|
| `tpuServiceAccount` | `string` | The service account Cloud ML uses to run on TPU node. |

### `GoogleCloudMlV1__ContainerPort`

Represents a network port in a single container. This message is a subset of the [Kubernetes ContainerPort v1 core specification](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.18/#containerport-v1-core).

| Property | Type | Description |
|----------|------|-------------|
| `containerPort` | `integer` | Number of the port to expose on the container. This must be a valid port number: 0 < PORT_NUMBER ... |

### `GoogleCloudMlV1__ContainerSpec`

Specification of a custom container for serving predictions. This message is a subset of the [Kubernetes Container v1 core specification](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.18/#container-v1-core).

| Property | Type | Description |
|----------|------|-------------|
| `args` | `array<string>` | Immutable. Specifies arguments for the command that runs when the container starts. This override... |
| `command` | `array<string>` | Immutable. Specifies the command that runs when the container starts. This overrides the containe... |
| `env` | `array<GoogleCloudMlV1__EnvVar>` | Immutable. List of environment variables to set in the container. After the container starts runn... |
| `image` | `string` | URI of the Docker image to be used as the custom container for serving predictions. This URI must... |
| `ports` | `array<GoogleCloudMlV1__ContainerPort>` | Immutable. List of ports to expose from the container. AI Platform Prediction sends any predictio... |

### `GoogleCloudMlV1__DiskConfig`

Represents the config of disk options.

| Property | Type | Description |
|----------|------|-------------|
| `bootDiskSizeGb` | `integer` | Size in GB of the boot disk (default is 100GB). |
| `bootDiskType` | `string` | Type of the boot disk (default is "pd-ssd"). Valid values: "pd-ssd" (Persistent Disk Solid State ... |

### `GoogleCloudMlV1__EncryptionConfig`

Represents a custom encryption key configuration that can be applied to a resource.

| Property | Type | Description |
|----------|------|-------------|
| `kmsKeyName` | `string` | The Cloud KMS resource identifier of the customer-managed encryption key used to protect a resour... |

### `GoogleCloudMlV1__EnvVar`

Represents an environment variable to be made available in a container. This message is a subset of the [Kubernetes EnvVar v1 core specification](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.18/#envvar-v1-core).

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Name of the environment variable. Must be a [valid C identifier](https://github.com/kubernetes/ku... |
| `value` | `string` | Value of the environment variable. Defaults to an empty string. In this field, you can reference ... |

### `GoogleCloudMlV1__ExplainRequest`

Request for explanations to be issued against a trained model.

| Property | Type | Description |
|----------|------|-------------|
| `httpBody` | `GoogleApi__HttpBody` | Required. The explanation request body. |

### `GoogleCloudMlV1__ExplanationConfig`

Message holding configuration options for explaining model predictions. There are three feature attribution methods supported for TensorFlow models: integrated gradients, sampled Shapley, and XRAI. [Learn more about feature attributions.](/ai-platform/prediction/docs/ai-explanations/overview)

| Property | Type | Description |
|----------|------|-------------|
| `integratedGradientsAttribution` | `GoogleCloudMlV1__IntegratedGradientsAttribution` | Attributes credit by computing the Aumann-Shapley value taking advantage of the model's fully dif... |
| `sampledShapleyAttribution` | `GoogleCloudMlV1__SampledShapleyAttribution` | An attribution method that approximates Shapley values for features that contribute to the label ... |
| `xraiAttribution` | `GoogleCloudMlV1__XraiAttribution` | Attributes credit by computing the XRAI taking advantage of the model's fully differentiable stru... |

### `GoogleCloudMlV1__GetConfigResponse`

Returns service account information associated with a project.

| Property | Type | Description |
|----------|------|-------------|
| `config` | `GoogleCloudMlV1__Config` |  |
| `serviceAccount` | `string` | The service account Cloud ML uses to access resources in the project. |
| `serviceAccountProject` | `string` | The project number for `service_account`. |

### `GoogleCloudMlV1__HyperparameterOutput`

Represents the result of a single hyperparameter tuning trial from a training job. The TrainingOutput object that is returned on successful completion of a training job with hyperparameter tuning includes a list of HyperparameterOutput objects, one for each successful trial.

| Property | Type | Description |
|----------|------|-------------|
| `allMetrics` | `array<GoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric>` | All recorded object metrics for this trial. This field is not currently populated. |
| `builtInAlgorithmOutput` | `GoogleCloudMlV1__BuiltInAlgorithmOutput` | Details related to built-in algorithms jobs. Only set for trials of built-in algorithms jobs that... |
| `endTime` | `string` | Output only. End time for the trial. |
| `finalMetric` | `GoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric` | The final objective metric seen for this trial. |
| `hyperparameters` | `object` | The hyperparameters given to this trial. |
| `isTrialStoppedEarly` | `boolean` | True if the trial is stopped early. |
| `startTime` | `string` | Output only. Start time for the trial. |
| `state` | `string` | Output only. The detailed state of the trial. |
| `trialId` | `string` | The trial id for these results. |
| `webAccessUris` | `object` | URIs for accessing [interactive shells](https://cloud.google.com/ai-platform/training/docs/monito... |

### `GoogleCloudMlV1__HyperparameterSpec`

Represents a set of hyperparameters to optimize.

| Property | Type | Description |
|----------|------|-------------|
| `algorithm` | `string` | Optional. The search algorithm specified for the hyperparameter tuning job. Uses the default AI P... |
| `enableTrialEarlyStopping` | `boolean` | Optional. Indicates if the hyperparameter tuning job enables auto trial early stopping. |
| `goal` | `string` | Required. The type of goal to use for tuning. Available types are `MAXIMIZE` and `MINIMIZE`. Defa... |
| `hyperparameterMetricTag` | `string` | Optional. The TensorFlow summary tag name to use for optimizing trials. For current versions of T... |
| `maxFailedTrials` | `integer` | Optional. The number of failed trials that need to be seen before failing the hyperparameter tuni... |
| `maxParallelTrials` | `integer` | Optional. The number of training trials to run concurrently. You can reduce the time it takes to ... |
| `maxTrials` | `integer` | Optional. How many training trials should be attempted to optimize the specified hyperparameters.... |
| `params` | `array<GoogleCloudMlV1__ParameterSpec>` | Required. The set of parameters to tune. |
| `resumePreviousJobId` | `string` | Optional. The prior hyperparameter tuning job id that users hope to continue with. The job id wil... |

### `GoogleCloudMlV1__IntegratedGradientsAttribution`

Attributes credit by computing the Aumann-Shapley value taking advantage of the model's fully differentiable structure. Refer to this paper for more details: https://arxiv.org/abs/1703.01365

| Property | Type | Description |
|----------|------|-------------|
| `numIntegralSteps` | `integer` | Number of steps for approximating the path integral. A good value to start is 50 and gradually in... |

### `GoogleCloudMlV1__Job`

Represents a training or prediction job.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. When the job was created. |
| `endTime` | `string` | Output only. When the job processing was completed. |
| `errorMessage` | `string` | Output only. The details of a failure or a cancellation. |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `jobId` | `string` | Required. The user-specified id of the job. |
| `jobPosition` | `string` | Output only. It's only effect when the job is in QUEUED state. If it's positive, it indicates the... |
| `labels` | `object` | Optional. One or more labels that you can add, to organize your jobs. Each label is a key-value p... |
| `predictionInput` | `GoogleCloudMlV1__PredictionInput` | Input parameters to create a prediction job. |
| `predictionOutput` | `GoogleCloudMlV1__PredictionOutput` | The current prediction job result. |
| `startTime` | `string` | Output only. When the job processing was started. |
| `state` | `string` | Output only. The detailed state of a job. |
| `trainingInput` | `GoogleCloudMlV1__TrainingInput` | Input parameters to create a training job. |
| `trainingOutput` | `GoogleCloudMlV1__TrainingOutput` | The current training job result. |

### `GoogleCloudMlV1__ListJobsResponse`

Response message for the ListJobs method.

| Property | Type | Description |
|----------|------|-------------|
| `jobs` | `array<GoogleCloudMlV1__Job>` | The list of jobs. |
| `nextPageToken` | `string` | Optional. Pass this token as the `page_token` field of the request for a subsequent call. |

### `GoogleCloudMlV1__ListLocationsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<GoogleCloudMlV1__Location>` | Locations where at least one type of CMLE capability is available. |
| `nextPageToken` | `string` | Optional. Pass this token as the `page_token` field of the request for a subsequent call. |

### `GoogleCloudMlV1__ListModelsResponse`

Response message for the ListModels method.

| Property | Type | Description |
|----------|------|-------------|
| `models` | `array<GoogleCloudMlV1__Model>` | The list of models. |
| `nextPageToken` | `string` | Optional. Pass this token as the `page_token` field of the request for a subsequent call. |

### `GoogleCloudMlV1__ListOptimalTrialsRequest`

The request message for the ListTrials service method.

### `GoogleCloudMlV1__ListOptimalTrialsResponse`

The response message for the ListOptimalTrials method.

| Property | Type | Description |
|----------|------|-------------|
| `trials` | `array<GoogleCloudMlV1__Trial>` | The pareto-optimal trials for multiple objective study or the optimal trial for single objective ... |

### `GoogleCloudMlV1__ListStudiesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `studies` | `array<GoogleCloudMlV1__Study>` | The studies associated with the project. |

### `GoogleCloudMlV1__ListTrialsResponse`

The response message for the ListTrials method.

| Property | Type | Description |
|----------|------|-------------|
| `trials` | `array<GoogleCloudMlV1__Trial>` | The trials associated with the study. |

### `GoogleCloudMlV1__ListVersionsResponse`

Response message for the ListVersions method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Optional. Pass this token as the `page_token` field of the request for a subsequent call. |
| `versions` | `array<GoogleCloudMlV1__Version>` | The list of versions. |

### `GoogleCloudMlV1__Location`

| Property | Type | Description |
|----------|------|-------------|
| `capabilities` | `array<GoogleCloudMlV1__Capability>` | Capabilities available in the location. |
| `name` | `string` |  |

### `GoogleCloudMlV1__ManualScaling`

Options for manually scaling a model.

| Property | Type | Description |
|----------|------|-------------|
| `nodes` | `integer` | The number of nodes to allocate for this model. These nodes are always up, starting from the time... |

### `GoogleCloudMlV1__Measurement`

A message representing a measurement.

| Property | Type | Description |
|----------|------|-------------|
| `elapsedTime` | `string` | Output only. Time that the trial has been running at the point of this measurement. |
| `metrics` | `array<GoogleCloudMlV1_Measurement_Metric>` | Provides a list of metrics that act as inputs into the objective function. |
| `stepCount` | `string` | The number of steps a machine learning model has been trained for. Must be non-negative. |

### `GoogleCloudMlV1__MetricSpec`

MetricSpec contains the specifications to use to calculate the desired nodes count when autoscaling is enabled.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | metric name. |
| `target` | `integer` | Target specifies the target value for the given metric; once real metric deviates from the thresh... |

### `GoogleCloudMlV1__Model`

Represents a machine learning solution. A model can have multiple versions, each of which is a deployed, trained model ready to receive prediction requests. The model itself is just a container.

| Property | Type | Description |
|----------|------|-------------|
| `defaultVersion` | `GoogleCloudMlV1__Version` | Output only. The default version of the model. This version will be used to handle prediction req... |
| `description` | `string` | Optional. The description specified for the model when it was created. |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `labels` | `object` | Optional. One or more labels that you can add, to organize your models. Each label is a key-value... |
| `name` | `string` | Required. The name specified for the model when it was created. The model name must be unique wit... |
| `onlinePredictionConsoleLogging` | `boolean` | Optional. If true, online prediction nodes send `stderr` and `stdout` streams to Cloud Logging. T... |
| `onlinePredictionLogging` | `boolean` | Optional. If true, online prediction access logs are sent to Cloud Logging. These logs are like s... |
| `regions` | `array<string>` | Optional. The list of regions where the model is going to be deployed. Only one region per model ... |

### `GoogleCloudMlV1__OperationMetadata`

Represents the metadata of the long-running operation.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | The time the operation was submitted. |
| `endTime` | `string` | The time operation processing completed. |
| `isCancellationRequested` | `boolean` | Indicates whether a request to cancel this operation has been made. |
| `labels` | `object` | The user labels, inherited from the model or the model version being operated on. |
| `modelName` | `string` | Contains the name of the model associated with the operation. |
| `operationType` | `string` | The operation type. |
| `projectNumber` | `string` | Contains the project number associated with the operation. |
| `startTime` | `string` | The time operation processing started. |
| `version` | `GoogleCloudMlV1__Version` | Contains the version associated with the operation. |

### `GoogleCloudMlV1__ParameterSpec`

Represents a single hyperparameter to optimize.

| Property | Type | Description |
|----------|------|-------------|
| `categoricalValues` | `array<string>` | Required if type is `CATEGORICAL`. The list of possible categories. |
| `discreteValues` | `array<number>` | Required if type is `DISCRETE`. A list of feasible points. The list should be in strictly increas... |
| `maxValue` | `number` | Required if type is `DOUBLE` or `INTEGER`. This field should be unset if type is `CATEGORICAL`. T... |
| `minValue` | `number` | Required if type is `DOUBLE` or `INTEGER`. This field should be unset if type is `CATEGORICAL`. T... |
| `parameterName` | `string` | Required. The parameter name must be unique amongst all ParameterConfigs in a HyperparameterSpec ... |
| `scaleType` | `string` | Optional. How the parameter should be scaled to the hypercube. Leave unset for categorical parame... |
| `type` | `string` | Required. The type of the parameter. |

### `GoogleCloudMlV1__PredictRequest`

Request for predictions to be issued against a trained model.

| Property | Type | Description |
|----------|------|-------------|
| `httpBody` | `GoogleApi__HttpBody` | Required. The prediction request body. Refer to the [request body details section](#request-body-... |

### `GoogleCloudMlV1__PredictionInput`

Represents input parameters for a prediction job.

| Property | Type | Description |
|----------|------|-------------|
| `batchSize` | `string` | Optional. Number of records per batch, defaults to 64. The service will buffer batch_size number ... |
| `dataFormat` | `string` | Required. The format of the input data files. |
| `inputPaths` | `array<string>` | Required. The Cloud Storage location of the input data files. May contain wildcards. |
| `maxWorkerCount` | `string` | Optional. The maximum number of workers to be used for parallel processing. Defaults to 10 if not... |
| `modelName` | `string` | Use this field if you want to use the default version for the specified model. The string must us... |
| `outputDataFormat` | `string` | Optional. Format of the output data files, defaults to JSON. |
| `outputPath` | `string` | Required. The output Google Cloud Storage location. |
| `region` | `string` | Required. The Google Compute Engine region to run the prediction job in. See the available region... |
| `runtimeVersion` | `string` | Optional. The AI Platform runtime version to use for this batch prediction. If not set, AI Platfo... |
| `signatureName` | `string` | Optional. The name of the signature defined in the SavedModel to use for this job. Please refer t... |
| `uri` | `string` | Use this field if you want to specify a Google Cloud Storage path for the model to use. |
| `versionName` | `string` | Use this field if you want to specify a version of the model to use. The string is formatted the ... |

### `GoogleCloudMlV1__PredictionOutput`

Represents results of a prediction job.

| Property | Type | Description |
|----------|------|-------------|
| `errorCount` | `string` | The number of data instances which resulted in errors. |
| `nodeHours` | `number` | Node hours used by the batch prediction job. |
| `outputPath` | `string` | The output Google Cloud Storage location provided at the job creation time. |
| `predictionCount` | `string` | The number of generated predictions. |

### `GoogleCloudMlV1__ReplicaConfig`

Represents the configuration for a replica in a cluster.

| Property | Type | Description |
|----------|------|-------------|
| `acceleratorConfig` | `GoogleCloudMlV1__AcceleratorConfig` | Represents the type and number of accelerators used by the replica. [Learn about restrictions on ... |
| `containerArgs` | `array<string>` | Arguments to the entrypoint command. The following rules apply for container_command and containe... |
| `containerCommand` | `array<string>` | The command with which the replica's custom container is run. If provided, it will override defau... |
| `diskConfig` | `GoogleCloudMlV1__DiskConfig` | Represents the configuration of disk options. |
| `imageUri` | `string` | The Docker image to run on the replica. This image must be in Container Registry. Learn more abou... |
| `tpuTfVersion` | `string` | The AI Platform runtime version that includes a TensorFlow version matching the one used in the c... |

### `GoogleCloudMlV1__RequestLoggingConfig`

Configuration for logging request-response pairs to a BigQuery table. Online prediction requests to a model version and the responses to these requests are converted to raw strings and saved to the specified BigQuery table. Logging is constrained by [BigQuery quotas and limits](/bigquery/quotas). If your project exceeds BigQuery quotas or limits, AI Platform Prediction does not log request-response pairs, but it continues to serve predictions. If you are using [continuous evaluation](/ml-engine/docs/continuous-evaluation/), you do not need to specify this configuration manually. Setting up continuous evaluation automatically enables logging of request-response pairs.

| Property | Type | Description |
|----------|------|-------------|
| `bigqueryTableName` | `string` | Required. Fully qualified BigQuery table name in the following format: " project_id.dataset_name.... |
| `samplingPercentage` | `number` | Percentage of requests to be logged, expressed as a fraction from 0 to 1. For example, if you wan... |

### `GoogleCloudMlV1__RouteMap`

Specifies HTTP paths served by a custom container. AI Platform Prediction sends requests to these paths on the container; the custom container must run an HTTP server that responds to these requests with appropriate responses. Read [Custom container requirements](/ai-platform/prediction/docs/custom-container-requirements) for details on how to create your container image to meet these requirements.

| Property | Type | Description |
|----------|------|-------------|
| `health` | `string` | HTTP path on the container to send health checkss to. AI Platform Prediction intermittently sends... |
| `predict` | `string` | HTTP path on the container to send prediction requests to. AI Platform Prediction forwards reques... |

### `GoogleCloudMlV1__SampledShapleyAttribution`

An attribution method that approximates Shapley values for features that contribute to the label being predicted. A sampling strategy is used to approximate the value rather than considering all subsets of features.

| Property | Type | Description |
|----------|------|-------------|
| `numPaths` | `integer` | The number of feature permutations to consider when approximating the Shapley values. |

### `GoogleCloudMlV1__Scheduling`

All parameters related to scheduling of training jobs.

| Property | Type | Description |
|----------|------|-------------|
| `maxRunningTime` | `string` | Optional. The maximum job running time, expressed in seconds. The field can contain up to nine fr... |
| `maxWaitTime` | `string` | Optional. The maximum job wait time, expressed in seconds. The field can contain up to nine fract... |
| `priority` | `integer` | Optional. Job scheduling will be based on this priority, which in the range [0, 1000]. The bigger... |

### `GoogleCloudMlV1__SetDefaultVersionRequest`

Request message for the SetDefaultVersion request.

### `GoogleCloudMlV1__StopTrialRequest`

### `GoogleCloudMlV1__Study`

A message representing a Study.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Time at which the study was created. |
| `inactiveReason` | `string` | Output only. A human readable reason why the Study is inactive. This should be empty if a study i... |
| `name` | `string` | Output only. The name of a study. |
| `state` | `string` | Output only. The detailed state of a study. |
| `studyConfig` | `GoogleCloudMlV1__StudyConfig` | Required. Configuration of the study. |

### `GoogleCloudMlV1__StudyConfig`

Represents configuration of a study.

| Property | Type | Description |
|----------|------|-------------|
| `algorithm` | `string` | The search algorithm specified for the study. |
| `automatedStoppingConfig` | `GoogleCloudMlV1__AutomatedStoppingConfig` | Configuration for automated stopping of unpromising Trials. |
| `metrics` | `array<GoogleCloudMlV1_StudyConfig_MetricSpec>` | Metric specs for the study. |
| `parameters` | `array<GoogleCloudMlV1_StudyConfig_ParameterSpec>` | Required. The set of parameters to tune. |

### `GoogleCloudMlV1__SuggestTrialsMetadata`

Metadata field of a google.longrunning.Operation associated with a SuggestTrialsRequest.

| Property | Type | Description |
|----------|------|-------------|
| `clientId` | `string` | The identifier of the client that is requesting the suggestion. |
| `createTime` | `string` | The time operation was submitted. |
| `study` | `string` | The name of the study that the trial belongs to. |
| `suggestionCount` | `integer` | The number of suggestions requested. |

### `GoogleCloudMlV1__SuggestTrialsRequest`

The request message for the SuggestTrial service method.

| Property | Type | Description |
|----------|------|-------------|
| `clientId` | `string` | Required. The identifier of the client that is requesting the suggestion. If multiple SuggestTria... |
| `suggestionCount` | `integer` | Required. The number of suggestions requested. |

### `GoogleCloudMlV1__SuggestTrialsResponse`

This message will be placed in the response field of a completed google.longrunning.Operation associated with a SuggestTrials request.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | The time at which operation processing completed. |
| `startTime` | `string` | The time at which the operation was started. |
| `studyState` | `string` | The state of the study. |
| `trials` | `array<GoogleCloudMlV1__Trial>` | A list of trials. |

### `GoogleCloudMlV1__TrainingInput`

Represents input parameters for a training job. When using the gcloud command to submit your training job, you can specify the input parameters as command-line arguments and/or in a YAML configuration file referenced from the --config command-line argument. For details, see the guide to [submitting a training job](/ai-platform/training/docs/training-jobs).

| Property | Type | Description |
|----------|------|-------------|
| `args` | `array<string>` | Optional. Command-line arguments passed to the training application when it starts. If your job u... |
| `enableWebAccess` | `boolean` | Optional. Whether you want AI Platform Training to enable [interactive shell access](https://clou... |
| `encryptionConfig` | `GoogleCloudMlV1__EncryptionConfig` | Optional. Options for using customer-managed encryption keys (CMEK) to protect resources created ... |
| `evaluatorConfig` | `GoogleCloudMlV1__ReplicaConfig` | Optional. The configuration for evaluators. You should only set `evaluatorConfig.acceleratorConfi... |
| `evaluatorCount` | `string` | Optional. The number of evaluator replicas to use for the training job. Each replica in the clust... |
| `evaluatorType` | `string` | Optional. Specifies the type of virtual machine to use for your training job's evaluator nodes. T... |
| `hyperparameters` | `GoogleCloudMlV1__HyperparameterSpec` | Optional. The set of Hyperparameters to tune. |
| `jobDir` | `string` | Optional. A Google Cloud Storage path in which to store training outputs and other data needed fo... |
| `masterConfig` | `GoogleCloudMlV1__ReplicaConfig` | Optional. The configuration for your master worker. You should only set `masterConfig.accelerator... |
| `masterType` | `string` | Optional. Specifies the type of virtual machine to use for your training job's master worker. You... |
| `network` | `string` | Optional. The full name of the [Compute Engine network](/vpc/docs/vpc) to which the Job is peered... |
| `packageUris` | `array<string>` | Required. The Google Cloud Storage location of the packages with the training program and any add... |
| `parameterServerConfig` | `GoogleCloudMlV1__ReplicaConfig` | Optional. The configuration for parameter servers. You should only set `parameterServerConfig.acc... |
| `parameterServerCount` | `string` | Optional. The number of parameter server replicas to use for the training job. Each replica in th... |
| `parameterServerType` | `string` | Optional. Specifies the type of virtual machine to use for your training job's parameter server. ... |
| `pythonModule` | `string` | Required. The Python module name to run after installing the packages. |
| `pythonVersion` | `string` | Optional. The version of Python used in training. You must either specify this field or specify `... |
| `region` | `string` | Required. The region to run the training job in. See the [available regions](/ai-platform/trainin... |
| `runtimeVersion` | `string` | Optional. The AI Platform runtime version to use for training. You must either specify this field... |
| `scaleTier` | `string` | Required. Specifies the machine types, the number of replicas for workers and parameter servers. |
| `scheduling` | `GoogleCloudMlV1__Scheduling` | Optional. Scheduling options for a training job. |
| `serviceAccount` | `string` | Optional. The email address of a service account to use when running the training appplication. Y... |
| `useChiefInTfConfig` | `boolean` | Optional. Use `chief` instead of `master` in the `TF_CONFIG` environment variable when training w... |
| `workerConfig` | `GoogleCloudMlV1__ReplicaConfig` | Optional. The configuration for workers. You should only set `workerConfig.acceleratorConfig` if ... |
| `workerCount` | `string` | Optional. The number of worker replicas to use for the training job. Each replica in the cluster ... |
| `workerType` | `string` | Optional. Specifies the type of virtual machine to use for your training job's worker nodes. The ... |

### `GoogleCloudMlV1__TrainingOutput`

Represents results of a training job. Output only.

| Property | Type | Description |
|----------|------|-------------|
| `builtInAlgorithmOutput` | `GoogleCloudMlV1__BuiltInAlgorithmOutput` | Details related to built-in algorithms jobs. Only set for built-in algorithms jobs. |
| `completedTrialCount` | `string` | The number of hyperparameter tuning trials that completed successfully. Only set for hyperparamet... |
| `consumedMLUnits` | `number` | The amount of ML units consumed by the job. |
| `hyperparameterMetricTag` | `string` | The TensorFlow summary tag name used for optimizing hyperparameter tuning trials. See [`Hyperpara... |
| `isBuiltInAlgorithmJob` | `boolean` | Whether this job is a built-in Algorithm job. |
| `isHyperparameterTuningJob` | `boolean` | Whether this job is a hyperparameter tuning job. |
| `trials` | `array<GoogleCloudMlV1__HyperparameterOutput>` | Results for individual Hyperparameter trials. Only set for hyperparameter tuning jobs. |
| `webAccessUris` | `object` | Output only. URIs for accessing [interactive shells](https://cloud.google.com/ai-platform/trainin... |

### `GoogleCloudMlV1__Trial`

A message representing a trial.

| Property | Type | Description |
|----------|------|-------------|
| `clientId` | `string` | Output only. The identifier of the client that originally requested this trial. |
| `endTime` | `string` | Output only. Time at which the trial's status changed to COMPLETED. |
| `finalMeasurement` | `GoogleCloudMlV1__Measurement` | The final measurement containing the objective value. |
| `infeasibleReason` | `string` | Output only. A human readable string describing why the trial is infeasible. This should only be ... |
| `measurements` | `array<GoogleCloudMlV1__Measurement>` | A list of measurements that are strictly lexicographically ordered by their induced tuples (steps... |
| `name` | `string` | Output only. Name of the trial assigned by the service. |
| `parameters` | `array<GoogleCloudMlV1_Trial_Parameter>` | The parameters of the trial. |
| `startTime` | `string` | Output only. Time at which the trial was started. |
| `state` | `string` | The detailed state of a trial. |
| `trialInfeasible` | `boolean` | Output only. If true, the parameters in this trial are not attempted again. |

### `GoogleCloudMlV1__Version`

Represents a version of the model. Each version is a trained model deployed in the cloud, ready to handle prediction requests. A model can have multiple versions. You can get information about all of the versions of a given model by calling projects.models.versions.list.

| Property | Type | Description |
|----------|------|-------------|
| `acceleratorConfig` | `GoogleCloudMlV1__AcceleratorConfig` | Optional. Accelerator config for using GPUs for online prediction (beta). Only specify this field... |
| `autoScaling` | `GoogleCloudMlV1__AutoScaling` | Automatically scale the number of nodes used to serve the model in response to increases and decr... |
| `container` | `GoogleCloudMlV1__ContainerSpec` | Optional. Specifies a custom container to use for serving predictions. If you specify this field,... |
| `createTime` | `string` | Output only. The time the version was created. |
| `deploymentUri` | `string` | The Cloud Storage URI of a directory containing trained model artifacts to be used to create the ... |
| `description` | `string` | Optional. The description specified for the version when it was created. |
| `errorMessage` | `string` | Output only. The details of a failure or a cancellation. |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `explanationConfig` | `GoogleCloudMlV1__ExplanationConfig` | Optional. Configures explainability features on the model's version. Some explanation features re... |
| `framework` | `string` | Optional. The machine learning framework AI Platform uses to train this version of the model. Val... |
| `isDefault` | `boolean` | Output only. If true, this version will be used to handle prediction requests that do not specify... |
| `labels` | `object` | Optional. One or more labels that you can add, to organize your model versions. Each label is a k... |
| `lastMigrationModelId` | `string` | Output only. The [AI Platform (Unified) `Model`](https://cloud.google.com/ai-platform-unified/doc... |
| `lastMigrationTime` | `string` | Output only. The last time this version was successfully [migrated to AI Platform (Unified)](http... |
| `lastUseTime` | `string` | Output only. The time the version was last used for prediction. |
| `machineType` | `string` | Optional. The type of machine on which to serve the model. Currently only applies to online predi... |
| `manualScaling` | `GoogleCloudMlV1__ManualScaling` | Manually select the number of nodes to use for serving the model. You should generally use `auto_... |
| `name` | `string` | Required. The name specified for the version when it was created. The version name must be unique... |
| `packageUris` | `array<string>` | Optional. Cloud Storage paths (`gs://…`) of packages for [custom prediction routines](/ml-engine/... |
| `predictionClass` | `string` | Optional. The fully qualified name (module_name.class_name) of a class that implements the Predic... |
| `pythonVersion` | `string` | Required. The version of Python used in prediction. The following Python versions are available: ... |
| `requestLoggingConfig` | `GoogleCloudMlV1__RequestLoggingConfig` | Optional. *Only* specify this field in a projects.models.versions.patch request. Specifying it in... |
| `routes` | `GoogleCloudMlV1__RouteMap` | Optional. Specifies paths on a custom container's HTTP server where AI Platform Prediction sends ... |
| `runtimeVersion` | `string` | Required. The AI Platform runtime version to use for this deployment. For more information, see t... |
| `serviceAccount` | `string` | Optional. Specifies the service account for resource access control. If you specify this field, t... |
| `state` | `string` | Output only. The state of a version. |

### `GoogleCloudMlV1__XraiAttribution`

Attributes credit by computing the XRAI taking advantage of the model's fully differentiable structure. Refer to this paper for more details: https://arxiv.org/abs/1906.02825 Currently only implemented for models with natural image inputs.

| Property | Type | Description |
|----------|------|-------------|
| `numIntegralSteps` | `integer` | Number of steps for approximating the path integral. A good value to start is 50 and gradually in... |

### `GoogleIamV1__AuditConfig`

Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both `allServices` and a specific service, the union of the two AuditConfigs is used for that service: the log_types specified in each AuditConfig are enabled, and the exempted_members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { "audit_configs": [ { "service": "allServices", "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" }, { "log_type": "ADMIN_READ" } ] }, { "service": "sampleservice.googleapis.com", "audit_log_configs": [ { "log_type": "DATA_READ" }, { "log_type": "DATA_WRITE", "exempted_members": [ "user:aliya@example.com" ] } ] } ] } For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com` from DATA_WRITE logging.

| Property | Type | Description |
|----------|------|-------------|
| `auditLogConfigs` | `array<GoogleIamV1__AuditLogConfig>` | The configuration for logging of each type of permission. |
| `service` | `string` | Specifies a service that will be enabled for audit logging. For example, `storage.googleapis.com`... |

### `GoogleIamV1__AuditLogConfig`

Provides the configuration for logging a type of permissions. Example: { "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.

| Property | Type | Description |
|----------|------|-------------|
| `exemptedMembers` | `array<string>` | Specifies the identities that do not cause logging for this type of permission. Follows the same ... |
| `logType` | `string` | The log type that this config enables. |

### `GoogleIamV1__Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `GoogleType__Expr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `GoogleIamV1__Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `auditConfigs` | `array<GoogleIamV1__AuditConfig>` | Specifies cloud audit logging configuration for this policy. |
| `bindings` | `array<GoogleIamV1__Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `GoogleIamV1__SetIamPolicyRequest`

Request message for `SetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `GoogleIamV1__Policy` | REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited ... |
| `updateMask` | `string` | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mas... |

### `GoogleIamV1__TestIamPermissionsRequest`

Request message for `TestIamPermissions` method.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | The set of permissions to check for the `resource`. Permissions with wildcards (such as `*` or `s... |

### `GoogleIamV1__TestIamPermissionsResponse`

Response message for `TestIamPermissions` method.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | A subset of `TestPermissionsRequest.permissions` that the caller is allowed. |

### `GoogleLongrunning__ListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<GoogleLongrunning__Operation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `GoogleLongrunning__Operation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `GoogleRpc__Status` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `GoogleProtobuf__Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `GoogleRpc__Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `GoogleType__Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

