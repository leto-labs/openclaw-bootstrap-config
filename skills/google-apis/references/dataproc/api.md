# Cloud Dataproc API - API Reference

**Version**: `v1` | **Methods**: 129 | **Schemas**: 264

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `dataproc.projects.locations.autoscalingPolicies.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy.Can return... |
| `dataproc.projects.locations.autoscalingPolicies.list` | GET | `v1/{+parent}/autoscalingPolicies` | Lists autoscaling policies in the project. |
| `dataproc.projects.locations.autoscalingPolicies.get` | GET | `v1/{+name}` | Retrieves autoscaling policy. |
| `dataproc.projects.locations.autoscalingPolicies.delete` | DELETE | `v1/{+name}` | Deletes an autoscaling policy. It is an error to delete an autoscaling policy that is in use by o... |
| `dataproc.projects.locations.autoscalingPolicies.getIamPolicy` | POST | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `dataproc.projects.locations.autoscalingPolicies.update` | PUT | `v1/{+name}` | Updates (replaces) autoscaling policy.Disabled check for update_mask, because all updates will be... |
| `dataproc.projects.locations.autoscalingPolicies.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `dataproc.projects.locations.autoscalingPolicies.create` | POST | `v1/{+parent}/autoscalingPolicies` | Creates new autoscaling policy. |
| `dataproc.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `dataproc.projects.locations.operations.list` | GET | `v1/{+name}` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `dataproc.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `dataproc.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `dataproc.projects.locations.batches.analyze` | POST | `v1/{+name}:analyze` | Analyze a Batch for possible recommendations and insights. |
| `dataproc.projects.locations.batches.list` | GET | `v1/{+parent}/batches` | Lists batch workloads. |
| `dataproc.projects.locations.batches.get` | GET | `v1/{+name}` | Gets the batch workload resource representation. |
| `dataproc.projects.locations.batches.delete` | DELETE | `v1/{+name}` | Deletes the batch workload resource. If the batch is not in a CANCELLED, SUCCEEDED or FAILED Stat... |
| `dataproc.projects.locations.batches.create` | POST | `v1/{+parent}/batches` | Creates a batch workload that executes asynchronously. |
| `dataproc.projects.locations.batches.sparkApplications.searchStages` | GET | `v1/{+name}:searchStages` | Obtain data corresponding to stages for a Spark Application. |
| `dataproc.projects.locations.batches.sparkApplications.accessJob` | GET | `v1/{+name}:accessJob` | Obtain data corresponding to a spark job for a Spark Application. |
| `dataproc.projects.locations.batches.sparkApplications.summarizeJobs` | GET | `v1/{+name}:summarizeJobs` | Obtain summary of Jobs for a Spark Application |
| `dataproc.projects.locations.batches.sparkApplications.accessEnvironmentInfo` | GET | `v1/{+name}:accessEnvironmentInfo` | Obtain environment details for a Spark Application |
| `dataproc.projects.locations.batches.sparkApplications.accessStageRddGraph` | GET | `v1/{+name}:accessStageRddGraph` | Obtain RDD operation graph for a Spark Application Stage. Limits the number of clusters returned ... |
| `dataproc.projects.locations.batches.sparkApplications.searchSqlQueries` | GET | `v1/{+name}:searchSqlQueries` | Obtain data corresponding to SQL Queries for a Spark Application. |
| `dataproc.projects.locations.batches.sparkApplications.searchStageAttempts` | GET | `v1/{+name}:searchStageAttempts` | Obtain data corresponding to a spark stage attempts for a Spark Application. |
| `dataproc.projects.locations.batches.sparkApplications.search` | GET | `v1/{+parent}/sparkApplications:search` | Obtain high level information and list of Spark Applications corresponding to a batch |
| `dataproc.projects.locations.batches.sparkApplications.accessSqlPlan` | GET | `v1/{+name}:accessSqlPlan` | Obtain Spark Plan Graph for a Spark Application SQL execution. Limits the number of clusters retu... |
| `dataproc.projects.locations.batches.sparkApplications.summarizeStageAttemptTasks` | GET | `v1/{+name}:summarizeStageAttemptTasks` | Obtain summary of Tasks for a Spark Application Stage Attempt |
| `dataproc.projects.locations.batches.sparkApplications.accessStageAttempt` | GET | `v1/{+name}:accessStageAttempt` | Obtain data corresponding to a spark stage attempt for a Spark Application. |
| `dataproc.projects.locations.batches.sparkApplications.searchExecutors` | GET | `v1/{+name}:searchExecutors` | Obtain data corresponding to executors for a Spark Application. |
| `dataproc.projects.locations.batches.sparkApplications.searchJobs` | GET | `v1/{+name}:searchJobs` | Obtain list of spark jobs corresponding to a Spark Application. |
| `dataproc.projects.locations.batches.sparkApplications.write` | POST | `v1/{+name}:write` | Write wrapper objects from dataplane to spanner |
| `dataproc.projects.locations.batches.sparkApplications.searchExecutorStageSummary` | GET | `v1/{+name}:searchExecutorStageSummary` | Obtain executor summary with respect to a spark stage attempt. |
| `dataproc.projects.locations.batches.sparkApplications.searchStageAttemptTasks` | GET | `v1/{+name}:searchStageAttemptTasks` | Obtain data corresponding to tasks for a spark stage attempt for a Spark Application. |
| `dataproc.projects.locations.batches.sparkApplications.summarizeExecutors` | GET | `v1/{+name}:summarizeExecutors` | Obtain summary of Executor Summary for a Spark Application |
| `dataproc.projects.locations.batches.sparkApplications.summarizeStages` | GET | `v1/{+name}:summarizeStages` | Obtain summary of Stages for a Spark Application |
| `dataproc.projects.locations.batches.sparkApplications.access` | GET | `v1/{+name}:access` | Obtain high level information corresponding to a single Spark Application. |
| `dataproc.projects.locations.batches.sparkApplications.accessSqlQuery` | GET | `v1/{+name}:accessSqlQuery` | Obtain data corresponding to a particular SQL Query for a Spark Application. |
| `dataproc.projects.locations.sessions.list` | GET | `v1/{+parent}/sessions` | Lists interactive sessions. |
| `dataproc.projects.locations.sessions.delete` | DELETE | `v1/{+name}` | Deletes the interactive session resource. If the session is not in terminal state, it is terminat... |
| `dataproc.projects.locations.sessions.create` | POST | `v1/{+parent}/sessions` | Create an interactive session asynchronously. |
| `dataproc.projects.locations.sessions.terminate` | POST | `v1/{+name}:terminate` | Terminates the interactive session. |
| `dataproc.projects.locations.sessions.get` | GET | `v1/{+name}` | Gets the resource representation for an interactive session. |
| `dataproc.projects.locations.sessions.sparkApplications.searchExecutors` | GET | `v1/{+name}:searchExecutors` | Obtain data corresponding to executors for a Spark Application. |
| `dataproc.projects.locations.sessions.sparkApplications.accessStageAttempt` | GET | `v1/{+name}:accessStageAttempt` | Obtain data corresponding to a spark stage attempt for a Spark Application. |
| `dataproc.projects.locations.sessions.sparkApplications.accessStageRddGraph` | GET | `v1/{+name}:accessStageRddGraph` | Obtain RDD operation graph for a Spark Application Stage. Limits the number of clusters returned ... |
| `dataproc.projects.locations.sessions.sparkApplications.searchStageAttempts` | GET | `v1/{+name}:searchStageAttempts` | Obtain data corresponding to a spark stage attempts for a Spark Application. |
| `dataproc.projects.locations.sessions.sparkApplications.summarizeJobs` | GET | `v1/{+name}:summarizeJobs` | Obtain summary of Jobs for a Spark Application |
| `dataproc.projects.locations.sessions.sparkApplications.accessJob` | GET | `v1/{+name}:accessJob` | Obtain data corresponding to a spark job for a Spark Application. |
| `dataproc.projects.locations.sessions.sparkApplications.searchSqlQueries` | GET | `v1/{+name}:searchSqlQueries` | Obtain data corresponding to SQL Queries for a Spark Application. |
| `dataproc.projects.locations.sessions.sparkApplications.searchStageAttemptTasks` | GET | `v1/{+name}:searchStageAttemptTasks` | Obtain data corresponding to tasks for a spark stage attempt for a Spark Application. |
| `dataproc.projects.locations.sessions.sparkApplications.summarizeStages` | GET | `v1/{+name}:summarizeStages` | Obtain summary of Stages for a Spark Application |
| `dataproc.projects.locations.sessions.sparkApplications.access` | GET | `v1/{+name}:access` | Obtain high level information corresponding to a single Spark Application. |
| `dataproc.projects.locations.sessions.sparkApplications.summarizeExecutors` | GET | `v1/{+name}:summarizeExecutors` | Obtain summary of Executor Summary for a Spark Application |
| `dataproc.projects.locations.sessions.sparkApplications.write` | POST | `v1/{+name}:write` | Write wrapper objects from dataplane to spanner |
| `dataproc.projects.locations.sessions.sparkApplications.search` | GET | `v1/{+parent}/sparkApplications:search` | Obtain high level information and list of Spark Applications corresponding to a batch |
| `dataproc.projects.locations.sessions.sparkApplications.summarizeStageAttemptTasks` | GET | `v1/{+name}:summarizeStageAttemptTasks` | Obtain summary of Tasks for a Spark Application Stage Attempt |
| `dataproc.projects.locations.sessions.sparkApplications.accessEnvironmentInfo` | GET | `v1/{+name}:accessEnvironmentInfo` | Obtain environment details for a Spark Application |
| `dataproc.projects.locations.sessions.sparkApplications.accessSqlPlan` | GET | `v1/{+name}:accessSqlPlan` | Obtain Spark Plan Graph for a Spark Application SQL execution. Limits the number of clusters retu... |
| `dataproc.projects.locations.sessions.sparkApplications.searchExecutorStageSummary` | GET | `v1/{+name}:searchExecutorStageSummary` | Obtain executor summary with respect to a spark stage attempt. |
| `dataproc.projects.locations.sessions.sparkApplications.searchStages` | GET | `v1/{+name}:searchStages` | Obtain data corresponding to stages for a Spark Application. |
| `dataproc.projects.locations.sessions.sparkApplications.accessSqlQuery` | GET | `v1/{+name}:accessSqlQuery` | Obtain data corresponding to a particular SQL Query for a Spark Application. |
| `dataproc.projects.locations.sessions.sparkApplications.searchJobs` | GET | `v1/{+name}:searchJobs` | Obtain list of spark jobs corresponding to a Spark Application. |
| `dataproc.projects.locations.sessionTemplates.get` | GET | `v1/{+name}` | Gets the resource representation for a session template. |
| `dataproc.projects.locations.sessionTemplates.create` | POST | `v1/{+parent}/sessionTemplates` | Create a session template synchronously. |
| `dataproc.projects.locations.sessionTemplates.list` | GET | `v1/{+parent}/sessionTemplates` | Lists session templates. |
| `dataproc.projects.locations.sessionTemplates.delete` | DELETE | `v1/{+name}` | Deletes a session template. |
| `dataproc.projects.locations.sessionTemplates.patch` | PATCH | `v1/{+name}` | Updates the session template synchronously. |
| `dataproc.projects.locations.workflowTemplates.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy.Can return... |
| `dataproc.projects.locations.workflowTemplates.list` | GET | `v1/{+parent}/workflowTemplates` | Lists workflows that match the specified filter in the request. |
| `dataproc.projects.locations.workflowTemplates.create` | POST | `v1/{+parent}/workflowTemplates` | Creates new workflow template. |
| `dataproc.projects.locations.workflowTemplates.instantiateInline` | POST | `v1/{+parent}/workflowTemplates:instantiateInline` | Instantiates a template and begins execution.This method is equivalent to executing the sequence ... |
| `dataproc.projects.locations.workflowTemplates.getIamPolicy` | POST | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `dataproc.projects.locations.workflowTemplates.instantiate` | POST | `v1/{+name}:instantiate` | Instantiates a template and begins execution.The returned Operation can be used to track executio... |
| `dataproc.projects.locations.workflowTemplates.update` | PUT | `v1/{+name}` | Updates (replaces) workflow template. The updated template must contain version that matches the ... |
| `dataproc.projects.locations.workflowTemplates.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `dataproc.projects.locations.workflowTemplates.get` | GET | `v1/{+name}` | Retrieves the latest workflow template.Can retrieve previously instantiated template by specifyin... |
| `dataproc.projects.locations.workflowTemplates.delete` | DELETE | `v1/{+name}` | Deletes a workflow template. It does not cancel in-progress workflows. |
| `dataproc.projects.regions.clusters.delete` | DELETE | `v1/projects/{projectId}/regions/{region}/clusters/{clusterName}` | Deletes a cluster in a project. The returned Operation.metadata will be ClusterOperationMetadata ... |
| `dataproc.projects.regions.clusters.create` | POST | `v1/projects/{projectId}/regions/{region}/clusters` | Creates a cluster in a project. The returned Operation.metadata will be ClusterOperationMetadata ... |
| `dataproc.projects.regions.clusters.list` | GET | `v1/projects/{projectId}/regions/{region}/clusters` | Lists all regions/{region}/clusters in a project alphabetically. |
| `dataproc.projects.regions.clusters.stop` | POST | `v1/projects/{projectId}/regions/{region}/clusters/{clusterName}:stop` | Stops a cluster in a project. |
| `dataproc.projects.regions.clusters.patch` | PATCH | `v1/projects/{projectId}/regions/{region}/clusters/{clusterName}` | Updates a cluster in a project. The returned Operation.metadata will be ClusterOperationMetadata ... |
| `dataproc.projects.regions.clusters.start` | POST | `v1/projects/{projectId}/regions/{region}/clusters/{clusterName}:start` | Starts a cluster in a project. |
| `dataproc.projects.regions.clusters.repair` | POST | `v1/projects/{projectId}/regions/{region}/clusters/{clusterName}:repair` | Repairs a cluster. |
| `dataproc.projects.regions.clusters.get` | GET | `v1/projects/{projectId}/regions/{region}/clusters/{clusterName}` | Gets the resource representation for a cluster in a project. |
| `dataproc.projects.regions.clusters.injectCredentials` | POST | `v1/{+project}/{+region}/{+cluster}:injectCredentials` | Inject encrypted credentials into all of the VMs in a cluster.The target cluster must be a person... |
| `dataproc.projects.regions.clusters.getIamPolicy` | POST | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `dataproc.projects.regions.clusters.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy.Can return... |
| `dataproc.projects.regions.clusters.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `dataproc.projects.regions.clusters.diagnose` | POST | `v1/projects/{projectId}/regions/{region}/clusters/{clusterName}:diagnose` | Gets cluster diagnostic information. The returned Operation.metadata will be ClusterOperationMeta... |
| `dataproc.projects.regions.clusters.nodeGroups.repair` | POST | `v1/{+name}:repair` | Repair nodes in a node group. |
| `dataproc.projects.regions.clusters.nodeGroups.get` | GET | `v1/{+name}` | Gets the resource representation for a node group in a cluster. |
| `dataproc.projects.regions.clusters.nodeGroups.resize` | POST | `v1/{+name}:resize` | Resizes a node group in a cluster. The returned Operation.metadata is NodeGroupOperationMetadata ... |
| `dataproc.projects.regions.clusters.nodeGroups.create` | POST | `v1/{+parent}/nodeGroups` | Creates a node group in a cluster. The returned Operation.metadata is NodeGroupOperationMetadata ... |
| `dataproc.projects.regions.workflowTemplates.instantiate` | POST | `v1/{+name}:instantiate` | Instantiates a template and begins execution.The returned Operation can be used to track executio... |
| `dataproc.projects.regions.workflowTemplates.update` | PUT | `v1/{+name}` | Updates (replaces) workflow template. The updated template must contain version that matches the ... |
| `dataproc.projects.regions.workflowTemplates.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy.Can return... |
| `dataproc.projects.regions.workflowTemplates.delete` | DELETE | `v1/{+name}` | Deletes a workflow template. It does not cancel in-progress workflows. |
| `dataproc.projects.regions.workflowTemplates.instantiateInline` | POST | `v1/{+parent}/workflowTemplates:instantiateInline` | Instantiates a template and begins execution.This method is equivalent to executing the sequence ... |
| `dataproc.projects.regions.workflowTemplates.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `dataproc.projects.regions.workflowTemplates.getIamPolicy` | POST | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `dataproc.projects.regions.workflowTemplates.list` | GET | `v1/{+parent}/workflowTemplates` | Lists workflows that match the specified filter in the request. |
| `dataproc.projects.regions.workflowTemplates.create` | POST | `v1/{+parent}/workflowTemplates` | Creates new workflow template. |
| `dataproc.projects.regions.workflowTemplates.get` | GET | `v1/{+name}` | Retrieves the latest workflow template.Can retrieve previously instantiated template by specifyin... |
| `dataproc.projects.regions.operations.list` | GET | `v1/{+name}` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `dataproc.projects.regions.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `dataproc.projects.regions.operations.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `dataproc.projects.regions.operations.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy.Can return... |
| `dataproc.projects.regions.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `dataproc.projects.regions.operations.getIamPolicy` | POST | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `dataproc.projects.regions.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `dataproc.projects.regions.autoscalingPolicies.list` | GET | `v1/{+parent}/autoscalingPolicies` | Lists autoscaling policies in the project. |
| `dataproc.projects.regions.autoscalingPolicies.create` | POST | `v1/{+parent}/autoscalingPolicies` | Creates new autoscaling policy. |
| `dataproc.projects.regions.autoscalingPolicies.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy.Can return... |
| `dataproc.projects.regions.autoscalingPolicies.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `dataproc.projects.regions.autoscalingPolicies.getIamPolicy` | POST | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `dataproc.projects.regions.autoscalingPolicies.delete` | DELETE | `v1/{+name}` | Deletes an autoscaling policy. It is an error to delete an autoscaling policy that is in use by o... |
| `dataproc.projects.regions.autoscalingPolicies.update` | PUT | `v1/{+name}` | Updates (replaces) autoscaling policy.Disabled check for update_mask, because all updates will be... |
| `dataproc.projects.regions.autoscalingPolicies.get` | GET | `v1/{+name}` | Retrieves autoscaling policy. |
| `dataproc.projects.regions.jobs.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy.Can return... |
| `dataproc.projects.regions.jobs.submit` | POST | `v1/projects/{projectId}/regions/{region}/jobs:submit` | Submits a job to a cluster. |
| `dataproc.projects.regions.jobs.patch` | PATCH | `v1/projects/{projectId}/regions/{region}/jobs/{jobId}` | Updates a job in a project. |
| `dataproc.projects.regions.jobs.submitAsOperation` | POST | `v1/projects/{projectId}/regions/{region}/jobs:submitAsOperation` | Submits job to a cluster. |
| `dataproc.projects.regions.jobs.getIamPolicy` | POST | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `dataproc.projects.regions.jobs.get` | GET | `v1/projects/{projectId}/regions/{region}/jobs/{jobId}` | Gets the resource representation for a job in a project. |
| `dataproc.projects.regions.jobs.list` | GET | `v1/projects/{projectId}/regions/{region}/jobs` | Lists regions/{region}/jobs in a project. |
| `dataproc.projects.regions.jobs.cancel` | POST | `v1/projects/{projectId}/regions/{region}/jobs/{jobId}:cancel` | Starts a job cancellation request. To access the job resource after cancellation, call regions/{r... |
| `dataproc.projects.regions.jobs.delete` | DELETE | `v1/projects/{projectId}/regions/{region}/jobs/{jobId}` | Deletes the job from the project. If the job is active, the delete fails, and the response return... |
| `dataproc.projects.regions.jobs.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |

### `dataproc.projects.locations.autoscalingPolicies.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await dataproc.autoscalingPolicies.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.autoscalingPolicies.list`

**GET** `v1/{+parent}/autoscalingPolicies`

Lists autoscaling policies in the project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The "resource name" of the region or location, as described in https://cloud.google.com/apis/design/resourc... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return in each response. Must be less than or equal to 1000. Defaults to 100. |
| `pageToken` | `string` | query | No | Optional. The page token, returned by a previous call, to request the next page of results. |

**Response**: `ListAutoscalingPoliciesResponse`

```typescript
const res = await dataproc.autoscalingPolicies.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.autoscalingPolicies.get`

**GET** `v1/{+name}`

Retrieves autoscaling policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The "resource name" of the autoscaling policy, as described in https://cloud.google.com/apis/design/resourc... |

**Response**: `AutoscalingPolicy`

```typescript
const res = await dataproc.autoscalingPolicies.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.autoscalingPolicies.delete`

**DELETE** `v1/{+name}`

Deletes an autoscaling policy. It is an error to delete an autoscaling policy that is in use by one or more clusters.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The "resource name" of the autoscaling policy, as described in https://cloud.google.com/apis/design/resourc... |

**Response**: `Empty`

```typescript
const res = await dataproc.autoscalingPolicies.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.autoscalingPolicies.getIamPolicy`

**POST** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await dataproc.autoscalingPolicies.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.autoscalingPolicies.update`

**PUT** `v1/{+name}`

Updates (replaces) autoscaling policy.Disabled check for update_mask, because all updates will be full replacements.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The "resource name" of the autoscaling policy, as described in https://cloud.google.com/apis/design/reso... |

**Request body**: `AutoscalingPolicy`

**Response**: `AutoscalingPolicy`

```typescript
const res = await dataproc.autoscalingPolicies.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.autoscalingPolicies.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/a... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await dataproc.autoscalingPolicies.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.autoscalingPolicies.create`

**POST** `v1/{+parent}/autoscalingPolicies`

Creates new autoscaling policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The "resource name" of the region or location, as described in https://cloud.google.com/apis/design/resourc... |

**Request body**: `AutoscalingPolicy`

**Response**: `AutoscalingPolicy`

```typescript
const res = await dataproc.autoscalingPolicies.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns google.rpc.Code.UNIMPLEMENTED.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await dataproc.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.operations.list`

**GET** `v1/{+name}`

Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns UNIMPLEMENTED.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation's parent resource. |
| `filter` | `string` | query | No | The standard list filter. |
| `pageSize` | `integer` | query | No | The standard list page size. |
| `pageToken` | `string` | query | No | The standard list page token. |
| `returnPartialSuccess` | `boolean` | query | No | When set to true, operations that are reachable are returned as normal, and those that are unreachable are returned i... |

**Response**: `ListOperationsResponse`

```typescript
const res = await dataproc.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns google.rpc.Code.UNIMPLEMENTED. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to Code.CANCELLED.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Response**: `Empty`

```typescript
const res = await dataproc.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await dataproc.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.batches.analyze`

**POST** `v1/{+name}:analyze`

Analyze a Batch for possible recommendations and insights.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified name of the batch to analyze in the format "projects/PROJECT_ID/locations/DATAPROC_REGI... |

**Request body**: `AnalyzeBatchRequest`

**Response**: `Operation`

```typescript
const res = await dataproc.batches.analyze({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.batches.list`

**GET** `v1/{+parent}/batches`

Lists batch workloads.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of batches. |
| `filter` | `string` | query | No | Optional. A filter for the batches to return in the response.A filter is a logical expression constraining the values... |
| `orderBy` | `string` | query | No | Optional. Field(s) on which to sort the list of batches.Currently the only supported sort orders are unspecified (emp... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of batches to return in each response. The service may return fewer than this value. The... |
| `pageToken` | `string` | query | No | Optional. A page token received from a previous ListBatches call. Provide this token to retrieve the subsequent page. |

**Response**: `ListBatchesResponse`

```typescript
const res = await dataproc.batches.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.batches.get`

**GET** `v1/{+name}`

Gets the batch workload resource representation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified name of the batch to retrieve in the format "projects/PROJECT_ID/locations/DATAPROC_REG... |

**Response**: `Batch`

```typescript
const res = await dataproc.batches.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.batches.delete`

**DELETE** `v1/{+name}`

Deletes the batch workload resource. If the batch is not in a CANCELLED, SUCCEEDED or FAILED State, the delete operation fails and the response returns FAILED_PRECONDITION.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified name of the batch to retrieve in the format "projects/PROJECT_ID/locations/DATAPROC_REG... |

**Response**: `Empty`

```typescript
const res = await dataproc.batches.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.batches.create`

**POST** `v1/{+parent}/batches`

Creates a batch workload that executes asynchronously.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where this batch will be created. |
| `batchId` | `string` | query | No | Optional. The ID to use for the batch, which will become the final component of the batch's resource name.This value ... |
| `requestId` | `string` | query | No | Optional. A unique ID used to identify the request. If the service receives two CreateBatchRequests with the same req... |

**Request body**: `Batch`

**Response**: `Operation`

```typescript
const res = await dataproc.batches.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.batches.sparkApplications.searchStages`

**GET** `v1/{+name}:searchStages`

Obtain data corresponding to stages for a Spark Application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified name of the batch to retrieve in the format "projects/PROJECT_ID/locations/DATAPROC_REG... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of stages (paging based on stage_id) to return in each response. The service may return fewe... |
| `pageToken` | `string` | query | No | Optional. A page token received from a previous FetchSparkApplicationStagesList call. Provide this token to retrieve ... |
| `parent` | `string` | query | No | Required. Parent (Batch) resource reference. |
| `stageStatus` | `string` | query | No | Optional. List only stages in the given state. |
| `summaryMetricsMask` | `string` | query | No | Optional. The list of summary metrics fields to include. Empty list will default to skip all summary metrics fields. ... |

**Response**: `SearchSparkApplicationStagesResponse`

```typescript
const res = await dataproc.sparkApplications.searchStages({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.batches.sparkApplications.accessJob`

**GET** `v1/{+name}:accessJob`

Obtain data corresponding to a spark job for a Spark Application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified name of the batch to retrieve in the format "projects/PROJECT_ID/locations/DATAPROC_REG... |
| `jobId` | `string` | query | No | Required. Job ID to fetch data for. |
| `parent` | `string` | query | No | Required. Parent (Batch) resource reference. |

**Response**: `AccessSparkApplicationJobResponse`

```typescript
const res = await dataproc.sparkApplications.accessJob({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.batches.sparkApplications.summarizeJobs`

**GET** `v1/{+name}:summarizeJobs`

Obtain summary of Jobs for a Spark Application

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified name of the batch to retrieve in the format "projects/PROJECT_ID/locations/DATAPROC_REG... |
| `parent` | `string` | query | No | Required. Parent (Batch) resource reference. |

**Response**: `SummarizeSparkApplicationJobsResponse`

```typescript
const res = await dataproc.sparkApplications.summarizeJobs({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.batches.sparkApplications.accessEnvironmentInfo`

**GET** `v1/{+name}:accessEnvironmentInfo`

Obtain environment details for a Spark Application

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified name of the batch to retrieve in the format "projects/PROJECT_ID/locations/DATAPROC_REG... |
| `parent` | `string` | query | No | Required. Parent (Batch) resource reference. |

**Response**: `AccessSparkApplicationEnvironmentInfoResponse`

```typescript
const res = await dataproc.sparkApplications.accessEnvironmentInfo({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.batches.sparkApplications.accessStageRddGraph`

**GET** `v1/{+name}:accessStageRddGraph`

Obtain RDD operation graph for a Spark Application Stage. Limits the number of clusters returned as part of the graph to 10000.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified name of the batch to retrieve in the format "projects/PROJECT_ID/locations/DATAPROC_REG... |
| `parent` | `string` | query | No | Required. Parent (Batch) resource reference. |
| `stageId` | `string` | query | No | Required. Stage ID |

**Response**: `AccessSparkApplicationStageRddOperationGraphResponse`

```typescript
const res = await dataproc.sparkApplications.accessStageRddGraph({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.batches.sparkApplications.searchSqlQueries`

**GET** `v1/{+name}:searchSqlQueries`

Obtain data corresponding to SQL Queries for a Spark Application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified name of the batch to retrieve in the format "projects/PROJECT_ID/locations/DATAPROC_REG... |
| `details` | `boolean` | query | No | Optional. Lists/ hides details of Spark plan nodes. True is set to list and false to hide. |
| `pageSize` | `integer` | query | No | Optional. Maximum number of queries to return in each response. The service may return fewer than this. The default p... |
| `pageToken` | `string` | query | No | Optional. A page token received from a previous SearchSparkApplicationSqlQueries call. Provide this token to retrieve... |
| `parent` | `string` | query | No | Required. Parent (Batch) resource reference. |
| `planDescription` | `boolean` | query | No | Optional. Enables/ disables physical plan description on demand |

**Response**: `SearchSparkApplicationSqlQueriesResponse`

```typescript
const res = await dataproc.sparkApplications.searchSqlQueries({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.batches.sparkApplications.searchStageAttempts`

**GET** `v1/{+name}:searchStageAttempts`

Obtain data corresponding to a spark stage attempts for a Spark Application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified name of the batch to retrieve in the format "projects/PROJECT_ID/locations/DATAPROC_REG... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of stage attempts (paging based on stage_attempt_id) to return in each response. The service... |
| `pageToken` | `string` | query | No | Optional. A page token received from a previous SearchSparkApplicationStageAttempts call. Provide this token to retri... |
| `parent` | `string` | query | No | Required. Parent (Batch) resource reference. |
| `stageId` | `string` | query | No | Required. Stage ID for which attempts are to be fetched |
| `summaryMetricsMask` | `string` | query | No | Optional. The list of summary metrics fields to include. Empty list will default to skip all summary metrics fields. ... |

**Response**: `SearchSparkApplicationStageAttemptsResponse`

```typescript
const res = await dataproc.sparkApplications.searchStageAttempts({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.batches.sparkApplications.search`

**GET** `v1/{+parent}/sparkApplications:search`

Obtain high level information and list of Spark Applications corresponding to a batch

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The fully qualified name of the batch to retrieve in the format "projects/PROJECT_ID/locations/DATAPROC_REG... |
| `applicationStatus` | `string` | query | No | Optional. Search only applications in the chosen state. |
| `maxEndTime` | `string` | query | No | Optional. Latest end timestamp to list. |
| `maxTime` | `string` | query | No | Optional. Latest start timestamp to list. |
| `minEndTime` | `string` | query | No | Optional. Earliest end timestamp to list. |
| `minTime` | `string` | query | No | Optional. Earliest start timestamp to list. |
| `pageSize` | `integer` | query | No | Optional. Maximum number of applications to return in each response. The service may return fewer than this. The defa... |
| `pageToken` | `string` | query | No | Optional. A page token received from a previous SearchSparkApplications call. Provide this token to retrieve the subs... |

**Response**: `SearchSparkApplicationsResponse`

```typescript
const res = await dataproc.sparkApplications.search({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.batches.sparkApplications.accessSqlPlan`

**GET** `v1/{+name}:accessSqlPlan`

Obtain Spark Plan Graph for a Spark Application SQL execution. Limits the number of clusters returned as part of the graph to 10000.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified name of the batch to retrieve in the format "projects/PROJECT_ID/locations/DATAPROC_REG... |
| `executionId` | `string` | query | No | Required. Execution ID |
| `parent` | `string` | query | No | Required. Parent (Batch) resource reference. |

**Response**: `AccessSparkApplicationSqlSparkPlanGraphResponse`

```typescript
const res = await dataproc.sparkApplications.accessSqlPlan({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.batches.sparkApplications.summarizeStageAttemptTasks`

**GET** `v1/{+name}:summarizeStageAttemptTasks`

Obtain summary of Tasks for a Spark Application Stage Attempt

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified name of the batch to retrieve in the format "projects/PROJECT_ID/locations/DATAPROC_REG... |
| `parent` | `string` | query | No | Required. Parent (Batch) resource reference. |
| `stageAttemptId` | `integer` | query | No | Required. Stage Attempt ID |
| `stageId` | `string` | query | No | Required. Stage ID |

**Response**: `SummarizeSparkApplicationStageAttemptTasksResponse`

```typescript
const res = await dataproc.sparkApplications.summarizeStageAttemptTasks({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.batches.sparkApplications.accessStageAttempt`

**GET** `v1/{+name}:accessStageAttempt`

Obtain data corresponding to a spark stage attempt for a Spark Application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified name of the batch to retrieve in the format "projects/PROJECT_ID/locations/DATAPROC_REG... |
| `parent` | `string` | query | No | Required. Parent (Batch) resource reference. |
| `stageAttemptId` | `integer` | query | No | Required. Stage Attempt ID |
| `stageId` | `string` | query | No | Required. Stage ID |
| `summaryMetricsMask` | `string` | query | No | Optional. The list of summary metrics fields to include. Empty list will default to skip all summary metrics fields. ... |

**Response**: `AccessSparkApplicationStageAttemptResponse`

```typescript
const res = await dataproc.sparkApplications.accessStageAttempt({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.batches.sparkApplications.searchExecutors`

**GET** `v1/{+name}:searchExecutors`

Obtain data corresponding to executors for a Spark Application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified name of the batch to retrieve in the format "projects/PROJECT_ID/locations/DATAPROC_REG... |
| `executorStatus` | `string` | query | No | Optional. Filter to select whether active/ dead or all executors should be selected. |
| `pageSize` | `integer` | query | No | Optional. Maximum number of executors to return in each response. The service may return fewer than this. The default... |
| `pageToken` | `string` | query | No | Optional. A page token received from a previous AccessSparkApplicationExecutorsList call. Provide this token to retri... |
| `parent` | `string` | query | No | Required. Parent (Batch) resource reference. |

**Response**: `SearchSparkApplicationExecutorsResponse`

```typescript
const res = await dataproc.sparkApplications.searchExecutors({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.batches.sparkApplications.searchJobs`

**GET** `v1/{+name}:searchJobs`

Obtain list of spark jobs corresponding to a Spark Application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified name of the batch to retrieve in the format "projects/PROJECT_ID/locations/DATAPROC_REG... |
| `jobStatus` | `string` | query | No | Optional. List only jobs in the specific state. |
| `pageSize` | `integer` | query | No | Optional. Maximum number of jobs to return in each response. The service may return fewer than this. The default page... |
| `pageToken` | `string` | query | No | Optional. A page token received from a previous SearchSparkApplicationJobs call. Provide this token to retrieve the s... |
| `parent` | `string` | query | No | Required. Parent (Batch) resource reference. |

**Response**: `SearchSparkApplicationJobsResponse`

```typescript
const res = await dataproc.sparkApplications.searchJobs({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.batches.sparkApplications.write`

**POST** `v1/{+name}:write`

Write wrapper objects from dataplane to spanner

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified name of the spark application to write data about in the format "projects/PROJECT_ID/lo... |

**Request body**: `WriteSparkApplicationContextRequest`

**Response**: `WriteSparkApplicationContextResponse`

```typescript
const res = await dataproc.sparkApplications.write({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.batches.sparkApplications.searchExecutorStageSummary`

**GET** `v1/{+name}:searchExecutorStageSummary`

Obtain executor summary with respect to a spark stage attempt.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified name of the batch to retrieve in the format "projects/PROJECT_ID/locations/DATAPROC_REG... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of executors to return in each response. The service may return fewer than this. The default... |
| `pageToken` | `string` | query | No | Optional. A page token received from a previous AccessSparkApplicationExecutorsList call. Provide this token to retri... |
| `parent` | `string` | query | No | Required. Parent (Batch) resource reference. |
| `stageAttemptId` | `integer` | query | No | Required. Stage Attempt ID |
| `stageId` | `string` | query | No | Required. Stage ID |

**Response**: `SearchSparkApplicationExecutorStageSummaryResponse`

```typescript
const res = await dataproc.sparkApplications.searchExecutorStageSummary({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.batches.sparkApplications.searchStageAttemptTasks`

**GET** `v1/{+name}:searchStageAttemptTasks`

Obtain data corresponding to tasks for a spark stage attempt for a Spark Application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified name of the batch to retrieve in the format "projects/PROJECT_ID/locations/DATAPROC_REG... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of tasks to return in each response. The service may return fewer than this. The default pag... |
| `pageToken` | `string` | query | No | Optional. A page token received from a previous ListSparkApplicationStageAttemptTasks call. Provide this token to ret... |
| `parent` | `string` | query | No | Required. Parent (Batch) resource reference. |
| `sortRuntime` | `boolean` | query | No | Optional. Sort the tasks by runtime. |
| `stageAttemptId` | `integer` | query | No | Optional. Stage Attempt ID |
| `stageId` | `string` | query | No | Optional. Stage ID |
| `taskStatus` | `string` | query | No | Optional. List only tasks in the state. |

**Response**: `SearchSparkApplicationStageAttemptTasksResponse`

```typescript
const res = await dataproc.sparkApplications.searchStageAttemptTasks({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.batches.sparkApplications.summarizeExecutors`

**GET** `v1/{+name}:summarizeExecutors`

Obtain summary of Executor Summary for a Spark Application

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified name of the batch to retrieve in the format "projects/PROJECT_ID/locations/DATAPROC_REG... |
| `parent` | `string` | query | No | Required. Parent (Batch) resource reference. |

**Response**: `SummarizeSparkApplicationExecutorsResponse`

```typescript
const res = await dataproc.sparkApplications.summarizeExecutors({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.batches.sparkApplications.summarizeStages`

**GET** `v1/{+name}:summarizeStages`

Obtain summary of Stages for a Spark Application

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified name of the batch to retrieve in the format "projects/PROJECT_ID/locations/DATAPROC_REG... |
| `parent` | `string` | query | No | Required. Parent (Batch) resource reference. |

**Response**: `SummarizeSparkApplicationStagesResponse`

```typescript
const res = await dataproc.sparkApplications.summarizeStages({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.batches.sparkApplications.access`

**GET** `v1/{+name}:access`

Obtain high level information corresponding to a single Spark Application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified name of the batch to retrieve in the format "projects/PROJECT_ID/locations/DATAPROC_REG... |
| `parent` | `string` | query | No | Required. Parent (Batch) resource reference. |

**Response**: `AccessSparkApplicationResponse`

```typescript
const res = await dataproc.sparkApplications.access({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.batches.sparkApplications.accessSqlQuery`

**GET** `v1/{+name}:accessSqlQuery`

Obtain data corresponding to a particular SQL Query for a Spark Application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified name of the batch to retrieve in the format "projects/PROJECT_ID/locations/DATAPROC_REG... |
| `details` | `boolean` | query | No | Optional. Lists/ hides details of Spark plan nodes. True is set to list and false to hide. |
| `executionId` | `string` | query | No | Required. Execution ID |
| `parent` | `string` | query | No | Required. Parent (Batch) resource reference. |
| `planDescription` | `boolean` | query | No | Optional. Enables/ disables physical plan description on demand |

**Response**: `AccessSparkApplicationSqlQueryResponse`

```typescript
const res = await dataproc.sparkApplications.accessSqlQuery({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.sessions.list`

**GET** `v1/{+parent}/sessions`

Lists interactive sessions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of sessions. |
| `filter` | `string` | query | No | Optional. A filter for the sessions to return in the response.A filter is a logical expression constraining the value... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of sessions to return in each response. The service may return fewer than this value. |
| `pageToken` | `string` | query | No | Optional. A page token received from a previous ListSessions call. Provide this token to retrieve the subsequent page. |

**Response**: `ListSessionsResponse`

```typescript
const res = await dataproc.sessions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.sessions.delete`

**DELETE** `v1/{+name}`

Deletes the interactive session resource. If the session is not in terminal state, it is terminated, and then deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the session resource to delete. |
| `requestId` | `string` | query | No | Optional. A unique ID used to identify the request. If the service receives two DeleteSessionRequest (https://cloud.g... |

**Response**: `Operation`

```typescript
const res = await dataproc.sessions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.sessions.create`

**POST** `v1/{+parent}/sessions`

Create an interactive session asynchronously.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where this session will be created. |
| `requestId` | `string` | query | No | Optional. A unique ID used to identify the request. If the service receives two CreateSessionRequests (https://cloud.... |
| `sessionId` | `string` | query | No | Required. The ID to use for the session, which becomes the final component of the session's resource name.This value ... |

**Request body**: `Session`

**Response**: `Operation`

```typescript
const res = await dataproc.sessions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.sessions.terminate`

**POST** `v1/{+name}:terminate`

Terminates the interactive session.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the session resource to terminate. |

**Request body**: `TerminateSessionRequest`

**Response**: `Operation`

```typescript
const res = await dataproc.sessions.terminate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.sessions.get`

**GET** `v1/{+name}`

Gets the resource representation for an interactive session.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the session to retrieve. |

**Response**: `Session`

```typescript
const res = await dataproc.sessions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.sessions.sparkApplications.searchExecutors`

**GET** `v1/{+name}:searchExecutors`

Obtain data corresponding to executors for a Spark Application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified name of the session to retrieve in the format "projects/PROJECT_ID/locations/DATAPROC_R... |
| `executorStatus` | `string` | query | No | Optional. Filter to select whether active/ dead or all executors should be selected. |
| `pageSize` | `integer` | query | No | Optional. Maximum number of executors to return in each response. The service may return fewer than this. The default... |
| `pageToken` | `string` | query | No | Optional. A page token received from a previous SearchSessionSparkApplicationExecutors call. Provide this token to re... |
| `parent` | `string` | query | No | Required. Parent (Session) resource reference. |

**Response**: `SearchSessionSparkApplicationExecutorsResponse`

```typescript
const res = await dataproc.sparkApplications.searchExecutors({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.sessions.sparkApplications.accessStageAttempt`

**GET** `v1/{+name}:accessStageAttempt`

Obtain data corresponding to a spark stage attempt for a Spark Application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified name of the session to retrieve in the format "projects/PROJECT_ID/locations/DATAPROC_R... |
| `parent` | `string` | query | No | Required. Parent (Session) resource reference. |
| `stageAttemptId` | `integer` | query | No | Required. Stage Attempt ID |
| `stageId` | `string` | query | No | Required. Stage ID |
| `summaryMetricsMask` | `string` | query | No | Optional. The list of summary metrics fields to include. Empty list will default to skip all summary metrics fields. ... |

**Response**: `AccessSessionSparkApplicationStageAttemptResponse`

```typescript
const res = await dataproc.sparkApplications.accessStageAttempt({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.sessions.sparkApplications.accessStageRddGraph`

**GET** `v1/{+name}:accessStageRddGraph`

Obtain RDD operation graph for a Spark Application Stage. Limits the number of clusters returned as part of the graph to 10000.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified name of the session to retrieve in the format "projects/PROJECT_ID/locations/DATAPROC_R... |
| `parent` | `string` | query | No | Required. Parent (Session) resource reference. |
| `stageId` | `string` | query | No | Required. Stage ID |

**Response**: `AccessSessionSparkApplicationStageRddOperationGraphResponse`

```typescript
const res = await dataproc.sparkApplications.accessStageRddGraph({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.sessions.sparkApplications.searchStageAttempts`

**GET** `v1/{+name}:searchStageAttempts`

Obtain data corresponding to a spark stage attempts for a Spark Application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified name of the session to retrieve in the format "projects/PROJECT_ID/locations/DATAPROC_R... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of stage attempts (paging based on stage_attempt_id) to return in each response. The service... |
| `pageToken` | `string` | query | No | Optional. A page token received from a previous SearchSessionSparkApplicationStageAttempts call. Provide this token t... |
| `parent` | `string` | query | No | Required. Parent (Session) resource reference. |
| `stageId` | `string` | query | No | Required. Stage ID for which attempts are to be fetched |
| `summaryMetricsMask` | `string` | query | No | Optional. The list of summary metrics fields to include. Empty list will default to skip all summary metrics fields. ... |

**Response**: `SearchSessionSparkApplicationStageAttemptsResponse`

```typescript
const res = await dataproc.sparkApplications.searchStageAttempts({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.sessions.sparkApplications.summarizeJobs`

**GET** `v1/{+name}:summarizeJobs`

Obtain summary of Jobs for a Spark Application

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified name of the session to retrieve in the format "projects/PROJECT_ID/locations/DATAPROC_R... |
| `jobIds` | `string` | query | No | Optional. List of Job IDs to filter by if provided. |
| `parent` | `string` | query | No | Required. Parent (Session) resource reference. |

**Response**: `SummarizeSessionSparkApplicationJobsResponse`

```typescript
const res = await dataproc.sparkApplications.summarizeJobs({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.sessions.sparkApplications.accessJob`

**GET** `v1/{+name}:accessJob`

Obtain data corresponding to a spark job for a Spark Application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified name of the session to retrieve in the format "projects/PROJECT_ID/locations/DATAPROC_R... |
| `jobId` | `string` | query | No | Required. Job ID to fetch data for. |
| `parent` | `string` | query | No | Required. Parent (Session) resource reference. |

**Response**: `AccessSessionSparkApplicationJobResponse`

```typescript
const res = await dataproc.sparkApplications.accessJob({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.sessions.sparkApplications.searchSqlQueries`

**GET** `v1/{+name}:searchSqlQueries`

Obtain data corresponding to SQL Queries for a Spark Application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified name of the session to retrieve in the format "projects/PROJECT_ID/locations/DATAPROC_R... |
| `details` | `boolean` | query | No | Optional. Lists/ hides details of Spark plan nodes. True is set to list and false to hide. |
| `operationIds` | `string` | query | No | Optional. List of Spark Connect operation IDs to filter by if provided. |
| `pageSize` | `integer` | query | No | Optional. Maximum number of queries to return in each response. The service may return fewer than this. The default p... |
| `pageToken` | `string` | query | No | Optional. A page token received from a previous SearchSessionSparkApplicationSqlQueries call. Provide this token to r... |
| `parent` | `string` | query | No | Required. Parent (Session) resource reference. |
| `planDescription` | `boolean` | query | No | Optional. Enables/ disables physical plan description on demand |

**Response**: `SearchSessionSparkApplicationSqlQueriesResponse`

```typescript
const res = await dataproc.sparkApplications.searchSqlQueries({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.sessions.sparkApplications.searchStageAttemptTasks`

**GET** `v1/{+name}:searchStageAttemptTasks`

Obtain data corresponding to tasks for a spark stage attempt for a Spark Application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified name of the session to retrieve in the format "projects/PROJECT_ID/locations/DATAPROC_R... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of tasks to return in each response. The service may return fewer than this. The default pag... |
| `pageToken` | `string` | query | No | Optional. A page token received from a previous SearchSessionSparkApplicationStageAttemptTasks call. Provide this tok... |
| `parent` | `string` | query | No | Required. Parent (Session) resource reference. |
| `sortRuntime` | `boolean` | query | No | Optional. Sort the tasks by runtime. |
| `stageAttemptId` | `integer` | query | No | Optional. Stage Attempt ID |
| `stageId` | `string` | query | No | Optional. Stage ID |
| `taskStatus` | `string` | query | No | Optional. List only tasks in the state. |

**Response**: `SearchSessionSparkApplicationStageAttemptTasksResponse`

```typescript
const res = await dataproc.sparkApplications.searchStageAttemptTasks({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.sessions.sparkApplications.summarizeStages`

**GET** `v1/{+name}:summarizeStages`

Obtain summary of Stages for a Spark Application

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified name of the session to retrieve in the format "projects/PROJECT_ID/locations/DATAPROC_R... |
| `parent` | `string` | query | No | Required. Parent (Session) resource reference. |
| `stageIds` | `string` | query | No | Optional. List of Stage IDs to filter by if provided. |

**Response**: `SummarizeSessionSparkApplicationStagesResponse`

```typescript
const res = await dataproc.sparkApplications.summarizeStages({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.sessions.sparkApplications.access`

**GET** `v1/{+name}:access`

Obtain high level information corresponding to a single Spark Application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified name of the session to retrieve in the format "projects/PROJECT_ID/locations/DATAPROC_R... |
| `parent` | `string` | query | No | Required. Parent (Session) resource reference. |

**Response**: `AccessSessionSparkApplicationResponse`

```typescript
const res = await dataproc.sparkApplications.access({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.sessions.sparkApplications.summarizeExecutors`

**GET** `v1/{+name}:summarizeExecutors`

Obtain summary of Executor Summary for a Spark Application

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified name of the session to retrieve in the format "projects/PROJECT_ID/locations/DATAPROC_R... |
| `parent` | `string` | query | No | Required. Parent (Session) resource reference. |

**Response**: `SummarizeSessionSparkApplicationExecutorsResponse`

```typescript
const res = await dataproc.sparkApplications.summarizeExecutors({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.sessions.sparkApplications.write`

**POST** `v1/{+name}:write`

Write wrapper objects from dataplane to spanner

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified name of the spark application to write data about in the format "projects/PROJECT_ID/lo... |

**Request body**: `WriteSessionSparkApplicationContextRequest`

**Response**: `WriteSessionSparkApplicationContextResponse`

```typescript
const res = await dataproc.sparkApplications.write({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.sessions.sparkApplications.search`

**GET** `v1/{+parent}/sparkApplications:search`

Obtain high level information and list of Spark Applications corresponding to a batch

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The fully qualified name of the session to retrieve in the format "projects/PROJECT_ID/locations/DATAPROC_R... |
| `applicationStatus` | `string` | query | No | Optional. Search only applications in the chosen state. |
| `maxEndTime` | `string` | query | No | Optional. Latest end timestamp to list. |
| `maxTime` | `string` | query | No | Optional. Latest start timestamp to list. |
| `minEndTime` | `string` | query | No | Optional. Earliest end timestamp to list. |
| `minTime` | `string` | query | No | Optional. Earliest start timestamp to list. |
| `pageSize` | `integer` | query | No | Optional. Maximum number of applications to return in each response. The service may return fewer than this. The defa... |
| `pageToken` | `string` | query | No | Optional. A page token received from a previous SearchSessionSparkApplications call. Provide this token to retrieve t... |

**Response**: `SearchSessionSparkApplicationsResponse`

```typescript
const res = await dataproc.sparkApplications.search({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.sessions.sparkApplications.summarizeStageAttemptTasks`

**GET** `v1/{+name}:summarizeStageAttemptTasks`

Obtain summary of Tasks for a Spark Application Stage Attempt

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified name of the session to retrieve in the format "projects/PROJECT_ID/locations/DATAPROC_R... |
| `parent` | `string` | query | No | Required. Parent (Session) resource reference. |
| `stageAttemptId` | `integer` | query | No | Required. Stage Attempt ID |
| `stageId` | `string` | query | No | Required. Stage ID |

**Response**: `SummarizeSessionSparkApplicationStageAttemptTasksResponse`

```typescript
const res = await dataproc.sparkApplications.summarizeStageAttemptTasks({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.sessions.sparkApplications.accessEnvironmentInfo`

**GET** `v1/{+name}:accessEnvironmentInfo`

Obtain environment details for a Spark Application

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified name of the session to retrieve in the format "projects/PROJECT_ID/locations/DATAPROC_R... |
| `parent` | `string` | query | No | Required. Parent (Session) resource reference. |

**Response**: `AccessSessionSparkApplicationEnvironmentInfoResponse`

```typescript
const res = await dataproc.sparkApplications.accessEnvironmentInfo({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.sessions.sparkApplications.accessSqlPlan`

**GET** `v1/{+name}:accessSqlPlan`

Obtain Spark Plan Graph for a Spark Application SQL execution. Limits the number of clusters returned as part of the graph to 10000.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified name of the session to retrieve in the format "projects/PROJECT_ID/locations/DATAPROC_R... |
| `executionId` | `string` | query | No | Required. Execution ID |
| `parent` | `string` | query | No | Required. Parent (Session) resource reference. |

**Response**: `AccessSessionSparkApplicationSqlSparkPlanGraphResponse`

```typescript
const res = await dataproc.sparkApplications.accessSqlPlan({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.sessions.sparkApplications.searchExecutorStageSummary`

**GET** `v1/{+name}:searchExecutorStageSummary`

Obtain executor summary with respect to a spark stage attempt.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified name of the session to retrieve in the format "projects/PROJECT_ID/locations/DATAPROC_R... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of executors to return in each response. The service may return fewer than this. The default... |
| `pageToken` | `string` | query | No | Optional. A page token received from a previous SearchSessionSparkApplicationExecutorStageSummary call. Provide this ... |
| `parent` | `string` | query | No | Required. Parent (Session) resource reference. |
| `stageAttemptId` | `integer` | query | No | Required. Stage Attempt ID |
| `stageId` | `string` | query | No | Required. Stage ID |

**Response**: `SearchSessionSparkApplicationExecutorStageSummaryResponse`

```typescript
const res = await dataproc.sparkApplications.searchExecutorStageSummary({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.sessions.sparkApplications.searchStages`

**GET** `v1/{+name}:searchStages`

Obtain data corresponding to stages for a Spark Application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified name of the session to retrieve in the format "projects/PROJECT_ID/locations/DATAPROC_R... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of stages (paging based on stage_id) to return in each response. The service may return fewe... |
| `pageToken` | `string` | query | No | Optional. A page token received from a previous SearchSessionSparkApplicationStages call. Provide this token to retri... |
| `parent` | `string` | query | No | Required. Parent (Session) resource reference. |
| `stageIds` | `string` | query | No | Optional. List of Stage IDs to filter by if provided. |
| `stageStatus` | `string` | query | No | Optional. List only stages in the given state. |
| `summaryMetricsMask` | `string` | query | No | Optional. The list of summary metrics fields to include. Empty list will default to skip all summary metrics fields. ... |

**Response**: `SearchSessionSparkApplicationStagesResponse`

```typescript
const res = await dataproc.sparkApplications.searchStages({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.sessions.sparkApplications.accessSqlQuery`

**GET** `v1/{+name}:accessSqlQuery`

Obtain data corresponding to a particular SQL Query for a Spark Application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified name of the session to retrieve in the format "projects/PROJECT_ID/locations/DATAPROC_R... |
| `details` | `boolean` | query | No | Optional. Lists/ hides details of Spark plan nodes. True is set to list and false to hide. |
| `executionId` | `string` | query | No | Required. Execution ID |
| `parent` | `string` | query | No | Required. Parent (Session) resource reference. |
| `planDescription` | `boolean` | query | No | Optional. Enables/ disables physical plan description on demand |

**Response**: `AccessSessionSparkApplicationSqlQueryResponse`

```typescript
const res = await dataproc.sparkApplications.accessSqlQuery({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.sessions.sparkApplications.searchJobs`

**GET** `v1/{+name}:searchJobs`

Obtain list of spark jobs corresponding to a Spark Application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified name of the session to retrieve in the format "projects/PROJECT_ID/locations/DATAPROC_R... |
| `jobIds` | `string` | query | No | Optional. List of Job IDs to filter by if provided. |
| `jobStatus` | `string` | query | No | Optional. List only jobs in the specific state. |
| `pageSize` | `integer` | query | No | Optional. Maximum number of jobs to return in each response. The service may return fewer than this. The default page... |
| `pageToken` | `string` | query | No | Optional. A page token received from a previous SearchSessionSparkApplicationJobs call. Provide this token to retriev... |
| `parent` | `string` | query | No | Required. Parent (Session) resource reference. |

**Response**: `SearchSessionSparkApplicationJobsResponse`

```typescript
const res = await dataproc.sparkApplications.searchJobs({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.sessionTemplates.get`

**GET** `v1/{+name}`

Gets the resource representation for a session template.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the session template to retrieve. |

**Response**: `SessionTemplate`

```typescript
const res = await dataproc.sessionTemplates.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.sessionTemplates.create`

**POST** `v1/{+parent}/sessionTemplates`

Create a session template synchronously.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where this session template will be created. |

**Request body**: `SessionTemplate`

**Response**: `SessionTemplate`

```typescript
const res = await dataproc.sessionTemplates.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.sessionTemplates.list`

**GET** `v1/{+parent}/sessionTemplates`

Lists session templates.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent that owns this collection of session templates. |
| `filter` | `string` | query | No | Optional. A filter for the session templates to return in the response. Filters are case sensitive and have the follo... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of sessions to return in each response. The service may return fewer than this value. |
| `pageToken` | `string` | query | No | Optional. A page token received from a previous ListSessions call. Provide this token to retrieve the subsequent page. |

**Response**: `ListSessionTemplatesResponse`

```typescript
const res = await dataproc.sessionTemplates.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.sessionTemplates.delete`

**DELETE** `v1/{+name}`

Deletes a session template.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the session template resource to delete. |

**Response**: `Empty`

```typescript
const res = await dataproc.sessionTemplates.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.sessionTemplates.patch`

**PATCH** `v1/{+name}`

Updates the session template synchronously.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Identifier. The resource name of the session template. |

**Request body**: `SessionTemplate`

**Response**: `SessionTemplate`

```typescript
const res = await dataproc.sessionTemplates.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.workflowTemplates.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await dataproc.workflowTemplates.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.workflowTemplates.list`

**GET** `v1/{+parent}/workflowTemplates`

Lists workflows that match the specified filter in the request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the region or location, as described in https://cloud.google.com/apis/design/resource_... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return in each response. |
| `pageToken` | `string` | query | No | Optional. The page token, returned by a previous call, to request the next page of results. |

**Response**: `ListWorkflowTemplatesResponse`

```typescript
const res = await dataproc.workflowTemplates.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.workflowTemplates.create`

**POST** `v1/{+parent}/workflowTemplates`

Creates new workflow template.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the region or location, as described in https://cloud.google.com/apis/design/resource_... |

**Request body**: `WorkflowTemplate`

**Response**: `WorkflowTemplate`

```typescript
const res = await dataproc.workflowTemplates.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.workflowTemplates.instantiateInline`

**POST** `v1/{+parent}/workflowTemplates:instantiateInline`

Instantiates a template and begins execution.This method is equivalent to executing the sequence CreateWorkflowTemplate, InstantiateWorkflowTemplate, DeleteWorkflowTemplate.The returned Operation can be used to track execution of workflow by polling operations.get. The Operation will complete when entire workflow is finished.The running workflow can be aborted via operations.cancel. This will cause any inflight jobs to be cancelled and workflow-owned clusters to be deleted.The Operation.metadata will be WorkflowMetadata (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#workflowmetadata). Also see Using WorkflowMetadata (https://cloud.google.com/dataproc/docs/concepts/workflows/debugging#using_workflowmetadata).On successful completion, Operation.response will be Empty.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the region or location, as described in https://cloud.google.com/apis/design/resource_... |
| `requestId` | `string` | query | No | Optional. A tag that prevents multiple concurrent workflow instances with the same tag from running. This mitigates r... |

**Request body**: `WorkflowTemplate`

**Response**: `Operation`

```typescript
const res = await dataproc.workflowTemplates.instantiateInline({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.workflowTemplates.getIamPolicy`

**POST** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await dataproc.workflowTemplates.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.workflowTemplates.instantiate`

**POST** `v1/{+name}:instantiate`

Instantiates a template and begins execution.The returned Operation can be used to track execution of workflow by polling operations.get. The Operation will complete when entire workflow is finished.The running workflow can be aborted via operations.cancel. This will cause any inflight jobs to be cancelled and workflow-owned clusters to be deleted.The Operation.metadata will be WorkflowMetadata (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#workflowmetadata). Also see Using WorkflowMetadata (https://cloud.google.com/dataproc/docs/concepts/workflows/debugging#using_workflowmetadata).On successful completion, Operation.response will be Empty.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the workflow template, as described in https://cloud.google.com/apis/design/resource_n... |

**Request body**: `InstantiateWorkflowTemplateRequest`

**Response**: `Operation`

```typescript
const res = await dataproc.workflowTemplates.instantiate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.workflowTemplates.update`

**PUT** `v1/{+name}`

Updates (replaces) workflow template. The updated template must contain version that matches the current server version.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The resource name of the workflow template, as described in https://cloud.google.com/apis/design/resourc... |

**Request body**: `WorkflowTemplate`

**Response**: `WorkflowTemplate`

```typescript
const res = await dataproc.workflowTemplates.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.workflowTemplates.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/a... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await dataproc.workflowTemplates.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.workflowTemplates.get`

**GET** `v1/{+name}`

Retrieves the latest workflow template.Can retrieve previously instantiated template by specifying optional version parameter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the workflow template, as described in https://cloud.google.com/apis/design/resource_n... |
| `version` | `integer` | query | No | Optional. The version of workflow template to retrieve. Only previously instantiated versions can be retrieved.If uns... |

**Response**: `WorkflowTemplate`

```typescript
const res = await dataproc.workflowTemplates.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.locations.workflowTemplates.delete`

**DELETE** `v1/{+name}`

Deletes a workflow template. It does not cancel in-progress workflows.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the workflow template, as described in https://cloud.google.com/apis/design/resource_n... |
| `version` | `integer` | query | No | Optional. The version of workflow template to delete. If specified, will only delete the template if the current serv... |

**Response**: `Empty`

```typescript
const res = await dataproc.workflowTemplates.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.clusters.delete`

**DELETE** `v1/projects/{projectId}/regions/{region}/clusters/{clusterName}`

Deletes a cluster in a project. The returned Operation.metadata will be ClusterOperationMetadata (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#clusteroperationmetadata).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. The ID of the Google Cloud Platform project that the cluster belongs to. |
| `region` | `string` | path | Yes | Required. The Dataproc region in which to handle the request. |
| `clusterName` | `string` | path | Yes | Required. The cluster name. |
| `clusterUuid` | `string` | query | No | Optional. Specifying the cluster_uuid means the RPC should fail (with error NOT_FOUND) if cluster with specified UUID... |
| `gracefulTerminationTimeout` | `string` | query | No | Optional. The graceful termination timeout for the deletion of the cluster. Indicate the time the request will wait t... |
| `requestId` | `string` | query | No | Optional. A unique ID used to identify the request. If the server receives two DeleteClusterRequest (https://cloud.go... |

**Response**: `Operation`

```typescript
const res = await dataproc.clusters.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.clusters.create`

**POST** `v1/projects/{projectId}/regions/{region}/clusters`

Creates a cluster in a project. The returned Operation.metadata will be ClusterOperationMetadata (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#clusteroperationmetadata).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. The ID of the Google Cloud Platform project that the cluster belongs to. |
| `region` | `string` | path | Yes | Required. The Dataproc region in which to handle the request. |
| `actionOnFailedPrimaryWorkers` | `string` | query | No | Optional. Failure action when primary worker creation fails. |
| `requestId` | `string` | query | No | Optional. A unique ID used to identify the request. If the server receives two CreateClusterRequest (https://cloud.go... |

**Request body**: `Cluster`

**Response**: `Operation`

```typescript
const res = await dataproc.clusters.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.clusters.list`

**GET** `v1/projects/{projectId}/regions/{region}/clusters`

Lists all regions/{region}/clusters in a project alphabetically.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. The ID of the Google Cloud Platform project that the cluster belongs to. |
| `region` | `string` | path | Yes | Required. The Dataproc region in which to handle the request. |
| `filter` | `string` | query | No | Optional. A filter constraining the clusters to list. Filters are case-sensitive and have the following syntax:field ... |
| `pageSize` | `integer` | query | No | Optional. The standard List page size. |
| `pageToken` | `string` | query | No | Optional. The standard List page token. |

**Response**: `ListClustersResponse`

```typescript
const res = await dataproc.clusters.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.clusters.stop`

**POST** `v1/projects/{projectId}/regions/{region}/clusters/{clusterName}:stop`

Stops a cluster in a project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. The ID of the Google Cloud Platform project the cluster belongs to. |
| `region` | `string` | path | Yes | Required. The Dataproc region in which to handle the request. |
| `clusterName` | `string` | path | Yes | Required. The cluster name. |

**Request body**: `StopClusterRequest`

**Response**: `Operation`

```typescript
const res = await dataproc.clusters.stop({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.clusters.patch`

**PATCH** `v1/projects/{projectId}/regions/{region}/clusters/{clusterName}`

Updates a cluster in a project. The returned Operation.metadata will be ClusterOperationMetadata (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#clusteroperationmetadata). The cluster must be in a RUNNING state or an error is returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. The ID of the Google Cloud Platform project the cluster belongs to. |
| `region` | `string` | path | Yes | Required. The Dataproc region in which to handle the request. |
| `clusterName` | `string` | path | Yes | Required. The cluster name. |
| `gracefulDecommissionTimeout` | `string` | query | No | Optional. Timeout for graceful YARN decommissioning. Graceful decommissioning allows removing nodes from the cluster ... |
| `requestId` | `string` | query | No | Optional. A unique ID used to identify the request. If the server receives two UpdateClusterRequest (https://cloud.go... |
| `updateMask` | `string` | query | No | Required. Specifies the path, relative to Cluster, of the field to update. For example, to change the number of worke... |

**Request body**: `Cluster`

**Response**: `Operation`

```typescript
const res = await dataproc.clusters.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.clusters.start`

**POST** `v1/projects/{projectId}/regions/{region}/clusters/{clusterName}:start`

Starts a cluster in a project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. The ID of the Google Cloud Platform project the cluster belongs to. |
| `region` | `string` | path | Yes | Required. The Dataproc region in which to handle the request. |
| `clusterName` | `string` | path | Yes | Required. The cluster name. |

**Request body**: `StartClusterRequest`

**Response**: `Operation`

```typescript
const res = await dataproc.clusters.start({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.clusters.repair`

**POST** `v1/projects/{projectId}/regions/{region}/clusters/{clusterName}:repair`

Repairs a cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. The ID of the Google Cloud Platform project the cluster belongs to. |
| `region` | `string` | path | Yes | Required. The Dataproc region in which to handle the request. |
| `clusterName` | `string` | path | Yes | Required. The cluster name. |

**Request body**: `RepairClusterRequest`

**Response**: `Operation`

```typescript
const res = await dataproc.clusters.repair({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.clusters.get`

**GET** `v1/projects/{projectId}/regions/{region}/clusters/{clusterName}`

Gets the resource representation for a cluster in a project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. The ID of the Google Cloud Platform project that the cluster belongs to. |
| `region` | `string` | path | Yes | Required. The Dataproc region in which to handle the request. |
| `clusterName` | `string` | path | Yes | Required. The cluster name. |

**Response**: `Cluster`

```typescript
const res = await dataproc.clusters.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.clusters.injectCredentials`

**POST** `v1/{+project}/{+region}/{+cluster}:injectCredentials`

Inject encrypted credentials into all of the VMs in a cluster.The target cluster must be a personal auth cluster assigned to the user who is issuing the RPC.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Required. The ID of the Google Cloud Platform project the cluster belongs to, of the form projects/. |
| `region` | `string` | path | Yes | Required. The region containing the cluster, of the form regions/. |
| `cluster` | `string` | path | Yes | Required. The cluster, in the form clusters/. |

**Request body**: `InjectCredentialsRequest`

**Response**: `Operation`

```typescript
const res = await dataproc.clusters.injectCredentials({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.clusters.getIamPolicy`

**POST** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await dataproc.clusters.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.clusters.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await dataproc.clusters.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.clusters.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/a... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await dataproc.clusters.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.clusters.diagnose`

**POST** `v1/projects/{projectId}/regions/{region}/clusters/{clusterName}:diagnose`

Gets cluster diagnostic information. The returned Operation.metadata will be ClusterOperationMetadata (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#clusteroperationmetadata). After the operation completes, Operation.response contains DiagnoseClusterResults (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#diagnoseclusterresults).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. The ID of the Google Cloud Platform project that the cluster belongs to. |
| `region` | `string` | path | Yes | Required. The Dataproc region in which to handle the request. |
| `clusterName` | `string` | path | Yes | Required. The cluster name. |

**Request body**: `DiagnoseClusterRequest`

**Response**: `Operation`

```typescript
const res = await dataproc.clusters.diagnose({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.clusters.nodeGroups.repair`

**POST** `v1/{+name}:repair`

Repair nodes in a node group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the node group to resize. Format: projects/{project}/regions/{region}/clusters/{cluster}/nodeGr... |

**Request body**: `RepairNodeGroupRequest`

**Response**: `Operation`

```typescript
const res = await dataproc.nodeGroups.repair({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.clusters.nodeGroups.get`

**GET** `v1/{+name}`

Gets the resource representation for a node group in a cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the node group to retrieve. Format: projects/{project}/regions/{region}/clusters/{cluster}/node... |

**Response**: `NodeGroup`

```typescript
const res = await dataproc.nodeGroups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.clusters.nodeGroups.resize`

**POST** `v1/{+name}:resize`

Resizes a node group in a cluster. The returned Operation.metadata is NodeGroupOperationMetadata (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#nodegroupoperationmetadata).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the node group to resize. Format: projects/{project}/regions/{region}/clusters/{cluster}/nodeGr... |

**Request body**: `ResizeNodeGroupRequest`

**Response**: `Operation`

```typescript
const res = await dataproc.nodeGroups.resize({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.clusters.nodeGroups.create`

**POST** `v1/{+parent}/nodeGroups`

Creates a node group in a cluster. The returned Operation.metadata is NodeGroupOperationMetadata (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#nodegroupoperationmetadata).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where this node group will be created. Format: projects/{project}/regions/{region}/clus... |
| `nodeGroupId` | `string` | query | No | Optional. An optional node group ID. Generated if not specified.The ID must contain only letters (a-z, A-Z), numbers ... |
| `parentOperationId` | `string` | query | No | Optional. operation id of the parent operation sending the create request |
| `requestId` | `string` | query | No | Optional. A unique ID used to identify the request. If the server receives two CreateNodeGroupRequest (https://cloud.... |

**Request body**: `NodeGroup`

**Response**: `Operation`

```typescript
const res = await dataproc.nodeGroups.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.workflowTemplates.instantiate`

**POST** `v1/{+name}:instantiate`

Instantiates a template and begins execution.The returned Operation can be used to track execution of workflow by polling operations.get. The Operation will complete when entire workflow is finished.The running workflow can be aborted via operations.cancel. This will cause any inflight jobs to be cancelled and workflow-owned clusters to be deleted.The Operation.metadata will be WorkflowMetadata (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#workflowmetadata). Also see Using WorkflowMetadata (https://cloud.google.com/dataproc/docs/concepts/workflows/debugging#using_workflowmetadata).On successful completion, Operation.response will be Empty.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the workflow template, as described in https://cloud.google.com/apis/design/resource_n... |

**Request body**: `InstantiateWorkflowTemplateRequest`

**Response**: `Operation`

```typescript
const res = await dataproc.workflowTemplates.instantiate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.workflowTemplates.update`

**PUT** `v1/{+name}`

Updates (replaces) workflow template. The updated template must contain version that matches the current server version.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The resource name of the workflow template, as described in https://cloud.google.com/apis/design/resourc... |

**Request body**: `WorkflowTemplate`

**Response**: `WorkflowTemplate`

```typescript
const res = await dataproc.workflowTemplates.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.workflowTemplates.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await dataproc.workflowTemplates.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.workflowTemplates.delete`

**DELETE** `v1/{+name}`

Deletes a workflow template. It does not cancel in-progress workflows.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the workflow template, as described in https://cloud.google.com/apis/design/resource_n... |
| `version` | `integer` | query | No | Optional. The version of workflow template to delete. If specified, will only delete the template if the current serv... |

**Response**: `Empty`

```typescript
const res = await dataproc.workflowTemplates.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.workflowTemplates.instantiateInline`

**POST** `v1/{+parent}/workflowTemplates:instantiateInline`

Instantiates a template and begins execution.This method is equivalent to executing the sequence CreateWorkflowTemplate, InstantiateWorkflowTemplate, DeleteWorkflowTemplate.The returned Operation can be used to track execution of workflow by polling operations.get. The Operation will complete when entire workflow is finished.The running workflow can be aborted via operations.cancel. This will cause any inflight jobs to be cancelled and workflow-owned clusters to be deleted.The Operation.metadata will be WorkflowMetadata (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#workflowmetadata). Also see Using WorkflowMetadata (https://cloud.google.com/dataproc/docs/concepts/workflows/debugging#using_workflowmetadata).On successful completion, Operation.response will be Empty.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the region or location, as described in https://cloud.google.com/apis/design/resource_... |
| `requestId` | `string` | query | No | Optional. A tag that prevents multiple concurrent workflow instances with the same tag from running. This mitigates r... |

**Request body**: `WorkflowTemplate`

**Response**: `Operation`

```typescript
const res = await dataproc.workflowTemplates.instantiateInline({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.workflowTemplates.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/a... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await dataproc.workflowTemplates.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.workflowTemplates.getIamPolicy`

**POST** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await dataproc.workflowTemplates.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.workflowTemplates.list`

**GET** `v1/{+parent}/workflowTemplates`

Lists workflows that match the specified filter in the request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the region or location, as described in https://cloud.google.com/apis/design/resource_... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return in each response. |
| `pageToken` | `string` | query | No | Optional. The page token, returned by a previous call, to request the next page of results. |

**Response**: `ListWorkflowTemplatesResponse`

```typescript
const res = await dataproc.workflowTemplates.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.workflowTemplates.create`

**POST** `v1/{+parent}/workflowTemplates`

Creates new workflow template.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the region or location, as described in https://cloud.google.com/apis/design/resource_... |

**Request body**: `WorkflowTemplate`

**Response**: `WorkflowTemplate`

```typescript
const res = await dataproc.workflowTemplates.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.workflowTemplates.get`

**GET** `v1/{+name}`

Retrieves the latest workflow template.Can retrieve previously instantiated template by specifying optional version parameter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the workflow template, as described in https://cloud.google.com/apis/design/resource_n... |
| `version` | `integer` | query | No | Optional. The version of workflow template to retrieve. Only previously instantiated versions can be retrieved.If uns... |

**Response**: `WorkflowTemplate`

```typescript
const res = await dataproc.workflowTemplates.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.operations.list`

**GET** `v1/{+name}`

Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns UNIMPLEMENTED.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation's parent resource. |
| `filter` | `string` | query | No | The standard list filter. |
| `pageSize` | `integer` | query | No | The standard list page size. |
| `pageToken` | `string` | query | No | The standard list page token. |
| `returnPartialSuccess` | `boolean` | query | No | When set to true, operations that are reachable are returned as normal, and those that are unreachable are returned i... |

**Response**: `ListOperationsResponse`

```typescript
const res = await dataproc.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await dataproc.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.operations.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/a... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await dataproc.operations.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.operations.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await dataproc.operations.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns google.rpc.Code.UNIMPLEMENTED. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to Code.CANCELLED.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Response**: `Empty`

```typescript
const res = await dataproc.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.operations.getIamPolicy`

**POST** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await dataproc.operations.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns google.rpc.Code.UNIMPLEMENTED.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await dataproc.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.autoscalingPolicies.list`

**GET** `v1/{+parent}/autoscalingPolicies`

Lists autoscaling policies in the project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The "resource name" of the region or location, as described in https://cloud.google.com/apis/design/resourc... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return in each response. Must be less than or equal to 1000. Defaults to 100. |
| `pageToken` | `string` | query | No | Optional. The page token, returned by a previous call, to request the next page of results. |

**Response**: `ListAutoscalingPoliciesResponse`

```typescript
const res = await dataproc.autoscalingPolicies.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.autoscalingPolicies.create`

**POST** `v1/{+parent}/autoscalingPolicies`

Creates new autoscaling policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The "resource name" of the region or location, as described in https://cloud.google.com/apis/design/resourc... |

**Request body**: `AutoscalingPolicy`

**Response**: `AutoscalingPolicy`

```typescript
const res = await dataproc.autoscalingPolicies.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.autoscalingPolicies.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await dataproc.autoscalingPolicies.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.autoscalingPolicies.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/a... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await dataproc.autoscalingPolicies.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.autoscalingPolicies.getIamPolicy`

**POST** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await dataproc.autoscalingPolicies.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.autoscalingPolicies.delete`

**DELETE** `v1/{+name}`

Deletes an autoscaling policy. It is an error to delete an autoscaling policy that is in use by one or more clusters.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The "resource name" of the autoscaling policy, as described in https://cloud.google.com/apis/design/resourc... |

**Response**: `Empty`

```typescript
const res = await dataproc.autoscalingPolicies.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.autoscalingPolicies.update`

**PUT** `v1/{+name}`

Updates (replaces) autoscaling policy.Disabled check for update_mask, because all updates will be full replacements.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The "resource name" of the autoscaling policy, as described in https://cloud.google.com/apis/design/reso... |

**Request body**: `AutoscalingPolicy`

**Response**: `AutoscalingPolicy`

```typescript
const res = await dataproc.autoscalingPolicies.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.autoscalingPolicies.get`

**GET** `v1/{+name}`

Retrieves autoscaling policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The "resource name" of the autoscaling policy, as described in https://cloud.google.com/apis/design/resourc... |

**Response**: `AutoscalingPolicy`

```typescript
const res = await dataproc.autoscalingPolicies.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.jobs.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await dataproc.jobs.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.jobs.submit`

**POST** `v1/projects/{projectId}/regions/{region}/jobs:submit`

Submits a job to a cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. The ID of the Google Cloud Platform project that the job belongs to. |
| `region` | `string` | path | Yes | Required. The Dataproc region in which to handle the request. |

**Request body**: `SubmitJobRequest`

**Response**: `Job`

```typescript
const res = await dataproc.jobs.submit({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.jobs.patch`

**PATCH** `v1/projects/{projectId}/regions/{region}/jobs/{jobId}`

Updates a job in a project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. The ID of the Google Cloud Platform project that the job belongs to. |
| `region` | `string` | path | Yes | Required. The Dataproc region in which to handle the request. |
| `jobId` | `string` | path | Yes | Required. The job ID. |
| `updateMask` | `string` | query | No | Required. Specifies the path, relative to Job, of the field to update. For example, to update the labels of a Job the... |

**Request body**: `Job`

**Response**: `Job`

```typescript
const res = await dataproc.jobs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.jobs.submitAsOperation`

**POST** `v1/projects/{projectId}/regions/{region}/jobs:submitAsOperation`

Submits job to a cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. The ID of the Google Cloud Platform project that the job belongs to. |
| `region` | `string` | path | Yes | Required. The Dataproc region in which to handle the request. |

**Request body**: `SubmitJobRequest`

**Response**: `Operation`

```typescript
const res = await dataproc.jobs.submitAsOperation({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.jobs.getIamPolicy`

**POST** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await dataproc.jobs.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.jobs.get`

**GET** `v1/projects/{projectId}/regions/{region}/jobs/{jobId}`

Gets the resource representation for a job in a project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. The ID of the Google Cloud Platform project that the job belongs to. |
| `region` | `string` | path | Yes | Required. The Dataproc region in which to handle the request. |
| `jobId` | `string` | path | Yes | Required. The job ID. |

**Response**: `Job`

```typescript
const res = await dataproc.jobs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.jobs.list`

**GET** `v1/projects/{projectId}/regions/{region}/jobs`

Lists regions/{region}/jobs in a project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. The ID of the Google Cloud Platform project that the job belongs to. |
| `region` | `string` | path | Yes | Required. The Dataproc region in which to handle the request. |
| `clusterName` | `string` | query | No | Optional. If set, the returned jobs list includes only jobs that were submitted to the named cluster. |
| `filter` | `string` | query | No | Optional. A filter constraining the jobs to list. Filters are case-sensitive and have the following syntax:field = va... |
| `jobStateMatcher` | `string` | query | No | Optional. Specifies enumerated categories of jobs to list. (default = match ALL jobs).If filter is provided, jobState... |
| `pageSize` | `integer` | query | No | Optional. The number of results to return in each response. |
| `pageToken` | `string` | query | No | Optional. The page token, returned by a previous call, to request the next page of results. |

**Response**: `ListJobsResponse`

```typescript
const res = await dataproc.jobs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.jobs.cancel`

**POST** `v1/projects/{projectId}/regions/{region}/jobs/{jobId}:cancel`

Starts a job cancellation request. To access the job resource after cancellation, call regions/{region}/jobs.list (https://cloud.google.com/dataproc/docs/reference/rest/v1/projects.regions.jobs/list) or regions/{region}/jobs.get (https://cloud.google.com/dataproc/docs/reference/rest/v1/projects.regions.jobs/get).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. The ID of the Google Cloud Platform project that the job belongs to. |
| `region` | `string` | path | Yes | Required. The Dataproc region in which to handle the request. |
| `jobId` | `string` | path | Yes | Required. The job ID. |

**Request body**: `CancelJobRequest`

**Response**: `Job`

```typescript
const res = await dataproc.jobs.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.jobs.delete`

**DELETE** `v1/projects/{projectId}/regions/{region}/jobs/{jobId}`

Deletes the job from the project. If the job is active, the delete fails, and the response returns FAILED_PRECONDITION.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. The ID of the Google Cloud Platform project that the job belongs to. |
| `region` | `string` | path | Yes | Required. The Dataproc region in which to handle the request. |
| `jobId` | `string` | path | Yes | Required. The job ID. |

**Response**: `Empty`

```typescript
const res = await dataproc.jobs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataproc.projects.regions.jobs.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/a... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await dataproc.jobs.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AcceleratorConfig`

Specifies the type and number of accelerator cards attached to the instances of an instance. See GPUs on Compute Engine (https://cloud.google.com/compute/docs/gpus/).

| Property | Type | Description |
|----------|------|-------------|
| `acceleratorCount` | `integer` | The number of the accelerator cards of this type exposed to this instance. |
| `acceleratorTypeUri` | `string` | Full URL, partial URI, or short name of the accelerator type resource to expose to this instance.... |

### `AccessSessionSparkApplicationEnvironmentInfoResponse`

Environment details of a Saprk Application.

| Property | Type | Description |
|----------|------|-------------|
| `applicationEnvironmentInfo` | `ApplicationEnvironmentInfo` | Details about the Environment that the application is running in. |

### `AccessSessionSparkApplicationJobResponse`

Details of a particular job associated with Spark Application

| Property | Type | Description |
|----------|------|-------------|
| `jobData` | `JobData` | Output only. Data corresponding to a spark job. |

### `AccessSessionSparkApplicationResponse`

A summary of Spark Application

| Property | Type | Description |
|----------|------|-------------|
| `application` | `ApplicationInfo` | Output only. High level information corresponding to an application. |

### `AccessSessionSparkApplicationSqlQueryResponse`

Details of a query for a Spark Application

| Property | Type | Description |
|----------|------|-------------|
| `executionData` | `SqlExecutionUiData` | SQL Execution Data |

### `AccessSessionSparkApplicationSqlSparkPlanGraphResponse`

SparkPlanGraph for a Spark Application execution limited to maximum 10000 clusters.

| Property | Type | Description |
|----------|------|-------------|
| `sparkPlanGraph` | `SparkPlanGraph` | SparkPlanGraph for a Spark Application execution. |

### `AccessSessionSparkApplicationStageAttemptResponse`

Stage Attempt for a Stage of a Spark Application

| Property | Type | Description |
|----------|------|-------------|
| `stageData` | `StageData` | Output only. Data corresponding to a stage. |

### `AccessSessionSparkApplicationStageRddOperationGraphResponse`

RDD operation graph for a Spark Application Stage limited to maximum 10000 clusters.

| Property | Type | Description |
|----------|------|-------------|
| `rddOperationGraph` | `RddOperationGraph` | RDD operation graph for a Spark Application Stage. |

### `AccessSparkApplicationEnvironmentInfoResponse`

Environment details of a Saprk Application.

| Property | Type | Description |
|----------|------|-------------|
| `applicationEnvironmentInfo` | `ApplicationEnvironmentInfo` | Details about the Environment that the application is running in. |

### `AccessSparkApplicationJobResponse`

Details of a particular job associated with Spark Application

| Property | Type | Description |
|----------|------|-------------|
| `jobData` | `JobData` | Output only. Data corresponding to a spark job. |

### `AccessSparkApplicationResponse`

A summary of Spark Application

| Property | Type | Description |
|----------|------|-------------|
| `application` | `ApplicationInfo` | Output only. High level information corresponding to an application. |

### `AccessSparkApplicationSqlQueryResponse`

Details of a query for a Spark Application

| Property | Type | Description |
|----------|------|-------------|
| `executionData` | `SqlExecutionUiData` | SQL Execution Data |

### `AccessSparkApplicationSqlSparkPlanGraphResponse`

SparkPlanGraph for a Spark Application execution limited to maximum 10000 clusters.

| Property | Type | Description |
|----------|------|-------------|
| `sparkPlanGraph` | `SparkPlanGraph` | SparkPlanGraph for a Spark Application execution. |

### `AccessSparkApplicationStageAttemptResponse`

Stage Attempt for a Stage of a Spark Application

| Property | Type | Description |
|----------|------|-------------|
| `stageData` | `StageData` | Output only. Data corresponding to a stage. |

### `AccessSparkApplicationStageRddOperationGraphResponse`

RDD operation graph for a Spark Application Stage limited to maximum 10000 clusters.

| Property | Type | Description |
|----------|------|-------------|
| `rddOperationGraph` | `RddOperationGraph` | RDD operation graph for a Spark Application Stage. |

### `AccumulableInfo`

| Property | Type | Description |
|----------|------|-------------|
| `accumullableInfoId` | `string` |  |
| `name` | `string` |  |
| `update` | `string` |  |
| `value` | `string` |  |

### `AnalyzeBatchRequest`

A request to analyze a batch workload.

| Property | Type | Description |
|----------|------|-------------|
| `requestId` | `string` | Optional. A unique ID used to identify the request. If the service receives two AnalyzeBatchReque... |
| `requestorId` | `string` | Optional. The requestor ID is used to identify if the request comes from a GCA investigation or t... |

### `AnalyzeOperationMetadata`

Metadata describing the Analyze operation.

| Property | Type | Description |
|----------|------|-------------|
| `analyzedWorkloadName` | `string` | Output only. name of the workload being analyzed. |
| `analyzedWorkloadType` | `string` | Output only. Type of the workload being analyzed. |
| `analyzedWorkloadUuid` | `string` | Output only. unique identifier of the workload typically generated by control plane. E.g. batch u... |
| `createTime` | `string` | Output only. The time when the operation was created. |
| `description` | `string` | Output only. Short description of the operation. |
| `doneTime` | `string` | Output only. The time when the operation finished. |
| `labels` | `object` | Output only. Labels associated with the operation. |
| `warnings` | `array<string>` | Output only. Warnings encountered during operation execution. |

### `AppSummary`

| Property | Type | Description |
|----------|------|-------------|
| `numCompletedJobs` | `integer` |  |
| `numCompletedStages` | `integer` |  |

### `ApplicationAttemptInfo`

Specific attempt of an application.

| Property | Type | Description |
|----------|------|-------------|
| `appSparkVersion` | `string` |  |
| `attemptId` | `string` |  |
| `completed` | `boolean` |  |
| `durationMillis` | `string` |  |
| `endTime` | `string` |  |
| `lastUpdated` | `string` |  |
| `sparkUser` | `string` |  |
| `startTime` | `string` |  |

### `ApplicationEnvironmentInfo`

Details about the Environment that the application is running in.

| Property | Type | Description |
|----------|------|-------------|
| `classpathEntries` | `object` |  |
| `hadoopProperties` | `object` |  |
| `metricsProperties` | `object` |  |
| `resourceProfiles` | `array<ResourceProfileInfo>` |  |
| `runtime` | `SparkRuntimeInfo` |  |
| `sparkProperties` | `object` |  |
| `systemProperties` | `object` |  |

### `ApplicationInfo`

High level information corresponding to an application.

| Property | Type | Description |
|----------|------|-------------|
| `applicationContextIngestionStatus` | `string` |  |
| `applicationId` | `string` |  |
| `attempts` | `array<ApplicationAttemptInfo>` |  |
| `coresGranted` | `integer` |  |
| `coresPerExecutor` | `integer` |  |
| `maxCores` | `integer` |  |
| `memoryPerExecutorMb` | `integer` |  |
| `name` | `string` |  |
| `quantileDataStatus` | `string` |  |

### `AuthenticationConfig`

Authentication configuration for a workload is used to set the default identity for the workload execution. The config specifies the type of identity (service account or user) that will be used by workloads to access resources on the project(s).

| Property | Type | Description |
|----------|------|-------------|
| `userWorkloadAuthenticationType` | `string` | Optional. Authentication type for the user workload running in containers. |

### `AutoscalingConfig`

Autoscaling Policy config associated with the cluster.

| Property | Type | Description |
|----------|------|-------------|
| `policyUri` | `string` | Optional. The autoscaling policy used by the cluster.Only resource names including projectid and ... |

### `AutoscalingPolicy`

Describes an autoscaling policy for Dataproc cluster autoscaler.

| Property | Type | Description |
|----------|------|-------------|
| `basicAlgorithm` | `BasicAutoscalingAlgorithm` |  |
| `clusterType` | `string` | Optional. The type of the clusters for which this autoscaling policy is to be configured. |
| `id` | `string` | Required. The policy id.The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (... |
| `labels` | `object` | Optional. The labels to associate with this autoscaling policy. Label keys must contain 1 to 63 c... |
| `name` | `string` | Output only. The "resource name" of the autoscaling policy, as described in https://cloud.google.... |
| `secondaryWorkerConfig` | `InstanceGroupAutoscalingPolicyConfig` | Optional. Describes how the autoscaler will operate for secondary workers. |
| `workerConfig` | `InstanceGroupAutoscalingPolicyConfig` | Required. Describes how the autoscaler will operate for primary workers. |

### `AutotuningConfig`

Autotuning configuration of the workload.

| Property | Type | Description |
|----------|------|-------------|
| `scenarios` | `array<string>` | Optional. Scenarios for which tunings are applied. |

### `AuxiliaryNodeGroup`

Node group identification and configuration information.

| Property | Type | Description |
|----------|------|-------------|
| `nodeGroup` | `NodeGroup` | Required. Node group configuration. |
| `nodeGroupId` | `string` | Optional. A node group ID. Generated if not specified.The ID must contain only letters (a-z, A-Z)... |

### `AuxiliaryServicesConfig`

Auxiliary services configuration for a Cluster.

| Property | Type | Description |
|----------|------|-------------|
| `metastoreConfig` | `MetastoreConfig` | Optional. The Hive Metastore configuration for this workload. |
| `sparkHistoryServerConfig` | `SparkHistoryServerConfig` | Optional. The Spark History Server configuration for the workload. |

### `BasicAutoscalingAlgorithm`

Basic algorithm for autoscaling.

| Property | Type | Description |
|----------|------|-------------|
| `cooldownPeriod` | `string` | Optional. Duration between scaling events. A scaling period starts after the update operation fro... |
| `sparkStandaloneConfig` | `SparkStandaloneAutoscalingConfig` | Optional. Spark Standalone autoscaling configuration |
| `yarnConfig` | `BasicYarnAutoscalingConfig` | Optional. YARN autoscaling configuration. |

### `BasicYarnAutoscalingConfig`

Basic autoscaling configurations for YARN.

| Property | Type | Description |
|----------|------|-------------|
| `gracefulDecommissionTimeout` | `string` | Required. Timeout for YARN graceful decommissioning of Node Managers. Specifies the duration to w... |
| `scaleDownFactor` | `number` | Required. Fraction of average YARN pending memory in the last cooldown period for which to remove... |
| `scaleDownMinWorkerFraction` | `number` | Optional. Minimum scale-down threshold as a fraction of total cluster size before scaling occurs.... |
| `scaleUpFactor` | `number` | Required. Fraction of average YARN pending memory in the last cooldown period for which to add wo... |
| `scaleUpMinWorkerFraction` | `number` | Optional. Minimum scale-up threshold as a fraction of total cluster size before scaling occurs. F... |

### `Batch`

A representation of a batch workload in the service.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time when the batch was created. |
| `creator` | `string` | Output only. The email address of the user who created the batch. |
| `environmentConfig` | `EnvironmentConfig` | Optional. Environment configuration for the batch execution. |
| `labels` | `object` | Optional. The labels to associate with this batch. Label keys must contain 1 to 63 characters, an... |
| `name` | `string` | Output only. The resource name of the batch. |
| `operation` | `string` | Output only. The resource name of the operation associated with this batch. |
| `pysparkBatch` | `PySparkBatch` | Optional. PySpark batch config. |
| `runtimeConfig` | `RuntimeConfig` | Optional. Runtime configuration for the batch execution. |
| `runtimeInfo` | `RuntimeInfo` | Output only. Runtime information about batch execution. |
| `sparkBatch` | `SparkBatch` | Optional. Spark batch config. |
| `sparkRBatch` | `SparkRBatch` | Optional. SparkR batch config. |
| `sparkSqlBatch` | `SparkSqlBatch` | Optional. SparkSql batch config. |
| `state` | `string` | Output only. The state of the batch. |
| `stateHistory` | `array<StateHistory>` | Output only. Historical state information for the batch. |
| `stateMessage` | `string` | Output only. Batch state details, such as a failure description if the state is FAILED. |
| `stateTime` | `string` | Output only. The time when the batch entered a current state. |
| `uuid` | `string` | Output only. A batch UUID (Unique Universal Identifier). The service generates this value when it... |

### `BatchOperationMetadata`

Metadata describing the Batch operation.

| Property | Type | Description |
|----------|------|-------------|
| `batch` | `string` | Name of the batch for the operation. |
| `batchUuid` | `string` | Batch UUID for the operation. |
| `createTime` | `string` | The time when the operation was created. |
| `description` | `string` | Short description of the operation. |
| `doneTime` | `string` | The time when the operation finished. |
| `labels` | `object` | Labels associated with the operation. |
| `operationType` | `string` | The operation type. |
| `warnings` | `array<string>` | Warnings encountered during operation execution. |

### `Binding`

Associates members, or principals, with a role.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding.If the condition evaluates to true, then this ... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. members can have the foll... |
| `role` | `string` | Role that is assigned to the list of members, or principals. For example, roles/viewer, roles/edi... |

### `BuildInfo`

Native Build Info

| Property | Type | Description |
|----------|------|-------------|
| `buildKey` | `string` | Optional. Build key. |
| `buildValue` | `string` | Optional. Build value. |

### `CancelJobRequest`

A request to cancel a job.

### `Cluster`

Describes the identifying information, config, and status of a Dataproc cluster

| Property | Type | Description |
|----------|------|-------------|
| `clusterName` | `string` | Required. The cluster name, which must be unique within a project. The name must start with a low... |
| `clusterUuid` | `string` | Output only. A cluster UUID (Unique Universal Identifier). Dataproc generates this value when it ... |
| `config` | `ClusterConfig` | Optional. The cluster config for a cluster of Compute Engine Instances. Note that Dataproc may se... |
| `labels` | `object` | Optional. The labels to associate with this cluster. Label keys must contain 1 to 63 characters, ... |
| `metrics` | `ClusterMetrics` | Output only. Contains cluster daemon metrics such as HDFS and YARN stats.Beta Feature: This repor... |
| `projectId` | `string` | Required. The Google Cloud Platform project ID that the cluster belongs to. |
| `status` | `ClusterStatus` | Output only. Cluster status. |
| `statusHistory` | `array<ClusterStatus>` | Output only. The previous cluster status. |
| `virtualClusterConfig` | `VirtualClusterConfig` | Optional. The virtual cluster config is used when creating a Dataproc cluster that does not direc... |

### `ClusterConfig`

The cluster config.

| Property | Type | Description |
|----------|------|-------------|
| `autoscalingConfig` | `AutoscalingConfig` | Optional. Autoscaling config for the policy associated with the cluster. Cluster does not autosca... |
| `auxiliaryNodeGroups` | `array<AuxiliaryNodeGroup>` | Optional. The node group settings. |
| `clusterTier` | `string` | Optional. The cluster tier. |
| `clusterType` | `string` | Optional. The type of the cluster. |
| `configBucket` | `string` | Optional. A Cloud Storage bucket used to stage job dependencies, config files, and job driver con... |
| `dataprocMetricConfig` | `DataprocMetricConfig` | Optional. The config for Dataproc metrics. |
| `diagnosticBucket` | `string` | Optional. A Cloud Storage bucket used to collect checkpoint diagnostic data (https://cloud.google... |
| `encryptionConfig` | `EncryptionConfig` | Optional. Encryption settings for the cluster. |
| `endpointConfig` | `EndpointConfig` | Optional. Port/endpoint configuration for this cluster |
| `gceClusterConfig` | `GceClusterConfig` | Optional. The shared Compute Engine config settings for all instances in a cluster. |
| `gkeClusterConfig` | `GkeClusterConfig` | Optional. BETA. The Kubernetes Engine config for Dataproc clusters deployed to The Kubernetes Eng... |
| `initializationActions` | `array<NodeInitializationAction>` | Optional. Commands to execute on each node after config is completed. By default, executables are... |
| `lifecycleConfig` | `LifecycleConfig` | Optional. Lifecycle setting for the cluster. |
| `masterConfig` | `InstanceGroupConfig` | Optional. The Compute Engine config settings for the cluster's master instance. |
| `metastoreConfig` | `MetastoreConfig` | Optional. Metastore configuration. |
| `secondaryWorkerConfig` | `InstanceGroupConfig` | Optional. The Compute Engine config settings for a cluster's secondary worker instances |
| `securityConfig` | `SecurityConfig` | Optional. Security settings for the cluster. |
| `softwareConfig` | `SoftwareConfig` | Optional. The config settings for cluster software. |
| `tempBucket` | `string` | Optional. A Cloud Storage bucket used to store ephemeral cluster and jobs data, such as Spark and... |
| `workerConfig` | `InstanceGroupConfig` | Optional. The Compute Engine config settings for the cluster's worker instances. |

### `ClusterMetrics`

Contains cluster daemon metrics, such as HDFS and YARN stats.Beta Feature: This report is available for testing purposes only. It may be changed before final release.

| Property | Type | Description |
|----------|------|-------------|
| `hdfsMetrics` | `object` | The HDFS metrics. |
| `yarnMetrics` | `object` | YARN metrics. |

### `ClusterOperation`

The cluster operation triggered by a workflow.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | Output only. Indicates the operation is done. |
| `error` | `string` | Output only. Error, if operation failed. |
| `operationId` | `string` | Output only. The id of the cluster operation. |

### `ClusterOperationMetadata`

Metadata describing the operation.

| Property | Type | Description |
|----------|------|-------------|
| `childOperationIds` | `array<string>` | Output only. Child operation ids |
| `clusterName` | `string` | Output only. Name of the cluster for the operation. |
| `clusterUuid` | `string` | Output only. Cluster UUID for the operation. |
| `description` | `string` | Output only. Short description of operation. |
| `labels` | `object` | Output only. Labels associated with the operation |
| `operationType` | `string` | Output only. The operation type. |
| `status` | `ClusterOperationStatus` | Output only. Current operation status. |
| `statusHistory` | `array<ClusterOperationStatus>` | Output only. The previous operation status. |
| `warnings` | `array<string>` | Output only. Errors encountered during operation execution. |

### `ClusterOperationStatus`

The status of the operation.

| Property | Type | Description |
|----------|------|-------------|
| `details` | `string` | Output only. A message containing any operation metadata details. |
| `innerState` | `string` | Output only. A message containing the detailed operation state. |
| `state` | `string` | Output only. A message containing the operation state. |
| `stateStartTime` | `string` | Output only. The time this state was entered. |

### `ClusterSelector`

A selector that chooses target cluster for jobs based on metadata.

| Property | Type | Description |
|----------|------|-------------|
| `clusterLabels` | `object` | Required. The cluster labels. Cluster must have all labels to match. |
| `zone` | `string` | Optional. The zone where workflow process executes. This parameter does not affect the selection ... |

### `ClusterStatus`

The status of a cluster and its instances.

| Property | Type | Description |
|----------|------|-------------|
| `detail` | `string` | Optional. Output only. Details of cluster's state. |
| `state` | `string` | Output only. The cluster's state. |
| `stateStartTime` | `string` | Output only. Time when this state was entered (see JSON representation of Timestamp (https://deve... |
| `substate` | `string` | Output only. Additional state information that includes status reported by the agent. |

### `ClusterToRepair`

Cluster to be repaired

| Property | Type | Description |
|----------|------|-------------|
| `clusterRepairAction` | `string` | Required. Repair action to take on the cluster resource. |

### `ConfidentialInstanceConfig`

Confidential Instance Config for clusters using Confidential VMs (https://cloud.google.com/compute/confidential-vm/docs)

| Property | Type | Description |
|----------|------|-------------|
| `enableConfidentialCompute` | `boolean` | Optional. Defines whether the instance should have confidential compute enabled. |

### `ConsolidatedExecutorSummary`

Consolidated summary about executors used by the application.

| Property | Type | Description |
|----------|------|-------------|
| `activeTasks` | `integer` |  |
| `completedTasks` | `integer` |  |
| `count` | `integer` |  |
| `diskUsed` | `string` |  |
| `failedTasks` | `integer` |  |
| `isExcluded` | `integer` |  |
| `maxMemory` | `string` |  |
| `memoryMetrics` | `MemoryMetrics` |  |
| `memoryUsed` | `string` |  |
| `rddBlocks` | `integer` |  |
| `totalCores` | `integer` |  |
| `totalDurationMillis` | `string` |  |
| `totalGcTimeMillis` | `string` |  |
| `totalInputBytes` | `string` |  |
| `totalShuffleRead` | `string` |  |
| `totalShuffleWrite` | `string` |  |
| `totalTasks` | `integer` |  |

### `DataprocMetricConfig`

Dataproc metric config.

| Property | Type | Description |
|----------|------|-------------|
| `metrics` | `array<Metric>` | Required. Metrics sources to enable. |

### `DiagnoseClusterRequest`

A request to collect cluster diagnostic information.

| Property | Type | Description |
|----------|------|-------------|
| `diagnosisInterval` | `Interval` | Optional. Time interval in which diagnosis should be carried out on the cluster. |
| `job` | `string` | Optional. DEPRECATED Specifies the job on which diagnosis is to be performed. Format: projects/{p... |
| `jobs` | `array<string>` | Optional. Specifies a list of jobs on which diagnosis is to be performed. Format: projects/{proje... |
| `tarballAccess` | `string` | Optional. (Optional) The access type to the diagnostic tarball. If not specified, falls back to d... |
| `tarballGcsDir` | `string` | Optional. (Optional) The output Cloud Storage directory for the diagnostic tarball. If not specif... |
| `yarnApplicationId` | `string` | Optional. DEPRECATED Specifies the yarn application on which diagnosis is to be performed. |
| `yarnApplicationIds` | `array<string>` | Optional. Specifies a list of yarn applications on which diagnosis is to be performed. |

### `DiagnoseClusterResults`

The location of diagnostic output.

| Property | Type | Description |
|----------|------|-------------|
| `outputUri` | `string` | Output only. The Cloud Storage URI of the diagnostic output. The output report is a plain text fi... |

### `DiskConfig`

Specifies the config of boot disk and attached disk options for a group of VM instances.

| Property | Type | Description |
|----------|------|-------------|
| `bootDiskProvisionedIops` | `string` | Optional. Indicates how many IOPS to provision for the disk. This sets the number of I/O operatio... |
| `bootDiskProvisionedThroughput` | `string` | Optional. Indicates how much throughput to provision for the disk. This sets the number of throug... |
| `bootDiskSizeGb` | `integer` | Optional. Size in GB of the boot disk (default is 500GB). |
| `bootDiskType` | `string` | Optional. Type of the boot disk (default is "pd-standard"). Valid values: "pd-balanced" (Persiste... |
| `localSsdInterface` | `string` | Optional. Interface type of local SSDs (default is "scsi"). Valid values: "scsi" (Small Computer ... |
| `numLocalSsds` | `integer` | Optional. Number of attached SSDs, from 0 to 8 (default is 0). If SSDs are not attached, the boot... |

### `DriverSchedulingConfig`

Driver scheduling configuration.

| Property | Type | Description |
|----------|------|-------------|
| `memoryMb` | `integer` | Required. The amount of memory in MB the driver is requesting. |
| `vcores` | `integer` | Required. The number of vCPUs the driver is requesting. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `EncryptionConfig`

Encryption settings for the cluster.

| Property | Type | Description |
|----------|------|-------------|
| `gcePdKmsKeyName` | `string` | Optional. The Cloud KMS key resource name to use for persistent disk encryption for all instances... |
| `kmsKey` | `string` | Optional. The Cloud KMS key resource name to use for cluster persistent disk and job argument enc... |

### `EndpointConfig`

Endpoint config for this cluster

| Property | Type | Description |
|----------|------|-------------|
| `enableHttpPortAccess` | `boolean` | Optional. If true, enable http access to specific ports on the cluster from external sources. Def... |
| `httpPorts` | `object` | Output only. The map of port descriptions to URLs. Will only be populated if enable_http_port_acc... |

### `EnvironmentConfig`

Environment configuration for a workload.

| Property | Type | Description |
|----------|------|-------------|
| `executionConfig` | `ExecutionConfig` | Optional. Execution configuration for a workload. |
| `peripheralsConfig` | `PeripheralsConfig` | Optional. Peripherals configuration that workload has access to. |

### `ExecutionConfig`

Execution configuration for a workload.

| Property | Type | Description |
|----------|------|-------------|
| `authenticationConfig` | `AuthenticationConfig` | Optional. Authentication configuration used to set the default identity for the workload executio... |
| `idleTtl` | `string` | Optional. Applies to sessions only. The duration to keep the session alive while it's idling. Exc... |
| `kmsKey` | `string` | Optional. The Cloud KMS key to use for encryption. |
| `networkTags` | `array<string>` | Optional. Tags used for network traffic control. |
| `networkUri` | `string` | Optional. Network URI to connect workload to. |
| `serviceAccount` | `string` | Optional. Service account that used to execute workload. |
| `stagingBucket` | `string` | Optional. A Cloud Storage bucket used to stage workload dependencies, config files, and store wor... |
| `subnetworkUri` | `string` | Optional. Subnetwork URI to connect workload to. |
| `ttl` | `string` | Optional. The duration after which the workload will be terminated, specified as the JSON represe... |

### `ExecutorMetrics`

| Property | Type | Description |
|----------|------|-------------|
| `metrics` | `object` |  |

### `ExecutorMetricsDistributions`

| Property | Type | Description |
|----------|------|-------------|
| `diskBytesSpilled` | `array<number>` |  |
| `failedTasks` | `array<number>` |  |
| `inputBytes` | `array<number>` |  |
| `inputRecords` | `array<number>` |  |
| `killedTasks` | `array<number>` |  |
| `memoryBytesSpilled` | `array<number>` |  |
| `outputBytes` | `array<number>` |  |
| `outputRecords` | `array<number>` |  |
| `peakMemoryMetrics` | `ExecutorPeakMetricsDistributions` |  |
| `quantiles` | `array<number>` |  |
| `shuffleRead` | `array<number>` |  |
| `shuffleReadRecords` | `array<number>` |  |
| `shuffleWrite` | `array<number>` |  |
| `shuffleWriteRecords` | `array<number>` |  |
| `succeededTasks` | `array<number>` |  |
| `taskTimeMillis` | `array<number>` |  |

### `ExecutorPeakMetricsDistributions`

| Property | Type | Description |
|----------|------|-------------|
| `executorMetrics` | `array<ExecutorMetrics>` |  |
| `quantiles` | `array<number>` |  |

### `ExecutorResourceRequest`

Resources used per executor used by the application.

| Property | Type | Description |
|----------|------|-------------|
| `amount` | `string` |  |
| `discoveryScript` | `string` |  |
| `resourceName` | `string` |  |
| `vendor` | `string` |  |

### `ExecutorStageSummary`

Executor resources consumed by a stage.

| Property | Type | Description |
|----------|------|-------------|
| `diskBytesSpilled` | `string` |  |
| `executorId` | `string` |  |
| `failedTasks` | `integer` |  |
| `inputBytes` | `string` |  |
| `inputRecords` | `string` |  |
| `isExcludedForStage` | `boolean` |  |
| `killedTasks` | `integer` |  |
| `memoryBytesSpilled` | `string` |  |
| `outputBytes` | `string` |  |
| `outputRecords` | `string` |  |
| `peakMemoryMetrics` | `ExecutorMetrics` |  |
| `shuffleRead` | `string` |  |
| `shuffleReadRecords` | `string` |  |
| `shuffleWrite` | `string` |  |
| `shuffleWriteRecords` | `string` |  |
| `stageAttemptId` | `integer` |  |
| `stageId` | `string` |  |
| `succeededTasks` | `integer` |  |
| `taskTimeMillis` | `string` |  |

### `ExecutorSummary`

Details about executors used by the application.

| Property | Type | Description |
|----------|------|-------------|
| `activeTasks` | `integer` |  |
| `addTime` | `string` |  |
| `attributes` | `object` |  |
| `completedTasks` | `integer` |  |
| `diskUsed` | `string` |  |
| `excludedInStages` | `array<string>` |  |
| `executorId` | `string` |  |
| `executorLogs` | `object` |  |
| `failedTasks` | `integer` |  |
| `hostPort` | `string` |  |
| `isActive` | `boolean` |  |
| `isExcluded` | `boolean` |  |
| `maxMemory` | `string` |  |
| `maxTasks` | `integer` |  |
| `memoryMetrics` | `MemoryMetrics` |  |
| `memoryUsed` | `string` |  |
| `peakMemoryMetrics` | `ExecutorMetrics` |  |
| `rddBlocks` | `integer` |  |
| `removeReason` | `string` |  |
| `removeTime` | `string` |  |
| `resourceProfileId` | `integer` |  |
| `resources` | `object` |  |
| `totalCores` | `integer` |  |
| `totalDurationMillis` | `string` |  |
| `totalGcTimeMillis` | `string` |  |
| `totalInputBytes` | `string` |  |
| `totalShuffleRead` | `string` |  |
| `totalShuffleWrite` | `string` |  |
| `totalTasks` | `integer` |  |

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec.Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `FallbackReason`

Native SQL Execution Data

| Property | Type | Description |
|----------|------|-------------|
| `fallbackNode` | `string` | Optional. Fallback node information. |
| `fallbackReason` | `string` | Optional. Fallback to Spark reason. |

### `FlinkJob`

A Dataproc job for running Apache Flink applications on YARN.

| Property | Type | Description |
|----------|------|-------------|
| `args` | `array<string>` | Optional. The arguments to pass to the driver. Do not include arguments, such as --conf, that can... |
| `jarFileUris` | `array<string>` | Optional. HCFS URIs of jar files to add to the CLASSPATHs of the Flink driver and tasks. |
| `loggingConfig` | `LoggingConfig` | Optional. The runtime log config for job execution. |
| `mainClass` | `string` | The name of the driver's main class. The jar file that contains the class must be in the default ... |
| `mainJarFileUri` | `string` | The HCFS URI of the jar file that contains the main class. |
| `properties` | `object` | Optional. A mapping of property names to values, used to configure Flink. Properties that conflic... |
| `savepointUri` | `string` | Optional. HCFS URI of the savepoint, which contains the last saved progress for starting the curr... |

### `GceClusterConfig`

Common config settings for resources of Compute Engine cluster instances, applicable to all instances in the cluster.

| Property | Type | Description |
|----------|------|-------------|
| `autoZoneExcludeZoneUris` | `array<string>` | Optional. An optional list of Compute Engine zones where the Dataproc cluster will not be located... |
| `confidentialInstanceConfig` | `ConfidentialInstanceConfig` | Optional. Confidential Instance Config for clusters using Confidential VMs (https://cloud.google.... |
| `internalIpOnly` | `boolean` | Optional. This setting applies to subnetwork-enabled networks. It is set to true by default in cl... |
| `metadata` | `object` | Optional. The Compute Engine metadata entries to add to all instances (see Project and instance m... |
| `networkUri` | `string` | Optional. The Compute Engine network to be used for machine communications. Cannot be specified w... |
| `nodeGroupAffinity` | `NodeGroupAffinity` | Optional. Node Group Affinity for sole-tenant clusters. |
| `privateIpv6GoogleAccess` | `string` | Optional. The type of IPv6 access for a cluster. |
| `reservationAffinity` | `ReservationAffinity` | Optional. Reservation Affinity for consuming Zonal reservation. |
| `resourceManagerTags` | `object` | Optional. Resource manager tags (https://cloud.google.com/resource-manager/docs/tags/tags-creatin... |
| `serviceAccount` | `string` | Optional. The Dataproc service account (https://cloud.google.com/dataproc/docs/concepts/configuri... |
| `serviceAccountScopes` | `array<string>` | Optional. The URIs of service account scopes to be included in Compute Engine instances. The foll... |
| `shieldedInstanceConfig` | `ShieldedInstanceConfig` | Optional. Shielded Instance Config for clusters using Compute Engine Shielded VMs (https://cloud.... |
| `subnetworkUri` | `string` | Optional. The Compute Engine subnetwork to be used for machine communications. Cannot be specifie... |
| `tags` | `array<string>` | The Compute Engine network tags to add to all instances (see Tagging instances (https://cloud.goo... |
| `zoneUri` | `string` | Optional. The Compute Engine zone where the Dataproc cluster will be located. If omitted, the ser... |

### `GetIamPolicyRequest`

Request message for GetIamPolicy method.

| Property | Type | Description |
|----------|------|-------------|
| `options` | `GetPolicyOptions` | OPTIONAL: A GetPolicyOptions object for specifying options to GetIamPolicy. |

### `GetPolicyOptions`

Encapsulates settings provided to GetIamPolicy.

| Property | Type | Description |
|----------|------|-------------|
| `requestedPolicyVersion` | `integer` | Optional. The maximum policy version that will be used to format the policy.Valid values are 0, 1... |

### `GkeClusterConfig`

The cluster's GKE config.

| Property | Type | Description |
|----------|------|-------------|
| `gkeClusterTarget` | `string` | Optional. A target GKE cluster to deploy to. It must be in the same project and region as the Dat... |
| `namespacedGkeDeploymentTarget` | `NamespacedGkeDeploymentTarget` | Optional. Deprecated. Use gkeClusterTarget. Used only for the deprecated beta. A target for the d... |
| `nodePoolTarget` | `array<GkeNodePoolTarget>` | Optional. GKE node pools where workloads will be scheduled. At least one node pool must be assign... |

### `GkeNodeConfig`

Parameters that describe cluster nodes.

| Property | Type | Description |
|----------|------|-------------|
| `accelerators` | `array<GkeNodePoolAcceleratorConfig>` | Optional. A list of hardware accelerators (https://cloud.google.com/compute/docs/gpus) to attach ... |
| `bootDiskKmsKey` | `string` | Optional. The Customer Managed Encryption Key (CMEK) (https://cloud.google.com/kubernetes-engine/... |
| `localSsdCount` | `integer` | Optional. The number of local SSD disks to attach to the node, which is limited by the maximum nu... |
| `machineType` | `string` | Optional. The name of a Compute Engine machine type (https://cloud.google.com/compute/docs/machin... |
| `minCpuPlatform` | `string` | Optional. Minimum CPU platform (https://cloud.google.com/compute/docs/instances/specify-min-cpu-p... |
| `preemptible` | `boolean` | Optional. Whether the nodes are created as legacy preemptible VM instances (https://cloud.google.... |
| `spot` | `boolean` | Optional. Whether the nodes are created as Spot VM instances (https://cloud.google.com/compute/do... |

### `GkeNodePoolAcceleratorConfig`

A GkeNodeConfigAcceleratorConfig represents a Hardware Accelerator request for a node pool.

| Property | Type | Description |
|----------|------|-------------|
| `acceleratorCount` | `string` | The number of accelerator cards exposed to an instance. |
| `acceleratorType` | `string` | The accelerator type resource namename (see GPUs on Compute Engine). |
| `gpuPartitionSize` | `string` | Size of partitions to create on the GPU. Valid values are described in the NVIDIA mig user guide ... |

### `GkeNodePoolAutoscalingConfig`

GkeNodePoolAutoscaling contains information the cluster autoscaler needs to adjust the size of the node pool to the current cluster usage.

| Property | Type | Description |
|----------|------|-------------|
| `maxNodeCount` | `integer` | The maximum number of nodes in the node pool. Must be >= min_node_count, and must be > 0. Note: Q... |
| `minNodeCount` | `integer` | The minimum number of nodes in the node pool. Must be >= 0 and <= max_node_count. |

### `GkeNodePoolConfig`

The configuration of a GKE node pool used by a Dataproc-on-GKE cluster (https://cloud.google.com/dataproc/docs/concepts/jobs/dataproc-gke#create-a-dataproc-on-gke-cluster).

| Property | Type | Description |
|----------|------|-------------|
| `autoscaling` | `GkeNodePoolAutoscalingConfig` | Optional. The autoscaler configuration for this node pool. The autoscaler is enabled only when a ... |
| `config` | `GkeNodeConfig` | Optional. The node pool configuration. |
| `locations` | `array<string>` | Optional. The list of Compute Engine zones (https://cloud.google.com/compute/docs/zones#available... |

### `GkeNodePoolTarget`

GKE node pools that Dataproc workloads run on.

| Property | Type | Description |
|----------|------|-------------|
| `nodePool` | `string` | Required. The target GKE node pool. Format: 'projects/{project}/locations/{location}/clusters/{cl... |
| `nodePoolConfig` | `GkeNodePoolConfig` | Input only. The configuration for the GKE node pool.If specified, Dataproc attempts to create a n... |
| `roles` | `array<string>` | Required. The roles associated with the GKE node pool. |

### `GoogleCloudDataprocV1WorkflowTemplateEncryptionConfig`

Encryption settings for encrypting workflow template job arguments.

| Property | Type | Description |
|----------|------|-------------|
| `kmsKey` | `string` | Optional. The Cloud KMS key name to use for encrypting workflow template job arguments.When this ... |

### `HadoopJob`

A Dataproc job for running Apache Hadoop MapReduce (https://hadoop.apache.org/docs/current/hadoop-mapreduce-client/hadoop-mapreduce-client-core/MapReduceTutorial.html) jobs on Apache Hadoop YARN (https://hadoop.apache.org/docs/r2.7.1/hadoop-yarn/hadoop-yarn-site/YARN.html).

| Property | Type | Description |
|----------|------|-------------|
| `archiveUris` | `array<string>` | Optional. HCFS URIs of archives to be extracted in the working directory of Hadoop drivers and ta... |
| `args` | `array<string>` | Optional. The arguments to pass to the driver. Do not include arguments, such as -libjars or -Dfo... |
| `fileUris` | `array<string>` | Optional. HCFS (Hadoop Compatible Filesystem) URIs of files to be copied to the working directory... |
| `jarFileUris` | `array<string>` | Optional. Jar file URIs to add to the CLASSPATHs of the Hadoop driver and tasks. |
| `loggingConfig` | `LoggingConfig` | Optional. The runtime log config for job execution. |
| `mainClass` | `string` | The name of the driver's main class. The jar file containing the class must be in the default CLA... |
| `mainJarFileUri` | `string` | The HCFS URI of the jar file containing the main class. Examples: 'gs://foo-bucket/analytics-bina... |
| `properties` | `object` | Optional. A mapping of property names to values, used to configure Hadoop. Properties that confli... |

### `HiveJob`

A Dataproc job for running Apache Hive (https://hive.apache.org/) queries on YARN.

| Property | Type | Description |
|----------|------|-------------|
| `continueOnFailure` | `boolean` | Optional. Whether to continue executing queries if a query fails. The default value is false. Set... |
| `jarFileUris` | `array<string>` | Optional. HCFS URIs of jar files to add to the CLASSPATH of the Hive server and Hadoop MapReduce ... |
| `properties` | `object` | Optional. A mapping of property names and values, used to configure Hive. Properties that conflic... |
| `queryFileUri` | `string` | The HCFS URI of the script that contains Hive queries. |
| `queryList` | `QueryList` | A list of queries. |
| `scriptVariables` | `object` | Optional. Mapping of query variable names to values (equivalent to the Hive command: SET name="va... |

### `IdentityConfig`

Identity related configuration, including service account based secure multi-tenancy user mappings.

| Property | Type | Description |
|----------|------|-------------|
| `userServiceAccountMapping` | `object` | Required. Map of user to service account. |

### `InjectCredentialsRequest`

A request to inject credentials into a cluster.

| Property | Type | Description |
|----------|------|-------------|
| `clusterUuid` | `string` | Required. The cluster UUID. |
| `credentialsCiphertext` | `string` | Required. The encrypted credentials being injected in to the cluster.The client is responsible fo... |

### `InputMetrics`

Metrics about the input data read by the task.

| Property | Type | Description |
|----------|------|-------------|
| `bytesRead` | `string` |  |
| `recordsRead` | `string` |  |

### `InputQuantileMetrics`

| Property | Type | Description |
|----------|------|-------------|
| `bytesRead` | `Quantiles` |  |
| `recordsRead` | `Quantiles` |  |

### `InstanceFlexibilityPolicy`

Instance flexibility Policy allowing a mixture of VM shapes and provisioning models.

| Property | Type | Description |
|----------|------|-------------|
| `instanceSelectionList` | `array<InstanceSelection>` | Optional. List of instance selection options that the group will use when creating new VMs. |
| `instanceSelectionResults` | `array<InstanceSelectionResult>` | Output only. A list of instance selection results in the group. |
| `provisioningModelMix` | `ProvisioningModelMix` | Optional. Defines how the Group selects the provisioning model to ensure required reliability. |

### `InstanceGroupAutoscalingPolicyConfig`

Configuration for the size bounds of an instance group, including its proportional size to other groups.

| Property | Type | Description |
|----------|------|-------------|
| `maxInstances` | `integer` | Required. Maximum number of instances for this group. Required for primary workers. Note that by ... |
| `minInstances` | `integer` | Optional. Minimum number of instances for this group.Primary workers - Bounds: 2, max_instances. ... |
| `weight` | `integer` | Optional. Weight for the instance group, which is used to determine the fraction of total workers... |

### `InstanceGroupConfig`

The config settings for Compute Engine resources in an instance group, such as a master or worker group.

| Property | Type | Description |
|----------|------|-------------|
| `accelerators` | `array<AcceleratorConfig>` | Optional. The Compute Engine accelerator configuration for these instances. |
| `diskConfig` | `DiskConfig` | Optional. Disk option config settings. |
| `imageUri` | `string` | Optional. The Compute Engine image resource used for cluster instances.The URI can represent an i... |
| `instanceFlexibilityPolicy` | `InstanceFlexibilityPolicy` | Optional. Instance flexibility Policy allowing a mixture of VM shapes and provisioning models. |
| `instanceNames` | `array<string>` | Output only. The list of instance names. Dataproc derives the names from cluster_name, num_instan... |
| `instanceReferences` | `array<InstanceReference>` | Output only. List of references to Compute Engine instances. |
| `isPreemptible` | `boolean` | Output only. Specifies that this instance group contains preemptible instances. |
| `machineTypeUri` | `string` | Optional. The Compute Engine machine type used for cluster instances.A full URL, partial URI, or ... |
| `managedGroupConfig` | `ManagedGroupConfig` | Output only. The config for Compute Engine Instance Group Manager that manages this group. This i... |
| `minCpuPlatform` | `string` | Optional. Specifies the minimum cpu platform for the Instance Group. See Dataproc -> Minimum CPU ... |
| `minNumInstances` | `integer` | Optional. The minimum number of primary worker instances to create. If min_num_instances is set, ... |
| `numInstances` | `integer` | Optional. The number of VM instances in the instance group. For HA cluster master_config groups, ... |
| `preemptibility` | `string` | Optional. Specifies the preemptibility of the instance group.The default value for master and wor... |
| `startupConfig` | `StartupConfig` | Optional. Configuration to handle the startup of instances during cluster create and update process. |

### `InstanceReference`

A reference to a Compute Engine instance.

| Property | Type | Description |
|----------|------|-------------|
| `instanceId` | `string` | The unique identifier of the Compute Engine instance. |
| `instanceName` | `string` | The user-friendly name of the Compute Engine instance. |
| `publicEciesKey` | `string` | The public ECIES key used for sharing data with this instance. |
| `publicKey` | `string` | The public RSA key used for sharing data with this instance. |

### `InstanceSelection`

Defines machines types and a rank to which the machines types belong.

| Property | Type | Description |
|----------|------|-------------|
| `machineTypes` | `array<string>` | Optional. Full machine-type names, e.g. "n1-standard-16". |
| `rank` | `integer` | Optional. Preference of this instance selection. Lower number means higher preference. Dataproc w... |

### `InstanceSelectionResult`

Defines a mapping from machine types to the number of VMs that are created with each machine type.

| Property | Type | Description |
|----------|------|-------------|
| `machineType` | `string` | Output only. Full machine-type names, e.g. "n1-standard-16". |
| `vmCount` | `integer` | Output only. Number of VM provisioned with the machine_type. |

### `InstantiateWorkflowTemplateRequest`

A request to instantiate a workflow template.

| Property | Type | Description |
|----------|------|-------------|
| `parameters` | `object` | Optional. Map from parameter names to values that should be used for those parameters. Values may... |
| `requestId` | `string` | Optional. A tag that prevents multiple concurrent workflow instances with the same tag from runni... |
| `version` | `integer` | Optional. The version of workflow template to instantiate. If specified, the workflow will be ins... |

### `Interval`

Represents a time interval, encoded as a Timestamp start (inclusive) and a Timestamp end (exclusive).The start must be less than or equal to the end. When the start equals the end, the interval is empty (matches no time). When both start and end are unspecified, the interval matches any time.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | Optional. Exclusive end of the interval.If specified, a Timestamp matching this interval will hav... |
| `startTime` | `string` | Optional. Inclusive start of the interval.If specified, a Timestamp matching this interval will h... |

### `Job`

A Dataproc job resource.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | Output only. Indicates whether the job is completed. If the value is false, the job is still in p... |
| `driverControlFilesUri` | `string` | Output only. If present, the location of miscellaneous control files which can be used as part of... |
| `driverOutputResourceUri` | `string` | Output only. A URI pointing to the location of the stdout of the job's driver program. |
| `driverSchedulingConfig` | `DriverSchedulingConfig` | Optional. Driver scheduling configuration. |
| `flinkJob` | `FlinkJob` | Optional. Job is a Flink job. |
| `hadoopJob` | `HadoopJob` | Optional. Job is a Hadoop job. |
| `hiveJob` | `HiveJob` | Optional. Job is a Hive job. |
| `jobUuid` | `string` | Output only. A UUID that uniquely identifies a job within the project over time. This is in contr... |
| `labels` | `object` | Optional. The labels to associate with this job. Label keys must contain 1 to 63 characters, and ... |
| `pigJob` | `PigJob` | Optional. Job is a Pig job. |
| `placement` | `JobPlacement` | Required. Job information, including how, when, and where to run the job. |
| `prestoJob` | `PrestoJob` | Optional. Job is a Presto job. |
| `pysparkJob` | `PySparkJob` | Optional. Job is a PySpark job. |
| `reference` | `JobReference` | Optional. The fully qualified reference to the job, which can be used to obtain the equivalent RE... |
| `scheduling` | `JobScheduling` | Optional. Job scheduling configuration. |
| `sparkJob` | `SparkJob` | Optional. Job is a Spark job. |
| `sparkRJob` | `SparkRJob` | Optional. Job is a SparkR job. |
| `sparkSqlJob` | `SparkSqlJob` | Optional. Job is a SparkSql job. |
| `status` | `JobStatus` | Output only. The job status. Additional application-specific status information might be containe... |
| `statusHistory` | `array<JobStatus>` | Output only. The previous job status. |
| `trinoJob` | `TrinoJob` | Optional. Job is a Trino job. |
| `yarnApplications` | `array<YarnApplication>` | Output only. The collection of YARN applications spun up by this job.Beta Feature: This report is... |

### `JobData`

Data corresponding to a spark job.

| Property | Type | Description |
|----------|------|-------------|
| `completionTime` | `string` |  |
| `description` | `string` |  |
| `jobGroup` | `string` |  |
| `jobId` | `string` |  |
| `killTasksSummary` | `object` |  |
| `name` | `string` |  |
| `numActiveStages` | `integer` |  |
| `numActiveTasks` | `integer` |  |
| `numCompletedIndices` | `integer` |  |
| `numCompletedStages` | `integer` |  |
| `numCompletedTasks` | `integer` |  |
| `numFailedStages` | `integer` |  |
| `numFailedTasks` | `integer` |  |
| `numKilledTasks` | `integer` |  |
| `numSkippedStages` | `integer` |  |
| `numSkippedTasks` | `integer` |  |
| `numTasks` | `integer` |  |
| `skippedStages` | `array<integer>` |  |
| `sqlExecutionId` | `string` |  |
| `stageIds` | `array<string>` |  |
| `status` | `string` |  |
| `submissionTime` | `string` |  |

### `JobMetadata`

Job Operation metadata.

| Property | Type | Description |
|----------|------|-------------|
| `jobId` | `string` | Output only. The job id. |
| `operationType` | `string` | Output only. Operation type. |
| `startTime` | `string` | Output only. Job submission time. |
| `status` | `JobStatus` | Output only. Most recent job status. |

### `JobPlacement`

Dataproc job config.

| Property | Type | Description |
|----------|------|-------------|
| `clusterLabels` | `object` | Optional. Cluster labels to identify a cluster where the job will be submitted. |
| `clusterName` | `string` | Required. The name of the cluster where the job will be submitted. |
| `clusterUuid` | `string` | Output only. A cluster UUID generated by the Dataproc service when the job is submitted. |

### `JobReference`

Encapsulates the full scoping used to reference a job.

| Property | Type | Description |
|----------|------|-------------|
| `jobId` | `string` | Optional. The job ID, which must be unique within the project.The ID must contain only letters (a... |
| `projectId` | `string` | Optional. The ID of the Google Cloud Platform project that the job belongs to. If specified, must... |

### `JobScheduling`

Job scheduling options.

| Property | Type | Description |
|----------|------|-------------|
| `maxFailuresPerHour` | `integer` | Optional. Maximum number of times per hour a driver can be restarted as a result of driver exitin... |
| `maxFailuresTotal` | `integer` | Optional. Maximum total number of times a driver can be restarted as a result of the driver exiti... |

### `JobStatus`

Dataproc job status.

| Property | Type | Description |
|----------|------|-------------|
| `details` | `string` | Optional. Output only. Job state details, such as an error description if the state is ERROR. |
| `state` | `string` | Output only. A state message specifying the overall job state. |
| `stateStartTime` | `string` | Output only. The time when this state was entered. |
| `substate` | `string` | Output only. Additional state information, which includes status reported by the agent. |

### `JobsSummary`

Data related to Jobs page summary

| Property | Type | Description |
|----------|------|-------------|
| `activeJobs` | `integer` | Number of active jobs |
| `applicationId` | `string` | Spark Application Id |
| `attempts` | `array<ApplicationAttemptInfo>` | Attempts info |
| `completedJobs` | `integer` | Number of completed jobs |
| `failedJobs` | `integer` | Number of failed jobs |
| `schedulingMode` | `string` | Spark Scheduling mode |

### `JupyterConfig`

Jupyter configuration for an interactive session.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Optional. Display name, shown in the Jupyter kernelspec card. |
| `kernel` | `string` | Optional. Kernel |

### `KerberosConfig`

Specifies Kerberos related configuration.

| Property | Type | Description |
|----------|------|-------------|
| `crossRealmTrustAdminServer` | `string` | Optional. The admin server (IP or hostname) for the remote trusted realm in a cross realm trust r... |
| `crossRealmTrustKdc` | `string` | Optional. The KDC (IP or hostname) for the remote trusted realm in a cross realm trust relationship. |
| `crossRealmTrustRealm` | `string` | Optional. The remote realm the Dataproc on-cluster KDC will trust, should the user enable cross r... |
| `crossRealmTrustSharedPasswordUri` | `string` | Optional. The Cloud Storage URI of a KMS encrypted file containing the shared password between th... |
| `enableKerberos` | `boolean` | Optional. Flag to indicate whether to Kerberize the cluster (default: false). Set this field to t... |
| `kdcDbKeyUri` | `string` | Optional. The Cloud Storage URI of a KMS encrypted file containing the master key of the KDC data... |
| `keyPasswordUri` | `string` | Optional. The Cloud Storage URI of a KMS encrypted file containing the password to the user provi... |
| `keystorePasswordUri` | `string` | Optional. The Cloud Storage URI of a KMS encrypted file containing the password to the user provi... |
| `keystoreUri` | `string` | Optional. The Cloud Storage URI of the keystore file used for SSL encryption. If not provided, Da... |
| `kmsKeyUri` | `string` | Optional. The URI of the KMS key used to encrypt sensitive files. |
| `realm` | `string` | Optional. The name of the on-cluster Kerberos realm. If not specified, the uppercased domain of h... |
| `rootPrincipalPasswordUri` | `string` | Optional. The Cloud Storage URI of a KMS encrypted file containing the root principal password. |
| `tgtLifetimeHours` | `integer` | Optional. The lifetime of the ticket granting ticket, in hours. If not specified, or user specifi... |
| `truststorePasswordUri` | `string` | Optional. The Cloud Storage URI of a KMS encrypted file containing the password to the user provi... |
| `truststoreUri` | `string` | Optional. The Cloud Storage URI of the truststore file used for SSL encryption. If not provided, ... |

### `KubernetesClusterConfig`

The configuration for running the Dataproc cluster on Kubernetes.

| Property | Type | Description |
|----------|------|-------------|
| `gkeClusterConfig` | `GkeClusterConfig` | Required. The configuration for running the Dataproc cluster on GKE. |
| `kubernetesNamespace` | `string` | Optional. A namespace within the Kubernetes cluster to deploy into. If this namespace does not ex... |
| `kubernetesSoftwareConfig` | `KubernetesSoftwareConfig` | Optional. The software configuration for this Dataproc cluster running on Kubernetes. |

### `KubernetesSoftwareConfig`

The software configuration for this Dataproc cluster running on Kubernetes.

| Property | Type | Description |
|----------|------|-------------|
| `componentVersion` | `object` | The components that should be installed in this Dataproc cluster. The key must be a string from t... |
| `properties` | `object` | The properties to set on daemon config files.Property keys are specified in prefix:property forma... |

### `LifecycleConfig`

Specifies the cluster auto-delete schedule configuration.

| Property | Type | Description |
|----------|------|-------------|
| `autoDeleteTime` | `string` | Optional. The time when cluster will be auto-deleted (see JSON representation of Timestamp (https... |
| `autoDeleteTtl` | `string` | Optional. The lifetime duration of cluster. The cluster will be auto-deleted at the end of this p... |
| `autoStopTime` | `string` | Optional. The time when cluster will be auto-stopped (see JSON representation of Timestamp (https... |
| `autoStopTtl` | `string` | Optional. The lifetime duration of the cluster. The cluster will be auto-stopped at the end of th... |
| `idleDeleteTtl` | `string` | Optional. The duration to keep the cluster alive while idling (when no jobs are running). Passing... |
| `idleStartTime` | `string` | Output only. The time when cluster became idle (most recent job finished) and became eligible for... |
| `idleStopTtl` | `string` | Optional. The duration to keep the cluster started while idling (when no jobs are running). Passi... |

### `ListAutoscalingPoliciesResponse`

A response to a request to list autoscaling policies in a project.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Output only. This token is included in the response if there are more results to fetch. |
| `policies` | `array<AutoscalingPolicy>` | Output only. Autoscaling policies list. |

### `ListBatchesResponse`

A list of batch workloads.

| Property | Type | Description |
|----------|------|-------------|
| `batches` | `array<Batch>` | Output only. The batches from the specified collection. |
| `nextPageToken` | `string` | A token, which can be sent as page_token to retrieve the next page. If this field is omitted, the... |
| `unreachable` | `array<string>` | Output only. List of Batches that could not be included in the response. Attempting to get one of... |

### `ListClustersResponse`

The list of all clusters in a project.

| Property | Type | Description |
|----------|------|-------------|
| `clusters` | `array<Cluster>` | Output only. The clusters in the project. |
| `nextPageToken` | `string` | Output only. This token is included in the response if there are more results to fetch. To fetch ... |

### `ListJobsResponse`

A list of jobs in a project.

| Property | Type | Description |
|----------|------|-------------|
| `jobs` | `array<Job>` | Output only. Jobs list. |
| `nextPageToken` | `string` | Optional. This token is included in the response if there are more results to fetch. To fetch add... |
| `unreachable` | `array<string>` | Output only. List of jobs with kms_key-encrypted parameters that could not be decrypted. A respon... |

### `ListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<Operation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets ListOperationsRequest.retu... |

### `ListSessionTemplatesResponse`

A list of session templates.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as page_token to retrieve the next page. If this field is omitted, the... |
| `sessionTemplates` | `array<SessionTemplate>` | Output only. Session template list |

### `ListSessionsResponse`

A list of interactive sessions.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as page_token, to retrieve the next page. If this field is omitted, th... |
| `sessions` | `array<Session>` | Output only. The sessions from the specified collection. |

### `ListWorkflowTemplatesResponse`

A response to a request to list workflow templates in a project.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Output only. This token is included in the response if there are more results to fetch. To fetch ... |
| `templates` | `array<WorkflowTemplate>` | Output only. WorkflowTemplates list. |
| `unreachable` | `array<string>` | Output only. List of workflow templates that could not be included in the response. Attempting to... |

### `LoggingConfig`

The runtime logging config of the job.

| Property | Type | Description |
|----------|------|-------------|
| `driverLogLevels` | `object` | The per-package log levels for the driver. This can include "root" package name to configure root... |

### `ManagedCluster`

Cluster that is managed by the workflow.

| Property | Type | Description |
|----------|------|-------------|
| `clusterName` | `string` | Required. The cluster name prefix. A unique cluster name will be formed by appending a random suf... |
| `config` | `ClusterConfig` | Required. The cluster configuration. |
| `labels` | `object` | Optional. The labels to associate with this cluster.Label keys must be between 1 and 63 character... |

### `ManagedGroupConfig`

Specifies the resources used to actively manage an instance group.

| Property | Type | Description |
|----------|------|-------------|
| `instanceGroupManagerName` | `string` | Output only. The name of the Instance Group Manager for this group. |
| `instanceGroupManagerUri` | `string` | Output only. The partial URI to the instance group manager for this group. E.g. projects/my-proje... |
| `instanceTemplateName` | `string` | Output only. The name of the Instance Template used for the Managed Instance Group. |

### `MemoryMetrics`

| Property | Type | Description |
|----------|------|-------------|
| `totalOffHeapStorageMemory` | `string` |  |
| `totalOnHeapStorageMemory` | `string` |  |
| `usedOffHeapStorageMemory` | `string` |  |
| `usedOnHeapStorageMemory` | `string` |  |

### `MetastoreConfig`

Specifies a Metastore configuration.

| Property | Type | Description |
|----------|------|-------------|
| `dataprocMetastoreService` | `string` | Required. Resource name of an existing Dataproc Metastore service.Example: projects/[project_id]/... |

### `Metric`

A Dataproc custom metric.

| Property | Type | Description |
|----------|------|-------------|
| `metricOverrides` | `array<string>` | Optional. Specify one or more Custom metrics (https://cloud.google.com/dataproc/docs/guides/datap... |
| `metricSource` | `string` | Required. A standard set of metrics is collected unless metricOverrides are specified for the met... |

### `NamespacedGkeDeploymentTarget`

Deprecated. Used only for the deprecated beta. A full, namespace-isolated deployment target for an existing GKE cluster.

| Property | Type | Description |
|----------|------|-------------|
| `clusterNamespace` | `string` | Optional. A namespace within the GKE cluster to deploy into. |
| `targetGkeCluster` | `string` | Optional. The target GKE cluster to deploy to. Format: 'projects/{project}/locations/{location}/c... |

### `NativeBuildInfoUiData`

| Property | Type | Description |
|----------|------|-------------|
| `buildClass` | `string` | Optional. Build class of Native. |
| `buildInfo` | `array<BuildInfo>` | Optional. Build related details. |

### `NativeSqlExecutionUiData`

Native SQL Execution Data

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the execution. |
| `executionId` | `string` | Required. Execution ID of the Native SQL Execution. |
| `fallbackDescription` | `string` | Optional. Description of the fallback. |
| `fallbackNodeToReason` | `array<FallbackReason>` | Optional. Fallback node to reason. |
| `numFallbackNodes` | `integer` | Optional. Number of nodes fallen back to Spark. |
| `numNativeNodes` | `integer` | Optional. Number of nodes in Native. |

### `NodeGroup`

Dataproc Node Group. The Dataproc NodeGroup resource is not related to the Dataproc NodeGroupAffinity resource.

| Property | Type | Description |
|----------|------|-------------|
| `labels` | `object` | Optional. Node group labels. Label keys must consist of from 1 to 63 characters and conform to RF... |
| `name` | `string` | The Node group resource name (https://aip.dev/122). |
| `nodeGroupConfig` | `InstanceGroupConfig` | Optional. The node group instance group configuration. |
| `roles` | `array<string>` | Required. Node group roles. |

### `NodeGroupAffinity`

Node Group Affinity for clusters using sole-tenant node groups. The Dataproc NodeGroupAffinity resource is not related to the Dataproc NodeGroup resource.

| Property | Type | Description |
|----------|------|-------------|
| `nodeGroupUri` | `string` | Required. The URI of a sole-tenant node group resource (https://cloud.google.com/compute/docs/ref... |

### `NodeGroupOperationMetadata`

Metadata describing the node group operation.

| Property | Type | Description |
|----------|------|-------------|
| `clusterUuid` | `string` | Output only. Cluster UUID associated with the node group operation. |
| `description` | `string` | Output only. Short description of operation. |
| `labels` | `object` | Output only. Labels associated with the operation. |
| `nodeGroupId` | `string` | Output only. Node group ID for the operation. |
| `operationType` | `string` | The operation type. |
| `status` | `ClusterOperationStatus` | Output only. Current operation status. |
| `statusHistory` | `array<ClusterOperationStatus>` | Output only. The previous operation status. |
| `warnings` | `array<string>` | Output only. Errors encountered during operation execution. |

### `NodeInitializationAction`

Specifies an executable to run on a fully configured node and a timeout period for executable completion.

| Property | Type | Description |
|----------|------|-------------|
| `executableFile` | `string` | Required. Cloud Storage URI of executable file. |
| `executionTimeout` | `string` | Optional. Amount of time executable has to complete. Default is 10 minutes (see JSON representati... |

### `NodePool`

indicating a list of workers of same type

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | Required. A unique id of the node pool. Primary and Secondary workers can be specified using spec... |
| `instanceNames` | `array<string>` | Name of instances to be repaired. These instances must belong to specified node pool. |
| `repairAction` | `string` | Required. Repair action to take on specified resources of the node pool. |

### `Operation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is false, it means the operation is still in progress. If true, the operation is com... |
| `error` | `Status` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `OrderedJob`

A job executed by the workflow.

| Property | Type | Description |
|----------|------|-------------|
| `flinkJob` | `FlinkJob` | Optional. Job is a Flink job. |
| `hadoopJob` | `HadoopJob` | Optional. Job is a Hadoop job. |
| `hiveJob` | `HiveJob` | Optional. Job is a Hive job. |
| `labels` | `object` | Optional. The labels to associate with this job.Label keys must be between 1 and 63 characters lo... |
| `pigJob` | `PigJob` | Optional. Job is a Pig job. |
| `prerequisiteStepIds` | `array<string>` | Optional. The optional list of prerequisite job step_ids. If not specified, the job will start at... |
| `prestoJob` | `PrestoJob` | Optional. Job is a Presto job. |
| `pysparkJob` | `PySparkJob` | Optional. Job is a PySpark job. |
| `scheduling` | `JobScheduling` | Optional. Job scheduling configuration. |
| `sparkJob` | `SparkJob` | Optional. Job is a Spark job. |
| `sparkRJob` | `SparkRJob` | Optional. Job is a SparkR job. |
| `sparkSqlJob` | `SparkSqlJob` | Optional. Job is a SparkSql job. |
| `stepId` | `string` | Required. The step id. The id must be unique among all jobs within the template.The step id is us... |
| `trinoJob` | `TrinoJob` | Optional. Job is a Trino job. |

### `OutputMetrics`

Metrics about the data written by the task.

| Property | Type | Description |
|----------|------|-------------|
| `bytesWritten` | `string` |  |
| `recordsWritten` | `string` |  |

### `OutputQuantileMetrics`

| Property | Type | Description |
|----------|------|-------------|
| `bytesWritten` | `Quantiles` |  |
| `recordsWritten` | `Quantiles` |  |

### `ParameterValidation`

Configuration for parameter validation.

| Property | Type | Description |
|----------|------|-------------|
| `regex` | `RegexValidation` | Validation based on regular expressions. |
| `values` | `ValueValidation` | Validation based on a list of allowed values. |

### `PeripheralsConfig`

Auxiliary services configuration for a workload.

| Property | Type | Description |
|----------|------|-------------|
| `metastoreService` | `string` | Optional. Resource name of an existing Dataproc Metastore service.Example: projects/[project_id]/... |
| `sparkHistoryServerConfig` | `SparkHistoryServerConfig` | Optional. The Spark History Server configuration for the workload. |

### `PigJob`

A Dataproc job for running Apache Pig (https://pig.apache.org/) queries on YARN.

| Property | Type | Description |
|----------|------|-------------|
| `continueOnFailure` | `boolean` | Optional. Whether to continue executing queries if a query fails. The default value is false. Set... |
| `jarFileUris` | `array<string>` | Optional. HCFS URIs of jar files to add to the CLASSPATH of the Pig Client and Hadoop MapReduce (... |
| `loggingConfig` | `LoggingConfig` | Optional. The runtime log config for job execution. |
| `properties` | `object` | Optional. A mapping of property names to values, used to configure Pig. Properties that conflict ... |
| `queryFileUri` | `string` | The HCFS URI of the script that contains the Pig queries. |
| `queryList` | `QueryList` | A list of queries. |
| `scriptVariables` | `object` | Optional. Mapping of query variable names to values (equivalent to the Pig command: name=[value]). |

### `Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources.A Policy is a collection of bindings. A binding binds one or more members, or principals, to a single role. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A role is a named list of permissions; each role can be an IAM predefined role or a user-created custom role.For some types of Google Cloud resources, a binding can also specify a condition, which is a logical expression that allows access to a resource only if the expression evaluates to true. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the IAM documentation (https://cloud.google.com/iam/help/conditions/resource-policies).JSON example: { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } YAML example: bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For a description of IAM and its features, see the IAM documentation (https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `bindings` | `array<Binding>` | Associates a list of members, or principals, with a role. Optionally, may specify a condition tha... |
| `etag` | `string` | etag is used for optimistic concurrency control as a way to help prevent simultaneous updates of ... |
| `version` | `integer` | Specifies the format of the policy.Valid values are 0, 1, and 3. Requests that specify an invalid... |

### `PoolData`

Pool Data

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` |  |
| `stageIds` | `array<string>` |  |

### `PrestoJob`

A Dataproc job for running Presto (https://prestosql.io/) queries. IMPORTANT: The Dataproc Presto Optional Component (https://cloud.google.com/dataproc/docs/concepts/components/presto) must be enabled when the cluster is created to submit a Presto job to the cluster.

| Property | Type | Description |
|----------|------|-------------|
| `clientTags` | `array<string>` | Optional. Presto client tags to attach to this query |
| `continueOnFailure` | `boolean` | Optional. Whether to continue executing queries if a query fails. The default value is false. Set... |
| `loggingConfig` | `LoggingConfig` | Optional. The runtime log config for job execution. |
| `outputFormat` | `string` | Optional. The format in which query output will be displayed. See the Presto documentation for su... |
| `properties` | `object` | Optional. A mapping of property names to values. Used to set Presto session properties (https://p... |
| `queryFileUri` | `string` | The HCFS URI of the script that contains SQL queries. |
| `queryList` | `QueryList` | A list of queries. |

### `ProcessSummary`

Process Summary

| Property | Type | Description |
|----------|------|-------------|
| `addTime` | `string` |  |
| `hostPort` | `string` |  |
| `isActive` | `boolean` |  |
| `processId` | `string` |  |
| `processLogs` | `object` |  |
| `removeTime` | `string` |  |
| `totalCores` | `integer` |  |

### `PropertiesInfo`

Properties of the workload organized by origin.

| Property | Type | Description |
|----------|------|-------------|
| `autotuningProperties` | `object` | Output only. Properties set by autotuning engine. |

### `ProvisioningModelMix`

Defines how Dataproc should create VMs with a mixture of provisioning models.

| Property | Type | Description |
|----------|------|-------------|
| `standardCapacityBase` | `integer` | Optional. The base capacity that will always use Standard VMs to avoid risk of more preemption th... |
| `standardCapacityPercentAboveBase` | `integer` | Optional. The percentage of target capacity that should use Standard VM. The remaining percentage... |

### `PyPiRepositoryConfig`

Configuration for PyPi repository

| Property | Type | Description |
|----------|------|-------------|
| `pypiRepository` | `string` | Optional. The PyPi repository address. Note: This field is not available for batch workloads. |

### `PySparkBatch`

A configuration for running an Apache PySpark (https://spark.apache.org/docs/latest/api/python/getting_started/quickstart.html) batch workload.

| Property | Type | Description |
|----------|------|-------------|
| `archiveUris` | `array<string>` | Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supp... |
| `args` | `array<string>` | Optional. The arguments to pass to the driver. Do not include arguments that can be set as batch ... |
| `fileUris` | `array<string>` | Optional. HCFS URIs of files to be placed in the working directory of each executor. |
| `jarFileUris` | `array<string>` | Optional. HCFS URIs of jar files to add to the classpath of the Spark driver and tasks. |
| `mainPythonFileUri` | `string` | Required. The HCFS URI of the main Python file to use as the Spark driver. Must be a .py file. |
| `pythonFileUris` | `array<string>` | Optional. HCFS file URIs of Python files to pass to the PySpark framework. Supported file types: ... |

### `PySparkJob`

A Dataproc job for running Apache PySpark (https://spark.apache.org/docs/latest/api/python/index.html#pyspark-overview) applications on YARN.

| Property | Type | Description |
|----------|------|-------------|
| `archiveUris` | `array<string>` | Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supp... |
| `args` | `array<string>` | Optional. The arguments to pass to the driver. Do not include arguments, such as --conf, that can... |
| `fileUris` | `array<string>` | Optional. HCFS URIs of files to be placed in the working directory of each executor. Useful for n... |
| `jarFileUris` | `array<string>` | Optional. HCFS URIs of jar files to add to the CLASSPATHs of the Python driver and tasks. |
| `loggingConfig` | `LoggingConfig` | Optional. The runtime log config for job execution. |
| `mainPythonFileUri` | `string` | Required. The HCFS URI of the main Python file to use as the driver. Must be a .py file. |
| `properties` | `object` | Optional. A mapping of property names to values, used to configure PySpark. Properties that confl... |
| `pythonFileUris` | `array<string>` | Optional. HCFS file URIs of Python files to pass to the PySpark framework. Supported file types: ... |

### `Quantiles`

Quantile metrics data related to Tasks. Units can be seconds, bytes, milliseconds, etc depending on the message type.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `string` |  |
| `maximum` | `string` |  |
| `minimum` | `string` |  |
| `percentile25` | `string` |  |
| `percentile50` | `string` |  |
| `percentile75` | `string` |  |
| `sum` | `string` |  |

### `QueryList`

A list of queries to run on a cluster.

| Property | Type | Description |
|----------|------|-------------|
| `queries` | `array<string>` | Required. The queries to execute. You do not need to end a query expression with a semicolon. Mul... |

### `RddDataDistribution`

Details about RDD usage.

| Property | Type | Description |
|----------|------|-------------|
| `address` | `string` |  |
| `diskUsed` | `string` |  |
| `memoryRemaining` | `string` |  |
| `memoryUsed` | `string` |  |
| `offHeapMemoryRemaining` | `string` |  |
| `offHeapMemoryUsed` | `string` |  |
| `onHeapMemoryRemaining` | `string` |  |
| `onHeapMemoryUsed` | `string` |  |

### `RddOperationCluster`

A grouping of nodes representing higher level constructs (stage, job etc.).

| Property | Type | Description |
|----------|------|-------------|
| `childClusters` | `array<RddOperationCluster>` |  |
| `childNodes` | `array<RddOperationNode>` |  |
| `name` | `string` |  |
| `rddClusterId` | `string` |  |

### `RddOperationEdge`

A directed edge representing dependency between two RDDs.

| Property | Type | Description |
|----------|------|-------------|
| `fromId` | `integer` |  |
| `toId` | `integer` |  |

### `RddOperationGraph`

Graph representing RDD dependencies. Consists of edges and a root cluster.

| Property | Type | Description |
|----------|------|-------------|
| `edges` | `array<RddOperationEdge>` |  |
| `incomingEdges` | `array<RddOperationEdge>` |  |
| `outgoingEdges` | `array<RddOperationEdge>` |  |
| `rootCluster` | `RddOperationCluster` |  |
| `stageId` | `string` |  |

### `RddOperationNode`

A node in the RDD operation graph. Corresponds to a single RDD.

| Property | Type | Description |
|----------|------|-------------|
| `barrier` | `boolean` |  |
| `cached` | `boolean` |  |
| `callsite` | `string` |  |
| `name` | `string` |  |
| `nodeId` | `integer` |  |
| `outputDeterministicLevel` | `string` |  |

### `RddPartitionInfo`

Information about RDD partitions.

| Property | Type | Description |
|----------|------|-------------|
| `blockName` | `string` |  |
| `diskUsed` | `string` |  |
| `executors` | `array<string>` |  |
| `memoryUsed` | `string` |  |
| `storageLevel` | `string` |  |

### `RddStorageInfo`

Overall data about RDD storage.

| Property | Type | Description |
|----------|------|-------------|
| `dataDistribution` | `array<RddDataDistribution>` |  |
| `diskUsed` | `string` |  |
| `memoryUsed` | `string` |  |
| `name` | `string` |  |
| `numCachedPartitions` | `integer` |  |
| `numPartitions` | `integer` |  |
| `partitions` | `array<RddPartitionInfo>` |  |
| `rddStorageId` | `integer` |  |
| `storageLevel` | `string` |  |

### `RegexValidation`

Validation based on regular expressions.

| Property | Type | Description |
|----------|------|-------------|
| `regexes` | `array<string>` | Required. RE2 regular expressions used to validate the parameter's value. The value must match th... |

### `RepairClusterRequest`

A request to repair a cluster.

| Property | Type | Description |
|----------|------|-------------|
| `cluster` | `ClusterToRepair` | Optional. Cluster to be repaired |
| `clusterUuid` | `string` | Optional. Specifying the cluster_uuid means the RPC will fail (with error NOT_FOUND) if a cluster... |
| `dataprocSuperUser` | `boolean` | Optional. Whether the request is submitted by Dataproc super user. If true, IAM will check 'datap... |
| `gracefulDecommissionTimeout` | `string` | Optional. Timeout for graceful YARN decommissioning. Graceful decommissioning facilitates the rem... |
| `nodePools` | `array<NodePool>` | Optional. Node pools and corresponding repair action to be taken. All node pools should be unique... |
| `parentOperationId` | `string` | Optional. operation id of the parent operation sending the repair request |
| `requestId` | `string` | Optional. A unique ID used to identify the request. If the server receives two RepairClusterReque... |

### `RepairNodeGroupRequest`

| Property | Type | Description |
|----------|------|-------------|
| `instanceNames` | `array<string>` | Required. Name of instances to be repaired. These instances must belong to specified node pool. |
| `repairAction` | `string` | Required. Repair action to take on specified resources of the node pool. |
| `requestId` | `string` | Optional. A unique ID used to identify the request. If the server receives two RepairNodeGroupReq... |

### `RepositoryConfig`

Configuration for dependency repositories

| Property | Type | Description |
|----------|------|-------------|
| `pypiRepositoryConfig` | `PyPiRepositoryConfig` | Optional. Configuration for PyPi repository. |

### `ReservationAffinity`

Reservation Affinity for consuming Zonal reservation.

| Property | Type | Description |
|----------|------|-------------|
| `consumeReservationType` | `string` | Optional. Type of reservation to consume |
| `key` | `string` | Optional. Corresponds to the label key of reservation resource. |
| `values` | `array<string>` | Optional. Corresponds to the label values of reservation resource. |

### `ResizeNodeGroupRequest`

A request to resize a node group.

| Property | Type | Description |
|----------|------|-------------|
| `gracefulDecommissionTimeout` | `string` | Optional. Timeout for graceful YARN decommissioning. Graceful decommissioning (https://cloud.goog... |
| `parentOperationId` | `string` | Optional. operation id of the parent operation sending the resize request |
| `requestId` | `string` | Optional. A unique ID used to identify the request. If the server receives two ResizeNodeGroupReq... |
| `size` | `integer` | Required. The number of running instances for the node group to maintain. The group adds or remov... |

### `ResourceInformation`

| Property | Type | Description |
|----------|------|-------------|
| `addresses` | `array<string>` |  |
| `name` | `string` |  |

### `ResourceProfileInfo`

Resource profile that contains information about all the resources required by executors and tasks.

| Property | Type | Description |
|----------|------|-------------|
| `executorResources` | `object` |  |
| `resourceProfileId` | `integer` |  |
| `taskResources` | `object` |  |

### `RuntimeConfig`

Runtime configuration for a workload.

| Property | Type | Description |
|----------|------|-------------|
| `autotuningConfig` | `AutotuningConfig` | Optional. Autotuning configuration of the workload. |
| `cohort` | `string` | Optional. Cohort identifier. Identifies families of the workloads that have the same shape, for e... |
| `containerImage` | `string` | Optional. Optional custom container image for the job runtime environment. If not specified, a de... |
| `properties` | `object` | Optional. A mapping of property names to values, which are used to configure workload execution. |
| `repositoryConfig` | `RepositoryConfig` | Optional. Dependency repository configuration. |
| `version` | `string` | Optional. Version of the batch runtime. |

### `RuntimeInfo`

Runtime information about workload execution.

| Property | Type | Description |
|----------|------|-------------|
| `approximateUsage` | `UsageMetrics` | Output only. Approximate workload resource usage, calculated when the workload completes (see Dat... |
| `currentUsage` | `UsageSnapshot` | Output only. Snapshot of current workload resource usage. |
| `diagnosticOutputUri` | `string` | Output only. A URI pointing to the location of the diagnostics tarball. |
| `endpoints` | `object` | Output only. Map of remote access endpoints (such as web interfaces and APIs) to their URIs. |
| `outputUri` | `string` | Output only. A URI pointing to the location of the stdout and stderr of the workload. |
| `propertiesInfo` | `PropertiesInfo` | Optional. Properties of the workload organized by origin. |

### `SearchSessionSparkApplicationExecutorStageSummaryResponse`

List of Executors associated with a Spark Application Stage.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | This token is included in the response if there are more results to fetch. To fetch additional re... |
| `sparkApplicationStageExecutors` | `array<ExecutorStageSummary>` | Details about executors used by the application stage. |

### `SearchSessionSparkApplicationExecutorsResponse`

List of Executors associated with a Spark Application.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | This token is included in the response if there are more results to fetch. To fetch additional re... |
| `sparkApplicationExecutors` | `array<ExecutorSummary>` | Details about executors used by the application. |

### `SearchSessionSparkApplicationJobsResponse`

A list of Jobs associated with a Spark Application.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | This token is included in the response if there are more results to fetch. To fetch additional re... |
| `sparkApplicationJobs` | `array<JobData>` | Output only. Data corresponding to a spark job. |

### `SearchSessionSparkApplicationSqlQueriesResponse`

List of all queries for a Spark Application.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | This token is included in the response if there are more results to fetch. To fetch additional re... |
| `sparkApplicationSqlQueries` | `array<SqlExecutionUiData>` | Output only. SQL Execution Data |

### `SearchSessionSparkApplicationStageAttemptTasksResponse`

List of tasks for a stage of a Spark Application

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | This token is included in the response if there are more results to fetch. To fetch additional re... |
| `sparkApplicationStageAttemptTasks` | `array<TaskData>` | Output only. Data corresponding to tasks created by spark. |

### `SearchSessionSparkApplicationStageAttemptsResponse`

A list of Stage Attempts for a Stage of a Spark Application.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | This token is included in the response if there are more results to fetch. To fetch additional re... |
| `sparkApplicationStageAttempts` | `array<StageData>` | Output only. Data corresponding to a stage attempts |

### `SearchSessionSparkApplicationStagesResponse`

A list of stages associated with a Spark Application.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | This token is included in the response if there are more results to fetch. To fetch additional re... |
| `sparkApplicationStages` | `array<StageData>` | Output only. Data corresponding to a stage. |

### `SearchSessionSparkApplicationsResponse`

A list of summary of Spark Applications

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | This token is included in the response if there are more results to fetch. To fetch additional re... |
| `sparkApplications` | `array<SparkApplication>` | Output only. High level information corresponding to an application. |

### `SearchSparkApplicationExecutorStageSummaryResponse`

List of Executors associated with a Spark Application Stage.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | This token is included in the response if there are more results to fetch. To fetch additional re... |
| `sparkApplicationStageExecutors` | `array<ExecutorStageSummary>` | Details about executors used by the application stage. |

### `SearchSparkApplicationExecutorsResponse`

List of Executors associated with a Spark Application.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | This token is included in the response if there are more results to fetch. To fetch additional re... |
| `sparkApplicationExecutors` | `array<ExecutorSummary>` | Details about executors used by the application. |

### `SearchSparkApplicationJobsResponse`

A list of Jobs associated with a Spark Application.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | This token is included in the response if there are more results to fetch. To fetch additional re... |
| `sparkApplicationJobs` | `array<JobData>` | Output only. Data corresponding to a spark job. |

### `SearchSparkApplicationSqlQueriesResponse`

List of all queries for a Spark Application.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | This token is included in the response if there are more results to fetch. To fetch additional re... |
| `sparkApplicationSqlQueries` | `array<SqlExecutionUiData>` | Output only. SQL Execution Data |

### `SearchSparkApplicationStageAttemptTasksResponse`

List of tasks for a stage of a Spark Application

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | This token is included in the response if there are more results to fetch. To fetch additional re... |
| `sparkApplicationStageAttemptTasks` | `array<TaskData>` | Output only. Data corresponding to tasks created by spark. |

### `SearchSparkApplicationStageAttemptsResponse`

A list of Stage Attempts for a Stage of a Spark Application.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | This token is included in the response if there are more results to fetch. To fetch additional re... |
| `sparkApplicationStageAttempts` | `array<StageData>` | Output only. Data corresponding to a stage attempts |

### `SearchSparkApplicationStagesResponse`

A list of stages associated with a Spark Application.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | This token is included in the response if there are more results to fetch. To fetch additional re... |
| `sparkApplicationStages` | `array<StageData>` | Output only. Data corresponding to a stage. |

### `SearchSparkApplicationsResponse`

A list of summary of Spark Applications

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | This token is included in the response if there are more results to fetch. To fetch additional re... |
| `sparkApplications` | `array<SparkApplication>` | Output only. High level information corresponding to an application. |

### `SecurityConfig`

Security related configuration, including encryption, Kerberos, etc.

| Property | Type | Description |
|----------|------|-------------|
| `identityConfig` | `IdentityConfig` | Optional. Identity related configuration, including service account based secure multi-tenancy us... |
| `kerberosConfig` | `KerberosConfig` | Optional. Kerberos related configuration. |

### `Session`

A representation of a session.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time when the session was created. |
| `creator` | `string` | Output only. The email address of the user who created the session. |
| `environmentConfig` | `EnvironmentConfig` | Optional. Environment configuration for the session execution. |
| `jupyterSession` | `JupyterConfig` | Optional. Jupyter session config. |
| `labels` | `object` | Optional. The labels to associate with the session. Label keys must contain 1 to 63 characters, a... |
| `name` | `string` | Identifier. The resource name of the session. |
| `runtimeConfig` | `RuntimeConfig` | Optional. Runtime configuration for the session execution. |
| `runtimeInfo` | `RuntimeInfo` | Output only. Runtime information about session execution. |
| `sessionTemplate` | `string` | Optional. The session template used by the session.Only resource names, including project ID and ... |
| `sparkConnectSession` | `SparkConnectConfig` | Optional. Spark connect session config. |
| `state` | `string` | Output only. A state of the session. |
| `stateHistory` | `array<SessionStateHistory>` | Output only. Historical state information for the session. |
| `stateMessage` | `string` | Output only. Session state details, such as the failure description if the state is FAILED. |
| `stateTime` | `string` | Output only. The time when the session entered the current state. |
| `user` | `string` | Optional. The email address of the user who owns the session. |
| `uuid` | `string` | Output only. A session UUID (Unique Universal Identifier). The service generates this value when ... |

### `SessionOperationMetadata`

Metadata describing the Session operation.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | The time when the operation was created. |
| `description` | `string` | Short description of the operation. |
| `doneTime` | `string` | The time when the operation was finished. |
| `labels` | `object` | Labels associated with the operation. |
| `operationType` | `string` | The operation type. |
| `session` | `string` | Name of the session for the operation. |
| `sessionUuid` | `string` | Session UUID for the operation. |
| `warnings` | `array<string>` | Warnings encountered during operation execution. |

### `SessionStateHistory`

Historical state information.

| Property | Type | Description |
|----------|------|-------------|
| `state` | `string` | Output only. The state of the session at this point in the session history. |
| `stateMessage` | `string` | Output only. Details about the state at this point in the session history. |
| `stateStartTime` | `string` | Output only. The time when the session entered the historical state. |

### `SessionTemplate`

A representation of a session template.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time when the template was created. |
| `creator` | `string` | Output only. The email address of the user who created the template. |
| `description` | `string` | Optional. Brief description of the template. |
| `environmentConfig` | `EnvironmentConfig` | Optional. Environment configuration for session execution. |
| `jupyterSession` | `JupyterConfig` | Optional. Jupyter session config. |
| `labels` | `object` | Optional. Labels to associate with sessions created using this template. Label keys must contain ... |
| `name` | `string` | Required. Identifier. The resource name of the session template. |
| `runtimeConfig` | `RuntimeConfig` | Optional. Runtime configuration for session execution. |
| `sparkConnectSession` | `SparkConnectConfig` | Optional. Spark connect session config. |
| `updateTime` | `string` | Output only. The time the template was last updated. |
| `uuid` | `string` | Output only. A session template UUID (Unique Universal Identifier). The service generates this va... |

### `SetIamPolicyRequest`

Request message for SetIamPolicy method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `Policy` | REQUIRED: The complete policy to be applied to the resource. The size of the policy is limited to... |

### `ShieldedInstanceConfig`

Shielded Instance Config for clusters using Compute Engine Shielded VMs (https://cloud.google.com/security/shielded-cloud/shielded-vm).

| Property | Type | Description |
|----------|------|-------------|
| `enableIntegrityMonitoring` | `boolean` | Optional. Defines whether instances have integrity monitoring enabled. |
| `enableSecureBoot` | `boolean` | Optional. Defines whether instances have Secure Boot enabled. |
| `enableVtpm` | `boolean` | Optional. Defines whether instances have the vTPM enabled. |

### `ShufflePushReadMetrics`

| Property | Type | Description |
|----------|------|-------------|
| `corruptMergedBlockChunks` | `string` |  |
| `localMergedBlocksFetched` | `string` |  |
| `localMergedBytesRead` | `string` |  |
| `localMergedChunksFetched` | `string` |  |
| `mergedFetchFallbackCount` | `string` |  |
| `remoteMergedBlocksFetched` | `string` |  |
| `remoteMergedBytesRead` | `string` |  |
| `remoteMergedChunksFetched` | `string` |  |
| `remoteMergedReqsDuration` | `string` |  |

### `ShufflePushReadQuantileMetrics`

| Property | Type | Description |
|----------|------|-------------|
| `corruptMergedBlockChunks` | `Quantiles` |  |
| `localMergedBlocksFetched` | `Quantiles` |  |
| `localMergedBytesRead` | `Quantiles` |  |
| `localMergedChunksFetched` | `Quantiles` |  |
| `mergedFetchFallbackCount` | `Quantiles` |  |
| `remoteMergedBlocksFetched` | `Quantiles` |  |
| `remoteMergedBytesRead` | `Quantiles` |  |
| `remoteMergedChunksFetched` | `Quantiles` |  |
| `remoteMergedReqsDuration` | `Quantiles` |  |

### `ShuffleReadMetrics`

Shuffle data read by the task.

| Property | Type | Description |
|----------|------|-------------|
| `fetchWaitTimeMillis` | `string` |  |
| `localBlocksFetched` | `string` |  |
| `localBytesRead` | `string` |  |
| `recordsRead` | `string` |  |
| `remoteBlocksFetched` | `string` |  |
| `remoteBytesRead` | `string` |  |
| `remoteBytesReadToDisk` | `string` |  |
| `remoteReqsDuration` | `string` |  |
| `shufflePushReadMetrics` | `ShufflePushReadMetrics` |  |

### `ShuffleReadQuantileMetrics`

| Property | Type | Description |
|----------|------|-------------|
| `fetchWaitTimeMillis` | `Quantiles` |  |
| `localBlocksFetched` | `Quantiles` |  |
| `readBytes` | `Quantiles` |  |
| `readRecords` | `Quantiles` |  |
| `remoteBlocksFetched` | `Quantiles` |  |
| `remoteBytesRead` | `Quantiles` |  |
| `remoteBytesReadToDisk` | `Quantiles` |  |
| `remoteReqsDuration` | `Quantiles` |  |
| `shufflePushReadMetrics` | `ShufflePushReadQuantileMetrics` |  |
| `totalBlocksFetched` | `Quantiles` |  |

### `ShuffleWriteMetrics`

Shuffle data written by task.

| Property | Type | Description |
|----------|------|-------------|
| `bytesWritten` | `string` |  |
| `recordsWritten` | `string` |  |
| `writeTimeNanos` | `string` |  |

### `ShuffleWriteQuantileMetrics`

| Property | Type | Description |
|----------|------|-------------|
| `writeBytes` | `Quantiles` |  |
| `writeRecords` | `Quantiles` |  |
| `writeTimeNanos` | `Quantiles` |  |

### `SinkProgress`

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` |  |
| `metrics` | `object` |  |
| `numOutputRows` | `string` |  |

### `SoftwareConfig`

Specifies the selection and config of software inside the cluster.

| Property | Type | Description |
|----------|------|-------------|
| `imageVersion` | `string` | Optional. The version of software inside the cluster. It must be one of the supported Dataproc Ve... |
| `optionalComponents` | `array<string>` | Optional. The set of components to activate on the cluster. |
| `properties` | `object` | Optional. The properties to set on daemon config files.Property keys are specified in prefix:prop... |

### `SourceProgress`

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` |  |
| `endOffset` | `string` |  |
| `inputRowsPerSecond` | `number` |  |
| `latestOffset` | `string` |  |
| `metrics` | `object` |  |
| `numInputRows` | `string` |  |
| `processedRowsPerSecond` | `number` |  |
| `startOffset` | `string` |  |

### `SparkApplication`

A summary of Spark Application

| Property | Type | Description |
|----------|------|-------------|
| `application` | `ApplicationInfo` | Output only. High level information corresponding to an application. |
| `name` | `string` | Identifier. Name of the spark application |

### `SparkBatch`

A configuration for running an Apache Spark (https://spark.apache.org/) batch workload.

| Property | Type | Description |
|----------|------|-------------|
| `archiveUris` | `array<string>` | Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supp... |
| `args` | `array<string>` | Optional. The arguments to pass to the driver. Do not include arguments that can be set as batch ... |
| `fileUris` | `array<string>` | Optional. HCFS URIs of files to be placed in the working directory of each executor. |
| `jarFileUris` | `array<string>` | Optional. HCFS URIs of jar files to add to the classpath of the Spark driver and tasks. |
| `mainClass` | `string` | Optional. The name of the driver main class. The jar file that contains the class must be in the ... |
| `mainJarFileUri` | `string` | Optional. The HCFS URI of the jar file that contains the main class. |

### `SparkConnectConfig`

Spark connect configuration for an interactive session.

### `SparkConnectExecutionInfo`

Represents the lifecycle and details of an Execution via Spark Connect

| Property | Type | Description |
|----------|------|-------------|
| `closeTimestamp` | `string` | Timestamp when the execution was closed. |
| `detail` | `string` | Detailed information about the execution. |
| `finishTimestamp` | `string` | Timestamp when the execution finished. |
| `jobIds` | `array<string>` | Optional. List of job ids associated with the execution. |
| `jobTag` | `string` | Required. Job tag of the execution. |
| `operationId` | `string` | Unique identifier for the operation. |
| `sessionId` | `string` | Required. Session ID, ties the execution to a specific Spark Connect session. |
| `sparkSessionTags` | `array<string>` | Optional. Tags associated with the Spark session. |
| `sqlExecIds` | `array<string>` | Optional. List of sql execution ids associated with the execution. |
| `startTimestamp` | `string` | Timestamp when the execution started. |
| `state` | `string` | Output only. Current state of the execution. |
| `statement` | `string` | statement of the execution. |
| `userId` | `string` | User ID of the user who started the execution. |

### `SparkConnectSessionInfo`

Represents session-level information for Spark Connect

| Property | Type | Description |
|----------|------|-------------|
| `finishTimestamp` | `string` | Timestamp when the session finished. |
| `sessionId` | `string` | Required. Session ID of the session. |
| `startTimestamp` | `string` | Timestamp when the session started. |
| `totalExecution` | `string` | Optional. Total number of executions in the session. |
| `userId` | `string` | User ID of the user who started the session. |

### `SparkHistoryServerConfig`

Spark History Server configuration for the workload.

| Property | Type | Description |
|----------|------|-------------|
| `dataprocCluster` | `string` | Optional. Resource name of an existing Dataproc Cluster to act as a Spark History Server for the ... |

### `SparkJob`

A Dataproc job for running Apache Spark (https://spark.apache.org/) applications on YARN.

| Property | Type | Description |
|----------|------|-------------|
| `archiveUris` | `array<string>` | Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supp... |
| `args` | `array<string>` | Optional. The arguments to pass to the driver. Do not include arguments, such as --conf, that can... |
| `fileUris` | `array<string>` | Optional. HCFS URIs of files to be placed in the working directory of each executor. Useful for n... |
| `jarFileUris` | `array<string>` | Optional. HCFS URIs of jar files to add to the CLASSPATHs of the Spark driver and tasks. |
| `loggingConfig` | `LoggingConfig` | Optional. The runtime log config for job execution. |
| `mainClass` | `string` | The name of the driver's main class. The jar file that contains the class must be in the default ... |
| `mainJarFileUri` | `string` | The HCFS URI of the jar file that contains the main class. |
| `properties` | `object` | Optional. A mapping of property names to values, used to configure Spark. Properties that conflic... |

### `SparkPlanGraph`

A graph used for storing information of an executionPlan of DataFrame.

| Property | Type | Description |
|----------|------|-------------|
| `edges` | `array<SparkPlanGraphEdge>` |  |
| `executionId` | `string` |  |
| `nodes` | `array<SparkPlanGraphNodeWrapper>` |  |

### `SparkPlanGraphCluster`

Represents a tree of spark plan.

| Property | Type | Description |
|----------|------|-------------|
| `desc` | `string` |  |
| `metrics` | `array<SqlPlanMetric>` |  |
| `name` | `string` |  |
| `nodes` | `array<SparkPlanGraphNodeWrapper>` |  |
| `sparkPlanGraphClusterId` | `string` |  |

### `SparkPlanGraphEdge`

Represents a directed edge in the spark plan tree from child to parent.

| Property | Type | Description |
|----------|------|-------------|
| `fromId` | `string` |  |
| `toId` | `string` |  |

### `SparkPlanGraphNode`

Represents a node in the spark plan tree.

| Property | Type | Description |
|----------|------|-------------|
| `desc` | `string` |  |
| `metrics` | `array<SqlPlanMetric>` |  |
| `name` | `string` |  |
| `sparkPlanGraphNodeId` | `string` |  |

### `SparkPlanGraphNodeWrapper`

Wrapper user to represent either a node or a cluster.

| Property | Type | Description |
|----------|------|-------------|
| `cluster` | `SparkPlanGraphCluster` |  |
| `node` | `SparkPlanGraphNode` |  |

### `SparkRBatch`

A configuration for running an Apache SparkR (https://spark.apache.org/docs/latest/sparkr.html) batch workload.

| Property | Type | Description |
|----------|------|-------------|
| `archiveUris` | `array<string>` | Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supp... |
| `args` | `array<string>` | Optional. The arguments to pass to the Spark driver. Do not include arguments that can be set as ... |
| `fileUris` | `array<string>` | Optional. HCFS URIs of files to be placed in the working directory of each executor. |
| `mainRFileUri` | `string` | Required. The HCFS URI of the main R file to use as the driver. Must be a .R or .r file. |

### `SparkRJob`

A Dataproc job for running Apache SparkR (https://spark.apache.org/docs/latest/sparkr.html) applications on YARN.

| Property | Type | Description |
|----------|------|-------------|
| `archiveUris` | `array<string>` | Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supp... |
| `args` | `array<string>` | Optional. The arguments to pass to the driver. Do not include arguments, such as --conf, that can... |
| `fileUris` | `array<string>` | Optional. HCFS URIs of files to be placed in the working directory of each executor. Useful for n... |
| `loggingConfig` | `LoggingConfig` | Optional. The runtime log config for job execution. |
| `mainRFileUri` | `string` | Required. The HCFS URI of the main R file to use as the driver. Must be a .R file. |
| `properties` | `object` | Optional. A mapping of property names to values, used to configure SparkR. Properties that confli... |

### `SparkRuntimeInfo`

| Property | Type | Description |
|----------|------|-------------|
| `javaHome` | `string` |  |
| `javaVersion` | `string` |  |
| `scalaVersion` | `string` |  |

### `SparkSqlBatch`

A configuration for running Apache Spark SQL (https://spark.apache.org/sql/) queries as a batch workload.

| Property | Type | Description |
|----------|------|-------------|
| `jarFileUris` | `array<string>` | Optional. HCFS URIs of jar files to be added to the Spark CLASSPATH. |
| `queryFileUri` | `string` | Required. The HCFS URI of the script that contains Spark SQL queries to execute. |
| `queryVariables` | `object` | Optional. Mapping of query variable names to values (equivalent to the Spark SQL command: SET nam... |

### `SparkSqlJob`

A Dataproc job for running Apache Spark SQL (https://spark.apache.org/sql/) queries.

| Property | Type | Description |
|----------|------|-------------|
| `jarFileUris` | `array<string>` | Optional. HCFS URIs of jar files to be added to the Spark CLASSPATH. |
| `loggingConfig` | `LoggingConfig` | Optional. The runtime log config for job execution. |
| `properties` | `object` | Optional. A mapping of property names to values, used to configure Spark SQL's SparkConf. Propert... |
| `queryFileUri` | `string` | The HCFS URI of the script that contains SQL queries. |
| `queryList` | `QueryList` | A list of queries. |
| `scriptVariables` | `object` | Optional. Mapping of query variable names to values (equivalent to the Spark SQL command: SET nam... |

### `SparkStandaloneAutoscalingConfig`

Basic autoscaling configurations for Spark Standalone.

| Property | Type | Description |
|----------|------|-------------|
| `gracefulDecommissionTimeout` | `string` | Required. Timeout for Spark graceful decommissioning of spark workers. Specifies the duration to ... |
| `removeOnlyIdleWorkers` | `boolean` | Optional. Remove only idle workers when scaling down cluster |
| `scaleDownFactor` | `number` | Required. Fraction of required executors to remove from Spark Serverless clusters. A scale-down f... |
| `scaleDownMinWorkerFraction` | `number` | Optional. Minimum scale-down threshold as a fraction of total cluster size before scaling occurs.... |
| `scaleUpFactor` | `number` | Required. Fraction of required workers to add to Spark Standalone clusters. A scale-up factor of ... |
| `scaleUpMinWorkerFraction` | `number` | Optional. Minimum scale-up threshold as a fraction of total cluster size before scaling occurs. F... |

### `SparkWrapperObject`

Outer message that contains the data obtained from spark listener, packaged with information that is required to process it.

| Property | Type | Description |
|----------|------|-------------|
| `appSummary` | `AppSummary` |  |
| `applicationEnvironmentInfo` | `ApplicationEnvironmentInfo` |  |
| `applicationId` | `string` | Application Id created by Spark. |
| `applicationInfo` | `ApplicationInfo` |  |
| `eventTimestamp` | `string` | VM Timestamp associated with the data object. |
| `executorStageSummary` | `ExecutorStageSummary` |  |
| `executorSummary` | `ExecutorSummary` |  |
| `jobData` | `JobData` |  |
| `nativeBuildInfoUiData` | `NativeBuildInfoUiData` | Native Build Info |
| `nativeSqlExecutionUiData` | `NativeSqlExecutionUiData` | Native SQL Execution Info |
| `poolData` | `PoolData` |  |
| `processSummary` | `ProcessSummary` |  |
| `rddOperationGraph` | `RddOperationGraph` |  |
| `rddStorageInfo` | `RddStorageInfo` |  |
| `resourceProfileInfo` | `ResourceProfileInfo` |  |
| `sparkConnectExecutionInfo` | `SparkConnectExecutionInfo` | Spark Connect Execution Info |
| `sparkConnectSessionInfo` | `SparkConnectSessionInfo` | Spark Connect Session Info |
| `sparkPlanGraph` | `SparkPlanGraph` |  |
| `speculationStageSummary` | `SpeculationStageSummary` |  |
| `sqlExecutionUiData` | `SqlExecutionUiData` |  |
| `stageData` | `StageData` |  |
| `streamBlockData` | `StreamBlockData` |  |
| `streamingQueryData` | `StreamingQueryData` |  |
| `streamingQueryProgress` | `StreamingQueryProgress` |  |
| `taskData` | `TaskData` |  |

### `SpeculationStageSummary`

Details of the speculation task when speculative execution is enabled.

| Property | Type | Description |
|----------|------|-------------|
| `numActiveTasks` | `integer` |  |
| `numCompletedTasks` | `integer` |  |
| `numFailedTasks` | `integer` |  |
| `numKilledTasks` | `integer` |  |
| `numTasks` | `integer` |  |
| `stageAttemptId` | `integer` |  |
| `stageId` | `string` |  |

### `SqlExecutionUiData`

SQL Execution Data

| Property | Type | Description |
|----------|------|-------------|
| `completionTime` | `string` |  |
| `description` | `string` |  |
| `details` | `string` |  |
| `errorMessage` | `string` |  |
| `executionId` | `string` |  |
| `jobs` | `object` |  |
| `metricValues` | `object` |  |
| `metricValuesIsNull` | `boolean` |  |
| `metrics` | `array<SqlPlanMetric>` |  |
| `modifiedConfigs` | `object` |  |
| `physicalPlanDescription` | `string` |  |
| `rootExecutionId` | `string` |  |
| `stages` | `array<string>` |  |
| `submissionTime` | `string` |  |

### `SqlPlanMetric`

Metrics related to SQL execution.

| Property | Type | Description |
|----------|------|-------------|
| `accumulatorId` | `string` |  |
| `metricType` | `string` |  |
| `name` | `string` |  |

### `StageAttemptTasksSummary`

Data related to tasks summary for a Spark Stage Attempt

| Property | Type | Description |
|----------|------|-------------|
| `applicationId` | `string` |  |
| `numFailedTasks` | `integer` |  |
| `numKilledTasks` | `integer` |  |
| `numPendingTasks` | `integer` |  |
| `numRunningTasks` | `integer` |  |
| `numSuccessTasks` | `integer` |  |
| `numTasks` | `integer` |  |
| `stageAttemptId` | `integer` |  |
| `stageId` | `string` |  |

### `StageData`

Data corresponding to a stage.

| Property | Type | Description |
|----------|------|-------------|
| `accumulatorUpdates` | `array<AccumulableInfo>` |  |
| `completionTime` | `string` |  |
| `description` | `string` |  |
| `details` | `string` |  |
| `executorMetricsDistributions` | `ExecutorMetricsDistributions` |  |
| `executorSummary` | `object` |  |
| `failureReason` | `string` |  |
| `firstTaskLaunchedTime` | `string` |  |
| `isShufflePushEnabled` | `boolean` |  |
| `jobIds` | `array<string>` |  |
| `killedTasksSummary` | `object` |  |
| `locality` | `object` |  |
| `name` | `string` |  |
| `numActiveTasks` | `integer` |  |
| `numCompleteTasks` | `integer` |  |
| `numCompletedIndices` | `integer` |  |
| `numFailedTasks` | `integer` |  |
| `numKilledTasks` | `integer` |  |
| `numTasks` | `integer` |  |
| `parentStageIds` | `array<string>` |  |
| `peakExecutorMetrics` | `ExecutorMetrics` |  |
| `rddIds` | `array<string>` |  |
| `resourceProfileId` | `integer` |  |
| `schedulingPool` | `string` |  |
| `shuffleMergersCount` | `integer` |  |
| `speculationSummary` | `SpeculationStageSummary` |  |
| `stageAttemptId` | `integer` |  |
| `stageId` | `string` |  |
| `stageMetrics` | `StageMetrics` |  |
| `status` | `string` |  |
| `submissionTime` | `string` |  |
| `taskQuantileMetrics` | `TaskQuantileMetrics` | Summary metrics fields. These are included in response only if present in summary_metrics_mask fi... |
| `tasks` | `object` |  |

### `StageInputMetrics`

Metrics about the input read by the stage.

| Property | Type | Description |
|----------|------|-------------|
| `bytesRead` | `string` |  |
| `recordsRead` | `string` |  |

### `StageMetrics`

Stage Level Aggregated Metrics

| Property | Type | Description |
|----------|------|-------------|
| `diskBytesSpilled` | `string` |  |
| `executorCpuTimeNanos` | `string` |  |
| `executorDeserializeCpuTimeNanos` | `string` |  |
| `executorDeserializeTimeMillis` | `string` |  |
| `executorRunTimeMillis` | `string` |  |
| `jvmGcTimeMillis` | `string` |  |
| `memoryBytesSpilled` | `string` |  |
| `peakExecutionMemoryBytes` | `string` |  |
| `resultSerializationTimeMillis` | `string` |  |
| `resultSize` | `string` |  |
| `stageInputMetrics` | `StageInputMetrics` |  |
| `stageOutputMetrics` | `StageOutputMetrics` |  |
| `stageShuffleReadMetrics` | `StageShuffleReadMetrics` |  |
| `stageShuffleWriteMetrics` | `StageShuffleWriteMetrics` |  |

### `StageOutputMetrics`

Metrics about the output written by the stage.

| Property | Type | Description |
|----------|------|-------------|
| `bytesWritten` | `string` |  |
| `recordsWritten` | `string` |  |

### `StageShufflePushReadMetrics`

| Property | Type | Description |
|----------|------|-------------|
| `corruptMergedBlockChunks` | `string` |  |
| `localMergedBlocksFetched` | `string` |  |
| `localMergedBytesRead` | `string` |  |
| `localMergedChunksFetched` | `string` |  |
| `mergedFetchFallbackCount` | `string` |  |
| `remoteMergedBlocksFetched` | `string` |  |
| `remoteMergedBytesRead` | `string` |  |
| `remoteMergedChunksFetched` | `string` |  |
| `remoteMergedReqsDuration` | `string` |  |

### `StageShuffleReadMetrics`

Shuffle data read for the stage.

| Property | Type | Description |
|----------|------|-------------|
| `bytesRead` | `string` |  |
| `fetchWaitTimeMillis` | `string` |  |
| `localBlocksFetched` | `string` |  |
| `localBytesRead` | `string` |  |
| `recordsRead` | `string` |  |
| `remoteBlocksFetched` | `string` |  |
| `remoteBytesRead` | `string` |  |
| `remoteBytesReadToDisk` | `string` |  |
| `remoteReqsDuration` | `string` |  |
| `stageShufflePushReadMetrics` | `StageShufflePushReadMetrics` |  |

### `StageShuffleWriteMetrics`

Shuffle data written for the stage.

| Property | Type | Description |
|----------|------|-------------|
| `bytesWritten` | `string` |  |
| `recordsWritten` | `string` |  |
| `writeTimeNanos` | `string` |  |

### `StagesSummary`

Data related to Stages page summary

| Property | Type | Description |
|----------|------|-------------|
| `applicationId` | `string` |  |
| `numActiveStages` | `integer` |  |
| `numCompletedStages` | `integer` |  |
| `numFailedStages` | `integer` |  |
| `numPendingStages` | `integer` |  |
| `numSkippedStages` | `integer` |  |

### `StartClusterRequest`

A request to start a cluster.

| Property | Type | Description |
|----------|------|-------------|
| `clusterUuid` | `string` | Optional. Specifying the cluster_uuid means the RPC will fail (with error NOT_FOUND) if a cluster... |
| `requestId` | `string` | Optional. A unique ID used to identify the request. If the server receives two StartClusterReques... |

### `StartupConfig`

Configuration to handle the startup of instances during cluster create and update process.

| Property | Type | Description |
|----------|------|-------------|
| `requiredRegistrationFraction` | `number` | Optional. The config setting to enable cluster creation/ updation to be successful only after req... |

### `StateHistory`

Historical state information.

| Property | Type | Description |
|----------|------|-------------|
| `state` | `string` | Output only. The state of the batch at this point in history. |
| `stateMessage` | `string` | Output only. Details about the state at this point in history. |
| `stateStartTime` | `string` | Output only. The time when the batch entered the historical state. |

### `StateOperatorProgress`

| Property | Type | Description |
|----------|------|-------------|
| `allRemovalsTimeMs` | `string` |  |
| `allUpdatesTimeMs` | `string` |  |
| `commitTimeMs` | `string` |  |
| `customMetrics` | `object` |  |
| `memoryUsedBytes` | `string` |  |
| `numRowsDroppedByWatermark` | `string` |  |
| `numRowsRemoved` | `string` |  |
| `numRowsTotal` | `string` |  |
| `numRowsUpdated` | `string` |  |
| `numShufflePartitions` | `string` |  |
| `numStateStoreInstances` | `string` |  |
| `operatorName` | `string` |  |

### `Status`

The Status type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by gRPC (https://github.com/grpc). Each Status message contains three pieces of data: error code, error message, and error details.You can find out more about this error model and how to work with it in the API Design Guide (https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `StopClusterRequest`

A request to stop a cluster.

| Property | Type | Description |
|----------|------|-------------|
| `clusterUuid` | `string` | Optional. Specifying the cluster_uuid means the RPC will fail (with error NOT_FOUND) if a cluster... |
| `requestId` | `string` | Optional. A unique ID used to identify the request. If the server receives two StopClusterRequest... |

### `StreamBlockData`

Stream Block Data.

| Property | Type | Description |
|----------|------|-------------|
| `deserialized` | `boolean` |  |
| `diskSize` | `string` |  |
| `executorId` | `string` |  |
| `hostPort` | `string` |  |
| `memSize` | `string` |  |
| `name` | `string` |  |
| `storageLevel` | `string` |  |
| `useDisk` | `boolean` |  |
| `useMemory` | `boolean` |  |

### `StreamingQueryData`

Streaming

| Property | Type | Description |
|----------|------|-------------|
| `endTimestamp` | `string` |  |
| `exception` | `string` |  |
| `isActive` | `boolean` |  |
| `name` | `string` |  |
| `runId` | `string` |  |
| `startTimestamp` | `string` |  |
| `streamingQueryId` | `string` |  |

### `StreamingQueryProgress`

| Property | Type | Description |
|----------|------|-------------|
| `batchDuration` | `string` |  |
| `batchId` | `string` |  |
| `durationMillis` | `object` |  |
| `eventTime` | `object` |  |
| `name` | `string` |  |
| `observedMetrics` | `object` |  |
| `runId` | `string` |  |
| `sink` | `SinkProgress` |  |
| `sources` | `array<SourceProgress>` |  |
| `stateOperators` | `array<StateOperatorProgress>` |  |
| `streamingQueryProgressId` | `string` |  |
| `timestamp` | `string` |  |

### `SubmitJobRequest`

A request to submit a job.

| Property | Type | Description |
|----------|------|-------------|
| `job` | `Job` | Required. The job resource. |
| `requestId` | `string` | Optional. A unique id used to identify the request. If the server receives two SubmitJobRequest (... |

### `SummarizeSessionSparkApplicationExecutorsResponse`

Consolidated summary of executors for a Spark Application.

| Property | Type | Description |
|----------|------|-------------|
| `activeExecutorSummary` | `ConsolidatedExecutorSummary` | Consolidated summary for active executors. |
| `applicationId` | `string` | Spark Application Id |
| `deadExecutorSummary` | `ConsolidatedExecutorSummary` | Consolidated summary for dead executors. |
| `totalExecutorSummary` | `ConsolidatedExecutorSummary` | Overall consolidated summary for all executors. |

### `SummarizeSessionSparkApplicationJobsResponse`

Summary of a Spark Application jobs.

| Property | Type | Description |
|----------|------|-------------|
| `jobsSummary` | `JobsSummary` | Summary of a Spark Application Jobs |

### `SummarizeSessionSparkApplicationStageAttemptTasksResponse`

Summary of tasks for a Spark Application stage attempt.

| Property | Type | Description |
|----------|------|-------------|
| `stageAttemptTasksSummary` | `StageAttemptTasksSummary` | Summary of tasks for a Spark Application Stage Attempt |

### `SummarizeSessionSparkApplicationStagesResponse`

Summary of a Spark Application stages.

| Property | Type | Description |
|----------|------|-------------|
| `stagesSummary` | `StagesSummary` | Summary of a Spark Application Stages |

### `SummarizeSparkApplicationExecutorsResponse`

Consolidated summary of executors for a Spark Application.

| Property | Type | Description |
|----------|------|-------------|
| `activeExecutorSummary` | `ConsolidatedExecutorSummary` | Consolidated summary for active executors. |
| `applicationId` | `string` | Spark Application Id |
| `deadExecutorSummary` | `ConsolidatedExecutorSummary` | Consolidated summary for dead executors. |
| `totalExecutorSummary` | `ConsolidatedExecutorSummary` | Overall consolidated summary for all executors. |

### `SummarizeSparkApplicationJobsResponse`

Summary of a Spark Application jobs.

| Property | Type | Description |
|----------|------|-------------|
| `jobsSummary` | `JobsSummary` | Summary of a Spark Application Jobs |

### `SummarizeSparkApplicationStageAttemptTasksResponse`

Summary of tasks for a Spark Application stage attempt.

| Property | Type | Description |
|----------|------|-------------|
| `stageAttemptTasksSummary` | `StageAttemptTasksSummary` | Summary of tasks for a Spark Application Stage Attempt |

### `SummarizeSparkApplicationStagesResponse`

Summary of a Spark Application stages.

| Property | Type | Description |
|----------|------|-------------|
| `stagesSummary` | `StagesSummary` | Summary of a Spark Application Stages |

### `TaskData`

Data corresponding to tasks created by spark.

| Property | Type | Description |
|----------|------|-------------|
| `accumulatorUpdates` | `array<AccumulableInfo>` |  |
| `attempt` | `integer` |  |
| `durationMillis` | `string` |  |
| `errorMessage` | `string` |  |
| `executorId` | `string` |  |
| `executorLogs` | `object` |  |
| `gettingResultTimeMillis` | `string` |  |
| `hasMetrics` | `boolean` |  |
| `host` | `string` |  |
| `index` | `integer` |  |
| `launchTime` | `string` |  |
| `partitionId` | `integer` |  |
| `resultFetchStart` | `string` |  |
| `schedulerDelayMillis` | `string` |  |
| `speculative` | `boolean` |  |
| `stageAttemptId` | `integer` |  |
| `stageId` | `string` |  |
| `status` | `string` |  |
| `taskId` | `string` |  |
| `taskLocality` | `string` |  |
| `taskMetrics` | `TaskMetrics` |  |

### `TaskMetrics`

Executor Task Metrics

| Property | Type | Description |
|----------|------|-------------|
| `diskBytesSpilled` | `string` |  |
| `executorCpuTimeNanos` | `string` |  |
| `executorDeserializeCpuTimeNanos` | `string` |  |
| `executorDeserializeTimeMillis` | `string` |  |
| `executorRunTimeMillis` | `string` |  |
| `inputMetrics` | `InputMetrics` |  |
| `jvmGcTimeMillis` | `string` |  |
| `memoryBytesSpilled` | `string` |  |
| `outputMetrics` | `OutputMetrics` |  |
| `peakExecutionMemoryBytes` | `string` |  |
| `resultSerializationTimeMillis` | `string` |  |
| `resultSize` | `string` |  |
| `shuffleReadMetrics` | `ShuffleReadMetrics` |  |
| `shuffleWriteMetrics` | `ShuffleWriteMetrics` |  |

### `TaskQuantileMetrics`

| Property | Type | Description |
|----------|------|-------------|
| `diskBytesSpilled` | `Quantiles` |  |
| `durationMillis` | `Quantiles` |  |
| `executorCpuTimeNanos` | `Quantiles` |  |
| `executorDeserializeCpuTimeNanos` | `Quantiles` |  |
| `executorDeserializeTimeMillis` | `Quantiles` |  |
| `executorRunTimeMillis` | `Quantiles` |  |
| `gettingResultTimeMillis` | `Quantiles` |  |
| `inputMetrics` | `InputQuantileMetrics` |  |
| `jvmGcTimeMillis` | `Quantiles` |  |
| `memoryBytesSpilled` | `Quantiles` |  |
| `outputMetrics` | `OutputQuantileMetrics` |  |
| `peakExecutionMemoryBytes` | `Quantiles` |  |
| `resultSerializationTimeMillis` | `Quantiles` |  |
| `resultSize` | `Quantiles` |  |
| `schedulerDelayMillis` | `Quantiles` |  |
| `shuffleReadMetrics` | `ShuffleReadQuantileMetrics` |  |
| `shuffleWriteMetrics` | `ShuffleWriteQuantileMetrics` |  |

### `TaskResourceRequest`

Resources used per task created by the application.

| Property | Type | Description |
|----------|------|-------------|
| `amount` | `number` |  |
| `resourceName` | `string` |  |

### `TemplateParameter`

A configurable parameter that replaces one or more fields in the template. Parameterizable fields: - Labels - File uris - Job properties - Job arguments - Script variables - Main class (in HadoopJob and SparkJob) - Zone (in ClusterSelector)

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Brief description of the parameter. Must not exceed 1024 characters. |
| `fields` | `array<string>` | Required. Paths to all fields that the parameter replaces. A field is allowed to appear in at mos... |
| `name` | `string` | Required. Parameter name. The parameter name is used as the key, and paired with the parameter va... |
| `validation` | `ParameterValidation` | Optional. Validation rules to be applied to this parameter's value. |

### `TerminateSessionRequest`

A request to terminate an interactive session.

| Property | Type | Description |
|----------|------|-------------|
| `requestId` | `string` | Optional. A unique ID used to identify the request. If the service receives two TerminateSessionR... |

### `TestIamPermissionsRequest`

Request message for TestIamPermissions method.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | The set of permissions to check for the resource. Permissions with wildcards (such as * or storag... |

### `TestIamPermissionsResponse`

Response message for TestIamPermissions method.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | A subset of TestPermissionsRequest.permissions that the caller is allowed. |

### `TrinoJob`

A Dataproc job for running Trino (https://trino.io/) queries. IMPORTANT: The Dataproc Trino Optional Component (https://cloud.google.com/dataproc/docs/concepts/components/trino) must be enabled when the cluster is created to submit a Trino job to the cluster.

| Property | Type | Description |
|----------|------|-------------|
| `clientTags` | `array<string>` | Optional. Trino client tags to attach to this query |
| `continueOnFailure` | `boolean` | Optional. Whether to continue executing queries if a query fails. The default value is false. Set... |
| `loggingConfig` | `LoggingConfig` | Optional. The runtime log config for job execution. |
| `outputFormat` | `string` | Optional. The format in which query output will be displayed. See the Trino documentation for sup... |
| `properties` | `object` | Optional. A mapping of property names to values. Used to set Trino session properties (https://tr... |
| `queryFileUri` | `string` | The HCFS URI of the script that contains SQL queries. |
| `queryList` | `QueryList` | A list of queries. |

### `UsageMetrics`

Usage metrics represent approximate total resources consumed by a workload.

| Property | Type | Description |
|----------|------|-------------|
| `acceleratorType` | `string` | Optional. DEPRECATED Accelerator type being used, if any |
| `milliAcceleratorSeconds` | `string` | Optional. DEPRECATED Accelerator usage in (milliAccelerator x seconds) (see Dataproc Serverless p... |
| `milliDcuSeconds` | `string` | Optional. DCU (Dataproc Compute Units) usage in (milliDCU x seconds) (see Dataproc Serverless pri... |
| `shuffleStorageGbSeconds` | `string` | Optional. Shuffle storage usage in (GB x seconds) (see Dataproc Serverless pricing (https://cloud... |
| `updateTime` | `string` | Optional. The timestamp of the usage metrics. |

### `UsageSnapshot`

The usage snapshot represents the resources consumed by a workload at a specified time.

| Property | Type | Description |
|----------|------|-------------|
| `acceleratorType` | `string` | Optional. Accelerator type being used, if any |
| `milliAccelerator` | `string` | Optional. Milli (one-thousandth) accelerator. (see Dataproc Serverless pricing (https://cloud.goo... |
| `milliDcu` | `string` | Optional. Milli (one-thousandth) Dataproc Compute Units (DCUs) (see Dataproc Serverless pricing (... |
| `milliDcuPremium` | `string` | Optional. Milli (one-thousandth) Dataproc Compute Units (DCUs) charged at premium tier (see Datap... |
| `shuffleStorageGb` | `string` | Optional. Shuffle Storage in gigabytes (GB). (see Dataproc Serverless pricing (https://cloud.goog... |
| `shuffleStorageGbPremium` | `string` | Optional. Shuffle Storage in gigabytes (GB) charged at premium tier. (see Dataproc Serverless pri... |
| `snapshotTime` | `string` | Optional. The timestamp of the usage snapshot. |

### `ValueInfo`

Annotatated property value.

| Property | Type | Description |
|----------|------|-------------|
| `annotation` | `string` | Annotation, comment or explanation why the property was set. |
| `overriddenValue` | `string` | Optional. Value which was replaced by the corresponding component. |
| `value` | `string` | Property value. |

### `ValueValidation`

Validation based on a list of allowed values.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<string>` | Required. List of allowed values for the parameter. |

### `VirtualClusterConfig`

The Dataproc cluster config for a cluster that does not directly control the underlying compute resources, such as a Dataproc-on-GKE cluster (https://cloud.google.com/dataproc/docs/guides/dpgke/dataproc-gke-overview).

| Property | Type | Description |
|----------|------|-------------|
| `auxiliaryServicesConfig` | `AuxiliaryServicesConfig` | Optional. Configuration of auxiliary services used by this cluster. |
| `kubernetesClusterConfig` | `KubernetesClusterConfig` | Required. The configuration for running the Dataproc cluster on Kubernetes. |
| `stagingBucket` | `string` | Optional. A Cloud Storage bucket used to stage job dependencies, config files, and job driver con... |

### `WorkflowGraph`

The workflow graph.

| Property | Type | Description |
|----------|------|-------------|
| `nodes` | `array<WorkflowNode>` | Output only. The workflow nodes. |

### `WorkflowMetadata`

A Dataproc workflow template resource.

| Property | Type | Description |
|----------|------|-------------|
| `clusterName` | `string` | Output only. The name of the target cluster. |
| `clusterUuid` | `string` | Output only. The UUID of target cluster. |
| `createCluster` | `ClusterOperation` | Output only. The create cluster operation metadata. |
| `dagEndTime` | `string` | Output only. DAG end time, only set for workflows with dag_timeout when DAG ends. |
| `dagStartTime` | `string` | Output only. DAG start time, only set for workflows with dag_timeout when DAG begins. |
| `dagTimeout` | `string` | Output only. The timeout duration for the DAG of jobs, expressed in seconds (see JSON representat... |
| `deleteCluster` | `ClusterOperation` | Output only. The delete cluster operation metadata. |
| `endTime` | `string` | Output only. Workflow end time. |
| `graph` | `WorkflowGraph` | Output only. The workflow graph. |
| `parameters` | `object` | Map from parameter names to values that were used for those parameters. |
| `startTime` | `string` | Output only. Workflow start time. |
| `state` | `string` | Output only. The workflow state. |
| `template` | `string` | Output only. The resource name of the workflow template as described in https://cloud.google.com/... |
| `version` | `integer` | Output only. The version of template at the time of workflow instantiation. |

### `WorkflowNode`

The workflow node.

| Property | Type | Description |
|----------|------|-------------|
| `error` | `string` | Output only. The error detail. |
| `jobId` | `string` | Output only. The job id; populated after the node enters RUNNING state. |
| `prerequisiteStepIds` | `array<string>` | Output only. Node's prerequisite nodes. |
| `state` | `string` | Output only. The node state. |
| `stepId` | `string` | Output only. The name of the node. |

### `WorkflowTemplate`

A Dataproc workflow template resource.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time template was created. |
| `dagTimeout` | `string` | Optional. Timeout duration for the DAG of jobs, expressed in seconds (see JSON representation of ... |
| `encryptionConfig` | `GoogleCloudDataprocV1WorkflowTemplateEncryptionConfig` | Optional. Encryption settings for encrypting workflow template job arguments. |
| `id` | `string` |  |
| `jobs` | `array<OrderedJob>` | Required. The Directed Acyclic Graph of Jobs to submit. |
| `labels` | `object` | Optional. The labels to associate with this template. These labels will be propagated to all jobs... |
| `name` | `string` | Output only. The resource name of the workflow template, as described in https://cloud.google.com... |
| `parameters` | `array<TemplateParameter>` | Optional. Template parameters whose values are substituted into the template. Values for paramete... |
| `placement` | `WorkflowTemplatePlacement` | Required. WorkflowTemplate scheduling information. |
| `updateTime` | `string` | Output only. The time template was last updated. |
| `version` | `integer` | Optional. Used to perform a consistent read-modify-write.This field should be left blank for a Cr... |

### `WorkflowTemplatePlacement`

Specifies workflow execution target.Either managed_cluster or cluster_selector is required.

| Property | Type | Description |
|----------|------|-------------|
| `clusterSelector` | `ClusterSelector` | Optional. A selector that chooses target cluster for jobs based on metadata.The selector is evalu... |
| `managedCluster` | `ManagedCluster` | A cluster that is managed by the workflow. |

### `WriteSessionSparkApplicationContextRequest`

Write Spark Application data to internal storage systems

| Property | Type | Description |
|----------|------|-------------|
| `parent` | `string` | Required. Parent (Batch) resource reference. |
| `sparkWrapperObjects` | `array<SparkWrapperObject>` | Required. The batch of spark application context objects sent for ingestion. |

### `WriteSessionSparkApplicationContextResponse`

Response returned as an acknowledgement of receipt of data.

### `WriteSparkApplicationContextRequest`

Write Spark Application data to internal storage systems

| Property | Type | Description |
|----------|------|-------------|
| `parent` | `string` | Required. Parent (Batch) resource reference. |
| `sparkWrapperObjects` | `array<SparkWrapperObject>` |  |

### `WriteSparkApplicationContextResponse`

Response returned as an acknowledgement of receipt of data.

### `YarnApplication`

A YARN application created by a job. Application information is a subset of org.apache.hadoop.yarn.proto.YarnProtos.ApplicationReportProto.Beta Feature: This report is available for testing purposes only. It may be changed before final release.

| Property | Type | Description |
|----------|------|-------------|
| `memoryMbSeconds` | `string` | Optional. The cumulative memory usage of the application for a job, measured in mb-seconds. |
| `name` | `string` | Required. The application name. |
| `progress` | `number` | Required. The numerical progress of the application, from 1 to 100. |
| `state` | `string` | Required. The application state. |
| `trackingUrl` | `string` | Optional. The HTTP URL of the ApplicationMaster, HistoryServer, or TimelineServer that provides a... |
| `vcoreSeconds` | `string` | Optional. The cumulative CPU time consumed by the application for a job, measured in vcore-seconds. |

