# Cloud Run Admin API - API Reference

**Version**: `v2` | **Methods**: 54 | **Schemas**: 133

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `run.projects.locations.exportImage` | POST | `v2/{+name}:exportImage` | Export image for a given resource. |
| `run.projects.locations.exportProjectMetadata` | GET | `v2/{+name}:exportProjectMetadata` | Export generated customer metadata for a given project. |
| `run.projects.locations.exportMetadata` | GET | `v2/{+name}:exportMetadata` | Export generated customer metadata for a given resource. |
| `run.projects.locations.exportImageMetadata` | GET | `v2/{+name}:exportImageMetadata` | Export image metadata for a given resource. |
| `run.projects.locations.instances.start` | POST | `v2/{+name}:start` | Starts an Instance. |
| `run.projects.locations.instances.delete` | DELETE | `v2/{+name}` | Deletes a Instance |
| `run.projects.locations.instances.create` | POST | `v2/{+parent}/instances` | Creates an Instance. |
| `run.projects.locations.instances.stop` | POST | `v2/{+name}:stop` | Stops an Instance. |
| `run.projects.locations.instances.get` | GET | `v2/{+name}` | Gets a Instance |
| `run.projects.locations.instances.list` | GET | `v2/{+parent}/instances` | Lists Instances. Results are sorted by creation time, descending. |
| `run.projects.locations.services.delete` | DELETE | `v2/{+name}` | Deletes a Service. This will cause the Service to stop serving traffic and will delete all revisi... |
| `run.projects.locations.services.get` | GET | `v2/{+name}` | Gets information about a Service. |
| `run.projects.locations.services.getIamPolicy` | GET | `v2/{+resource}:getIamPolicy` | Gets the IAM Access Control policy currently in effect for the given Cloud Run Service. This resu... |
| `run.projects.locations.services.testIamPermissions` | POST | `v2/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified Project. There are no permissions required... |
| `run.projects.locations.services.list` | GET | `v2/{+parent}/services` | Lists Services. Results are sorted by creation time, descending. |
| `run.projects.locations.services.setIamPolicy` | POST | `v2/{+resource}:setIamPolicy` | Sets the IAM Access control policy for the specified Service. Overwrites any existing policy. |
| `run.projects.locations.services.create` | POST | `v2/{+parent}/services` | Creates a new Service in a given project and location. |
| `run.projects.locations.services.patch` | PATCH | `v2/{+name}` | Updates a Service. |
| `run.projects.locations.services.revisions.list` | GET | `v2/{+parent}/revisions` | Lists Revisions from a given Service, or from a given location. Results are sorted by creation ti... |
| `run.projects.locations.services.revisions.exportStatus` | GET | `v2/{+name}/{+operationId}:exportStatus` | Read the status of an image export operation. |
| `run.projects.locations.services.revisions.delete` | DELETE | `v2/{+name}` | Deletes a Revision. |
| `run.projects.locations.services.revisions.get` | GET | `v2/{+name}` | Gets information about a Revision. |
| `run.projects.locations.jobs.patch` | PATCH | `v2/{+name}` | Updates a Job. |
| `run.projects.locations.jobs.setIamPolicy` | POST | `v2/{+resource}:setIamPolicy` | Sets the IAM Access control policy for the specified Job. Overwrites any existing policy. |
| `run.projects.locations.jobs.delete` | DELETE | `v2/{+name}` | Deletes a Job. |
| `run.projects.locations.jobs.list` | GET | `v2/{+parent}/jobs` | Lists Jobs. Results are sorted by creation time, descending. |
| `run.projects.locations.jobs.create` | POST | `v2/{+parent}/jobs` | Creates a Job. |
| `run.projects.locations.jobs.run` | POST | `v2/{+name}:run` | Triggers creation of a new Execution of this Job. |
| `run.projects.locations.jobs.getIamPolicy` | GET | `v2/{+resource}:getIamPolicy` | Gets the IAM Access Control policy currently in effect for the given Job. This result does not in... |
| `run.projects.locations.jobs.get` | GET | `v2/{+name}` | Gets information about a Job. |
| `run.projects.locations.jobs.testIamPermissions` | POST | `v2/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified Project. There are no permissions required... |
| `run.projects.locations.jobs.executions.get` | GET | `v2/{+name}` | Gets information about an Execution. |
| `run.projects.locations.jobs.executions.list` | GET | `v2/{+parent}/executions` | Lists Executions from a Job. Results are sorted by creation time, descending. |
| `run.projects.locations.jobs.executions.delete` | DELETE | `v2/{+name}` | Deletes an Execution. |
| `run.projects.locations.jobs.executions.cancel` | POST | `v2/{+name}:cancel` | Cancels an Execution. |
| `run.projects.locations.jobs.executions.exportStatus` | GET | `v2/{+name}/{+operationId}:exportStatus` | Read the status of an image export operation. |
| `run.projects.locations.jobs.executions.tasks.list` | GET | `v2/{+parent}/tasks` | Lists Tasks from an Execution of a Job. |
| `run.projects.locations.jobs.executions.tasks.get` | GET | `v2/{+name}` | Gets information about a Task. |
| `run.projects.locations.workerPools.testIamPermissions` | POST | `v2/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified Project. There are no permissions required... |
| `run.projects.locations.workerPools.get` | GET | `v2/{+name}` | Gets information about a WorkerPool. |
| `run.projects.locations.workerPools.patch` | PATCH | `v2/{+name}` | Updates a WorkerPool. |
| `run.projects.locations.workerPools.create` | POST | `v2/{+parent}/workerPools` | Creates a new WorkerPool in a given project and location. |
| `run.projects.locations.workerPools.list` | GET | `v2/{+parent}/workerPools` | Lists WorkerPools. Results are sorted by creation time, descending. |
| `run.projects.locations.workerPools.getIamPolicy` | GET | `v2/{+resource}:getIamPolicy` | Gets the IAM Access Control policy currently in effect for the given Cloud Run WorkerPool. This r... |
| `run.projects.locations.workerPools.delete` | DELETE | `v2/{+name}` | Deletes a WorkerPool. |
| `run.projects.locations.workerPools.setIamPolicy` | POST | `v2/{+resource}:setIamPolicy` | Sets the IAM Access control policy for the specified WorkerPool. Overwrites any existing policy. |
| `run.projects.locations.workerPools.revisions.get` | GET | `v2/{+name}` | Gets information about a Revision. |
| `run.projects.locations.workerPools.revisions.list` | GET | `v2/{+parent}/revisions` | Lists Revisions from a given Service, or from a given location. Results are sorted by creation ti... |
| `run.projects.locations.workerPools.revisions.delete` | DELETE | `v2/{+name}` | Deletes a Revision. |
| `run.projects.locations.operations.wait` | POST | `v2/{+name}:wait` | Waits until the specified long-running operation is done or reaches at most a specified timeout, ... |
| `run.projects.locations.operations.get` | GET | `v2/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `run.projects.locations.operations.delete` | DELETE | `v2/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `run.projects.locations.operations.list` | GET | `v2/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `run.projects.locations.builds.submit` | POST | `v2/{+parent}/builds:submit` | Submits a build in a given project. |

### `run.projects.locations.exportImage`

**POST** `v2/{+name}:exportImage`

Export image for a given resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the resource of which image metadata should be exported. Format: `projects/{project_id_or_numbe... |

**Request body**: `GoogleCloudRunV2ExportImageRequest`

**Response**: `GoogleCloudRunV2ExportImageResponse`

```typescript
const res = await run.locations.exportImage({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `run.projects.locations.exportProjectMetadata`

**GET** `v2/{+name}:exportProjectMetadata`

Export generated customer metadata for a given project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the project of which metadata should be exported. Format: `projects/{project_id_or_number}/loca... |

**Response**: `GoogleCloudRunV2Metadata`

```typescript
const res = await run.locations.exportProjectMetadata({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `run.projects.locations.exportMetadata`

**GET** `v2/{+name}:exportMetadata`

Export generated customer metadata for a given resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the resource of which metadata should be exported. Format: `projects/{project_id_or_number}/loc... |

**Response**: `GoogleCloudRunV2Metadata`

```typescript
const res = await run.locations.exportMetadata({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `run.projects.locations.exportImageMetadata`

**GET** `v2/{+name}:exportImageMetadata`

Export image metadata for a given resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the resource of which image metadata should be exported. Format: `projects/{project_id_or_numbe... |

**Response**: `GoogleCloudRunV2Metadata`

```typescript
const res = await run.locations.exportImageMetadata({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `run.projects.locations.instances.start`

**POST** `v2/{+name}:start`

Starts an Instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Instance to stop. Format: `projects/{project}/locations/{location}/instances/{instance}`, w... |

**Request body**: `GoogleCloudRunV2StartInstanceRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await run.instances.start({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `run.projects.locations.instances.delete`

**DELETE** `v2/{+name}`

Deletes a Instance

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |
| `etag` | `string` | query | No | Optional. A system-generated fingerprint for this version of the resource. May be used to detect modification conflic... |
| `validateOnly` | `boolean` | query | No | Optional. Indicates that the request should be validated without actually deleting any resources. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await run.instances.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `run.projects.locations.instances.create`

**POST** `v2/{+parent}/instances`

Creates an Instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |
| `instanceId` | `string` | query | No | Optional. The unique identifier for the Instance. It must begin with letter, and cannot end with hyphen; must contain... |
| `validateOnly` | `boolean` | query | No | Optional. Indicates that the request should be validated and default values populated, without persisting the request... |

**Request body**: `GoogleCloudRunV2Instance`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await run.instances.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `run.projects.locations.instances.stop`

**POST** `v2/{+name}:stop`

Stops an Instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Instance to stop. Format: `projects/{project}/locations/{location}/instances/{instance}`, w... |

**Request body**: `GoogleCloudRunV2StopInstanceRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await run.instances.stop({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `run.projects.locations.instances.get`

**GET** `v2/{+name}`

Gets a Instance

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Response**: `GoogleCloudRunV2Instance`

```typescript
const res = await run.instances.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `run.projects.locations.instances.list`

**GET** `v2/{+parent}/instances`

Lists Instances. Results are sorted by creation time, descending.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The location and project to list resources on. Format: projects/{project}/locations/{location}, where {proj... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of Instances to return in this call. |
| `pageToken` | `string` | query | No | Optional. A page token received from a previous call to ListInstances. All other parameters must match. |
| `showDeleted` | `boolean` | query | No | Optional. If true, returns deleted (but unexpired) resources along with active ones. |

**Response**: `GoogleCloudRunV2ListInstancesResponse`

```typescript
const res = await run.instances.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `run.projects.locations.services.delete`

**DELETE** `v2/{+name}`

Deletes a Service. This will cause the Service to stop serving traffic and will delete all revisions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full name of the Service. Format: projects/{project}/locations/{location}/services/{service}, where {pr... |
| `etag` | `string` | query | No | A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during u... |
| `validateOnly` | `boolean` | query | No | Indicates that the request should be validated without actually deleting any resources. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await run.services.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/run`

---

### `run.projects.locations.services.get`

**GET** `v2/{+name}`

Gets information about a Service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full name of the Service. Format: projects/{project}/locations/{location}/services/{service}, where {pr... |

**Response**: `GoogleCloudRunV2Service`

```typescript
const res = await run.services.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/run`
- `https://www.googleapis.com/auth/run.readonly`

---

### `run.projects.locations.services.getIamPolicy`

**GET** `v2/{+resource}:getIamPolicy`

Gets the IAM Access Control policy currently in effect for the given Cloud Run Service. This result does not include any inherited policies.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `GoogleIamV1Policy`

```typescript
const res = await run.services.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/run`
- `https://www.googleapis.com/auth/run.readonly`

---

### `run.projects.locations.services.testIamPermissions`

**POST** `v2/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified Project. There are no permissions required for making this API call.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `GoogleIamV1TestIamPermissionsRequest`

**Response**: `GoogleIamV1TestIamPermissionsResponse`

```typescript
const res = await run.services.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/run`
- `https://www.googleapis.com/auth/run.readonly`

---

### `run.projects.locations.services.list`

**GET** `v2/{+parent}/services`

Lists Services. Results are sorted by creation time, descending.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The location and project to list resources on. Location must be a valid Google Cloud region, and cannot be ... |
| `pageSize` | `integer` | query | No | Maximum number of Services to return in this call. |
| `pageToken` | `string` | query | No | A page token received from a previous call to ListServices. All other parameters must match. |
| `showDeleted` | `boolean` | query | No | If true, returns deleted (but unexpired) resources along with active ones. |

**Response**: `GoogleCloudRunV2ListServicesResponse`

```typescript
const res = await run.services.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/run`
- `https://www.googleapis.com/auth/run.readonly`

---

### `run.projects.locations.services.setIamPolicy`

**POST** `v2/{+resource}:setIamPolicy`

Sets the IAM Access control policy for the specified Service. Overwrites any existing policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GoogleIamV1SetIamPolicyRequest`

**Response**: `GoogleIamV1Policy`

```typescript
const res = await run.services.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/run`

---

### `run.projects.locations.services.create`

**POST** `v2/{+parent}/services`

Creates a new Service in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The location and project in which this service should be created. Format: projects/{project}/locations/{loc... |
| `serviceId` | `string` | query | No | Optional. The unique identifier for the Service. It must begin with letter, and cannot end with hyphen; must contain ... |
| `validateOnly` | `boolean` | query | No | Indicates that the request should be validated and default values populated, without persisting the request or creati... |

**Request body**: `GoogleCloudRunV2Service`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await run.services.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/run`

---

### `run.projects.locations.services.patch`

**PATCH** `v2/{+name}`

Updates a Service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The fully qualified name of this Service. In CreateServiceRequest, this field is ignored, and instead com... |
| `allowMissing` | `boolean` | query | No | Optional. If set to true, and if the Service does not exist, it will create a new one. The caller must have 'run.serv... |
| `forceNewRevision` | `boolean` | query | No | Optional. If set to true, a new revision will be created from the template even if the system doesn't detect any chan... |
| `updateMask` | `string` | query | No | Optional. The list of fields to be updated. |
| `validateOnly` | `boolean` | query | No | Indicates that the request should be validated and default values populated, without persisting the request or updati... |

**Request body**: `GoogleCloudRunV2Service`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await run.services.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/run`

---

### `run.projects.locations.services.revisions.list`

**GET** `v2/{+parent}/revisions`

Lists Revisions from a given Service, or from a given location. Results are sorted by creation time, descending.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The Service from which the Revisions should be listed. To list all Revisions across Services, use "-" inste... |
| `pageSize` | `integer` | query | No | Maximum number of revisions to return in this call. |
| `pageToken` | `string` | query | No | A page token received from a previous call to ListRevisions. All other parameters must match. |
| `showDeleted` | `boolean` | query | No | If true, returns deleted (but unexpired) resources along with active ones. |

**Response**: `GoogleCloudRunV2ListRevisionsResponse`

```typescript
const res = await run.revisions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `run.projects.locations.services.revisions.exportStatus`

**GET** `v2/{+name}/{+operationId}:exportStatus`

Read the status of an image export operation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the resource of which image export operation status has to be fetched. Format: `projects/{proje... |
| `operationId` | `string` | path | Yes | Required. The operation id returned from ExportImage. |

**Response**: `GoogleCloudRunV2ExportStatusResponse`

```typescript
const res = await run.revisions.exportStatus({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `run.projects.locations.services.revisions.delete`

**DELETE** `v2/{+name}`

Deletes a Revision.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Revision to delete. Format: projects/{project}/locations/{location}/services/{service}/revi... |
| `etag` | `string` | query | No | A system-generated fingerprint for this version of the resource. This may be used to detect modification conflict dur... |
| `validateOnly` | `boolean` | query | No | Indicates that the request should be validated without actually deleting any resources. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await run.revisions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `run.projects.locations.services.revisions.get`

**GET** `v2/{+name}`

Gets information about a Revision.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full name of the Revision. Format: projects/{project}/locations/{location}/services/{service}/revisions... |

**Response**: `GoogleCloudRunV2Revision`

```typescript
const res = await run.revisions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `run.projects.locations.jobs.patch`

**PATCH** `v2/{+name}`

Updates a Job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The fully qualified name of this Job. Format: projects/{project}/locations/{location}/jobs/{job} |
| `allowMissing` | `boolean` | query | No | Optional. If set to true, and if the Job does not exist, it will create a new one. Caller must have both create and u... |
| `validateOnly` | `boolean` | query | No | Indicates that the request should be validated and default values populated, without persisting the request or updati... |

**Request body**: `GoogleCloudRunV2Job`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await run.jobs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `run.projects.locations.jobs.setIamPolicy`

**POST** `v2/{+resource}:setIamPolicy`

Sets the IAM Access control policy for the specified Job. Overwrites any existing policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GoogleIamV1SetIamPolicyRequest`

**Response**: `GoogleIamV1Policy`

```typescript
const res = await run.jobs.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `run.projects.locations.jobs.delete`

**DELETE** `v2/{+name}`

Deletes a Job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full name of the Job. Format: projects/{project}/locations/{location}/jobs/{job}, where {project} can b... |
| `etag` | `string` | query | No | A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during u... |
| `validateOnly` | `boolean` | query | No | Indicates that the request should be validated without actually deleting any resources. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await run.jobs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `run.projects.locations.jobs.list`

**GET** `v2/{+parent}/jobs`

Lists Jobs. Results are sorted by creation time, descending.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The location and project to list resources on. Format: projects/{project}/locations/{location}, where {proj... |
| `pageSize` | `integer` | query | No | Maximum number of Jobs to return in this call. |
| `pageToken` | `string` | query | No | A page token received from a previous call to ListJobs. All other parameters must match. |
| `showDeleted` | `boolean` | query | No | If true, returns deleted (but unexpired) resources along with active ones. |

**Response**: `GoogleCloudRunV2ListJobsResponse`

```typescript
const res = await run.jobs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `run.projects.locations.jobs.create`

**POST** `v2/{+parent}/jobs`

Creates a Job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The location and project in which this Job should be created. Format: projects/{project}/locations/{locatio... |
| `jobId` | `string` | query | No | Optional. The unique identifier for the Job. The name of the job becomes {parent}/jobs/{job_id}. If not provided, the... |
| `validateOnly` | `boolean` | query | No | Indicates that the request should be validated and default values populated, without persisting the request or creati... |

**Request body**: `GoogleCloudRunV2Job`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await run.jobs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `run.projects.locations.jobs.run`

**POST** `v2/{+name}:run`

Triggers creation of a new Execution of this Job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full name of the Job. Format: projects/{project}/locations/{location}/jobs/{job}, where {project} can b... |

**Request body**: `GoogleCloudRunV2RunJobRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await run.jobs.run({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `run.projects.locations.jobs.getIamPolicy`

**GET** `v2/{+resource}:getIamPolicy`

Gets the IAM Access Control policy currently in effect for the given Job. This result does not include any inherited policies.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `GoogleIamV1Policy`

```typescript
const res = await run.jobs.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `run.projects.locations.jobs.get`

**GET** `v2/{+name}`

Gets information about a Job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full name of the Job. Format: projects/{project}/locations/{location}/jobs/{job}, where {project} can b... |

**Response**: `GoogleCloudRunV2Job`

```typescript
const res = await run.jobs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `run.projects.locations.jobs.testIamPermissions`

**POST** `v2/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified Project. There are no permissions required for making this API call.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `GoogleIamV1TestIamPermissionsRequest`

**Response**: `GoogleIamV1TestIamPermissionsResponse`

```typescript
const res = await run.jobs.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `run.projects.locations.jobs.executions.get`

**GET** `v2/{+name}`

Gets information about an Execution.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full name of the Execution. Format: `projects/{project}/locations/{location}/jobs/{job}/executions/{exe... |

**Response**: `GoogleCloudRunV2Execution`

```typescript
const res = await run.executions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `run.projects.locations.jobs.executions.list`

**GET** `v2/{+parent}/executions`

Lists Executions from a Job. Results are sorted by creation time, descending.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The Execution from which the Executions should be listed. To list all Executions across Jobs, use "-" inste... |
| `pageSize` | `integer` | query | No | Maximum number of Executions to return in this call. |
| `pageToken` | `string` | query | No | A page token received from a previous call to ListExecutions. All other parameters must match. |
| `showDeleted` | `boolean` | query | No | If true, returns deleted (but unexpired) resources along with active ones. |

**Response**: `GoogleCloudRunV2ListExecutionsResponse`

```typescript
const res = await run.executions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `run.projects.locations.jobs.executions.delete`

**DELETE** `v2/{+name}`

Deletes an Execution.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Execution to delete. Format: `projects/{project}/locations/{location}/jobs/{job}/executions... |
| `etag` | `string` | query | No | A system-generated fingerprint for this version of the resource. This may be used to detect modification conflict dur... |
| `validateOnly` | `boolean` | query | No | Indicates that the request should be validated without actually deleting any resources. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await run.executions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `run.projects.locations.jobs.executions.cancel`

**POST** `v2/{+name}:cancel`

Cancels an Execution.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Execution to cancel. Format: `projects/{project}/locations/{location}/jobs/{job}/executions... |

**Request body**: `GoogleCloudRunV2CancelExecutionRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await run.executions.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `run.projects.locations.jobs.executions.exportStatus`

**GET** `v2/{+name}/{+operationId}:exportStatus`

Read the status of an image export operation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the resource of which image export operation status has to be fetched. Format: `projects/{proje... |
| `operationId` | `string` | path | Yes | Required. The operation id returned from ExportImage. |

**Response**: `GoogleCloudRunV2ExportStatusResponse`

```typescript
const res = await run.executions.exportStatus({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `run.projects.locations.jobs.executions.tasks.list`

**GET** `v2/{+parent}/tasks`

Lists Tasks from an Execution of a Job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The Execution from which the Tasks should be listed. To list all Tasks across Executions of a Job, use "-" ... |
| `pageSize` | `integer` | query | No | Maximum number of Tasks to return in this call. |
| `pageToken` | `string` | query | No | A page token received from a previous call to ListTasks. All other parameters must match. |
| `showDeleted` | `boolean` | query | No | If true, returns deleted (but unexpired) resources along with active ones. |

**Response**: `GoogleCloudRunV2ListTasksResponse`

```typescript
const res = await run.tasks.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `run.projects.locations.jobs.executions.tasks.get`

**GET** `v2/{+name}`

Gets information about a Task.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full name of the Task. Format: projects/{project}/locations/{location}/jobs/{job}/executions/{execution... |

**Response**: `GoogleCloudRunV2Task`

```typescript
const res = await run.tasks.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `run.projects.locations.workerPools.testIamPermissions`

**POST** `v2/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified Project. There are no permissions required for making this API call.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `GoogleIamV1TestIamPermissionsRequest`

**Response**: `GoogleIamV1TestIamPermissionsResponse`

```typescript
const res = await run.workerPools.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `run.projects.locations.workerPools.get`

**GET** `v2/{+name}`

Gets information about a WorkerPool.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full name of the WorkerPool. Format: `projects/{project}/locations/{location}/workerPools/{worker_pool}... |

**Response**: `GoogleCloudRunV2WorkerPool`

```typescript
const res = await run.workerPools.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `run.projects.locations.workerPools.patch`

**PATCH** `v2/{+name}`

Updates a WorkerPool.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The fully qualified name of this WorkerPool. In CreateWorkerPoolRequest, this field is ignored, and instead composed ... |
| `allowMissing` | `boolean` | query | No | Optional. If set to true, and if the WorkerPool does not exist, it will create a new one. The caller must have 'run.w... |
| `forceNewRevision` | `boolean` | query | No | Optional. If set to true, a new revision will be created from the template even if the system doesn't detect any chan... |
| `updateMask` | `string` | query | No | Optional. The list of fields to be updated. |
| `validateOnly` | `boolean` | query | No | Optional. Indicates that the request should be validated and default values populated, without persisting the request... |

**Request body**: `GoogleCloudRunV2WorkerPool`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await run.workerPools.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `run.projects.locations.workerPools.create`

**POST** `v2/{+parent}/workerPools`

Creates a new WorkerPool in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The location and project in which this worker pool should be created. Format: `projects/{project}/locations... |
| `validateOnly` | `boolean` | query | No | Optional. Indicates that the request should be validated and default values populated, without persisting the request... |
| `workerPoolId` | `string` | query | No | Optional. The unique identifier for the WorkerPool. It must begin with letter, and cannot end with hyphen; must conta... |

**Request body**: `GoogleCloudRunV2WorkerPool`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await run.workerPools.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `run.projects.locations.workerPools.list`

**GET** `v2/{+parent}/workerPools`

Lists WorkerPools. Results are sorted by creation time, descending.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The location and project to list resources on. Location must be a valid Google Cloud region, and cannot be ... |
| `pageSize` | `integer` | query | No | Maximum number of WorkerPools to return in this call. |
| `pageToken` | `string` | query | No | A page token received from a previous call to ListWorkerPools. All other parameters must match. |
| `showDeleted` | `boolean` | query | No | If true, returns deleted (but unexpired) resources along with active ones. |

**Response**: `GoogleCloudRunV2ListWorkerPoolsResponse`

```typescript
const res = await run.workerPools.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `run.projects.locations.workerPools.getIamPolicy`

**GET** `v2/{+resource}:getIamPolicy`

Gets the IAM Access Control policy currently in effect for the given Cloud Run WorkerPool. This result does not include any inherited policies.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `GoogleIamV1Policy`

```typescript
const res = await run.workerPools.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `run.projects.locations.workerPools.delete`

**DELETE** `v2/{+name}`

Deletes a WorkerPool.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full name of the WorkerPool. Format: `projects/{project}/locations/{location}/workerPools/{worker_pool}... |
| `etag` | `string` | query | No | A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during u... |
| `validateOnly` | `boolean` | query | No | Optional. Indicates that the request should be validated without actually deleting any resources. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await run.workerPools.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `run.projects.locations.workerPools.setIamPolicy`

**POST** `v2/{+resource}:setIamPolicy`

Sets the IAM Access control policy for the specified WorkerPool. Overwrites any existing policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GoogleIamV1SetIamPolicyRequest`

**Response**: `GoogleIamV1Policy`

```typescript
const res = await run.workerPools.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `run.projects.locations.workerPools.revisions.get`

**GET** `v2/{+name}`

Gets information about a Revision.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full name of the Revision. Format: projects/{project}/locations/{location}/services/{service}/revisions... |

**Response**: `GoogleCloudRunV2Revision`

```typescript
const res = await run.revisions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `run.projects.locations.workerPools.revisions.list`

**GET** `v2/{+parent}/revisions`

Lists Revisions from a given Service, or from a given location. Results are sorted by creation time, descending.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The Service from which the Revisions should be listed. To list all Revisions across Services, use "-" inste... |
| `pageSize` | `integer` | query | No | Maximum number of revisions to return in this call. |
| `pageToken` | `string` | query | No | A page token received from a previous call to ListRevisions. All other parameters must match. |
| `showDeleted` | `boolean` | query | No | If true, returns deleted (but unexpired) resources along with active ones. |

**Response**: `GoogleCloudRunV2ListRevisionsResponse`

```typescript
const res = await run.revisions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `run.projects.locations.workerPools.revisions.delete`

**DELETE** `v2/{+name}`

Deletes a Revision.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Revision to delete. Format: projects/{project}/locations/{location}/services/{service}/revi... |
| `etag` | `string` | query | No | A system-generated fingerprint for this version of the resource. This may be used to detect modification conflict dur... |
| `validateOnly` | `boolean` | query | No | Indicates that the request should be validated without actually deleting any resources. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await run.revisions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `run.projects.locations.operations.wait`

**POST** `v2/{+name}:wait`

Waits until the specified long-running operation is done or reaches at most a specified timeout, returning the latest state. If the operation is already done, the latest state is immediately returned. If the timeout specified is greater than the default HTTP/RPC timeout, the HTTP/RPC timeout is used. If the server does not support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Note that this method is on a best-effort basis. It may return the latest state before the specified timeout (including immediately), meaning even an immediate response is no guarantee that the operation is done.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to wait on. |

**Request body**: `GoogleLongrunningWaitOperationRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await run.operations.wait({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `run.projects.locations.operations.get`

**GET** `v2/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await run.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `run.projects.locations.operations.delete`

**DELETE** `v2/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await run.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `run.projects.locations.operations.list`

**GET** `v2/{+name}/operations`

Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. To query for all of the operations for a project. |
| `filter` | `string` | query | No | Optional. A filter for matching the completed or in-progress operations. The supported formats of *filter* are: To qu... |
| `pageSize` | `integer` | query | No | The maximum number of records that should be returned. Requested page size cannot exceed 100. If not set or set to le... |
| `pageToken` | `string` | query | No | Token identifying which result to start with, which is returned by a previous list call. |
| `returnPartialSuccess` | `boolean` | query | No | When set to `true`, operations that are reachable are returned as normal, and those that are unreachable are returned... |

**Response**: `GoogleLongrunningListOperationsResponse`

```typescript
const res = await run.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `run.projects.locations.builds.submit`

**POST** `v2/{+parent}/builds:submit`

Submits a build in a given project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location to build in. Location must be a region, e.g., 'us-central1' or 'global' if the glo... |

**Request body**: `GoogleCloudRunV2SubmitBuildRequest`

**Response**: `GoogleCloudRunV2SubmitBuildResponse`

```typescript
const res = await run.builds.submit({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `GoogleCloudRunV2BinaryAuthorization`

Settings for Binary Authorization feature.

| Property | Type | Description |
|----------|------|-------------|
| `breakglassJustification` | `string` | Optional. If present, indicates to use Breakglass using this justification. If use_default is Fal... |
| `policy` | `string` | Optional. The path to a binary authorization policy. Format: `projects/{project}/platforms/cloudR... |
| `useDefault` | `boolean` | Optional. If True, indicates to use the default project's binary authorization policy. If False, ... |

### `GoogleCloudRunV2BuildConfig`

Describes the Build step of the function that builds a container from the given source.

| Property | Type | Description |
|----------|------|-------------|
| `baseImage` | `string` | Optional. The base image used to build the function. |
| `enableAutomaticUpdates` | `boolean` | Optional. Sets whether the function will receive automatic base image updates. |
| `environmentVariables` | `object` | Optional. User-provided build-time environment variables for the function |
| `functionTarget` | `string` | Optional. The name of the function (as defined in source code) that will be executed. Defaults to... |
| `imageUri` | `string` | Optional. Artifact Registry URI to store the built image. |
| `name` | `string` | Output only. The Cloud Build name of the latest successful deployment of the function. |
| `serviceAccount` | `string` | Optional. Service account to be used for building the container. The format of this field is `pro... |
| `sourceLocation` | `string` | The Cloud Storage bucket URI where the function source code is located. |
| `workerPool` | `string` | Optional. Name of the Cloud Build Custom Worker Pool that should be used to build the Cloud Run f... |

### `GoogleCloudRunV2BuildInfo`

Build information of the image.

| Property | Type | Description |
|----------|------|-------------|
| `functionTarget` | `string` | Output only. Entry point of the function when the image is a Cloud Run function. |
| `sourceLocation` | `string` | Output only. Source code location of the image. |

### `GoogleCloudRunV2BuildpacksBuild`

Build the source using Buildpacks.

| Property | Type | Description |
|----------|------|-------------|
| `baseImage` | `string` | Optional. The base image to use for the build. |
| `cacheImageUri` | `string` | Optional. cache_image_uri is the GCR/AR URL where the cache image will be stored. cache_image_uri... |
| `enableAutomaticUpdates` | `boolean` | Optional. Whether or not the application container will be enrolled in automatic base image updat... |
| `environmentVariables` | `object` | Optional. User-provided build-time environment variables. |
| `functionTarget` | `string` | Optional. Name of the function target if the source is a function source. Required for function b... |
| `projectDescriptor` | `string` | Optional. project_descriptor stores the path to the project descriptor file. When empty, it means... |
| `runtime` | `string` | The runtime name, e.g. 'go113'. Leave blank for generic builds. |

### `GoogleCloudRunV2CancelExecutionRequest`

Request message for deleting an Execution.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | A system-generated fingerprint for this version of the resource. This may be used to detect modif... |
| `validateOnly` | `boolean` | Indicates that the request should be validated without actually cancelling any resources. |

### `GoogleCloudRunV2CloudSqlInstance`

Represents a set of Cloud SQL instances. Each one will be available under /cloudsql/[instance]. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run.

| Property | Type | Description |
|----------|------|-------------|
| `instances` | `array<string>` | A list of Cloud SQL instance connection names. Cloud Run uses these to establish connections to t... |

### `GoogleCloudRunV2CloudStorageSource`

Cloud Storage source.

| Property | Type | Description |
|----------|------|-------------|
| `bucket` | `string` | Required. The Cloud Storage bucket name. |
| `generation` | `string` | Optional. The Cloud Storage object generation. |
| `object` | `string` | Required. The Cloud Storage object name. |

### `GoogleCloudRunV2Condition`

Defines a status condition for a resource.

| Property | Type | Description |
|----------|------|-------------|
| `executionReason` | `string` | Output only. A reason for the execution condition. |
| `lastTransitionTime` | `string` | Last time the condition transitioned from one status to another. |
| `message` | `string` | Human readable message indicating details about the current status. |
| `reason` | `string` | Output only. A common (service-level) reason for this condition. |
| `revisionReason` | `string` | Output only. A reason for the revision condition. |
| `severity` | `string` | How to interpret failures of this condition, one of Error, Warning, Info |
| `state` | `string` | State of the condition. |
| `type` | `string` | type is used to communicate the status of the reconciliation process. See also: https://github.co... |

### `GoogleCloudRunV2Container`

A single application container. This specifies both the container to run, the command to run in the container and the arguments to supply to it. Note that additional arguments can be supplied by the system to the container at runtime.

| Property | Type | Description |
|----------|------|-------------|
| `args` | `array<string>` | Arguments to the entrypoint. The docker image's CMD is used if this is not provided. |
| `baseImageUri` | `string` | Base image for this container. Only supported for services. If set, it indicates that the service... |
| `buildInfo` | `GoogleCloudRunV2BuildInfo` | Output only. The build info of the container image. |
| `command` | `array<string>` | Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is n... |
| `dependsOn` | `array<string>` | Names of the containers that must start before this container. |
| `env` | `array<GoogleCloudRunV2EnvVar>` | List of environment variables to set in the container. |
| `image` | `string` | Required. Name of the container image in Dockerhub, Google Artifact Registry, or Google Container... |
| `livenessProbe` | `GoogleCloudRunV2Probe` | Periodic probe of container liveness. Container will be restarted if the probe fails. |
| `name` | `string` | Name of the container specified as a DNS_LABEL (RFC 1123). |
| `ports` | `array<GoogleCloudRunV2ContainerPort>` | List of ports to expose from the container. Only a single port can be specified. The specified po... |
| `readinessProbe` | `GoogleCloudRunV2Probe` | Readiness probe to be used for health checks. |
| `resources` | `GoogleCloudRunV2ResourceRequirements` | Compute Resource requirements by this container. |
| `sourceCode` | `GoogleCloudRunV2SourceCode` | Optional. Location of the source. |
| `startupProbe` | `GoogleCloudRunV2Probe` | Startup probe of application within the container. All other probes are disabled if a startup pro... |
| `volumeMounts` | `array<GoogleCloudRunV2VolumeMount>` | Volume to mount into the container's filesystem. |
| `workingDir` | `string` | Container's working directory. If not specified, the container runtime's default will be used, wh... |

### `GoogleCloudRunV2ContainerOverride`

Per-container override specification.

| Property | Type | Description |
|----------|------|-------------|
| `args` | `array<string>` | Optional. Arguments to the entrypoint. Will replace existing args for override. |
| `clearArgs` | `boolean` | Optional. True if the intention is to clear out existing args list. |
| `env` | `array<GoogleCloudRunV2EnvVar>` | List of environment variables to set in the container. Will be merged with existing env for overr... |
| `name` | `string` | The name of the container specified as a DNS_LABEL. |

### `GoogleCloudRunV2ContainerPort`

ContainerPort represents a network port in a single container.

| Property | Type | Description |
|----------|------|-------------|
| `containerPort` | `integer` | Port number the container listens on. This must be a valid TCP port number, 0 < container_port < ... |
| `name` | `string` | If specified, used to specify which protocol to use. Allowed values are "http1" and "h2c". |

### `GoogleCloudRunV2ContainerStatus`

ContainerStatus holds the information of container name and image digest value.

| Property | Type | Description |
|----------|------|-------------|
| `imageDigest` | `string` | ImageDigest holds the resolved digest for the image specified and resolved during the creation of... |
| `name` | `string` | The name of the container, if specified. |

### `GoogleCloudRunV2DockerBuild`

Build the source using Docker. This means the source has a Dockerfile.

### `GoogleCloudRunV2EmptyDirVolumeSource`

In memory (tmpfs) ephemeral storage. It is ephemeral in the sense that when the sandbox is taken down, the data is destroyed with it (it does not persist across sandbox runs).

| Property | Type | Description |
|----------|------|-------------|
| `medium` | `string` | The medium on which the data is stored. Acceptable values today is only MEMORY or none. When none... |
| `sizeLimit` | `string` | Limit on the storage usable by this EmptyDir volume. The size limit is also applicable for memory... |

### `GoogleCloudRunV2EnvVar`

EnvVar represents an environment variable present in a Container.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. Name of the environment variable. Must not exceed 32768 characters. |
| `value` | `string` | Literal value of the environment variable. Defaults to "", and the maximum length is 32768 bytes.... |
| `valueSource` | `GoogleCloudRunV2EnvVarSource` | Source for the environment variable's value. |

### `GoogleCloudRunV2EnvVarSource`

EnvVarSource represents a source for the value of an EnvVar.

| Property | Type | Description |
|----------|------|-------------|
| `secretKeyRef` | `GoogleCloudRunV2SecretKeySelector` | Selects a secret and a specific version from Cloud Secret Manager. |

### `GoogleCloudRunV2Execution`

Execution represents the configuration of a single execution. A execution an immutable resource that references a container image which is run to completion.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Output only. Unstructured key value map that may be set by external tools to store and arbitrary ... |
| `cancelledCount` | `integer` | Output only. The number of tasks which reached phase Cancelled. |
| `client` | `string` | Output only. Arbitrary identifier for the API client. |
| `clientVersion` | `string` | Output only. Arbitrary version identifier for the API client. |
| `completionTime` | `string` | Output only. Represents time when the execution was completed. It is not guaranteed to be set in ... |
| `conditions` | `array<GoogleCloudRunV2Condition>` | Output only. The Condition of this Execution, containing its readiness status, and detailed error... |
| `createTime` | `string` | Output only. Represents time when the execution was acknowledged by the execution controller. It ... |
| `creator` | `string` | Output only. Email address of the authenticated creator. |
| `deleteTime` | `string` | Output only. For a deleted resource, the deletion time. It is only populated as a response to a D... |
| `etag` | `string` | Output only. A system-generated fingerprint for this version of the resource. May be used to dete... |
| `expireTime` | `string` | Output only. For a deleted resource, the time after which it will be permamently deleted. It is o... |
| `failedCount` | `integer` | Output only. The number of tasks which reached phase Failed. |
| `generation` | `string` | Output only. A number that monotonically increases every time the user modifies the desired state. |
| `job` | `string` | Output only. The name of the parent Job. |
| `labels` | `object` | Output only. Unstructured key value map that can be used to organize and categorize objects. User... |
| `launchStage` | `string` | The least stable launch stage needed to create this resource, as defined by [Google Cloud Platfor... |
| `logUri` | `string` | Output only. URI where logs for this execution can be found in Cloud Console. |
| `name` | `string` | Output only. The unique name of this Execution. |
| `observedGeneration` | `string` | Output only. The generation of this Execution. See comments in `reconciling` for additional infor... |
| `parallelism` | `integer` | Output only. Specifies the maximum desired number of tasks the execution should run at any given ... |
| `reconciling` | `boolean` | Output only. Indicates whether the resource's reconciliation is still in progress. See comments i... |
| `retriedCount` | `integer` | Output only. The number of tasks which have retried at least once. |
| `runningCount` | `integer` | Output only. The number of actively running tasks. |
| `satisfiesPzs` | `boolean` | Output only. Reserved for future use. |
| `startTime` | `string` | Output only. Represents time when the execution started to run. It is not guaranteed to be set in... |
| `succeededCount` | `integer` | Output only. The number of tasks which reached phase Succeeded. |
| `taskCount` | `integer` | Output only. Specifies the desired number of tasks the execution should run. Setting to 1 means t... |
| `template` | `GoogleCloudRunV2TaskTemplate` | Output only. The template used to create tasks for this execution. |
| `uid` | `string` | Output only. Server assigned unique identifier for the Execution. The value is a UUID4 string and... |
| `updateTime` | `string` | Output only. The last-modified time. |

### `GoogleCloudRunV2ExecutionReference`

Reference to an Execution. Use /Executions.GetExecution with the given name to get full execution including the latest status.

| Property | Type | Description |
|----------|------|-------------|
| `completionStatus` | `string` | Status for the execution completion. |
| `completionTime` | `string` | Creation timestamp of the execution. |
| `createTime` | `string` | Creation timestamp of the execution. |
| `deleteTime` | `string` | The deletion time of the execution. It is only populated as a response to a Delete request. |
| `name` | `string` | Name of the execution. |

### `GoogleCloudRunV2ExecutionTemplate`

ExecutionTemplate describes the data an execution should have when created from a template.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Unstructured key value map that may be set by external tools to store and arbitrary metadata. The... |
| `client` | `string` | Optional. Arbitrary identifier for the API client. |
| `clientVersion` | `string` | Optional. Arbitrary version identifier for the API client. |
| `labels` | `object` | Unstructured key value map that can be used to organize and categorize objects. User-provided lab... |
| `parallelism` | `integer` | Optional. Specifies the maximum desired number of tasks the execution should run at given time. W... |
| `taskCount` | `integer` | Specifies the desired number of tasks the execution should run. Setting to 1 means that paralleli... |
| `template` | `GoogleCloudRunV2TaskTemplate` | Required. Describes the task(s) that will be created when executing an execution. |

### `GoogleCloudRunV2ExportImageRequest`

Request message for exporting Cloud Run image.

| Property | Type | Description |
|----------|------|-------------|
| `destinationRepo` | `string` | Required. The export destination url (the Artifact Registry repo). |

### `GoogleCloudRunV2ExportImageResponse`

ExportImageResponse contains an operation Id to track the image export operation.

| Property | Type | Description |
|----------|------|-------------|
| `operationId` | `string` | An operation ID used to track the status of image exports tied to the original pod ID in the requ... |

### `GoogleCloudRunV2ExportStatusResponse`

ExportStatusResponse contains the status of image export operation, with the status of each image export job.

| Property | Type | Description |
|----------|------|-------------|
| `imageExportStatuses` | `array<GoogleCloudRunV2ImageExportStatus>` | The status of each image export job. |
| `operationId` | `string` | The operation id. |
| `operationState` | `string` | Output only. The state of the overall export operation. |

### `GoogleCloudRunV2GCSVolumeSource`

Represents a volume backed by a Cloud Storage bucket using Cloud Storage FUSE.

| Property | Type | Description |
|----------|------|-------------|
| `bucket` | `string` | Cloud Storage Bucket name. |
| `mountOptions` | `array<string>` | A list of additional flags to pass to the gcsfuse CLI. Options should be specified without the le... |
| `readOnly` | `boolean` | If true, the volume will be mounted as read only for all mounts. |

### `GoogleCloudRunV2GRPCAction`

GRPCAction describes an action involving a GRPC port.

| Property | Type | Description |
|----------|------|-------------|
| `port` | `integer` | Optional. Port number of the gRPC service. Number must be in the range 1 to 65535. If not specifi... |
| `service` | `string` | Optional. Service is the name of the service to place in the gRPC HealthCheckRequest (see https:/... |

### `GoogleCloudRunV2HTTPGetAction`

HTTPGetAction describes an action based on HTTP Get requests.

| Property | Type | Description |
|----------|------|-------------|
| `httpHeaders` | `array<GoogleCloudRunV2HTTPHeader>` | Optional. Custom headers to set in the request. HTTP allows repeated headers. |
| `path` | `string` | Optional. Path to access on the HTTP server. Defaults to '/'. |
| `port` | `integer` | Optional. Port number to access on the container. Must be in the range 1 to 65535. If not specifi... |

### `GoogleCloudRunV2HTTPHeader`

HTTPHeader describes a custom header to be used in HTTP probes

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. The header field name |
| `value` | `string` | Optional. The header field value |

### `GoogleCloudRunV2ImageExportStatus`

The status of an image export job.

| Property | Type | Description |
|----------|------|-------------|
| `exportJobState` | `string` | Output only. Has the image export job finished (regardless of successful or failure). |
| `exportedImageDigest` | `string` | The exported image ID as it will appear in Artifact Registry. |
| `status` | `UtilStatusProto` | The status of the export task if done. |
| `tag` | `string` | The image tag as it will appear in Artifact Registry. |

### `GoogleCloudRunV2Instance`

A Cloud Run Instance represents a single group of containers running in a region.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` |  |
| `binaryAuthorization` | `GoogleCloudRunV2BinaryAuthorization` | Settings for the Binary Authorization feature. |
| `client` | `string` | Arbitrary identifier for the API client. |
| `clientVersion` | `string` | Arbitrary version identifier for the API client. |
| `conditions` | `array<GoogleCloudRunV2Condition>` | Output only. The Conditions of all other associated sub-resources. They contain additional diagno... |
| `containerStatuses` | `array<GoogleCloudRunV2ContainerStatus>` | Output only. Status information for each of the specified containers. The status includes the res... |
| `containers` | `array<GoogleCloudRunV2Container>` | Required. Holds the single container that defines the unit of execution for this Instance. |
| `createTime` | `string` | Output only. The creation time. |
| `creator` | `string` | Output only. Email address of the authenticated creator. |
| `deleteTime` | `string` | Output only. The deletion time. |
| `description` | `string` | User-provided description of the Instance. This field currently has a 512-character limit. |
| `encryptionKey` | `string` | A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. F... |
| `encryptionKeyRevocationAction` | `string` | The action to take if the encryption key is revoked. |
| `encryptionKeyShutdownDuration` | `string` | If encryption_key_revocation_action is SHUTDOWN, the duration before shutting down all instances.... |
| `etag` | `string` | Optional. A system-generated fingerprint for this version of the resource. May be used to detect ... |
| `expireTime` | `string` | Output only. For a deleted resource, the time after which it will be permamently deleted. |
| `generation` | `string` | Output only. A number that monotonically increases every time the user modifies the desired state... |
| `gpuZonalRedundancyDisabled` | `boolean` | Optional. True if GPU zonal redundancy is disabled on this instance. |
| `iapEnabled` | `boolean` | Optional. IAP settings on the Instance. |
| `ingress` | `string` | Optional. Provides the ingress settings for this Instance. On output, returns the currently obser... |
| `invokerIamDisabled` | `boolean` | Optional. Disables IAM permission check for run.routes.invoke for callers of this Instance. For m... |
| `labels` | `object` |  |
| `lastModifier` | `string` | Output only. Email address of the last authenticated modifier. |
| `launchStage` | `string` | The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/ter... |
| `logUri` | `string` | Output only. The Google Console URI to obtain logs for the Instance. |
| `name` | `string` | The fully qualified name of this Instance. In CreateInstanceRequest, this field is ignored, and i... |
| `nodeSelector` | `GoogleCloudRunV2NodeSelector` | Optional. The node selector for the instance. |
| `observedGeneration` | `string` | Output only. The generation of this Instance currently serving traffic. See comments in `reconcil... |
| `reconciling` | `boolean` | Output only. Returns true if the Instance is currently being acted upon by the system to bring it... |
| `satisfiesPzs` | `boolean` | Output only. Reserved for future use. |
| `serviceAccount` | `string` |  |
| `terminalCondition` | `GoogleCloudRunV2Condition` | Output only. The Condition of this Instance, containing its readiness status, and detailed error ... |
| `timeout` | `string` | Optional. Duration the instance may be active before the system will shut it down. |
| `uid` | `string` | Output only. Server assigned unique identifier for the trigger. The value is a UUID4 string and g... |
| `updateTime` | `string` | Output only. The last-modified time. |
| `urls` | `array<string>` | Output only. All URLs serving traffic for this Instance. |
| `volumes` | `array<GoogleCloudRunV2Volume>` | A list of Volumes to make available to containers. |
| `vpcAccess` | `GoogleCloudRunV2VpcAccess` | Optional. VPC Access configuration to use for this Revision. For more information, visit https://... |

### `GoogleCloudRunV2InstanceSplit`

Holds a single instance split entry for the Worker. Allocations can be done to a specific Revision name, or pointing to the latest Ready Revision.

| Property | Type | Description |
|----------|------|-------------|
| `percent` | `integer` | Specifies percent of the instance split to this Revision. This defaults to zero if unspecified. |
| `revision` | `string` | Revision to which to assign this portion of instances, if split allocation is by revision. |
| `type` | `string` | The allocation type for this instance split. |

### `GoogleCloudRunV2InstanceSplitStatus`

Represents the observed state of a single `InstanceSplit` entry.

| Property | Type | Description |
|----------|------|-------------|
| `percent` | `integer` | Specifies percent of the instance split to this Revision. |
| `revision` | `string` | Revision to which this instance split is assigned. |
| `type` | `string` | The allocation type for this instance split. |

### `GoogleCloudRunV2Job`

Job represents the configuration of a single job, which references a container image that is run to completion.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Unstructured key value map that may be set by external tools to store and arbitrary metadata. The... |
| `binaryAuthorization` | `GoogleCloudRunV2BinaryAuthorization` | Settings for the Binary Authorization feature. |
| `client` | `string` | Arbitrary identifier for the API client. |
| `clientVersion` | `string` | Arbitrary version identifier for the API client. |
| `conditions` | `array<GoogleCloudRunV2Condition>` | Output only. The Conditions of all other associated sub-resources. They contain additional diagno... |
| `createTime` | `string` | Output only. The creation time. |
| `creator` | `string` | Output only. Email address of the authenticated creator. |
| `deleteTime` | `string` | Output only. The deletion time. It is only populated as a response to a Delete request. |
| `etag` | `string` | Optional. A system-generated fingerprint for this version of the resource. May be used to detect ... |
| `executionCount` | `integer` | Output only. Number of executions created for this job. |
| `expireTime` | `string` | Output only. For a deleted resource, the time after which it will be permamently deleted. |
| `generation` | `string` | Output only. A number that monotonically increases every time the user modifies the desired state. |
| `labels` | `object` | Unstructured key value map that can be used to organize and categorize objects. User-provided lab... |
| `lastModifier` | `string` | Output only. Email address of the last authenticated modifier. |
| `latestCreatedExecution` | `GoogleCloudRunV2ExecutionReference` | Output only. Name of the last created execution. |
| `launchStage` | `string` | The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/ter... |
| `name` | `string` | The fully qualified name of this Job. Format: projects/{project}/locations/{location}/jobs/{job} |
| `observedGeneration` | `string` | Output only. The generation of this Job. See comments in `reconciling` for additional information... |
| `reconciling` | `boolean` | Output only. Returns true if the Job is currently being acted upon by the system to bring it into... |
| `runExecutionToken` | `string` | A unique string used as a suffix for creating a new execution. The Job will become ready when the... |
| `satisfiesPzs` | `boolean` | Output only. Reserved for future use. |
| `startExecutionToken` | `string` | A unique string used as a suffix creating a new execution. The Job will become ready when the exe... |
| `template` | `GoogleCloudRunV2ExecutionTemplate` | Required. The template used to create executions for this Job. |
| `terminalCondition` | `GoogleCloudRunV2Condition` | Output only. The Condition of this Job, containing its readiness status, and detailed error infor... |
| `uid` | `string` | Output only. Server assigned unique identifier for the Execution. The value is a UUID4 string and... |
| `updateTime` | `string` | Output only. The last-modified time. |

### `GoogleCloudRunV2ListExecutionsResponse`

Response message containing a list of Executions.

| Property | Type | Description |
|----------|------|-------------|
| `executions` | `array<GoogleCloudRunV2Execution>` | The resulting list of Executions. |
| `nextPageToken` | `string` | A token indicating there are more items than page_size. Use it in the next ListExecutions request... |

### `GoogleCloudRunV2ListInstancesResponse`

Response message containing a list of Instances.

| Property | Type | Description |
|----------|------|-------------|
| `instances` | `array<GoogleCloudRunV2Instance>` | The resulting list of Instances. |
| `nextPageToken` | `string` | A token indicating there are more items than page_size. Use it in the next ListInstances request ... |

### `GoogleCloudRunV2ListJobsResponse`

Response message containing a list of Jobs.

| Property | Type | Description |
|----------|------|-------------|
| `jobs` | `array<GoogleCloudRunV2Job>` | The resulting list of Jobs. |
| `nextPageToken` | `string` | A token indicating there are more items than page_size. Use it in the next ListJobs request to co... |

### `GoogleCloudRunV2ListRevisionsResponse`

Response message containing a list of Revisions.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token indicating there are more items than page_size. Use it in the next ListRevisions request ... |
| `revisions` | `array<GoogleCloudRunV2Revision>` | The resulting list of Revisions. |

### `GoogleCloudRunV2ListServicesResponse`

Response message containing a list of Services.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token indicating there are more items than page_size. Use it in the next ListServices request t... |
| `services` | `array<GoogleCloudRunV2Service>` | The resulting list of Services. |
| `unreachable` | `array<string>` | Output only. For global requests, returns the list of regions that could not be reached within th... |

### `GoogleCloudRunV2ListTasksResponse`

Response message containing a list of Tasks.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token indicating there are more items than page_size. Use it in the next ListTasks request to c... |
| `tasks` | `array<GoogleCloudRunV2Task>` | The resulting list of Tasks. |

### `GoogleCloudRunV2ListWorkerPoolsResponse`

Response message containing a list of WorkerPools.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token indicating there are more items than page_size. Use it in the next ListWorkerPools reques... |
| `workerPools` | `array<GoogleCloudRunV2WorkerPool>` | The resulting list of WorkerPools. |

### `GoogleCloudRunV2Metadata`

Metadata represents the JSON encoded generated customer metadata.

| Property | Type | Description |
|----------|------|-------------|
| `metadata` | `string` | JSON encoded Google-generated Customer Metadata for a given resource/project. |

### `GoogleCloudRunV2MultiRegionSettings`

Settings for multi-region deployment.

| Property | Type | Description |
|----------|------|-------------|
| `multiRegionId` | `string` | Optional. System-generated unique id for the multi-region Service. |
| `regions` | `array<string>` | Required. List of regions to deploy to, including primary region. |

### `GoogleCloudRunV2NFSVolumeSource`

Represents an NFS mount.

| Property | Type | Description |
|----------|------|-------------|
| `path` | `string` | Path that is exported by the NFS server. |
| `readOnly` | `boolean` | If true, the volume will be mounted as read only for all mounts. |
| `server` | `string` | Hostname or IP address of the NFS server |

### `GoogleCloudRunV2NetworkInterface`

Direct VPC egress settings.

| Property | Type | Description |
|----------|------|-------------|
| `network` | `string` | Optional. The VPC network that the Cloud Run resource will be able to send traffic to. At least o... |
| `subnetwork` | `string` | Optional. The VPC subnetwork that the Cloud Run resource will get IPs from. At least one of netwo... |
| `tags` | `array<string>` | Optional. Network tags applied to this Cloud Run resource. |

### `GoogleCloudRunV2NodeSelector`

Hardware constraints configuration.

| Property | Type | Description |
|----------|------|-------------|
| `accelerator` | `string` | Required. GPU accelerator type to attach to an instance. |

### `GoogleCloudRunV2Overrides`

RunJob Overrides that contains Execution fields to be overridden.

| Property | Type | Description |
|----------|------|-------------|
| `containerOverrides` | `array<GoogleCloudRunV2ContainerOverride>` | Per container override specification. |
| `taskCount` | `integer` | Optional. The desired number of tasks the execution should run. Will replace existing task_count ... |
| `timeout` | `string` | Duration in seconds the task may be active before the system will actively try to mark it failed ... |

### `GoogleCloudRunV2Probe`

Probe describes a health check to be performed against a container to determine whether it is alive or ready to receive traffic.

| Property | Type | Description |
|----------|------|-------------|
| `failureThreshold` | `integer` | Optional. Minimum consecutive failures for the probe to be considered failed after having succeed... |
| `grpc` | `GoogleCloudRunV2GRPCAction` | Optional. GRPC specifies an action involving a gRPC port. Exactly one of httpGet, tcpSocket, or g... |
| `httpGet` | `GoogleCloudRunV2HTTPGetAction` | Optional. HTTPGet specifies the http request to perform. Exactly one of httpGet, tcpSocket, or gr... |
| `initialDelaySeconds` | `integer` | Optional. Number of seconds after the container has started before the probe is initiated. Defaul... |
| `periodSeconds` | `integer` | Optional. How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1.... |
| `tcpSocket` | `GoogleCloudRunV2TCPSocketAction` | Optional. TCPSocket specifies an action involving a TCP port. Exactly one of httpGet, tcpSocket, ... |
| `timeoutSeconds` | `integer` | Optional. Number of seconds after which the probe times out. Defaults to 1 second. Minimum value ... |

### `GoogleCloudRunV2ResourceRequirements`

ResourceRequirements describes the compute resource requirements.

| Property | Type | Description |
|----------|------|-------------|
| `cpuIdle` | `boolean` | Determines whether CPU is only allocated during requests (true by default). However, if ResourceR... |
| `limits` | `object` | Only `memory`, `cpu` and `nvidia.com/gpu` keys in the map are supported. Notes: * The only suppor... |
| `startupCpuBoost` | `boolean` | Determines whether CPU should be boosted on startup of a new container instance above the request... |

### `GoogleCloudRunV2Revision`

A Revision is an immutable snapshot of code and configuration. A Revision references a container image. Revisions are only created by updates to its parent Service.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Output only. Unstructured key value map that may be set by external tools to store and arbitrary ... |
| `client` | `string` | Output only. Arbitrary identifier for the API client. |
| `clientVersion` | `string` | Output only. Arbitrary version identifier for the API client. |
| `conditions` | `array<GoogleCloudRunV2Condition>` | Output only. The Condition of this Revision, containing its readiness status, and detailed error ... |
| `containers` | `array<GoogleCloudRunV2Container>` | Holds the list which define the units of execution for this Revision. |
| `createTime` | `string` | Output only. The creation time. |
| `creator` | `string` | Output only. Email address of the authenticated creator. |
| `deleteTime` | `string` | Output only. For a deleted resource, the deletion time. It is only populated as a response to a D... |
| `encryptionKey` | `string` | A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. F... |
| `encryptionKeyRevocationAction` | `string` | The action to take if the encryption key is revoked. |
| `encryptionKeyShutdownDuration` | `string` | If encryption_key_revocation_action is SHUTDOWN, the duration before shutting down all instances.... |
| `etag` | `string` | Output only. A system-generated fingerprint for this version of the resource. May be used to dete... |
| `executionEnvironment` | `string` | The execution environment being used to host this Revision. |
| `expireTime` | `string` | Output only. For a deleted resource, the time after which it will be permamently deleted. It is o... |
| `generation` | `string` | Output only. A number that monotonically increases every time the user modifies the desired state. |
| `gpuZonalRedundancyDisabled` | `boolean` | Optional. Output only. True if GPU zonal redundancy is disabled on this revision. |
| `labels` | `object` | Output only. Unstructured key value map that can be used to organize and categorize objects. User... |
| `launchStage` | `string` | The least stable launch stage needed to create this resource, as defined by [Google Cloud Platfor... |
| `logUri` | `string` | Output only. The Google Console URI to obtain logs for the Revision. |
| `maxInstanceRequestConcurrency` | `integer` | Sets the maximum number of requests that each serving instance can receive. |
| `name` | `string` | Output only. The unique name of this Revision. |
| `nodeSelector` | `GoogleCloudRunV2NodeSelector` | The node selector for the revision. |
| `observedGeneration` | `string` | Output only. The generation of this Revision currently serving traffic. See comments in `reconcil... |
| `reconciling` | `boolean` | Output only. Indicates whether the resource's reconciliation is still in progress. See comments i... |
| `satisfiesPzs` | `boolean` | Output only. Reserved for future use. |
| `scaling` | `GoogleCloudRunV2RevisionScaling` | Scaling settings for this revision. |
| `scalingStatus` | `GoogleCloudRunV2RevisionScalingStatus` | Output only. The current effective scaling settings for the revision. |
| `service` | `string` | Output only. The name of the parent service. |
| `serviceAccount` | `string` | Email address of the IAM service account associated with the revision of the service. The service... |
| `serviceMesh` | `GoogleCloudRunV2ServiceMesh` | Enables service mesh connectivity. |
| `sessionAffinity` | `boolean` | Enable session affinity. |
| `timeout` | `string` | Max allowed time for an instance to respond to a request. |
| `uid` | `string` | Output only. Server assigned unique identifier for the Revision. The value is a UUID4 string and ... |
| `updateTime` | `string` | Output only. The last-modified time. |
| `volumes` | `array<GoogleCloudRunV2Volume>` | A list of Volumes to make available to containers. |
| `vpcAccess` | `GoogleCloudRunV2VpcAccess` | VPC Access configuration for this Revision. For more information, visit https://cloud.google.com/... |

### `GoogleCloudRunV2RevisionScaling`

Settings for revision-level scaling settings.

| Property | Type | Description |
|----------|------|-------------|
| `concurrencyUtilization` | `number` | Optional. Determines a threshold for concurrency utilization before scaling begins. Accepted valu... |
| `cpuUtilization` | `number` | Optional. Determines a threshold for CPU utilization before scaling begins. Accepted values are b... |
| `maxInstanceCount` | `integer` | Optional. Maximum number of serving instances that this resource should have. When unspecified, t... |
| `minInstanceCount` | `integer` | Optional. Minimum number of serving instances that this resource should have. |

### `GoogleCloudRunV2RevisionScalingStatus`

Effective settings for the current revision

| Property | Type | Description |
|----------|------|-------------|
| `desiredMinInstanceCount` | `integer` | The current number of min instances provisioned for this revision. |

### `GoogleCloudRunV2RevisionTemplate`

RevisionTemplate describes the data a revision should have when created from a template.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Optional. Unstructured key value map that may be set by external tools to store and arbitrary met... |
| `client` | `string` | Optional. Arbitrary identifier for the API client. |
| `clientVersion` | `string` | Optional. Arbitrary version identifier for the API client. |
| `containers` | `array<GoogleCloudRunV2Container>` | Holds the list which define the units of execution for this Revision. |
| `encryptionKey` | `string` | A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. F... |
| `encryptionKeyRevocationAction` | `string` | Optional. The action to take if the encryption key is revoked. |
| `encryptionKeyShutdownDuration` | `string` | Optional. If encryption_key_revocation_action is SHUTDOWN, the duration before shutting down all ... |
| `executionEnvironment` | `string` | Optional. The sandbox environment to host this Revision. |
| `gpuZonalRedundancyDisabled` | `boolean` | Optional. True if GPU zonal redundancy is disabled on this revision. |
| `healthCheckDisabled` | `boolean` | Optional. Disables health checking containers during deployment. |
| `labels` | `object` | Optional. Unstructured key value map that can be used to organize and categorize objects. User-pr... |
| `maxInstanceRequestConcurrency` | `integer` | Optional. Sets the maximum number of requests that each serving instance can receive. If not spec... |
| `nodeSelector` | `GoogleCloudRunV2NodeSelector` | Optional. The node selector for the revision template. |
| `revision` | `string` | Optional. The unique name for the revision. If this field is omitted, it will be automatically ge... |
| `scaling` | `GoogleCloudRunV2RevisionScaling` | Optional. Scaling settings for this Revision. |
| `serviceAccount` | `string` | Optional. Email address of the IAM service account associated with the revision of the service. T... |
| `serviceMesh` | `GoogleCloudRunV2ServiceMesh` | Optional. Enables service mesh connectivity. |
| `sessionAffinity` | `boolean` | Optional. Enable session affinity. |
| `timeout` | `string` | Optional. Max allowed time for an instance to respond to a request. |
| `volumes` | `array<GoogleCloudRunV2Volume>` | Optional. A list of Volumes to make available to containers. |
| `vpcAccess` | `GoogleCloudRunV2VpcAccess` | Optional. VPC Access configuration to use for this Revision. For more information, visit https://... |

### `GoogleCloudRunV2RunJobRequest`

Request message to create a new Execution of a Job.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | A system-generated fingerprint for this version of the resource. May be used to detect modificati... |
| `overrides` | `GoogleCloudRunV2Overrides` | Overrides specification for a given execution of a job. If provided, overrides will be applied to... |
| `validateOnly` | `boolean` | Indicates that the request should be validated without actually deleting any resources. |

### `GoogleCloudRunV2SecretKeySelector`

SecretEnvVarSource represents a source for the value of an EnvVar.

| Property | Type | Description |
|----------|------|-------------|
| `secret` | `string` | Required. The name of the secret in Cloud Secret Manager. Format: {secret_name} if the secret is ... |
| `version` | `string` | The Cloud Secret Manager secret version. Can be 'latest' for the latest version, an integer for a... |

### `GoogleCloudRunV2SecretVolumeSource`

The secret's value will be presented as the content of a file whose name is defined in the item path. If no items are defined, the name of the file is the secret.

| Property | Type | Description |
|----------|------|-------------|
| `defaultMode` | `integer` | Integer representation of mode bits to use on created files by default. Must be a value between 0... |
| `items` | `array<GoogleCloudRunV2VersionToPath>` | If unspecified, the volume will expose a file whose name is the secret, relative to VolumeMount.m... |
| `secret` | `string` | Required. The name of the secret in Cloud Secret Manager. Format: {secret} if the secret is in th... |

### `GoogleCloudRunV2Service`

Service acts as a top-level container that manages a set of configurations and revision templates which implement a network service. Service exists to provide a singular abstraction which can be access controlled, reasoned about, and which encapsulates software lifecycle decisions such as rollout policy and team resource ownership.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Optional. Unstructured key value map that may be set by external tools to store and arbitrary met... |
| `binaryAuthorization` | `GoogleCloudRunV2BinaryAuthorization` | Optional. Settings for the Binary Authorization feature. |
| `buildConfig` | `GoogleCloudRunV2BuildConfig` | Optional. Configuration for building a Cloud Run function. |
| `client` | `string` | Arbitrary identifier for the API client. |
| `clientVersion` | `string` | Arbitrary version identifier for the API client. |
| `conditions` | `array<GoogleCloudRunV2Condition>` | Output only. The Conditions of all other associated sub-resources. They contain additional diagno... |
| `createTime` | `string` | Output only. The creation time. |
| `creator` | `string` | Output only. Email address of the authenticated creator. |
| `customAudiences` | `array<string>` | One or more custom audiences that you want this service to support. Specify each custom audience ... |
| `defaultUriDisabled` | `boolean` | Optional. Disables public resolution of the default URI of this service. |
| `deleteTime` | `string` | Output only. The deletion time. It is only populated as a response to a Delete request. |
| `description` | `string` | User-provided description of the Service. This field currently has a 512-character limit. |
| `etag` | `string` | Optional. A system-generated fingerprint for this version of the resource. May be used to detect ... |
| `expireTime` | `string` | Output only. For a deleted resource, the time after which it will be permanently deleted. |
| `generation` | `string` | Output only. A number that monotonically increases every time the user modifies the desired state... |
| `iapEnabled` | `boolean` | Optional. IAP settings on the Service. |
| `ingress` | `string` | Optional. Provides the ingress settings for this Service. On output, returns the currently observ... |
| `invokerIamDisabled` | `boolean` | Optional. Disables IAM permission check for run.routes.invoke for callers of this service. For mo... |
| `labels` | `object` | Optional. Unstructured key value map that can be used to organize and categorize objects. User-pr... |
| `lastModifier` | `string` | Output only. Email address of the last authenticated modifier. |
| `latestCreatedRevision` | `string` | Output only. Name of the last created revision. See comments in `reconciling` for additional info... |
| `latestReadyRevision` | `string` | Output only. Name of the latest revision that is serving traffic. See comments in `reconciling` f... |
| `launchStage` | `string` | Optional. The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.goog... |
| `multiRegionSettings` | `GoogleCloudRunV2MultiRegionSettings` | Optional. Settings for multi-region deployment. |
| `name` | `string` | Identifier. The fully qualified name of this Service. In CreateServiceRequest, this field is igno... |
| `observedGeneration` | `string` | Output only. The generation of this Service currently serving traffic. See comments in `reconcili... |
| `reconciling` | `boolean` | Output only. Returns true if the Service is currently being acted upon by the system to bring it ... |
| `satisfiesPzs` | `boolean` | Output only. Reserved for future use. |
| `scaling` | `GoogleCloudRunV2ServiceScaling` | Optional. Specifies service-level scaling settings |
| `template` | `GoogleCloudRunV2RevisionTemplate` | Required. The template used to create revisions for this Service. |
| `terminalCondition` | `GoogleCloudRunV2Condition` | Output only. The Condition of this Service, containing its readiness status, and detailed error i... |
| `threatDetectionEnabled` | `boolean` | Output only. True if Cloud Run Threat Detection monitoring is enabled for the parent project of t... |
| `traffic` | `array<GoogleCloudRunV2TrafficTarget>` | Optional. Specifies how to distribute traffic over a collection of Revisions belonging to the Ser... |
| `trafficStatuses` | `array<GoogleCloudRunV2TrafficTargetStatus>` | Output only. Detailed status information for corresponding traffic targets. See comments in `reco... |
| `uid` | `string` | Output only. Server assigned unique identifier for the trigger. The value is a UUID4 string and g... |
| `updateTime` | `string` | Output only. The last-modified time. |
| `uri` | `string` | Output only. The main URI in which this Service is serving traffic. |
| `urls` | `array<string>` | Output only. All URLs serving traffic for this Service. |

### `GoogleCloudRunV2ServiceMesh`

Settings for Cloud Service Mesh. For more information see https://cloud.google.com/service-mesh/docs/overview.

| Property | Type | Description |
|----------|------|-------------|
| `mesh` | `string` | The Mesh resource name. Format: `projects/{project}/locations/global/meshes/{mesh}`, where `{proj... |

### `GoogleCloudRunV2ServiceScaling`

Scaling settings applied at the service level rather than at the revision level.

| Property | Type | Description |
|----------|------|-------------|
| `manualInstanceCount` | `integer` | Optional. total instance count for the service in manual scaling mode. This number of instances i... |
| `maxInstanceCount` | `integer` | Optional. total max instances for the service. This number of instances is divided among all revi... |
| `minInstanceCount` | `integer` | Optional. total min instances for the service. This number of instances is divided among all revi... |
| `scalingMode` | `string` | Optional. The scaling mode for the service. |

### `GoogleCloudRunV2SourceCode`

Source type for the container.

| Property | Type | Description |
|----------|------|-------------|
| `cloudStorageSource` | `GoogleCloudRunV2CloudStorageSource` | The source is a Cloud Storage bucket. |

### `GoogleCloudRunV2StartInstanceRequest`

Request message for starting an Instance.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Optional. A system-generated fingerprint for this version of the resource. This may be used to de... |
| `validateOnly` | `boolean` | Optional. Indicates that the request should be validated without actually stopping any resources. |

### `GoogleCloudRunV2StopInstanceRequest`

Request message for deleting an Instance.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Optional. A system-generated fingerprint for this version of the resource. This may be used to de... |
| `validateOnly` | `boolean` | Optional. Indicates that the request should be validated without actually stopping any resources. |

### `GoogleCloudRunV2StorageSource`

Location of the source in an archive file in Google Cloud Storage.

| Property | Type | Description |
|----------|------|-------------|
| `bucket` | `string` | Required. Google Cloud Storage bucket containing the source (see [Bucket Name Requirements](https... |
| `generation` | `string` | Optional. Google Cloud Storage generation for the object. If the generation is omitted, the lates... |
| `object` | `string` | Required. Google Cloud Storage object containing the source. This object must be a gzipped archiv... |

### `GoogleCloudRunV2SubmitBuildRequest`

Request message for submitting a Build.

| Property | Type | Description |
|----------|------|-------------|
| `buildpackBuild` | `GoogleCloudRunV2BuildpacksBuild` | Build the source using Buildpacks. |
| `client` | `string` | Optional. The client that initiated the build request. |
| `dockerBuild` | `GoogleCloudRunV2DockerBuild` | Build the source using Docker. This means the source has a Dockerfile. |
| `imageUri` | `string` | Required. Artifact Registry URI to store the built image. |
| `machineType` | `string` | Optional. The machine type from default pool to use for the build. If left blank, cloudbuild will... |
| `releaseTrack` | `string` | Optional. The release track of the client that initiated the build request. |
| `serviceAccount` | `string` | Optional. The service account to use for the build. If not set, the default Cloud Build service a... |
| `storageSource` | `GoogleCloudRunV2StorageSource` | Required. Source for the build. |
| `tags` | `array<string>` | Optional. Additional tags to annotate the build. |
| `workerPool` | `string` | Optional. Name of the Cloud Build Custom Worker Pool that should be used to build the function. T... |

### `GoogleCloudRunV2SubmitBuildResponse`

Response message for submitting a Build.

| Property | Type | Description |
|----------|------|-------------|
| `baseImageUri` | `string` | URI of the base builder image in Artifact Registry being used in the build. Used to opt into auto... |
| `baseImageWarning` | `string` | Warning message for the base image. |
| `buildOperation` | `GoogleLongrunningOperation` | Cloud Build operation to be polled via CloudBuild API. |

### `GoogleCloudRunV2TCPSocketAction`

TCPSocketAction describes an action based on opening a socket

| Property | Type | Description |
|----------|------|-------------|
| `port` | `integer` | Optional. Port number to access on the container. Must be in the range 1 to 65535. If not specifi... |

### `GoogleCloudRunV2Task`

Task represents a single run of a container to completion.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Output only. Unstructured key value map that may be set by external tools to store and arbitrary ... |
| `completionTime` | `string` | Output only. Represents time when the Task was completed. It is not guaranteed to be set in happe... |
| `conditions` | `array<GoogleCloudRunV2Condition>` | Output only. The Condition of this Task, containing its readiness status, and detailed error info... |
| `containers` | `array<GoogleCloudRunV2Container>` | Holds the single container that defines the unit of execution for this task. |
| `createTime` | `string` | Output only. Represents time when the task was created by the system. It is not guaranteed to be ... |
| `deleteTime` | `string` | Output only. For a deleted resource, the deletion time. It is only populated as a response to a D... |
| `encryptionKey` | `string` | Output only. A reference to a customer managed encryption key (CMEK) to use to encrypt this conta... |
| `etag` | `string` | Output only. A system-generated fingerprint for this version of the resource. May be used to dete... |
| `execution` | `string` | Output only. The name of the parent Execution. |
| `executionEnvironment` | `string` | The execution environment being used to host this Task. |
| `expireTime` | `string` | Output only. For a deleted resource, the time after which it will be permamently deleted. It is o... |
| `generation` | `string` | Output only. A number that monotonically increases every time the user modifies the desired state. |
| `gpuZonalRedundancyDisabled` | `boolean` | Optional. Output only. True if GPU zonal redundancy is disabled on this task. |
| `index` | `integer` | Output only. Index of the Task, unique per execution, and beginning at 0. |
| `job` | `string` | Output only. The name of the parent Job. |
| `labels` | `object` | Output only. Unstructured key value map that can be used to organize and categorize objects. User... |
| `lastAttemptResult` | `GoogleCloudRunV2TaskAttemptResult` | Output only. Result of the last attempt of this Task. |
| `logUri` | `string` | Output only. URI where logs for this execution can be found in Cloud Console. |
| `maxRetries` | `integer` | Number of retries allowed per Task, before marking this Task failed. |
| `name` | `string` | Output only. The unique name of this Task. |
| `nodeSelector` | `GoogleCloudRunV2NodeSelector` | Output only. The node selector for the task. |
| `observedGeneration` | `string` | Output only. The generation of this Task. See comments in `Job.reconciling` for additional inform... |
| `reconciling` | `boolean` | Output only. Indicates whether the resource's reconciliation is still in progress. See comments i... |
| `retried` | `integer` | Output only. The number of times this Task was retried. Tasks are retried when they fail up to th... |
| `satisfiesPzs` | `boolean` | Output only. Reserved for future use. |
| `scheduledTime` | `string` | Output only. Represents time when the task was scheduled to run by the system. It is not guarante... |
| `serviceAccount` | `string` | Email address of the IAM service account associated with the Task of a Job. The service account r... |
| `startTime` | `string` | Output only. Represents time when the task started to run. It is not guaranteed to be set in happ... |
| `timeout` | `string` | Max allowed time duration the Task may be active before the system will actively try to mark it f... |
| `uid` | `string` | Output only. Server assigned unique identifier for the Task. The value is a UUID4 string and guar... |
| `updateTime` | `string` | Output only. The last-modified time. |
| `volumes` | `array<GoogleCloudRunV2Volume>` | A list of Volumes to make available to containers. |
| `vpcAccess` | `GoogleCloudRunV2VpcAccess` | Output only. VPC Access configuration to use for this Task. For more information, visit https://c... |

### `GoogleCloudRunV2TaskAttemptResult`

Result of a task attempt.

| Property | Type | Description |
|----------|------|-------------|
| `exitCode` | `integer` | Output only. The exit code of this attempt. This may be unset if the container was unable to exit... |
| `status` | `GoogleRpcStatus` | Output only. The status of this attempt. If the status code is OK, then the attempt succeeded. |
| `termSignal` | `integer` | Output only. Termination signal of the container. This is set to non-zero if the container is ter... |

### `GoogleCloudRunV2TaskTemplate`

TaskTemplate describes the data a task should have when created from a template.

| Property | Type | Description |
|----------|------|-------------|
| `containers` | `array<GoogleCloudRunV2Container>` | Holds the single container that defines the unit of execution for this task. |
| `encryptionKey` | `string` | A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. F... |
| `executionEnvironment` | `string` | Optional. The execution environment being used to host this Task. |
| `gpuZonalRedundancyDisabled` | `boolean` | Optional. True if GPU zonal redundancy is disabled on this task template. |
| `maxRetries` | `integer` | Number of retries allowed per Task, before marking this Task failed. Defaults to 3. |
| `nodeSelector` | `GoogleCloudRunV2NodeSelector` | Optional. The node selector for the task template. |
| `serviceAccount` | `string` | Optional. Email address of the IAM service account associated with the Task of a Job. The service... |
| `timeout` | `string` | Optional. Max allowed time duration the Task may be active before the system will actively try to... |
| `volumes` | `array<GoogleCloudRunV2Volume>` | Optional. A list of Volumes to make available to containers. |
| `vpcAccess` | `GoogleCloudRunV2VpcAccess` | Optional. VPC Access configuration to use for this Task. For more information, visit https://clou... |

### `GoogleCloudRunV2TrafficTarget`

Holds a single traffic routing entry for the Service. Allocations can be done to a specific Revision name, or pointing to the latest Ready Revision.

| Property | Type | Description |
|----------|------|-------------|
| `percent` | `integer` | Specifies percent of the traffic to this Revision. This defaults to zero if unspecified. |
| `revision` | `string` | Revision to which to send this portion of traffic, if traffic allocation is by revision. |
| `tag` | `string` | Indicates a string to be part of the URI to exclusively reference this target. |
| `type` | `string` | The allocation type for this traffic target. |

### `GoogleCloudRunV2TrafficTargetStatus`

Represents the observed state of a single `TrafficTarget` entry.

| Property | Type | Description |
|----------|------|-------------|
| `percent` | `integer` | Specifies percent of the traffic to this Revision. |
| `revision` | `string` | Revision to which this traffic is sent. |
| `tag` | `string` | Indicates the string used in the URI to exclusively reference this target. |
| `type` | `string` | The allocation type for this traffic target. |
| `uri` | `string` | Displays the target URI. |

### `GoogleCloudRunV2VersionToPath`

VersionToPath maps a specific version of a secret to a relative file to mount to, relative to VolumeMount's mount_path.

| Property | Type | Description |
|----------|------|-------------|
| `mode` | `integer` | Integer octal mode bits to use on this file, must be a value between 01 and 0777 (octal). If 0 or... |
| `path` | `string` | Required. The relative path of the secret in the container. |
| `version` | `string` | The Cloud Secret Manager secret version. Can be 'latest' for the latest value, or an integer or a... |

### `GoogleCloudRunV2Volume`

Volume represents a named volume in a container.

| Property | Type | Description |
|----------|------|-------------|
| `cloudSqlInstance` | `GoogleCloudRunV2CloudSqlInstance` | For Cloud SQL volumes, contains the specific instances that should be mounted. Visit https://clou... |
| `emptyDir` | `GoogleCloudRunV2EmptyDirVolumeSource` | Ephemeral storage used as a shared volume. |
| `gcs` | `GoogleCloudRunV2GCSVolumeSource` | Persistent storage backed by a Google Cloud Storage bucket. |
| `name` | `string` | Required. Volume's name. |
| `nfs` | `GoogleCloudRunV2NFSVolumeSource` | For NFS Voumes, contains the path to the nfs Volume |
| `secret` | `GoogleCloudRunV2SecretVolumeSource` | Secret represents a secret that should populate this volume. |

### `GoogleCloudRunV2VolumeMount`

VolumeMount describes a mounting of a Volume within a container.

| Property | Type | Description |
|----------|------|-------------|
| `mountPath` | `string` | Required. Path within the container at which the volume should be mounted. Must not contain ':'. ... |
| `name` | `string` | Required. This must match the Name of a Volume. |
| `subPath` | `string` | Optional. Path within the volume from which the container's volume should be mounted. Defaults to... |

### `GoogleCloudRunV2VpcAccess`

VPC Access settings. For more information on sending traffic to a VPC network, visit https://cloud.google.com/run/docs/configuring/connecting-vpc.

| Property | Type | Description |
|----------|------|-------------|
| `connector` | `string` | VPC Access connector name. Format: `projects/{project}/locations/{location}/connectors/{connector... |
| `egress` | `string` | Optional. Traffic VPC egress settings. If not provided, it defaults to PRIVATE_RANGES_ONLY. |
| `networkInterfaces` | `array<GoogleCloudRunV2NetworkInterface>` | Optional. Direct VPC egress settings. Currently only single network interface is supported. |

### `GoogleCloudRunV2WorkerPool`

WorkerPool acts as a top-level container that manages a set of configurations and revision templates which implement a pull-based workload. WorkerPool exists to provide a singular abstraction which can be access controlled, reasoned about, and which encapsulates software lifecycle decisions such as rollout policy and team resource ownership.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Optional. Unstructured key value map that may be set by external tools to store and arbitrary met... |
| `binaryAuthorization` | `GoogleCloudRunV2BinaryAuthorization` | Optional. Settings for the Binary Authorization feature. |
| `client` | `string` | Arbitrary identifier for the API client. |
| `clientVersion` | `string` | Arbitrary version identifier for the API client. |
| `conditions` | `array<GoogleCloudRunV2Condition>` | Output only. The Conditions of all other associated sub-resources. They contain additional diagno... |
| `createTime` | `string` | Output only. The creation time. |
| `creator` | `string` | Output only. Email address of the authenticated creator. |
| `customAudiences` | `array<string>` | Not supported, and ignored by Cloud Run. |
| `deleteTime` | `string` | Output only. The deletion time. It is only populated as a response to a Delete request. |
| `description` | `string` | User-provided description of the WorkerPool. This field currently has a 512-character limit. |
| `etag` | `string` | Optional. A system-generated fingerprint for this version of the resource. May be used to detect ... |
| `expireTime` | `string` | Output only. For a deleted resource, the time after which it will be permamently deleted. |
| `generation` | `string` | Output only. A number that monotonically increases every time the user modifies the desired state... |
| `instanceSplitStatuses` | `array<GoogleCloudRunV2InstanceSplitStatus>` | Output only. Detailed status information for corresponding instance splits. See comments in `reco... |
| `instanceSplits` | `array<GoogleCloudRunV2InstanceSplit>` | Optional. Specifies how to distribute instances over a collection of Revisions belonging to the W... |
| `labels` | `object` | Optional. Unstructured key value map that can be used to organize and categorize objects. User-pr... |
| `lastModifier` | `string` | Output only. Email address of the last authenticated modifier. |
| `latestCreatedRevision` | `string` | Output only. Name of the last created revision. See comments in `reconciling` for additional info... |
| `latestReadyRevision` | `string` | Output only. Name of the latest revision that is serving workloads. See comments in `reconciling`... |
| `launchStage` | `string` | Optional. The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.goog... |
| `name` | `string` | The fully qualified name of this WorkerPool. In CreateWorkerPoolRequest, this field is ignored, a... |
| `observedGeneration` | `string` | Output only. The generation of this WorkerPool currently serving workloads. See comments in `reco... |
| `reconciling` | `boolean` | Output only. Returns true if the WorkerPool is currently being acted upon by the system to bring ... |
| `satisfiesPzs` | `boolean` | Output only. Reserved for future use. |
| `scaling` | `GoogleCloudRunV2WorkerPoolScaling` | Optional. Specifies worker-pool-level scaling settings |
| `template` | `GoogleCloudRunV2WorkerPoolRevisionTemplate` | Required. The template used to create revisions for this WorkerPool. |
| `terminalCondition` | `GoogleCloudRunV2Condition` | Output only. The Condition of this WorkerPool, containing its readiness status, and detailed erro... |
| `threatDetectionEnabled` | `boolean` | Output only. Indicates whether Cloud Run Threat Detection monitoring is enabled for the parent pr... |
| `uid` | `string` | Output only. Server assigned unique identifier for the trigger. The value is a UUID4 string and g... |
| `updateTime` | `string` | Output only. The last-modified time. |

### `GoogleCloudRunV2WorkerPoolRevisionTemplate`

WorkerPoolRevisionTemplate describes the data a worker pool revision should have when created from a template.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Optional. Unstructured key value map that may be set by external tools to store and arbitrary met... |
| `client` | `string` | Optional. Arbitrary identifier for the API client. |
| `clientVersion` | `string` | Optional. Arbitrary version identifier for the API client. |
| `containers` | `array<GoogleCloudRunV2Container>` | Holds list of the containers that defines the unit of execution for this Revision. |
| `encryptionKey` | `string` | A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. F... |
| `encryptionKeyRevocationAction` | `string` | Optional. The action to take if the encryption key is revoked. |
| `encryptionKeyShutdownDuration` | `string` | Optional. If encryption_key_revocation_action is SHUTDOWN, the duration before shutting down all ... |
| `gpuZonalRedundancyDisabled` | `boolean` | Optional. True if GPU zonal redundancy is disabled on this worker pool. |
| `labels` | `object` | Optional. Unstructured key value map that can be used to organize and categorize objects. User-pr... |
| `nodeSelector` | `GoogleCloudRunV2NodeSelector` | Optional. The node selector for the revision template. |
| `revision` | `string` | Optional. The unique name for the revision. If this field is omitted, it will be automatically ge... |
| `serviceAccount` | `string` | Optional. Email address of the IAM service account associated with the revision of the service. T... |
| `serviceMesh` | `GoogleCloudRunV2ServiceMesh` | Optional. Enables service mesh connectivity. |
| `volumes` | `array<GoogleCloudRunV2Volume>` | Optional. A list of Volumes to make available to containers. |
| `vpcAccess` | `GoogleCloudRunV2VpcAccess` | Optional. VPC Access configuration to use for this Revision. For more information, visit https://... |

### `GoogleCloudRunV2WorkerPoolScaling`

Worker pool scaling settings.

| Property | Type | Description |
|----------|------|-------------|
| `manualInstanceCount` | `integer` | Optional. The total number of instances in manual scaling mode. |

### `GoogleDevtoolsCloudbuildV1ApprovalConfig`

ApprovalConfig describes configuration for manual approval of a build.

| Property | Type | Description |
|----------|------|-------------|
| `approvalRequired` | `boolean` | Whether or not approval is needed. If this is set on a build, it will become pending when created... |

### `GoogleDevtoolsCloudbuildV1ApprovalResult`

ApprovalResult describes the decision and associated metadata of a manual approval of a build.

| Property | Type | Description |
|----------|------|-------------|
| `approvalTime` | `string` | Output only. The time when the approval decision was made. |
| `approverAccount` | `string` | Output only. Email of the user that called the ApproveBuild API to approve or reject a build at t... |
| `comment` | `string` | Optional. An optional comment for this manual approval result. |
| `decision` | `string` | Required. The decision of this manual approval. |
| `url` | `string` | Optional. An optional URL tied to this manual approval result. This field is essentially the same... |

### `GoogleDevtoolsCloudbuildV1ArtifactObjects`

Files in the workspace to upload to Cloud Storage upon successful completion of all build steps.

| Property | Type | Description |
|----------|------|-------------|
| `location` | `string` | Cloud Storage bucket and optional object path, in the form "gs://bucket/path/to/somewhere/". (see... |
| `paths` | `array<string>` | Path globs used to match files in the build's workspace. |
| `timing` | `GoogleDevtoolsCloudbuildV1TimeSpan` | Output only. Stores timing information for pushing all artifact objects. |

### `GoogleDevtoolsCloudbuildV1Artifacts`

Artifacts produced by a build that should be uploaded upon successful completion of all build steps.

| Property | Type | Description |
|----------|------|-------------|
| `goModules` | `array<GoogleDevtoolsCloudbuildV1GoModule>` | Optional. A list of Go modules to be uploaded to Artifact Registry upon successful completion of ... |
| `images` | `array<string>` | A list of images to be pushed upon the successful completion of all build steps. The images will ... |
| `mavenArtifacts` | `array<GoogleDevtoolsCloudbuildV1MavenArtifact>` | A list of Maven artifacts to be uploaded to Artifact Registry upon successful completion of all b... |
| `npmPackages` | `array<GoogleDevtoolsCloudbuildV1NpmPackage>` | A list of npm packages to be uploaded to Artifact Registry upon successful completion of all buil... |
| `objects` | `GoogleDevtoolsCloudbuildV1ArtifactObjects` | A list of objects to be uploaded to Cloud Storage upon successful completion of all build steps. ... |
| `pythonPackages` | `array<GoogleDevtoolsCloudbuildV1PythonPackage>` | A list of Python packages to be uploaded to Artifact Registry upon successful completion of all b... |

### `GoogleDevtoolsCloudbuildV1Build`

A build resource in the Cloud Build API. At a high level, a `Build` describes where to find source code, how to build it (for example, the builder image to run on the source), and where to store the built artifacts. Fields can include the following variables, which will be expanded when the build is created: - $PROJECT_ID: the project ID of the build. - $PROJECT_NUMBER: the project number of the build. - $LOCATION: the location/region of the build. - $BUILD_ID: the autogenerated ID of the build. - $REPO_NAME: the source repository name specified by RepoSource. - $BRANCH_NAME: the branch name specified by RepoSource. - $TAG_NAME: the tag name specified by RepoSource. - $REVISION_ID or $COMMIT_SHA: the commit SHA specified by RepoSource or resolved from the specified branch or tag. - $SHORT_SHA: first 7 characters of $REVISION_ID or $COMMIT_SHA.

| Property | Type | Description |
|----------|------|-------------|
| `approval` | `GoogleDevtoolsCloudbuildV1BuildApproval` | Output only. Describes this build's approval configuration, status, and result. |
| `artifacts` | `GoogleDevtoolsCloudbuildV1Artifacts` | Artifacts produced by the build that should be uploaded upon successful completion of all build s... |
| `availableSecrets` | `GoogleDevtoolsCloudbuildV1Secrets` | Secrets and secret environment variables. |
| `buildTriggerId` | `string` | Output only. The ID of the `BuildTrigger` that triggered this build, if it was triggered automati... |
| `createTime` | `string` | Output only. Time at which the request to create the build was received. |
| `dependencies` | `array<GoogleDevtoolsCloudbuildV1Dependency>` | Optional. Dependencies that the Cloud Build worker will fetch before executing user steps. |
| `failureInfo` | `GoogleDevtoolsCloudbuildV1FailureInfo` | Output only. Contains information about the build when status=FAILURE. |
| `finishTime` | `string` | Output only. Time at which execution of the build was finished. The difference between finish_tim... |
| `gitConfig` | `GoogleDevtoolsCloudbuildV1GitConfig` | Optional. Configuration for git operations. |
| `id` | `string` | Output only. Unique identifier of the build. |
| `images` | `array<string>` | A list of images to be pushed upon the successful completion of all build steps. The images are p... |
| `logUrl` | `string` | Output only. URL to logs for this build in Google Cloud Console. |
| `logsBucket` | `string` | Cloud Storage bucket where logs should be written (see [Bucket Name Requirements](https://cloud.g... |
| `name` | `string` | Output only. The 'Build' name with format: `projects/{project}/locations/{location}/builds/{build... |
| `options` | `GoogleDevtoolsCloudbuildV1BuildOptions` | Special options for this build. |
| `projectId` | `string` | Output only. ID of the project. |
| `queueTtl` | `string` | TTL in queue for this build. If provided and the build is enqueued longer than this value, the bu... |
| `results` | `GoogleDevtoolsCloudbuildV1Results` | Output only. Results of the build. |
| `secrets` | `array<GoogleDevtoolsCloudbuildV1Secret>` | Secrets to decrypt using Cloud Key Management Service. Note: Secret Manager is the recommended te... |
| `serviceAccount` | `string` | IAM service account whose credentials will be used at build runtime. Must be of the format `proje... |
| `source` | `GoogleDevtoolsCloudbuildV1Source` | Optional. The location of the source files to build. |
| `sourceProvenance` | `GoogleDevtoolsCloudbuildV1SourceProvenance` | Output only. A permanent fixed identifier for source. |
| `startTime` | `string` | Output only. Time at which execution of the build was started. |
| `status` | `string` | Output only. Status of the build. |
| `statusDetail` | `string` | Output only. Customer-readable message about the current status. |
| `steps` | `array<GoogleDevtoolsCloudbuildV1BuildStep>` | Required. The operations to be performed on the workspace. |
| `substitutions` | `object` | Substitutions data for `Build` resource. |
| `tags` | `array<string>` | Tags for annotation of a `Build`. These are not docker tags. |
| `timeout` | `string` | Amount of time that this build should be allowed to run, to second granularity. If this amount of... |
| `timing` | `object` | Output only. Stores timing information for phases of the build. Valid keys are: * BUILD: time to ... |
| `warnings` | `array<GoogleDevtoolsCloudbuildV1Warning>` | Output only. Non-fatal problems encountered during the execution of the build. |

### `GoogleDevtoolsCloudbuildV1BuildApproval`

BuildApproval describes a build's approval configuration, state, and result.

| Property | Type | Description |
|----------|------|-------------|
| `config` | `GoogleDevtoolsCloudbuildV1ApprovalConfig` | Output only. Configuration for manual approval of this build. |
| `result` | `GoogleDevtoolsCloudbuildV1ApprovalResult` | Output only. Result of manual approval for this Build. |
| `state` | `string` | Output only. The state of this build's approval. |

### `GoogleDevtoolsCloudbuildV1BuildOperationMetadata`

Metadata for build operations.

| Property | Type | Description |
|----------|------|-------------|
| `build` | `GoogleDevtoolsCloudbuildV1Build` | The build that the operation is tracking. |

### `GoogleDevtoolsCloudbuildV1BuildOptions`

Optional arguments to enable specific features of builds.

| Property | Type | Description |
|----------|------|-------------|
| `automapSubstitutions` | `boolean` | Option to include built-in and custom substitutions as env variables for all build steps. |
| `defaultLogsBucketBehavior` | `string` | Optional. Option to specify how default logs buckets are setup. |
| `diskSizeGb` | `string` | Requested disk size for the VM that runs the build. Note that this is *NOT* "disk free"; some of ... |
| `dynamicSubstitutions` | `boolean` | Option to specify whether or not to apply bash style string operations to the substitutions. NOTE... |
| `enableStructuredLogging` | `boolean` | Optional. Option to specify whether structured logging is enabled. If true, JSON-formatted logs a... |
| `env` | `array<string>` | A list of global environment variable definitions that will exist for all build steps in this bui... |
| `logStreamingOption` | `string` | Option to define build log streaming behavior to Cloud Storage. |
| `logging` | `string` | Option to specify the logging mode, which determines if and where build logs are stored. |
| `machineType` | `string` | Compute Engine machine type on which to run the build. |
| `pool` | `GoogleDevtoolsCloudbuildV1PoolOption` | Optional. Specification for execution on a `WorkerPool`. See [running builds in a private pool](h... |
| `pubsubTopic` | `string` | Optional. Option to specify the Pub/Sub topic to receive build status updates. |
| `requestedVerifyOption` | `string` | Requested verifiability options. |
| `secretEnv` | `array<string>` | A list of global environment variables, which are encrypted using a Cloud Key Management Service ... |
| `sourceProvenanceHash` | `array<string>` | Requested hash for SourceProvenance. |
| `substitutionOption` | `string` | Option to specify behavior when there is an error in the substitution checks. NOTE: this is alway... |
| `volumes` | `array<GoogleDevtoolsCloudbuildV1Volume>` | Global list of volumes to mount for ALL build steps Each volume is created as an empty volume pri... |
| `workerPool` | `string` | This field deprecated; please use `pool.name` instead. |

### `GoogleDevtoolsCloudbuildV1BuildStep`

A step in the build pipeline.

| Property | Type | Description |
|----------|------|-------------|
| `allowExitCodes` | `array<integer>` | Allow this build step to fail without failing the entire build if and only if the exit code is on... |
| `allowFailure` | `boolean` | Allow this build step to fail without failing the entire build. If false, the entire build will f... |
| `args` | `array<string>` | A list of arguments that will be presented to the step when it is started. If the image used to r... |
| `automapSubstitutions` | `boolean` | Option to include built-in and custom substitutions as env variables for this build step. This op... |
| `dir` | `string` | Working directory to use when running this step's container. If this value is a relative path, it... |
| `entrypoint` | `string` | Entrypoint to be used instead of the build step image's default entrypoint. If unset, the image's... |
| `env` | `array<string>` | A list of environment variable definitions to be used when running a step. The elements are of th... |
| `exitCode` | `integer` | Output only. Return code from running the step. |
| `id` | `string` | Unique identifier for this build step, used in `wait_for` to reference this build step as a depen... |
| `name` | `string` | Required. The name of the container image that will run this particular build step. If the image ... |
| `pullTiming` | `GoogleDevtoolsCloudbuildV1TimeSpan` | Output only. Stores timing information for pulling this build step's builder image only. |
| `script` | `string` | A shell script to be executed in the step. When script is provided, the user cannot specify the e... |
| `secretEnv` | `array<string>` | A list of environment variables which are encrypted using a Cloud Key Management Service crypto k... |
| `status` | `string` | Output only. Status of the build step. At this time, build step status is only updated on build c... |
| `timeout` | `string` | Time limit for executing this build step. If not defined, the step has no time limit and will be ... |
| `timing` | `GoogleDevtoolsCloudbuildV1TimeSpan` | Output only. Stores timing information for executing this build step. |
| `volumes` | `array<GoogleDevtoolsCloudbuildV1Volume>` | List of volumes to mount into the build step. Each volume is created as an empty volume prior to ... |
| `waitFor` | `array<string>` | The ID(s) of the step(s) that this build step depends on. This build step will not start until al... |

### `GoogleDevtoolsCloudbuildV1BuiltImage`

An image built by the pipeline.

| Property | Type | Description |
|----------|------|-------------|
| `artifactRegistryPackage` | `string` | Output only. Path to the artifact in Artifact Registry. |
| `digest` | `string` | Docker Registry 2.0 digest. |
| `name` | `string` | Name used to push the container image to Google Container Registry, as presented to `docker push`. |
| `pushTiming` | `GoogleDevtoolsCloudbuildV1TimeSpan` | Output only. Stores timing information for pushing the specified image. |

### `GoogleDevtoolsCloudbuildV1ConnectedRepository`

Location of the source in a 2nd-gen Google Cloud Build repository resource.

| Property | Type | Description |
|----------|------|-------------|
| `dir` | `string` | Optional. Directory, relative to the source root, in which to run the build. |
| `repository` | `string` | Required. Name of the Google Cloud Build repository, formatted as `projects/*/locations/*/connect... |
| `revision` | `string` | Required. The revision to fetch from the Git repository such as a branch, a tag, a commit SHA, or... |

### `GoogleDevtoolsCloudbuildV1Dependency`

A dependency that the Cloud Build worker will fetch before executing user steps.

| Property | Type | Description |
|----------|------|-------------|
| `empty` | `boolean` | If set to true disable all dependency fetching (ignoring the default source as well). |
| `gitSource` | `GoogleDevtoolsCloudbuildV1GitSourceDependency` | Represents a git repository as a build dependency. |

### `GoogleDevtoolsCloudbuildV1DeveloperConnectConfig`

This config defines the location of a source through Developer Connect.

| Property | Type | Description |
|----------|------|-------------|
| `dir` | `string` | Required. Directory, relative to the source root, in which to run the build. |
| `gitRepositoryLink` | `string` | Required. The Developer Connect Git repository link, formatted as `projects/*/locations/*/connect... |
| `revision` | `string` | Required. The revision to fetch from the Git repository such as a branch, a tag, a commit SHA, or... |

### `GoogleDevtoolsCloudbuildV1FailureInfo`

A fatal problem encountered during the execution of the build.

| Property | Type | Description |
|----------|------|-------------|
| `detail` | `string` | Explains the failure issue in more detail using hard-coded text. |
| `type` | `string` | The name of the failure. |

### `GoogleDevtoolsCloudbuildV1FileHashes`

Container message for hashes of byte content of files, used in SourceProvenance messages to verify integrity of source input to the build.

| Property | Type | Description |
|----------|------|-------------|
| `fileHash` | `array<GoogleDevtoolsCloudbuildV1Hash>` | Collection of file hashes. |

### `GoogleDevtoolsCloudbuildV1GitConfig`

GitConfig is a configuration for git operations.

| Property | Type | Description |
|----------|------|-------------|
| `http` | `GoogleDevtoolsCloudbuildV1HttpConfig` | Configuration for HTTP related git operations. |

### `GoogleDevtoolsCloudbuildV1GitSource`

Location of the source in any accessible Git repository.

| Property | Type | Description |
|----------|------|-------------|
| `dir` | `string` | Optional. Directory, relative to the source root, in which to run the build. This must be a relat... |
| `revision` | `string` | Optional. The revision to fetch from the Git repository such as a branch, a tag, a commit SHA, or... |
| `url` | `string` | Required. Location of the Git repo to build. This will be used as a `git remote`, see https://git... |

### `GoogleDevtoolsCloudbuildV1GitSourceDependency`

Represents a git repository as a build dependency.

| Property | Type | Description |
|----------|------|-------------|
| `depth` | `string` | Optional. How much history should be fetched for the build (default 1, -1 for all history). |
| `destPath` | `string` | Required. Where should the files be placed on the worker. |
| `recurseSubmodules` | `boolean` | Optional. True if submodules should be fetched too (default false). |
| `repository` | `GoogleDevtoolsCloudbuildV1GitSourceRepository` | Required. The kind of repo (url or dev connect). |
| `revision` | `string` | Required. The revision that we will fetch the repo at. |

### `GoogleDevtoolsCloudbuildV1GitSourceRepository`

A repository for a git source.

| Property | Type | Description |
|----------|------|-------------|
| `developerConnect` | `string` | The Developer Connect Git repository link formatted as `projects/*/locations/*/connections/*/gitR... |
| `url` | `string` | Location of the Git repository. |

### `GoogleDevtoolsCloudbuildV1GoModule`

Go module to upload to Artifact Registry upon successful completion of all build steps. A module refers to all dependencies in a go.mod file.

| Property | Type | Description |
|----------|------|-------------|
| `modulePath` | `string` | Optional. The Go module's "module path". e.g. example.com/foo/v2 |
| `moduleVersion` | `string` | Optional. The Go module's semantic version in the form vX.Y.Z. e.g. v0.1.1 Pre-release identifier... |
| `repositoryLocation` | `string` | Optional. Location of the Artifact Registry repository. i.e. us-east1 Defaults to the build’s loc... |
| `repositoryName` | `string` | Optional. Artifact Registry repository name. Specified Go modules will be zipped and uploaded to ... |
| `repositoryProjectId` | `string` | Optional. Project ID of the Artifact Registry repository. Defaults to the build project. |
| `sourcePath` | `string` | Optional. Source path of the go.mod file in the build's workspace. If not specified, this will de... |

### `GoogleDevtoolsCloudbuildV1Hash`

Container message for hash values.

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | The type of hash that was performed. |
| `value` | `string` | The hash value. |

### `GoogleDevtoolsCloudbuildV1HttpConfig`

HttpConfig is a configuration for HTTP related git operations.

| Property | Type | Description |
|----------|------|-------------|
| `proxySecretVersionName` | `string` | SecretVersion resource of the HTTP proxy URL. The Service Account used in the build (either the d... |

### `GoogleDevtoolsCloudbuildV1InlineSecret`

Pairs a set of secret environment variables mapped to encrypted values with the Cloud KMS key to use to decrypt the value.

| Property | Type | Description |
|----------|------|-------------|
| `envMap` | `object` | Map of environment variable name to its encrypted value. Secret environment variables must be uni... |
| `kmsKeyName` | `string` | Resource name of Cloud KMS crypto key to decrypt the encrypted value. In format: projects/*/locat... |

### `GoogleDevtoolsCloudbuildV1MavenArtifact`

A Maven artifact to upload to Artifact Registry upon successful completion of all build steps.

| Property | Type | Description |
|----------|------|-------------|
| `artifactId` | `string` | Maven `artifactId` value used when uploading the artifact to Artifact Registry. |
| `deployFolder` | `string` | Optional. Path to a folder containing the files to upload to Artifact Registry. This can be eithe... |
| `groupId` | `string` | Maven `groupId` value used when uploading the artifact to Artifact Registry. |
| `path` | `string` | Optional. Path to an artifact in the build's workspace to be uploaded to Artifact Registry. This ... |
| `repository` | `string` | Artifact Registry repository, in the form "https://$REGION-maven.pkg.dev/$PROJECT/$REPOSITORY" Ar... |
| `version` | `string` | Maven `version` value used when uploading the artifact to Artifact Registry. |

### `GoogleDevtoolsCloudbuildV1NpmPackage`

Npm package to upload to Artifact Registry upon successful completion of all build steps.

| Property | Type | Description |
|----------|------|-------------|
| `packagePath` | `string` | Optional. Path to the package.json. e.g. workspace/path/to/package Only one of `archive` or `pack... |
| `repository` | `string` | Artifact Registry repository, in the form "https://$REGION-npm.pkg.dev/$PROJECT/$REPOSITORY" Npm ... |

### `GoogleDevtoolsCloudbuildV1PoolOption`

Details about how a build should be executed on a `WorkerPool`. See [running builds in a private pool](https://cloud.google.com/build/docs/private-pools/run-builds-in-private-pool) for more information.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The `WorkerPool` resource to execute the build on. You must have `cloudbuild.workerpools.use` on ... |

### `GoogleDevtoolsCloudbuildV1PythonPackage`

Python package to upload to Artifact Registry upon successful completion of all build steps. A package can encapsulate multiple objects to be uploaded to a single repository.

| Property | Type | Description |
|----------|------|-------------|
| `paths` | `array<string>` | Path globs used to match files in the build's workspace. For Python/ Twine, this is usually `dist... |
| `repository` | `string` | Artifact Registry repository, in the form "https://$REGION-python.pkg.dev/$PROJECT/$REPOSITORY" F... |

### `GoogleDevtoolsCloudbuildV1RepoSource`

Location of the source in a Google Cloud Source Repository.

| Property | Type | Description |
|----------|------|-------------|
| `branchName` | `string` | Regex matching branches to build. The syntax of the regular expressions accepted is the syntax ac... |
| `commitSha` | `string` | Explicit commit SHA to build. |
| `dir` | `string` | Optional. Directory, relative to the source root, in which to run the build. This must be a relat... |
| `invertRegex` | `boolean` | Optional. Only trigger a build if the revision regex does NOT match the revision regex. |
| `projectId` | `string` | Optional. ID of the project that owns the Cloud Source Repository. If omitted, the project ID req... |
| `repoName` | `string` | Required. Name of the Cloud Source Repository. |
| `substitutions` | `object` | Optional. Substitutions to use in a triggered build. Should only be used with RunBuildTrigger |
| `tagName` | `string` | Regex matching tags to build. The syntax of the regular expressions accepted is the syntax accept... |

### `GoogleDevtoolsCloudbuildV1Results`

Artifacts created by the build pipeline.

| Property | Type | Description |
|----------|------|-------------|
| `artifactManifest` | `string` | Path to the artifact manifest for non-container artifacts uploaded to Cloud Storage. Only populat... |
| `artifactTiming` | `GoogleDevtoolsCloudbuildV1TimeSpan` | Time to push all non-container artifacts to Cloud Storage. |
| `buildStepImages` | `array<string>` | List of build step digests, in the order corresponding to build step indices. |
| `buildStepOutputs` | `array<string>` | List of build step outputs, produced by builder images, in the order corresponding to build step ... |
| `goModules` | `array<GoogleDevtoolsCloudbuildV1UploadedGoModule>` | Optional. Go module artifacts uploaded to Artifact Registry at the end of the build. |
| `images` | `array<GoogleDevtoolsCloudbuildV1BuiltImage>` | Container images that were built as a part of the build. |
| `mavenArtifacts` | `array<GoogleDevtoolsCloudbuildV1UploadedMavenArtifact>` | Maven artifacts uploaded to Artifact Registry at the end of the build. |
| `npmPackages` | `array<GoogleDevtoolsCloudbuildV1UploadedNpmPackage>` | Npm packages uploaded to Artifact Registry at the end of the build. |
| `numArtifacts` | `string` | Number of non-container artifacts uploaded to Cloud Storage. Only populated when artifacts are up... |
| `pythonPackages` | `array<GoogleDevtoolsCloudbuildV1UploadedPythonPackage>` | Python artifacts uploaded to Artifact Registry at the end of the build. |

### `GoogleDevtoolsCloudbuildV1Secret`

Pairs a set of secret environment variables containing encrypted values with the Cloud KMS key to use to decrypt the value. Note: Use `kmsKeyName` with `available_secrets` instead of using `kmsKeyName` with `secret`. For instructions see: https://cloud.google.com/cloud-build/docs/securing-builds/use-encrypted-credentials.

| Property | Type | Description |
|----------|------|-------------|
| `kmsKeyName` | `string` | Cloud KMS key name to use to decrypt these envs. |
| `secretEnv` | `object` | Map of environment variable name to its encrypted value. Secret environment variables must be uni... |

### `GoogleDevtoolsCloudbuildV1SecretManagerSecret`

Pairs a secret environment variable with a SecretVersion in Secret Manager.

| Property | Type | Description |
|----------|------|-------------|
| `env` | `string` | Environment variable name to associate with the secret. Secret environment variables must be uniq... |
| `versionName` | `string` | Resource name of the SecretVersion. In format: projects/*/secrets/*/versions/* |

### `GoogleDevtoolsCloudbuildV1Secrets`

Secrets and secret environment variables.

| Property | Type | Description |
|----------|------|-------------|
| `inline` | `array<GoogleDevtoolsCloudbuildV1InlineSecret>` | Secrets encrypted with KMS key and the associated secret environment variable. |
| `secretManager` | `array<GoogleDevtoolsCloudbuildV1SecretManagerSecret>` | Secrets in Secret Manager and associated secret environment variable. |

### `GoogleDevtoolsCloudbuildV1Source`

Location of the source in a supported storage service.

| Property | Type | Description |
|----------|------|-------------|
| `connectedRepository` | `GoogleDevtoolsCloudbuildV1ConnectedRepository` | Optional. If provided, get the source from this 2nd-gen Google Cloud Build repository resource. |
| `developerConnectConfig` | `GoogleDevtoolsCloudbuildV1DeveloperConnectConfig` | If provided, get the source from this Developer Connect config. |
| `gitSource` | `GoogleDevtoolsCloudbuildV1GitSource` | If provided, get the source from this Git repository. |
| `repoSource` | `GoogleDevtoolsCloudbuildV1RepoSource` | If provided, get the source from this location in a Cloud Source Repository. |
| `storageSource` | `GoogleDevtoolsCloudbuildV1StorageSource` | If provided, get the source from this location in Cloud Storage. |
| `storageSourceManifest` | `GoogleDevtoolsCloudbuildV1StorageSourceManifest` | If provided, get the source from this manifest in Cloud Storage. This feature is in Preview; see ... |

### `GoogleDevtoolsCloudbuildV1SourceProvenance`

Provenance of the source. Ways to find the original source, or verify that some source was used for this build.

| Property | Type | Description |
|----------|------|-------------|
| `fileHashes` | `object` | Output only. Hash(es) of the build source, which can be used to verify that the original source i... |
| `resolvedConnectedRepository` | `GoogleDevtoolsCloudbuildV1ConnectedRepository` | Output only. A copy of the build's `source.connected_repository`, if exists, with any revisions r... |
| `resolvedGitSource` | `GoogleDevtoolsCloudbuildV1GitSource` | Output only. A copy of the build's `source.git_source`, if exists, with any revisions resolved. |
| `resolvedRepoSource` | `GoogleDevtoolsCloudbuildV1RepoSource` | A copy of the build's `source.repo_source`, if exists, with any revisions resolved. |
| `resolvedStorageSource` | `GoogleDevtoolsCloudbuildV1StorageSource` | A copy of the build's `source.storage_source`, if exists, with any generations resolved. |
| `resolvedStorageSourceManifest` | `GoogleDevtoolsCloudbuildV1StorageSourceManifest` | A copy of the build's `source.storage_source_manifest`, if exists, with any revisions resolved. T... |

### `GoogleDevtoolsCloudbuildV1StorageSource`

Location of the source in an archive file in Cloud Storage.

| Property | Type | Description |
|----------|------|-------------|
| `bucket` | `string` | Cloud Storage bucket containing the source (see [Bucket Name Requirements](https://cloud.google.c... |
| `generation` | `string` | Optional. Cloud Storage generation for the object. If the generation is omitted, the latest gener... |
| `object` | `string` | Required. Cloud Storage object containing the source. This object must be a zipped (`.zip`) or gz... |
| `sourceFetcher` | `string` | Optional. Option to specify the tool to fetch the source file for the build. |

### `GoogleDevtoolsCloudbuildV1StorageSourceManifest`

Location of the source manifest in Cloud Storage. This feature is in Preview; see description [here](https://github.com/GoogleCloudPlatform/cloud-builders/tree/master/gcs-fetcher).

| Property | Type | Description |
|----------|------|-------------|
| `bucket` | `string` | Required. Cloud Storage bucket containing the source manifest (see [Bucket Name Requirements](htt... |
| `generation` | `string` | Cloud Storage generation for the object. If the generation is omitted, the latest generation will... |
| `object` | `string` | Required. Cloud Storage object containing the source manifest. This object must be a JSON file. |

### `GoogleDevtoolsCloudbuildV1TimeSpan`

Start and end times for a build execution phase.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | End of time span. |
| `startTime` | `string` | Start of time span. |

### `GoogleDevtoolsCloudbuildV1UploadedGoModule`

A Go module artifact uploaded to Artifact Registry using the GoModule directive.

| Property | Type | Description |
|----------|------|-------------|
| `artifactRegistryPackage` | `string` | Output only. Path to the artifact in Artifact Registry. |
| `fileHashes` | `GoogleDevtoolsCloudbuildV1FileHashes` | Hash types and values of the Go Module Artifact. |
| `pushTiming` | `GoogleDevtoolsCloudbuildV1TimeSpan` | Output only. Stores timing information for pushing the specified artifact. |
| `uri` | `string` | URI of the uploaded artifact. |

### `GoogleDevtoolsCloudbuildV1UploadedMavenArtifact`

A Maven artifact uploaded using the MavenArtifact directive.

| Property | Type | Description |
|----------|------|-------------|
| `artifactRegistryPackage` | `string` | Output only. Path to the artifact in Artifact Registry. |
| `fileHashes` | `GoogleDevtoolsCloudbuildV1FileHashes` | Hash types and values of the Maven Artifact. |
| `pushTiming` | `GoogleDevtoolsCloudbuildV1TimeSpan` | Output only. Stores timing information for pushing the specified artifact. |
| `uri` | `string` | URI of the uploaded artifact. |

### `GoogleDevtoolsCloudbuildV1UploadedNpmPackage`

An npm package uploaded to Artifact Registry using the NpmPackage directive.

| Property | Type | Description |
|----------|------|-------------|
| `artifactRegistryPackage` | `string` | Output only. Path to the artifact in Artifact Registry. |
| `fileHashes` | `GoogleDevtoolsCloudbuildV1FileHashes` | Hash types and values of the npm package. |
| `pushTiming` | `GoogleDevtoolsCloudbuildV1TimeSpan` | Output only. Stores timing information for pushing the specified artifact. |
| `uri` | `string` | URI of the uploaded npm package. |

### `GoogleDevtoolsCloudbuildV1UploadedPythonPackage`

Artifact uploaded using the PythonPackage directive.

| Property | Type | Description |
|----------|------|-------------|
| `artifactRegistryPackage` | `string` | Output only. Path to the artifact in Artifact Registry. |
| `fileHashes` | `GoogleDevtoolsCloudbuildV1FileHashes` | Hash types and values of the Python Artifact. |
| `pushTiming` | `GoogleDevtoolsCloudbuildV1TimeSpan` | Output only. Stores timing information for pushing the specified artifact. |
| `uri` | `string` | URI of the uploaded artifact. |

### `GoogleDevtoolsCloudbuildV1Volume`

Volume describes a Docker container volume which is mounted into build steps in order to persist files across build step execution.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Name of the volume to mount. Volume names must be unique per build step and must be valid names f... |
| `path` | `string` | Path at which to mount the volume. Paths must be absolute and cannot conflict with other volume p... |

### `GoogleDevtoolsCloudbuildV1Warning`

A non-fatal problem encountered during the execution of the build.

| Property | Type | Description |
|----------|------|-------------|
| `priority` | `string` | The priority for this warning. |
| `text` | `string` | Explanation of the warning generated. |

### `GoogleIamV1AuditConfig`

Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both `allServices` and a specific service, the union of the two AuditConfigs is used for that service: the log_types specified in each AuditConfig are enabled, and the exempted_members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { "audit_configs": [ { "service": "allServices", "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" }, { "log_type": "ADMIN_READ" } ] }, { "service": "sampleservice.googleapis.com", "audit_log_configs": [ { "log_type": "DATA_READ" }, { "log_type": "DATA_WRITE", "exempted_members": [ "user:aliya@example.com" ] } ] } ] } For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com` from DATA_WRITE logging.

| Property | Type | Description |
|----------|------|-------------|
| `auditLogConfigs` | `array<GoogleIamV1AuditLogConfig>` | The configuration for logging of each type of permission. |
| `service` | `string` | Specifies a service that will be enabled for audit logging. For example, `storage.googleapis.com`... |

### `GoogleIamV1AuditLogConfig`

Provides the configuration for logging a type of permissions. Example: { "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.

| Property | Type | Description |
|----------|------|-------------|
| `exemptedMembers` | `array<string>` | Specifies the identities that do not cause logging for this type of permission. Follows the same ... |
| `logType` | `string` | The log type that this config enables. |

### `GoogleIamV1Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `GoogleTypeExpr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `GoogleIamV1Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `auditConfigs` | `array<GoogleIamV1AuditConfig>` | Specifies cloud audit logging configuration for this policy. |
| `bindings` | `array<GoogleIamV1Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `GoogleIamV1SetIamPolicyRequest`

Request message for `SetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `GoogleIamV1Policy` | REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited ... |
| `updateMask` | `string` | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mas... |

### `GoogleIamV1TestIamPermissionsRequest`

Request message for `TestIamPermissions` method.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | The set of permissions to check for the `resource`. Permissions with wildcards (such as `*` or `s... |

### `GoogleIamV1TestIamPermissionsResponse`

Response message for `TestIamPermissions` method.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | A subset of `TestPermissionsRequest.permissions` that the caller is allowed. |

### `GoogleLongrunningListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<GoogleLongrunningOperation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `GoogleLongrunningOperation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `GoogleRpcStatus` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `GoogleLongrunningWaitOperationRequest`

The request message for Operations.WaitOperation.

| Property | Type | Description |
|----------|------|-------------|
| `timeout` | `string` | The maximum duration to wait before timing out. If left blank, the wait will be at most the time ... |

### `GoogleProtobufEmpty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `GoogleRpcStatus`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `GoogleTypeExpr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `Proto2BridgeMessageSet`

This is proto2's version of MessageSet. DEPRECATED: DO NOT USE FOR NEW FIELDS. If you are using editions or proto2, please make your own extendable messages for your use case. If you are using proto3, please use `Any` instead. MessageSet was the implementation of extensions for proto1. When proto2 was introduced, extensions were implemented as a first-class feature. This schema for MessageSet was meant to be a "bridge" solution to migrate MessageSet-bearing messages from proto1 to proto2. This schema has been open-sourced only to facilitate the migration of Google products with MessageSet-bearing messages to open-source environments.

### `UtilStatusProto`

Wire-format for a Status object

| Property | Type | Description |
|----------|------|-------------|
| `canonicalCode` | `integer` | copybara:strip_begin(b/383363683) copybara:strip_end_and_replace optional int32 canonical_code = 6; |
| `code` | `integer` | Numeric code drawn from the space specified below. Often, this is the canonical error space, and ... |
| `message` | `string` | Detail message copybara:strip_begin(b/383363683) copybara:strip_end_and_replace optional string m... |
| `messageSet` | `Proto2BridgeMessageSet` | message_set associates an arbitrary proto message with the status. copybara:strip_begin(b/3833636... |
| `space` | `string` | copybara:strip_begin(b/383363683) Space to which this status belongs copybara:strip_end_and_repla... |

