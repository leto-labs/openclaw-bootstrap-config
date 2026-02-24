# Storage Transfer API - API Reference

**Version**: `v1` | **Methods**: 17 | **Schemas**: 42

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `storagetransfer.transferOperations.cancel` | POST | `v1/{+name}:cancel` | Cancels a transfer. Use the transferOperations.get method to check if the cancellation succeeded ... |
| `storagetransfer.transferOperations.resume` | POST | `v1/{+name}:resume` | Resumes a transfer operation that is paused. |
| `storagetransfer.transferOperations.list` | GET | `v1/{+name}` | Lists transfer operations. Operations are ordered by their creation time in reverse chronological... |
| `storagetransfer.transferOperations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `storagetransfer.transferOperations.pause` | POST | `v1/{+name}:pause` | Pauses a transfer operation. |
| `storagetransfer.transferJobs.list` | GET | `v1/transferJobs` | Lists transfer jobs. |
| `storagetransfer.transferJobs.patch` | PATCH | `v1/{+jobName}` | Updates a transfer job. Updating a job's transfer spec does not affect transfer operations that a... |
| `storagetransfer.transferJobs.delete` | DELETE | `v1/{+jobName}` | Deletes a transfer job. Deleting a transfer job sets its status to DELETED. |
| `storagetransfer.transferJobs.run` | POST | `v1/{+jobName}:run` | Starts a new operation for the specified transfer job. A `TransferJob` has a maximum of one activ... |
| `storagetransfer.transferJobs.create` | POST | `v1/transferJobs` | Creates a transfer job that runs periodically. |
| `storagetransfer.transferJobs.get` | GET | `v1/{+jobName}` | Gets a transfer job. |
| `storagetransfer.googleServiceAccounts.get` | GET | `v1/googleServiceAccounts/{projectId}` | Returns the Google service account that is used by Storage Transfer Service to access buckets in ... |
| `storagetransfer.projects.agentPools.list` | GET | `v1/projects/{+projectId}/agentPools` | Lists agent pools. |
| `storagetransfer.projects.agentPools.patch` | PATCH | `v1/{+name}` | Updates an existing agent pool resource. |
| `storagetransfer.projects.agentPools.create` | POST | `v1/projects/{+projectId}/agentPools` | Creates an agent pool resource. |
| `storagetransfer.projects.agentPools.delete` | DELETE | `v1/{+name}` | Deletes an agent pool. |
| `storagetransfer.projects.agentPools.get` | GET | `v1/{+name}` | Gets an agent pool. |

### `storagetransfer.transferOperations.cancel`

**POST** `v1/{+name}:cancel`

Cancels a transfer. Use the transferOperations.get method to check if the cancellation succeeded or if the operation completed despite the `cancel` request. When you cancel an operation, the currently running transfer is interrupted. For recurring transfer jobs, the next instance of the transfer job will still run. For example, if your job is configured to run every day at 1pm and you cancel Monday's operation at 1:05pm, Monday's transfer will stop. However, a transfer job will still be attempted on Tuesday. This applies only to currently running operations. If an operation is not currently running, `cancel` does nothing. *Caution:* Canceling a transfer job can leave your data in an unknown state. We recommend that you restore the state at both the destination and the source after the `cancel` request completes so that your data is in a consistent state. When you cancel a job, the next job computes a delta of files and may repair any inconsistent state. For instance, if you run a job every day, and today's job found 10 new files and transferred five files before you canceled the job, tomorrow's transfer operation will compute a new delta with the five files that were not copied today plus any new files discovered tomorrow.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await storagetransfer.transferOperations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `storagetransfer.transferOperations.resume`

**POST** `v1/{+name}:resume`

Resumes a transfer operation that is paused.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the transfer operation. |

**Request body**: `ResumeTransferOperationRequest`

**Response**: `Empty`

```typescript
const res = await storagetransfer.transferOperations.resume({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `storagetransfer.transferOperations.list`

**GET** `v1/{+name}`

Lists transfer operations. Operations are ordered by their creation time in reverse chronological order.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the type being listed; must be `transferOperations`. |
| `filter` | `string` | query | Yes | Required. A list of query parameters specified as JSON text in the form of: `{"projectId":"my_project_id", "jobNames"... |
| `pageSize` | `integer` | query | No | The list page size. The max allowed value is 256. |
| `pageToken` | `string` | query | No | The list page token. |
| `returnPartialSuccess` | `boolean` | query | No | When set to `true`, operations that are reachable are returned as normal, and those that are unreachable are returned... |

**Response**: `ListOperationsResponse`

```typescript
const res = await storagetransfer.transferOperations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `storagetransfer.transferOperations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await storagetransfer.transferOperations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `storagetransfer.transferOperations.pause`

**POST** `v1/{+name}:pause`

Pauses a transfer operation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the transfer operation. |

**Request body**: `PauseTransferOperationRequest`

**Response**: `Empty`

```typescript
const res = await storagetransfer.transferOperations.pause({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `storagetransfer.transferJobs.list`

**GET** `v1/transferJobs`

Lists transfer jobs.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filter` | `string` | query | Yes | Required. A list of query parameters specified as JSON text in the form of: ``` { "projectId":"my_project_id", "jobNa... |
| `pageSize` | `integer` | query | No | The list page size. The max allowed value is 256. |
| `pageToken` | `string` | query | No | The list page token. |

**Response**: `ListTransferJobsResponse`

```typescript
const res = await storagetransfer.transferJobs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `storagetransfer.transferJobs.patch`

**PATCH** `v1/{+jobName}`

Updates a transfer job. Updating a job's transfer spec does not affect transfer operations that are running already. **Note:** The job's status field can be modified using this RPC (for example, to set a job's status to DELETED, DISABLED, or ENABLED).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `jobName` | `string` | path | Yes | Required. The name of job to update. |

**Request body**: `UpdateTransferJobRequest`

**Response**: `TransferJob`

```typescript
const res = await storagetransfer.transferJobs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `storagetransfer.transferJobs.delete`

**DELETE** `v1/{+jobName}`

Deletes a transfer job. Deleting a transfer job sets its status to DELETED.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `jobName` | `string` | path | Yes | Required. The job to delete. |
| `projectId` | `string` | query | Yes | Required. The ID of the Google Cloud project that owns the job. |

**Response**: `Empty`

```typescript
const res = await storagetransfer.transferJobs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `storagetransfer.transferJobs.run`

**POST** `v1/{+jobName}:run`

Starts a new operation for the specified transfer job. A `TransferJob` has a maximum of one active `TransferOperation`. If this method is called while a `TransferOperation` is active, an error is returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `jobName` | `string` | path | Yes | Required. The name of the transfer job. |

**Request body**: `RunTransferJobRequest`

**Response**: `Operation`

```typescript
const res = await storagetransfer.transferJobs.run({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `storagetransfer.transferJobs.create`

**POST** `v1/transferJobs`

Creates a transfer job that runs periodically.

**Request body**: `TransferJob`

**Response**: `TransferJob`

```typescript
const res = await storagetransfer.transferJobs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `storagetransfer.transferJobs.get`

**GET** `v1/{+jobName}`

Gets a transfer job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `jobName` | `string` | path | Yes | Required. The job to get. |
| `projectId` | `string` | query | Yes | Required. The ID of the Google Cloud project that owns the job. |

**Response**: `TransferJob`

```typescript
const res = await storagetransfer.transferJobs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `storagetransfer.googleServiceAccounts.get`

**GET** `v1/googleServiceAccounts/{projectId}`

Returns the Google service account that is used by Storage Transfer Service to access buckets in the project where transfers run or in other projects. Each Google service account is associated with one Google Cloud project. Users should add this service account to the Google Cloud Storage bucket ACLs to grant access to Storage Transfer Service. This service account is created and owned by Storage Transfer Service and can only be used by Storage Transfer Service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. The ID of the Google Cloud project that the Google service account is associated with. |

**Response**: `GoogleServiceAccount`

```typescript
const res = await storagetransfer.googleServiceAccounts.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `storagetransfer.projects.agentPools.list`

**GET** `v1/projects/{+projectId}/agentPools`

Lists agent pools.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. The ID of the Google Cloud project that owns the job. |
| `filter` | `string` | query | No | An optional list of query parameters specified as JSON text in the form of: `{"agentPoolNames":["agentpool1","agentpo... |
| `pageSize` | `integer` | query | No | The list page size. The max allowed value is `256`. |
| `pageToken` | `string` | query | No | The list page token. |

**Response**: `ListAgentPoolsResponse`

```typescript
const res = await storagetransfer.agentPools.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `storagetransfer.projects.agentPools.patch`

**PATCH** `v1/{+name}`

Updates an existing agent pool resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Specifies a unique string that identifies the agent pool. Format: `projects/{project_id}/agentPools/{agent_... |
| `updateMask` | `string` | query | No | The [field mask] (https://developers.google.com/protocol-buffers/docs/reference/google.protobuf) of the fields in `ag... |

**Request body**: `AgentPool`

**Response**: `AgentPool`

```typescript
const res = await storagetransfer.agentPools.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `storagetransfer.projects.agentPools.create`

**POST** `v1/projects/{+projectId}/agentPools`

Creates an agent pool resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. The ID of the Google Cloud project that owns the agent pool. |
| `agentPoolId` | `string` | query | No | Required. The ID of the agent pool to create. The `agent_pool_id` must meet the following requirements: * Length of 1... |

**Request body**: `AgentPool`

**Response**: `AgentPool`

```typescript
const res = await storagetransfer.agentPools.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `storagetransfer.projects.agentPools.delete`

**DELETE** `v1/{+name}`

Deletes an agent pool.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the agent pool to delete. |

**Response**: `Empty`

```typescript
const res = await storagetransfer.agentPools.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `storagetransfer.projects.agentPools.get`

**GET** `v1/{+name}`

Gets an agent pool.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the agent pool to get. |

**Response**: `AgentPool`

```typescript
const res = await storagetransfer.agentPools.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AgentPool`

Represents an agent pool.

| Property | Type | Description |
|----------|------|-------------|
| `bandwidthLimit` | `BandwidthLimit` | Specifies the bandwidth limit details. If this field is unspecified, the default value is set as ... |
| `displayName` | `string` | Specifies the client-specified AgentPool description. |
| `name` | `string` | Required. Specifies a unique string that identifies the agent pool. Format: `projects/{project_id... |
| `state` | `string` | Output only. Specifies the state of the AgentPool. |

### `AwsAccessKey`

AWS access key (see [AWS Security Credentials](https://docs.aws.amazon.com/general/latest/gr/aws-security-credentials.html)). For information on our data retention policy for user credentials, see [User credentials](/storage-transfer/docs/data-retention#user-credentials).

| Property | Type | Description |
|----------|------|-------------|
| `accessKeyId` | `string` | Required. AWS access key ID. |
| `secretAccessKey` | `string` | Required. AWS secret access key. This field is not returned in RPC responses. |

### `AwsS3CompatibleData`

An AwsS3CompatibleData resource.

| Property | Type | Description |
|----------|------|-------------|
| `bucketName` | `string` | Required. Specifies the name of the bucket. |
| `endpoint` | `string` | Required. Specifies the endpoint of the storage service. |
| `path` | `string` | Specifies the root path to transfer objects. Must be an empty string or full path name that ends ... |
| `region` | `string` | Specifies the region to sign requests with. This can be left blank if requests should be signed w... |
| `s3Metadata` | `S3CompatibleMetadata` | A S3 compatible metadata. |

### `AwsS3Data`

An AwsS3Data resource can be a data source, but not a data sink. In an AwsS3Data resource, an object's name is the S3 object's key name.

| Property | Type | Description |
|----------|------|-------------|
| `awsAccessKey` | `AwsAccessKey` | Input only. AWS access key used to sign the API requests to the AWS S3 bucket. Permissions on the... |
| `bucketName` | `string` | Required. S3 Bucket name (see [Creating a bucket](https://docs.aws.amazon.com/AmazonS3/latest/dev... |
| `cloudfrontDomain` | `string` | Optional. The CloudFront distribution domain name pointing to this bucket, to use when fetching. ... |
| `credentialsSecret` | `string` | Optional. The Resource name of a secret in Secret Manager. AWS credentials must be stored in Secr... |
| `managedPrivateNetwork` | `boolean` | Egress bytes over a Google-managed private network. This network is shared between other users of... |
| `path` | `string` | Root path to transfer objects. Must be an empty string or full path name that ends with a '/'. Th... |
| `privateNetworkService` | `string` | Service Directory Service to be used as the endpoint for transfers from a custom VPC. Format: `pr... |
| `roleArn` | `string` | The Amazon Resource Name (ARN) of the role to support temporary credentials via `AssumeRoleWithWe... |

### `AzureBlobStorageData`

An AzureBlobStorageData resource can be a data source, but not a data sink. An AzureBlobStorageData resource represents one Azure container. The storage account determines the [Azure endpoint](https://docs.microsoft.com/en-us/azure/storage/common/storage-create-storage-account#storage-account-endpoints). In an AzureBlobStorageData resource, a blobs's name is the [Azure Blob Storage blob's key name](https://docs.microsoft.com/en-us/rest/api/storageservices/naming-and-referencing-containers--blobs--and-metadata#blob-names).

| Property | Type | Description |
|----------|------|-------------|
| `azureCredentials` | `AzureCredentials` | Required. Input only. Credentials used to authenticate API requests to Azure. For information on ... |
| `container` | `string` | Required. The container to transfer from the Azure Storage account. |
| `credentialsSecret` | `string` | Optional. The Resource name of a secret in Secret Manager. The Azure SAS token must be stored in ... |
| `federatedIdentityConfig` | `FederatedIdentityConfig` | Optional. Federated identity config of a user registered Azure application. If `federated_identit... |
| `path` | `string` | Root path to transfer objects. Must be an empty string or full path name that ends with a '/'. Th... |
| `privateNetworkService` | `string` | Service Directory Service to be used as the endpoint for transfers from a custom VPC. Format: `pr... |
| `storageAccount` | `string` | Required. The name of the Azure Storage account. |

### `AzureCredentials`

Azure credentials For information on our data retention policy for user credentials, see [User credentials](/storage-transfer/docs/data-retention#user-credentials).

| Property | Type | Description |
|----------|------|-------------|
| `sasToken` | `string` | Required. Azure shared access signature (SAS). For more information about SAS, see [Grant limited... |

### `BandwidthLimit`

Specifies a bandwidth limit for an agent pool.

| Property | Type | Description |
|----------|------|-------------|
| `limitMbps` | `string` | Bandwidth rate in megabytes per second, distributed across all the agents in the pool. |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `Date`

Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by ... |
| `month` | `integer` | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `year` | `integer` | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `ErrorLogEntry`

LINT.IfChange An entry describing an error that has occurred.

| Property | Type | Description |
|----------|------|-------------|
| `errorDetails` | `array<string>` | Optional. A list of messages that carry the error details. |
| `url` | `string` | Output only. A URL that refers to the target (a data source, a data sink, or an object) with whic... |

### `ErrorSummary`

A summary of errors by error code, plus a count and sample error log entries.

| Property | Type | Description |
|----------|------|-------------|
| `errorCode` | `string` | Required. |
| `errorCount` | `string` | Required. Count of this type of error. |
| `errorLogEntries` | `array<ErrorLogEntry>` | Error samples. At most 5 error log entries are recorded for a given error code for a single trans... |

### `EventStream`

Specifies the Event-driven transfer options. Event-driven transfers listen to an event stream to transfer updated files.

| Property | Type | Description |
|----------|------|-------------|
| `eventStreamExpirationTime` | `string` | Specifies the data and time at which Storage Transfer Service stops listening for events from thi... |
| `eventStreamStartTime` | `string` | Specifies the date and time that Storage Transfer Service starts listening for events from this s... |
| `name` | `string` | Required. Specifies a unique name of the resource such as AWS SQS ARN in the form 'arn:aws:sqs:re... |

### `FederatedIdentityConfig`

The identity of an Azure application through which Storage Transfer Service can authenticate requests using Azure workload identity federation. Storage Transfer Service can issue requests to Azure Storage through registered Azure applications, eliminating the need to pass credentials to Storage Transfer Service directly. To configure federated identity, see [Configure access to Microsoft Azure Storage](https://cloud.google.com/storage-transfer/docs/source-microsoft-azure#option_3_authenticate_using_federated_identity).

| Property | Type | Description |
|----------|------|-------------|
| `clientId` | `string` | Required. The client (application) ID of the application with federated credentials. |
| `tenantId` | `string` | Required. The tenant (directory) ID of the application with federated credentials. |

### `GcsData`

In a GcsData resource, an object's name is the Cloud Storage object's name and its "last modification time" refers to the object's `updated` property of Cloud Storage objects, which changes when the content or the metadata of the object is updated.

| Property | Type | Description |
|----------|------|-------------|
| `bucketName` | `string` | Required. Cloud Storage bucket name. Must meet [Bucket Name Requirements](/storage/docs/naming#re... |
| `managedFolderTransferEnabled` | `boolean` | Preview. Enables the transfer of managed folders between Cloud Storage buckets. Set this option o... |
| `path` | `string` | Root path to transfer objects. Must be an empty string or full path name that ends with a '/'. Th... |

### `GoogleServiceAccount`

Google service account

| Property | Type | Description |
|----------|------|-------------|
| `accountEmail` | `string` | Email address of the service account. |
| `subjectId` | `string` | Unique identifier for the service account. |

### `HdfsData`

An HdfsData resource specifies a path within an HDFS entity (e.g. a cluster). All cluster-specific settings, such as namenodes and ports, are configured on the transfer agents servicing requests, so HdfsData only contains the root path to the data in our transfer.

| Property | Type | Description |
|----------|------|-------------|
| `path` | `string` | Root path to transfer files. |

### `HttpData`

An HttpData resource specifies a list of objects on the web to be transferred over HTTP. The information of the objects to be transferred is contained in a file referenced by a URL. The first line in the file must be `"TsvHttpData-1.0"`, which specifies the format of the file. Subsequent lines specify the information of the list of objects, one object per list entry. Each entry has the following tab-delimited fields: * **HTTP URL** — The location of the object. * **Length** — The size of the object in bytes. * **MD5** — The base64-encoded MD5 hash of the object. For an example of a valid TSV file, see [Transferring data from URLs](https://cloud.google.com/storage-transfer/docs/create-url-list). When transferring data based on a URL list, keep the following in mind: * When an object located at `http(s)://hostname:port/` is transferred to a data sink, the name of the object at the data sink is `/`. * If the specified size of an object does not match the actual size of the object fetched, the object is not transferred. * If the specified MD5 does not match the MD5 computed from the transferred bytes, the object transfer fails. * Ensure that each URL you specify is publicly accessible. For example, in Cloud Storage you can [share an object publicly] (/storage/docs/cloud-console#_sharingdata) and get a link to it. * Storage Transfer Service obeys `robots.txt` rules and requires the source HTTP server to support `Range` requests and to return a `Content-Length` header in each response. * ObjectConditions have no effect when filtering objects to transfer.

| Property | Type | Description |
|----------|------|-------------|
| `listUrl` | `string` | Required. The URL that points to the file that stores the object list entries. This file must all... |

### `ListAgentPoolsResponse`

Response from ListAgentPools.

| Property | Type | Description |
|----------|------|-------------|
| `agentPools` | `array<AgentPool>` | A list of agent pools. |
| `nextPageToken` | `string` | The list next page token. |

### `ListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<Operation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `ListTransferJobsResponse`

Response from ListTransferJobs.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The list next page token. |
| `transferJobs` | `array<TransferJob>` | A list of transfer jobs. |

### `LoggingConfig`

Specifies the logging behavior for transfer operations. Logs can be sent to Cloud Logging for all transfer types. See [Read transfer logs](https://cloud.google.com/storage-transfer/docs/read-transfer-logs) for details.

| Property | Type | Description |
|----------|------|-------------|
| `enableOnpremGcsTransferLogs` | `boolean` | For PosixFilesystem transfers, enables [file system transfer logs](https://cloud.google.com/stora... |
| `logActionStates` | `array<string>` | States in which `log_actions` are logged. If empty, no logs are generated. |
| `logActions` | `array<string>` | Specifies the actions to be logged. If empty, no logs are generated. |

### `MetadataOptions`

Specifies the metadata options for running a transfer.

| Property | Type | Description |
|----------|------|-------------|
| `acl` | `string` | Specifies how each object's ACLs should be preserved for transfers between Google Cloud Storage b... |
| `gid` | `string` | Specifies how each file's POSIX group ID (GID) attribute should be handled by the transfer. By de... |
| `kmsKey` | `string` | Specifies how each object's Cloud KMS customer-managed encryption key (CMEK) is preserved for tra... |
| `mode` | `string` | Specifies how each file's mode attribute should be handled by the transfer. By default, mode is n... |
| `storageClass` | `string` | Specifies the storage class to set on objects being transferred to Google Cloud Storage buckets. ... |
| `symlink` | `string` | Specifies how symlinks should be handled by the transfer. By default, symlinks are not preserved.... |
| `temporaryHold` | `string` | Specifies how each object's temporary hold status should be preserved for transfers between Googl... |
| `timeCreated` | `string` | Specifies how each object's `timeCreated` metadata is preserved for transfers. If unspecified, th... |
| `uid` | `string` | Specifies how each file's POSIX user ID (UID) attribute should be handled by the transfer. By def... |

### `NotificationConfig`

Specification to configure notifications published to Pub/Sub. Notifications are published to the customer-provided topic using the following `PubsubMessage.attributes`: * `"eventType"`: one of the EventType values * `"payloadFormat"`: one of the PayloadFormat values * `"projectId"`: the project_id of the `TransferOperation` * `"transferJobName"`: the transfer_job_name of the `TransferOperation` * `"transferOperationName"`: the name of the `TransferOperation` The `PubsubMessage.data` contains a TransferOperation resource formatted according to the specified `PayloadFormat`.

| Property | Type | Description |
|----------|------|-------------|
| `eventTypes` | `array<string>` | Event types for which a notification is desired. If empty, send notifications for all event types. |
| `payloadFormat` | `string` | Required. The desired format of the notification message payloads. |
| `pubsubTopic` | `string` | Required. The `Topic.name` of the Pub/Sub topic to which to publish notifications. Must be of the... |

### `ObjectConditions`

Conditions that determine which objects are transferred. Applies only to Cloud Data Sources such as S3, Azure, and Cloud Storage. The "last modification time" refers to the time of the last change to the object's content or metadata — specifically, this is the `updated` property of Cloud Storage objects, the `LastModified` field of S3 objects, and the `Last-Modified` header of Azure blobs. For S3 objects, the `LastModified` value is the time the object begins uploading. If the object meets your "last modification time" criteria, but has not finished uploading, the object is not transferred. See [Transfer from Amazon S3 to Cloud Storage](https://cloud.google.com/storage-transfer/docs/create-transfers/agentless/s3#transfer_options) for more information. Transfers with a PosixFilesystem source or destination don't support `ObjectConditions`.

| Property | Type | Description |
|----------|------|-------------|
| `excludePrefixes` | `array<string>` | If you specify `exclude_prefixes`, Storage Transfer Service uses the items in the `exclude_prefix... |
| `includePrefixes` | `array<string>` | If you specify `include_prefixes`, Storage Transfer Service uses the items in the `include_prefix... |
| `lastModifiedBefore` | `string` | If specified, only objects with a "last modification time" before this timestamp and objects that... |
| `lastModifiedSince` | `string` | If specified, only objects with a "last modification time" on or after this timestamp and objects... |
| `matchGlob` | `string` | Optional. If specified, only objects matching this glob are transferred. |
| `maxTimeElapsedSinceLastModification` | `string` | Ensures that objects are not transferred if a specific maximum time has elapsed since the "last m... |
| `minTimeElapsedSinceLastModification` | `string` | Ensures that objects are not transferred until a specific minimum time has elapsed after the "las... |

### `Operation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `Status` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Represents the transfer operation object. To request a TransferOperation object, use transferOper... |
| `name` | `string` | The server-assigned unique name. The format of `name` is `transferOperations/some/unique/name`. |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `PauseTransferOperationRequest`

Request passed to PauseTransferOperation.

### `PosixFilesystem`

A POSIX filesystem resource.

| Property | Type | Description |
|----------|------|-------------|
| `rootDirectory` | `string` | Root directory path to the filesystem. |

### `ReplicationSpec`

Specifies the configuration for a cross-bucket replication job. Cross-bucket replication copies new or updated objects from a source Cloud Storage bucket to a destination Cloud Storage bucket. Existing objects in the source bucket are not copied by a new cross-bucket replication job.

| Property | Type | Description |
|----------|------|-------------|
| `gcsDataSink` | `GcsData` | The Cloud Storage bucket to which to replicate objects. |
| `gcsDataSource` | `GcsData` | The Cloud Storage bucket from which to replicate objects. |
| `objectConditions` | `ObjectConditions` | Object conditions that determine which objects are transferred. For replication jobs, only `inclu... |
| `transferOptions` | `TransferOptions` | Specifies the metadata options to be applied during replication. Delete options are not supported... |

### `ResumeTransferOperationRequest`

Request passed to ResumeTransferOperation.

### `RunTransferJobRequest`

Request passed to RunTransferJob.

| Property | Type | Description |
|----------|------|-------------|
| `projectId` | `string` | Required. The ID of the Google Cloud project that owns the transfer job. |

### `S3CompatibleMetadata`

S3CompatibleMetadata contains the metadata fields that apply to the basic types of S3-compatible data providers.

| Property | Type | Description |
|----------|------|-------------|
| `authMethod` | `string` | Specifies the authentication and authorization method used by the storage service. When not speci... |
| `listApi` | `string` | The Listing API to use for discovering objects. When not specified, Transfer Service will attempt... |
| `protocol` | `string` | Specifies the network protocol of the agent. When not specified, the default value of NetworkProt... |
| `requestModel` | `string` | Specifies the API request model used to call the storage service. When not specified, the default... |

### `Schedule`

Transfers can be scheduled to recur or to run just once.

| Property | Type | Description |
|----------|------|-------------|
| `endTimeOfDay` | `TimeOfDay` | The time in UTC that no further transfer operations are scheduled. Combined with schedule_end_dat... |
| `repeatInterval` | `string` | Interval between the start of each scheduled TransferOperation. If unspecified, the default value... |
| `scheduleEndDate` | `Date` | The last day a transfer runs. Date boundaries are determined relative to UTC time. A job runs onc... |
| `scheduleStartDate` | `Date` | Required. The start date of a transfer. Date boundaries are determined relative to UTC time. If `... |
| `startTimeOfDay` | `TimeOfDay` | The time in UTC that a transfer job is scheduled to run. Transfers may start later than this time... |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `TimeOfDay`

Represents a time of day. The date and time zone are either not significant or are specified elsewhere. An API may choose to allow leap seconds. Related types are google.type.Date and `google.protobuf.Timestamp`.

| Property | Type | Description |
|----------|------|-------------|
| `hours` | `integer` | Hours of a day in 24 hour format. Must be greater than or equal to 0 and typically must be less t... |
| `minutes` | `integer` | Minutes of an hour. Must be greater than or equal to 0 and less than or equal to 59. |
| `nanos` | `integer` | Fractions of seconds, in nanoseconds. Must be greater than or equal to 0 and less than or equal t... |
| `seconds` | `integer` | Seconds of a minute. Must be greater than or equal to 0 and typically must be less than or equal ... |

### `TransferCounters`

A collection of counters that report the progress of a transfer operation.

| Property | Type | Description |
|----------|------|-------------|
| `bytesCopiedToSink` | `string` | Bytes that are copied to the data sink. |
| `bytesDeletedFromSink` | `string` | Bytes that are deleted from the data sink. |
| `bytesDeletedFromSource` | `string` | Bytes that are deleted from the data source. |
| `bytesFailedToDeleteFromSink` | `string` | Bytes that failed to be deleted from the data sink. |
| `bytesFoundFromSource` | `string` | Bytes found in the data source that are scheduled to be transferred, excluding any that are filte... |
| `bytesFoundOnlyFromSink` | `string` | Bytes found only in the data sink that are scheduled to be deleted. |
| `bytesFromSourceFailed` | `string` | Bytes in the data source that failed to be transferred or that failed to be deleted after being t... |
| `bytesFromSourceSkippedBySync` | `string` | Bytes in the data source that are not transferred because they already exist in the data sink. |
| `directoriesFailedToListFromSource` | `string` | For transfers involving PosixFilesystem only. Number of listing failures for each directory found... |
| `directoriesFoundFromSource` | `string` | For transfers involving PosixFilesystem only. Number of directories found while listing. For exam... |
| `directoriesSuccessfullyListedFromSource` | `string` | For transfers involving PosixFilesystem only. Number of successful listings for each directory fo... |
| `intermediateObjectsCleanedUp` | `string` | Number of successfully cleaned up intermediate objects. |
| `intermediateObjectsFailedCleanedUp` | `string` | Number of intermediate objects failed cleaned up. |
| `objectsCopiedToSink` | `string` | Objects that are copied to the data sink. |
| `objectsDeletedFromSink` | `string` | Objects that are deleted from the data sink. |
| `objectsDeletedFromSource` | `string` | Objects that are deleted from the data source. |
| `objectsFailedToDeleteFromSink` | `string` | Objects that failed to be deleted from the data sink. |
| `objectsFoundFromSource` | `string` | Objects found in the data source that are scheduled to be transferred, excluding any that are fil... |
| `objectsFoundOnlyFromSink` | `string` | Objects found only in the data sink that are scheduled to be deleted. |
| `objectsFromSourceFailed` | `string` | Objects in the data source that failed to be transferred or that failed to be deleted after being... |
| `objectsFromSourceSkippedBySync` | `string` | Objects in the data source that are not transferred because they already exist in the data sink. |
| `unrestoredDeepArchiveObjectsSkippedCount` | `string` | Number of unrestored deep archive objects skipped. |
| `unsupportedS3GlacierObjectsSkippedCount` | `string` | Number of glacier objects skipped, glacier objects are unsupported by default regardless of the r... |

### `TransferJob`

This resource represents the configuration of a transfer job that runs periodically.

| Property | Type | Description |
|----------|------|-------------|
| `creationTime` | `string` | Output only. The time that the transfer job was created. |
| `deletionTime` | `string` | Output only. The time that the transfer job was deleted. |
| `description` | `string` | A description provided by the user for the job. Its max length is 1024 bytes when Unicode-encoded. |
| `eventStream` | `EventStream` | Specifies the event stream for the transfer job for event-driven transfers. When EventStream is s... |
| `lastModificationTime` | `string` | Output only. The time that the transfer job was last modified. |
| `latestOperationName` | `string` | The name of the most recently started TransferOperation of this JobConfig. Present if a TransferO... |
| `loggingConfig` | `LoggingConfig` | Logging configuration. |
| `name` | `string` | A unique name (within the transfer project) assigned when the job is created. If this field is em... |
| `notificationConfig` | `NotificationConfig` | Notification configuration. |
| `projectId` | `string` | The ID of the Google Cloud project that owns the job. |
| `replicationSpec` | `ReplicationSpec` | Replication specification. |
| `schedule` | `Schedule` | Specifies schedule for the transfer job. This is an optional field. When the field is not set, th... |
| `serviceAccount` | `string` | Optional. The user-managed service account to which to delegate service agent permissions. You ca... |
| `status` | `string` | Status of the job. This value MUST be specified for `CreateTransferJobRequests`. **Note:** The ef... |
| `transferSpec` | `TransferSpec` | Transfer specification. |

### `TransferManifest`

Specifies where the manifest is located.

| Property | Type | Description |
|----------|------|-------------|
| `location` | `string` | Specifies the path to the manifest in Cloud Storage. The Google-managed service account for the t... |

### `TransferOperation`

A description of the execution of a transfer.

| Property | Type | Description |
|----------|------|-------------|
| `counters` | `TransferCounters` | Information about the progress of the transfer operation. |
| `endTime` | `string` | End time of this transfer execution. |
| `errorBreakdowns` | `array<ErrorSummary>` | Summarizes errors encountered with sample error log entries. |
| `loggingConfig` | `LoggingConfig` | Cloud Logging configuration. |
| `name` | `string` | A globally unique ID assigned by the system. |
| `notificationConfig` | `NotificationConfig` | Notification configuration. |
| `projectId` | `string` | The ID of the Google Cloud project that owns the operation. |
| `startTime` | `string` | Start time of this transfer execution. |
| `status` | `string` | Status of the transfer operation. |
| `transferJobName` | `string` | The name of the transfer job that triggers this transfer operation. |
| `transferSpec` | `TransferSpec` | Transfer specification. |

### `TransferOptions`

TransferOptions define the actions to be performed on objects in a transfer.

| Property | Type | Description |
|----------|------|-------------|
| `deleteObjectsFromSourceAfterTransfer` | `boolean` | Whether objects should be deleted from the source after they are transferred to the sink. **Note:... |
| `deleteObjectsUniqueInSink` | `boolean` | Whether objects that exist only in the sink should be deleted. **Note:** This option and delete_o... |
| `metadataOptions` | `MetadataOptions` | Represents the selected metadata options for a transfer job. |
| `overwriteObjectsAlreadyExistingInSink` | `boolean` | When to overwrite objects that already exist in the sink. The default is that only objects that a... |
| `overwriteWhen` | `string` | When to overwrite objects that already exist in the sink. If not set, overwrite behavior is deter... |

### `TransferSpec`

Configuration for running a transfer.

| Property | Type | Description |
|----------|------|-------------|
| `awsS3CompatibleDataSource` | `AwsS3CompatibleData` | Optional. An AWS S3 compatible data source. |
| `awsS3DataSource` | `AwsS3Data` | Optional. An AWS S3 data source. |
| `azureBlobStorageDataSource` | `AzureBlobStorageData` | Optional. An Azure Blob Storage data source. |
| `gcsDataSink` | `GcsData` | Optional. A Cloud Storage data sink. |
| `gcsDataSource` | `GcsData` | Optional. A Cloud Storage data source. |
| `gcsIntermediateDataLocation` | `GcsData` | For transfers between file systems, specifies a Cloud Storage bucket to be used as an intermediat... |
| `hdfsDataSource` | `HdfsData` | Optional. An HDFS cluster data source. |
| `httpDataSource` | `HttpData` | Optional. An HTTP URL data source. |
| `objectConditions` | `ObjectConditions` | Only objects that satisfy these object conditions are included in the set of data source and data... |
| `posixDataSink` | `PosixFilesystem` | Optional. A POSIX Filesystem data sink. |
| `posixDataSource` | `PosixFilesystem` | Optional. A POSIX Filesystem data source. |
| `sinkAgentPoolName` | `string` | Specifies the agent pool name associated with the posix data sink. When unspecified, the default ... |
| `sourceAgentPoolName` | `string` | Specifies the agent pool name associated with the posix data source. When unspecified, the defaul... |
| `transferManifest` | `TransferManifest` | A manifest file provides a list of objects to be transferred from the data source. This field poi... |
| `transferOptions` | `TransferOptions` | If the option delete_objects_unique_in_sink is `true` and time-based object conditions such as 'l... |

### `UpdateTransferJobRequest`

Request passed to UpdateTransferJob.

| Property | Type | Description |
|----------|------|-------------|
| `projectId` | `string` | Required. The ID of the Google Cloud project that owns the job. |
| `transferJob` | `TransferJob` | Required. The job to update. `transferJob` is expected to specify one or more of five fields: des... |
| `updateTransferJobFieldMask` | `string` | The field mask of the fields in `transferJob` that are to be updated in this request. Fields in `... |

