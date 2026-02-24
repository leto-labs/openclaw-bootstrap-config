# Batch API - API Reference

**Version**: `v1` | **Methods**: 14 | **Schemas**: 63

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `batch.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. |
| `batch.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `batch.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `batch.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `batch.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `batch.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `batch.projects.locations.state.report` | POST | `v1/{+parent}/state:report` | Report agent's state, e.g. agent status and tasks information |
| `batch.projects.locations.jobs.delete` | DELETE | `v1/{+name}` | Delete a Job. |
| `batch.projects.locations.jobs.cancel` | POST | `v1/{+name}:cancel` | Cancel a Job. |
| `batch.projects.locations.jobs.get` | GET | `v1/{+name}` | Get a Job specified by its resource name. |
| `batch.projects.locations.jobs.list` | GET | `v1/{+parent}/jobs` | List all Jobs for a project within a region. |
| `batch.projects.locations.jobs.create` | POST | `v1/{+parent}/jobs` | Create a Job. |
| `batch.projects.locations.jobs.taskGroups.tasks.list` | GET | `v1/{+parent}/tasks` | List Tasks associated with a job. |
| `batch.projects.locations.jobs.taskGroups.tasks.get` | GET | `v1/{+name}` | Return a single Task. |

### `batch.projects.locations.list`

**GET** `v1/{+name}/locations`

Lists information about the supported locations for this service.

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
const res = await batch.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `batch.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await batch.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `batch.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await batch.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `batch.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await batch.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `batch.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await batch.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `batch.projects.locations.operations.list`

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
const res = await batch.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `batch.projects.locations.state.report`

**POST** `v1/{+parent}/state:report`

Report agent's state, e.g. agent status and tasks information

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Format: projects/{project}/locations/{location} {project} should be a project number. |

**Request body**: `ReportAgentStateRequest`

**Response**: `ReportAgentStateResponse`

```typescript
const res = await batch.state.report({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `batch.projects.locations.jobs.delete`

**DELETE** `v1/{+name}`

Delete a Job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Job name. |
| `reason` | `string` | query | No | Optional. Reason for this deletion. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `Operation`

```typescript
const res = await batch.jobs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `batch.projects.locations.jobs.cancel`

**POST** `v1/{+name}:cancel`

Cancel a Job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Job name. |

**Request body**: `CancelJobRequest`

**Response**: `Operation`

```typescript
const res = await batch.jobs.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `batch.projects.locations.jobs.get`

**GET** `v1/{+name}`

Get a Job specified by its resource name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Job name. |

**Response**: `Job`

```typescript
const res = await batch.jobs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `batch.projects.locations.jobs.list`

**GET** `v1/{+parent}/jobs`

List all Jobs for a project within a region.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Parent path. |
| `filter` | `string` | query | No | List filter. |
| `orderBy` | `string` | query | No | Optional. Sort results. Supported are "name", "name desc", "create_time", and "create_time desc". |
| `pageSize` | `integer` | query | No | Page size. |
| `pageToken` | `string` | query | No | Page token. |

**Response**: `ListJobsResponse`

```typescript
const res = await batch.jobs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `batch.projects.locations.jobs.create`

**POST** `v1/{+parent}/jobs`

Create a Job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name where the Job will be created. Pattern: "projects/{project}/locations/{location}" |
| `jobId` | `string` | query | No | ID used to uniquely identify the Job within its parent scope. This field should contain at most 63 characters and mus... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Request body**: `Job`

**Response**: `Job`

```typescript
const res = await batch.jobs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `batch.projects.locations.jobs.taskGroups.tasks.list`

**GET** `v1/{+parent}/tasks`

List Tasks associated with a job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of a TaskGroup from which Tasks are being requested. Pattern: "projects/{project}/locations/{location}... |
| `filter` | `string` | query | No | Task filter, null filter matches all Tasks. Filter string should be of the format State=TaskStatus.State e.g. State=R... |
| `pageSize` | `integer` | query | No | Page size. |
| `pageToken` | `string` | query | No | Page token. |

**Response**: `ListTasksResponse`

```typescript
const res = await batch.tasks.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `batch.projects.locations.jobs.taskGroups.tasks.get`

**GET** `v1/{+name}`

Return a single Task.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Task name. |

**Response**: `Task`

```typescript
const res = await batch.tasks.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `Accelerator`

Accelerator describes Compute Engine accelerators to be attached to the VM.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `string` | The number of accelerators of this type. |
| `driverVersion` | `string` | Optional. The NVIDIA GPU driver version that should be installed for this type. You can define th... |
| `installGpuDrivers` | `boolean` | Deprecated: please use instances[0].install_gpu_drivers instead. |
| `type` | `string` | The accelerator type. For example, "nvidia-tesla-t4". See `gcloud compute accelerator-types list`. |

### `ActionCondition`

Conditions for actions to deal with task failures.

| Property | Type | Description |
|----------|------|-------------|
| `exitCodes` | `array<integer>` | Exit codes of a task execution. If there are more than 1 exit codes, when task executes with any ... |

### `AgentContainer`

Container runnable representation on the agent side.

| Property | Type | Description |
|----------|------|-------------|
| `commands` | `array<string>` | Overrides the `CMD` specified in the container. If there is an ENTRYPOINT (either in the containe... |
| `entrypoint` | `string` | Overrides the `ENTRYPOINT` specified in the container. |
| `imageUri` | `string` | The URI to pull the container image from. |
| `options` | `string` | Arbitrary additional options to include in the "docker run" command when running this container, ... |
| `volumes` | `array<string>` | Volumes to mount (bind mount) from the host machine files or directories into the container, form... |

### `AgentEnvironment`

AgentEnvironment is the Environment representation between Agent and CLH communication. The environment is used in both task level and agent level.

| Property | Type | Description |
|----------|------|-------------|
| `encryptedVariables` | `AgentKMSEnvMap` | An encrypted JSON dictionary where the key/value pairs correspond to environment variable names a... |
| `secretVariables` | `object` | A map of environment variable names to Secret Manager secret names. The VM will access the named ... |
| `variables` | `object` | A map of environment variable names to values. |

### `AgentInfo`

VM Agent Info.

| Property | Type | Description |
|----------|------|-------------|
| `jobId` | `string` | Optional. The assigned Job ID |
| `reportTime` | `string` | When the AgentInfo is generated. |
| `state` | `string` | Agent state. |
| `taskGroupId` | `string` | The assigned task group ID. |
| `tasks` | `array<AgentTaskInfo>` | Task Info. |

### `AgentKMSEnvMap`

AgentKMSEnvMap contains the encrypted key/value pair to be used in the environment on the Agent side.

| Property | Type | Description |
|----------|------|-------------|
| `cipherText` | `string` | The value of the cipherText response from the `encrypt` method. |
| `keyName` | `string` | The name of the KMS key that will be used to decrypt the cipher text. |

### `AgentMetadata`

VM Agent Metadata.

| Property | Type | Description |
|----------|------|-------------|
| `creationTime` | `string` | When the VM agent started. Use agent_startup_time instead. |
| `creator` | `string` | Full name of the entity that created this vm. For MIG, this path is: projects/{project}/regions/{... |
| `imageVersion` | `string` | image version for the VM that this agent is installed on. |
| `instance` | `string` | GCP instance name (go/instance-name). |
| `instanceId` | `string` | GCP instance ID (go/instance-id). |
| `instancePreemptionNoticeReceived` | `boolean` | If the GCP instance has received preemption notice. |
| `machineType` | `string` | Optional. machine type of the VM |
| `osRelease` | `object` | parsed contents of /etc/os-release |
| `version` | `string` | agent binary version running on VM |
| `zone` | `string` | Agent zone. |

### `AgentScript`

Script runnable representation on the agent side.

| Property | Type | Description |
|----------|------|-------------|
| `path` | `string` | Script file path on the host VM. To specify an interpreter, please add a `#!`(also known as [sheb... |
| `text` | `string` | Shell script text. To specify an interpreter, please add a `#!\n` at the beginning of the text.(F... |

### `AgentTask`

TODO(b/182501497) The message needs to be redefined when the Agent API server updates data in storage per the backend design.

| Property | Type | Description |
|----------|------|-------------|
| `agentTaskSpec` | `AgentTaskSpec` | AgentTaskSpec is the taskSpec representation between Agent and CLH communication. This field will... |
| `intendedState` | `string` | The intended state of the task. |
| `reachedBarrier` | `string` | The highest barrier reached by all tasks in the task's TaskGroup. |
| `spec` | `TaskSpec` | Task Spec. This field will be replaced by agent_task_spec below in future. |
| `status` | `TaskStatus` | Task status. |
| `task` | `string` | Task name. |
| `taskSource` | `string` | TaskSource represents the source of the task. |

### `AgentTaskInfo`

Task Info

| Property | Type | Description |
|----------|------|-------------|
| `runnable` | `string` | The highest index of a runnable started by the agent for this task. The runnables are indexed fro... |
| `taskId` | `string` | ID of the Task |
| `taskStatus` | `TaskStatus` | The status of the Task. If we need agent specific fields we should fork the public TaskStatus int... |

### `AgentTaskLoggingOption`

AgentTaskLoggingOption contains the options for the logging of the task.

| Property | Type | Description |
|----------|------|-------------|
| `labels` | `object` | Labels to be added to the log entry. Now only cloud logging is supported. |

### `AgentTaskRunnable`

AgentTaskRunnable is the Runnable representation between Agent and CLH communication.

| Property | Type | Description |
|----------|------|-------------|
| `alwaysRun` | `boolean` | By default, after a Runnable fails, no further Runnable are executed. This flag indicates that th... |
| `background` | `boolean` | This flag allows a Runnable to continue running in the background while the Task executes subsequ... |
| `container` | `AgentContainer` | Container runnable. |
| `environment` | `AgentEnvironment` | Environment variables for this Runnable (overrides variables set for the whole Task or TaskGroup). |
| `ignoreExitStatus` | `boolean` | Normally, a non-zero exit status causes the Task to fail. This flag allows execution of other Run... |
| `script` | `AgentScript` | Script runnable. |
| `timeout` | `string` | Timeout for this Runnable. |

### `AgentTaskSpec`

AgentTaskSpec is the user's TaskSpec representation between Agent and CLH communication.

| Property | Type | Description |
|----------|------|-------------|
| `environment` | `AgentEnvironment` | Environment variables to set before running the Task. |
| `loggingOption` | `AgentTaskLoggingOption` | Logging option for the task. |
| `maxRunDuration` | `string` | Maximum duration the task should run before being automatically retried (if enabled) or automatic... |
| `runnables` | `array<AgentTaskRunnable>` | AgentTaskRunnable is runanbles that will be executed on the agent. |
| `userAccount` | `AgentTaskUserAccount` | User account on the VM to run the runnables in the agentTaskSpec. If not set, the runnable will b... |

### `AgentTaskUserAccount`

AgentTaskUserAccount contains the information of a POSIX account on the guest os which is used to execute the runnables.

| Property | Type | Description |
|----------|------|-------------|
| `gid` | `string` | gid id an unique identifier of the POSIX account group corresponding to the user account. |
| `uid` | `string` | uid is an unique identifier of the POSIX account corresponding to the user account. |

### `AgentTimingInfo`

VM timing information

| Property | Type | Description |
|----------|------|-------------|
| `agentStartupTime` | `string` | Agent startup time |
| `bootTime` | `string` | Boot timestamp of the VM OS |
| `scriptStartupTime` | `string` | Startup time of the Batch VM script. |

### `AllocationPolicy`

A Job's resource allocation policy describes when, where, and how compute resources should be allocated for the Job.

| Property | Type | Description |
|----------|------|-------------|
| `instances` | `array<InstancePolicyOrTemplate>` | Describe instances that can be created by this AllocationPolicy. Only instances[0] is supported now. |
| `labels` | `object` | Custom labels to apply to the job and all the Compute Engine resources that both are created by t... |
| `location` | `LocationPolicy` | Location where compute resources should be allocated for the Job. |
| `network` | `NetworkPolicy` | The network policy. If you define an instance template in the `InstancePolicyOrTemplate` field, B... |
| `placement` | `PlacementPolicy` | The placement policy. |
| `serviceAccount` | `ServiceAccount` | Defines the service account for Batch-created VMs. If omitted, the [default Compute Engine servic... |
| `tags` | `array<string>` | Optional. Tags applied to the VM instances. The tags identify valid sources or targets for networ... |

### `AttachedDisk`

A new or an existing persistent disk (PD) or a local ssd attached to a VM instance.

| Property | Type | Description |
|----------|------|-------------|
| `deviceName` | `string` | Device name that the guest operating system will see. It is used by Runnable.volumes field to mou... |
| `existingDisk` | `string` | Name of an existing PD. |
| `newDisk` | `Disk` |  |

### `Barrier`

A barrier runnable automatically blocks the execution of subsequent runnables until all the tasks in the task group reach the barrier.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Barriers are identified by their index in runnable list. Names are not required, but if present s... |

### `CancelJobRequest`

CancelJob Request.

| Property | Type | Description |
|----------|------|-------------|
| `requestId` | `string` | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you... |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `CloudLoggingOption`

`CloudLoggingOption` contains additional settings for Cloud Logging logs generated by Batch job.

| Property | Type | Description |
|----------|------|-------------|
| `useGenericTaskMonitoredResource` | `boolean` | Optional. Set this field to `true` to change the [monitored resource type](https://cloud.google.c... |

### `ComputeResource`

Compute resource requirements. ComputeResource defines the amount of resources required for each task. Make sure your tasks have enough resources to successfully run. If you also define the types of resources for a job to use with the [InstancePolicyOrTemplate](https://cloud.google.com/batch/docs/reference/rest/v1/projects.locations.jobs#instancepolicyortemplate) field, make sure both fields are compatible with each other.

| Property | Type | Description |
|----------|------|-------------|
| `bootDiskMib` | `string` | Extra boot disk size in MiB for each task. |
| `cpuMilli` | `string` | The milliCPU count. `cpuMilli` defines the amount of CPU resources per task in milliCPU units. Fo... |
| `memoryMib` | `string` | Memory in MiB. `memoryMib` defines the amount of memory per task in MiB units. If undefined, the ... |

### `Container`

Container runnable.

| Property | Type | Description |
|----------|------|-------------|
| `blockExternalNetwork` | `boolean` | If set to true, external network access to and from container will be blocked, containers that ar... |
| `commands` | `array<string>` | Required for some container images. Overrides the `CMD` specified in the container. If there is a... |
| `enableImageStreaming` | `boolean` | Optional. If set to true, this container runnable uses Image streaming. Use Image streaming to al... |
| `entrypoint` | `string` | Required for some container images. Overrides the `ENTRYPOINT` specified in the container. |
| `imageUri` | `string` | Required. The URI to pull the container image from. |
| `options` | `string` | Required for some container images. Arbitrary additional options to include in the `docker run` c... |
| `password` | `string` | Required if the container image is from a private Docker registry. The password to login to the D... |
| `username` | `string` | Required if the container image is from a private Docker registry. The username to login to the D... |
| `volumes` | `array<string>` | Volumes to mount (bind mount) from the host machine files or directories into the container, form... |

### `Disk`

A new persistent disk or a local ssd. A VM can only have one local SSD setting but multiple local SSD partitions. See https://cloud.google.com/compute/docs/disks#pdspecs and https://cloud.google.com/compute/docs/disks#localssds.

| Property | Type | Description |
|----------|------|-------------|
| `diskInterface` | `string` | Local SSDs are available through both "SCSI" and "NVMe" interfaces. If not indicated, "NVMe" will... |
| `image` | `string` | URL for a VM image to use as the data source for this disk. For example, the following are all va... |
| `sizeGb` | `string` | Disk size in GB. **Non-Boot Disk**: If the `type` specifies a persistent disk, this field is igno... |
| `snapshot` | `string` | Name of a snapshot used as the data source. Snapshot is not supported as boot disk now. |
| `type` | `string` | Disk type as shown in `gcloud compute disk-types list`. For example, local SSD uses type "local-s... |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `Environment`

An Environment describes a collection of environment variables to set when executing Tasks.

| Property | Type | Description |
|----------|------|-------------|
| `encryptedVariables` | `KMSEnvMap` | An encrypted JSON dictionary where the key/value pairs correspond to environment variable names a... |
| `secretVariables` | `object` | A map of environment variable names to Secret Manager secret names. The VM will access the named ... |
| `variables` | `object` | A map of environment variable names to values. |

### `GCS`

Represents a Google Cloud Storage volume.

| Property | Type | Description |
|----------|------|-------------|
| `remotePath` | `string` | Remote path, either a bucket name or a subdirectory of a bucket, e.g.: bucket_name, bucket_name/s... |

### `InstancePolicy`

InstancePolicy describes an instance type and resources attached to each VM created by this InstancePolicy.

| Property | Type | Description |
|----------|------|-------------|
| `accelerators` | `array<Accelerator>` | The accelerators attached to each VM instance. |
| `bootDisk` | `Disk` | Boot disk to be created and attached to each VM by this InstancePolicy. Boot disk will be deleted... |
| `disks` | `array<AttachedDisk>` | Non-boot disks to be attached for each VM created by this InstancePolicy. New disks will be delet... |
| `machineType` | `string` | The Compute Engine machine type. |
| `minCpuPlatform` | `string` | The minimum CPU platform. See https://cloud.google.com/compute/docs/instances/specify-min-cpu-pla... |
| `provisioningModel` | `string` | The provisioning model. |
| `reservation` | `string` | Optional. If not specified (default), VMs will consume any applicable reservation. If "NO_RESERVA... |

### `InstancePolicyOrTemplate`

InstancePolicyOrTemplate lets you define the type of resources to use for this job either with an InstancePolicy or an instance template. If undefined, Batch picks the type of VM to use and doesn't include optional VM resources such as GPUs and extra disks.

| Property | Type | Description |
|----------|------|-------------|
| `blockProjectSshKeys` | `boolean` | Optional. Set this field to `true` if you want Batch to block project-level SSH keys from accessi... |
| `installGpuDrivers` | `boolean` | Set this field true if you want Batch to help fetch drivers from a third party location and insta... |
| `installOpsAgent` | `boolean` | Optional. Set this field true if you want Batch to install Ops Agent on your behalf. Default is f... |
| `instanceTemplate` | `string` | Name of an instance template used to create VMs. Named the field as 'instance_template' instead o... |
| `policy` | `InstancePolicy` | InstancePolicy. |

### `InstanceStatus`

VM instance status.

| Property | Type | Description |
|----------|------|-------------|
| `bootDisk` | `Disk` | The VM boot disk. |
| `machineType` | `string` | The Compute Engine machine type. |
| `provisioningModel` | `string` | The VM instance provisioning model. |
| `taskPack` | `string` | The max number of tasks can be assigned to this instance type. |

### `Job`

The Cloud Batch Job description.

| Property | Type | Description |
|----------|------|-------------|
| `allocationPolicy` | `AllocationPolicy` | Compute resource allocation for all TaskGroups in the Job. |
| `createTime` | `string` | Output only. When the Job was created. |
| `labels` | `object` | Custom labels to apply to the job and any Cloud Logging [LogEntry](https://cloud.google.com/loggi... |
| `logsPolicy` | `LogsPolicy` | Log preservation policy for the Job. |
| `name` | `string` | Output only. Job name. For example: "projects/123456/locations/us-central1/jobs/job01". |
| `notifications` | `array<JobNotification>` | Notification configurations. |
| `priority` | `string` | Priority of the Job. The valid value range is [0, 100). Default value is 0. Higher value indicate... |
| `status` | `JobStatus` | Output only. Job status. It is read only for users. |
| `taskGroups` | `array<TaskGroup>` | Required. TaskGroups in the Job. Only one TaskGroup is supported now. |
| `uid` | `string` | Output only. A system generated unique ID for the Job. |
| `updateTime` | `string` | Output only. The last time the Job was updated. |

### `JobNotification`

Notification configurations.

| Property | Type | Description |
|----------|------|-------------|
| `message` | `Message` | The attribute requirements of messages to be sent to this Pub/Sub topic. Without this field, no m... |
| `pubsubTopic` | `string` | The Pub/Sub topic where notifications for the job, like state changes, will be published. If unde... |

### `JobStatus`

Job status.

| Property | Type | Description |
|----------|------|-------------|
| `runDuration` | `string` | The duration of time that the Job spent in status RUNNING. |
| `state` | `string` | Job state |
| `statusEvents` | `array<StatusEvent>` | Job status events |
| `taskGroups` | `object` | Aggregated task status for each TaskGroup in the Job. The map key is TaskGroup ID. |

### `KMSEnvMap`

| Property | Type | Description |
|----------|------|-------------|
| `cipherText` | `string` | The value of the cipherText response from the `encrypt` method. |
| `keyName` | `string` | The name of the KMS key that will be used to decrypt the cipher text. |

### `LifecyclePolicy`

LifecyclePolicy describes how to deal with task failures based on different conditions.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` | Action to execute when ActionCondition is true. When RETRY_TASK is specified, we will retry faile... |
| `actionCondition` | `ActionCondition` | Conditions that decide why a task failure is dealt with a specific action. |

### `ListJobsResponse`

ListJob Response.

| Property | Type | Description |
|----------|------|-------------|
| `jobs` | `array<Job>` | Jobs. |
| `nextPageToken` | `string` | Next page token. |
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

### `ListTasksResponse`

ListTasks Response.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Next page token. |
| `tasks` | `array<Task>` | Tasks. |
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

### `LocationPolicy`

| Property | Type | Description |
|----------|------|-------------|
| `allowedLocations` | `array<string>` | A list of allowed location names represented by internal URLs. Each location can be a region or a... |

### `LogsPolicy`

LogsPolicy describes if and how a job's logs are preserved. Logs include information that is automatically written by the Batch service agent and any information that you configured the job's runnables to write to the `stdout` or `stderr` streams.

| Property | Type | Description |
|----------|------|-------------|
| `cloudLoggingOption` | `CloudLoggingOption` | Optional. When `destination` is set to `CLOUD_LOGGING`, you can optionally set this field to conf... |
| `destination` | `string` | If and where logs should be saved. |
| `logsPath` | `string` | When `destination` is set to `PATH`, you must set this field to the path where you want logs to b... |

### `Message`

Message details. Describe the conditions under which messages will be sent. If no attribute is defined, no message will be sent by default. One message should specify either the job or the task level attributes, but not both. For example, job level: JOB_STATE_CHANGED and/or a specified new_job_state; task level: TASK_STATE_CHANGED and/or a specified new_task_state.

| Property | Type | Description |
|----------|------|-------------|
| `newJobState` | `string` | The new job state. |
| `newTaskState` | `string` | The new task state. |
| `type` | `string` | The message type. |

### `NFS`

Represents an NFS volume.

| Property | Type | Description |
|----------|------|-------------|
| `remotePath` | `string` | Remote source path exported from the NFS, e.g., "/share". |
| `server` | `string` | The IP address of the NFS. |

### `NetworkInterface`

A network interface.

| Property | Type | Description |
|----------|------|-------------|
| `network` | `string` | The URL of an existing network resource. You can specify the network as a full or partial URL. Fo... |
| `noExternalIpAddress` | `boolean` | Default is false (with an external IP address). Required if no external public IP address is atta... |
| `subnetwork` | `string` | The URL of an existing subnetwork resource in the network. You can specify the subnetwork as a fu... |

### `NetworkPolicy`

NetworkPolicy describes VM instance network configurations.

| Property | Type | Description |
|----------|------|-------------|
| `networkInterfaces` | `array<NetworkInterface>` | Network configurations. |

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

Represents the metadata of the long-running operation.

| Property | Type | Description |
|----------|------|-------------|
| `apiVersion` | `string` | Output only. API version used to start the operation. |
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `requestedCancellation` | `boolean` | Output only. Identifies whether the user has requested cancellation of the operation. Operations ... |
| `statusMessage` | `string` | Output only. Human-readable status of the operation, if any. |
| `target` | `string` | Output only. Server-defined resource path for the target of the operation. |
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

### `PlacementPolicy`

PlacementPolicy describes a group placement policy for the VMs controlled by this AllocationPolicy.

| Property | Type | Description |
|----------|------|-------------|
| `collocation` | `string` | UNSPECIFIED vs. COLLOCATED (default UNSPECIFIED). Use COLLOCATED when you want VMs to be located ... |
| `maxDistance` | `string` | When specified, causes the job to fail if more than max_distance logical switches are required be... |

### `ReportAgentStateRequest`

Request to report agent's state. The Request itself implies the agent is healthy.

| Property | Type | Description |
|----------|------|-------------|
| `agentInfo` | `AgentInfo` | Agent info. |
| `agentTimingInfo` | `AgentTimingInfo` | Agent timing info. |
| `metadata` | `AgentMetadata` | Agent metadata. |

### `ReportAgentStateResponse`

Response to ReportAgentStateRequest.

| Property | Type | Description |
|----------|------|-------------|
| `defaultReportInterval` | `string` | Default report interval override |
| `minReportInterval` | `string` | Minimum report interval override |
| `tasks` | `array<AgentTask>` | Tasks assigned to the agent |
| `useBatchMonitoredResource` | `boolean` | If true, the cloud logging for batch agent will use batch.googleapis.com/Job as monitored resourc... |

### `Runnable`

Runnable describes instructions for executing a specific script or container as part of a Task.

| Property | Type | Description |
|----------|------|-------------|
| `alwaysRun` | `boolean` | By default, after a Runnable fails, no further Runnable are executed. This flag indicates that th... |
| `background` | `boolean` | Normally, a runnable that doesn't exit causes its task to fail. However, you can set this field t... |
| `barrier` | `Barrier` | Barrier runnable. |
| `container` | `Container` | Container runnable. |
| `displayName` | `string` | Optional. DisplayName is an optional field that can be provided by the caller. If provided, it wi... |
| `environment` | `Environment` | Environment variables for this Runnable (overrides variables set for the whole Task or TaskGroup). |
| `ignoreExitStatus` | `boolean` | Normally, a runnable that returns a non-zero exit status fails and causes the task to fail. Howev... |
| `labels` | `object` | Labels for this Runnable. |
| `script` | `Script` | Script runnable. |
| `timeout` | `string` | Timeout for this Runnable. |

### `Script`

Script runnable.

| Property | Type | Description |
|----------|------|-------------|
| `path` | `string` | The path to a script file that is accessible from the host VM(s). Unless the script file supports... |
| `text` | `string` | The text for a script. Unless the script text supports the default `#!/bin/sh` shell interpreter,... |

### `ServiceAccount`

Carries information about a Google Cloud service account.

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | Email address of the service account. |
| `scopes` | `array<string>` | List of scopes to be enabled for this service account. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `StatusEvent`

Status event.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Description of the event. |
| `eventTime` | `string` | The time this event occurred. |
| `taskExecution` | `TaskExecution` | Task Execution. This field is only defined for task-level status events where the task fails. |
| `taskState` | `string` | Task State. This field is only defined for task-level status events. |
| `type` | `string` | Type of the event. |

### `Task`

A Cloud Batch task.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Task name. The name is generated from the parent TaskGroup name and 'id' field. For example: "pro... |
| `status` | `TaskStatus` | Task Status. |

### `TaskExecution`

This Task Execution field includes detail information for task execution procedures, based on StatusEvent types.

| Property | Type | Description |
|----------|------|-------------|
| `exitCode` | `integer` | The exit code of a finished task. If the task succeeded, the exit code will be 0. If the task fai... |

### `TaskGroup`

A TaskGroup defines one or more Tasks that all share the same TaskSpec.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Output only. TaskGroup name. The system generates this field based on parent Job name. For exampl... |
| `parallelism` | `string` | Max number of tasks that can run in parallel. Default to min(task_count, parallel tasks per job l... |
| `permissiveSsh` | `boolean` | When true, Batch will configure SSH to allow passwordless login between VMs running the Batch tas... |
| `requireHostsFile` | `boolean` | When true, Batch will populate a file with a list of all VMs assigned to the TaskGroup and set th... |
| `runAsNonRoot` | `boolean` | Optional. If not set or set to false, Batch uses the root user to execute runnables. If set to tr... |
| `schedulingPolicy` | `string` | Scheduling policy for Tasks in the TaskGroup. The default value is AS_SOON_AS_POSSIBLE. |
| `taskCount` | `string` | Number of Tasks in the TaskGroup. Default is 1. |
| `taskCountPerNode` | `string` | Max number of tasks that can be run on a VM at the same time. If not specified, the system will d... |
| `taskEnvironments` | `array<Environment>` | An array of environment variable mappings, which are passed to Tasks with matching indices. If ta... |
| `taskSpec` | `TaskSpec` | Required. Tasks in the group share the same task spec. |

### `TaskGroupStatus`

Aggregated task status for a TaskGroup.

| Property | Type | Description |
|----------|------|-------------|
| `counts` | `object` | Count of task in each state in the TaskGroup. The map key is task state name. |
| `instances` | `array<InstanceStatus>` | Status of instances allocated for the TaskGroup. |

### `TaskSpec`

Spec of a task

| Property | Type | Description |
|----------|------|-------------|
| `computeResource` | `ComputeResource` | ComputeResource requirements. |
| `environment` | `Environment` | Environment variables to set before running the Task. |
| `environments` | `object` | Deprecated: please use environment(non-plural) instead. |
| `lifecyclePolicies` | `array<LifecyclePolicy>` | Lifecycle management schema when any task in a task group is failed. Currently we only support on... |
| `maxRetryCount` | `integer` | Maximum number of retries on failures. The default, 0, which means never retry. The valid value r... |
| `maxRunDuration` | `string` | Maximum duration the task should run before being automatically retried (if enabled) or automatic... |
| `runnables` | `array<Runnable>` | Required. The sequence of one or more runnables (executable scripts, executable containers, and/o... |
| `volumes` | `array<Volume>` | Volumes to mount before running Tasks using this TaskSpec. |

### `TaskStatus`

Status of a task.

| Property | Type | Description |
|----------|------|-------------|
| `state` | `string` | Task state. |
| `statusEvents` | `array<StatusEvent>` | Detailed info about why the state is reached. |

### `Volume`

Volume describes a volume and parameters for it to be mounted to a VM.

| Property | Type | Description |
|----------|------|-------------|
| `deviceName` | `string` | Device name of an attached disk volume, which should align with a device_name specified by job.al... |
| `gcs` | `GCS` | A Google Cloud Storage (GCS) volume. |
| `mountOptions` | `array<string>` | Mount options vary based on the type of storage volume: * For a Cloud Storage bucket, all the mou... |
| `mountPath` | `string` | The mount path for the volume, e.g. /mnt/disks/share. |
| `nfs` | `NFS` | A Network File System (NFS) volume. For example, a Filestore file share. |

