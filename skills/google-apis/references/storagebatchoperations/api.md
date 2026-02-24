# Storage Batch Operations API - API Reference

**Version**: `v1` | **Methods**: 13 | **Schemas**: 30

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `storagebatchoperations.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `storagebatchoperations.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `storagebatchoperations.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `storagebatchoperations.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `storagebatchoperations.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `storagebatchoperations.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `storagebatchoperations.projects.locations.jobs.cancel` | POST | `v1/{+name}:cancel` | Cancels a batch job. |
| `storagebatchoperations.projects.locations.jobs.create` | POST | `v1/{+parent}/jobs` | Creates a batch job. |
| `storagebatchoperations.projects.locations.jobs.list` | GET | `v1/{+parent}/jobs` | Lists Jobs in a given project. |
| `storagebatchoperations.projects.locations.jobs.delete` | DELETE | `v1/{+name}` | Deletes a batch job. |
| `storagebatchoperations.projects.locations.jobs.get` | GET | `v1/{+name}` | Gets a batch job. |
| `storagebatchoperations.projects.locations.jobs.bucketOperations.get` | GET | `v1/{+name}` | Gets a BucketOperation. |
| `storagebatchoperations.projects.locations.jobs.bucketOperations.list` | GET | `v1/{+parent}/bucketOperations` | Lists BucketOperations in a given project and job. |

### `storagebatchoperations.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await storagebatchoperations.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `storagebatchoperations.projects.locations.list`

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
const res = await storagebatchoperations.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `storagebatchoperations.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await storagebatchoperations.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `storagebatchoperations.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await storagebatchoperations.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `storagebatchoperations.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await storagebatchoperations.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `storagebatchoperations.projects.locations.operations.list`

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
const res = await storagebatchoperations.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `storagebatchoperations.projects.locations.jobs.cancel`

**POST** `v1/{+name}:cancel`

Cancels a batch job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The `name` of the job to cancel. Format: projects/{project_id}/locations/global/jobs/{job_id}. |

**Request body**: `CancelJobRequest`

**Response**: `CancelJobResponse`

```typescript
const res = await storagebatchoperations.jobs.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `storagebatchoperations.projects.locations.jobs.create`

**POST** `v1/{+parent}/jobs`

Creates a batch job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Value for parent. |
| `jobId` | `string` | query | No | Required. The optional `job_id` for this Job . If not specified, an id is generated. `job_id` should be no more than ... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID in case you need to retry your req... |

**Request body**: `Job`

**Response**: `Operation`

```typescript
const res = await storagebatchoperations.jobs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `storagebatchoperations.projects.locations.jobs.list`

**GET** `v1/{+parent}/jobs`

Lists Jobs in a given project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Format: projects/{project_id}/locations/global. |
| `filter` | `string` | query | No | Optional. Filters results as defined by https://google.aip.dev/160. |
| `orderBy` | `string` | query | No | Optional. Field to sort by. Supported fields are name, create_time. |
| `pageSize` | `integer` | query | No | Optional. The list page size. default page size is 100. |
| `pageToken` | `string` | query | No | Optional. The list page token. |

**Response**: `ListJobsResponse`

```typescript
const res = await storagebatchoperations.jobs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `storagebatchoperations.projects.locations.jobs.delete`

**DELETE** `v1/{+name}`

Deletes a batch job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The `name` of the job to delete. Format: projects/{project_id}/locations/global/jobs/{job_id} . |
| `force` | `boolean` | query | No | Optional. If set to true, any child bucket operations of the job will also be deleted. Highly recommended to be set t... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID in case you need to retry your req... |

**Response**: `Empty`

```typescript
const res = await storagebatchoperations.jobs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `storagebatchoperations.projects.locations.jobs.get`

**GET** `v1/{+name}`

Gets a batch job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. `name` of the job to retrieve. Format: projects/{project_id}/locations/global/jobs/{job_id} . |

**Response**: `Job`

```typescript
const res = await storagebatchoperations.jobs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `storagebatchoperations.projects.locations.jobs.bucketOperations.get`

**GET** `v1/{+name}`

Gets a BucketOperation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. `name` of the bucket operation to retrieve. Format: projects/{project_id}/locations/global/jobs/{job_id}/bu... |

**Response**: `BucketOperation`

```typescript
const res = await storagebatchoperations.bucketOperations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `storagebatchoperations.projects.locations.jobs.bucketOperations.list`

**GET** `v1/{+parent}/bucketOperations`

Lists BucketOperations in a given project and job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Format: projects/{project_id}/locations/global/jobs/{job_id}. |
| `filter` | `string` | query | No | Optional. Filters results as defined by https://google.aip.dev/160. |
| `orderBy` | `string` | query | No | Optional. Field to sort by. Supported fields are name, create_time. |
| `pageSize` | `integer` | query | No | Optional. The list page size. Default page size is 100. |
| `pageToken` | `string` | query | No | Optional. The list page token. |

**Response**: `ListBucketOperationsResponse`

```typescript
const res = await storagebatchoperations.bucketOperations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `Bucket`

Describes configuration of a single bucket and its objects to be transformed.

| Property | Type | Description |
|----------|------|-------------|
| `bucket` | `string` | Required. Bucket name for the objects to be transformed. |
| `manifest` | `Manifest` | Specifies objects in a manifest file. |
| `prefixList` | `PrefixList` | Specifies objects matching a prefix set. |

### `BucketList`

Describes list of buckets and their objects to be transformed.

| Property | Type | Description |
|----------|------|-------------|
| `buckets` | `array<Bucket>` | Required. List of buckets and their objects to be transformed. Currently, only one bucket configu... |

### `BucketOperation`

BucketOperation represents a bucket-level breakdown of a Job.

| Property | Type | Description |
|----------|------|-------------|
| `bucketName` | `string` | The bucket name of the objects to be transformed in the BucketOperation. |
| `completeTime` | `string` | Output only. The time that the BucketOperation was completed. |
| `counters` | `Counters` | Output only. Information about the progress of the bucket operation. |
| `createTime` | `string` | Output only. The time that the BucketOperation was created. |
| `deleteObject` | `DeleteObject` | Delete objects. |
| `errorSummaries` | `array<ErrorSummary>` | Output only. Summarizes errors encountered with sample error log entries. |
| `manifest` | `Manifest` | Specifies objects in a manifest file. |
| `name` | `string` | Identifier. The resource name of the BucketOperation. This is defined by the service. Format: pro... |
| `prefixList` | `PrefixList` | Specifies objects matching a prefix set. |
| `putMetadata` | `PutMetadata` | Updates object metadata. Allows updating fixed-key and custom metadata and fixed-key metadata i.e... |
| `putObjectHold` | `PutObjectHold` | Changes object hold status. |
| `rewriteObject` | `RewriteObject` | Rewrite the object and updates metadata like KMS key. |
| `startTime` | `string` | Output only. The time that the BucketOperation was started. |
| `state` | `string` | Output only. State of the BucketOperation. |
| `updateObjectCustomContext` | `UpdateObjectCustomContext` | Update object custom context. |

### `CancelJobRequest`

Message for Job to Cancel

| Property | Type | Description |
|----------|------|-------------|
| `requestId` | `string` | Optional. An optional request ID to identify requests. Specify a unique request ID in case you ne... |

### `CancelJobResponse`

Message for response to cancel Job.

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `Counters`

Describes details about the progress of the job.

| Property | Type | Description |
|----------|------|-------------|
| `failedObjectCount` | `string` | Output only. Number of objects failed. |
| `succeededObjectCount` | `string` | Output only. Number of objects completed. |
| `totalBytesFound` | `string` | Output only. Number of bytes found from source. This field is only populated for jobs with a pref... |
| `totalObjectCount` | `string` | Output only. Number of objects listed. |

### `CustomContextUpdates`

Describes a collection of updates to apply to custom contexts identified by key.

| Property | Type | Description |
|----------|------|-------------|
| `keysToClear` | `array<string>` | Optional. Custom contexts to clear by key. A key cannot be present in both `updates` and `keys_to... |
| `updates` | `object` | Optional. Insert or update the existing custom contexts. |

### `DeleteObject`

Describes options to delete an object.

| Property | Type | Description |
|----------|------|-------------|
| `permanentObjectDeletionEnabled` | `boolean` | Required. Controls deletion behavior when versioning is enabled for the object's bucket. If true ... |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `ErrorLogEntry`

An entry describing an error that has occurred.

| Property | Type | Description |
|----------|------|-------------|
| `errorDetails` | `array<string>` | Optional. Output only. At most 5 error log entries are recorded for a given error code for a job. |
| `objectUri` | `string` | Required. Output only. Object URL. e.g. gs://my_bucket/object.txt |

### `ErrorSummary`

A summary of errors by error code, plus a count and sample error log entries.

| Property | Type | Description |
|----------|------|-------------|
| `errorCode` | `string` | Required. The canonical error code. |
| `errorCount` | `string` | Required. Number of errors encountered per `error_code`. |
| `errorLogEntries` | `array<ErrorLogEntry>` | Required. Sample error logs. |

### `Job`

The Storage Batch Operations Job description.

| Property | Type | Description |
|----------|------|-------------|
| `bucketList` | `BucketList` | Specifies a list of buckets and their objects to be transformed. |
| `completeTime` | `string` | Output only. The time that the job was completed. |
| `counters` | `Counters` | Output only. Information about the progress of the job. |
| `createTime` | `string` | Output only. The time that the job was created. |
| `deleteObject` | `DeleteObject` | Delete objects. |
| `description` | `string` | Optional. A description provided by the user for the job. Its max length is 1024 bytes when Unico... |
| `dryRun` | `boolean` | Optional. If true, the job will run in dry run mode, returning the total object count and, if the... |
| `errorSummaries` | `array<ErrorSummary>` | Output only. Summarizes errors encountered with sample error log entries. |
| `isMultiBucketJob` | `boolean` | Output only. If true, this Job operates on multiple buckets. Multibucket jobs are subject to diff... |
| `loggingConfig` | `LoggingConfig` | Optional. Logging configuration. |
| `name` | `string` | Identifier. The resource name of the Job. job_id is unique within the project, that is either set... |
| `putMetadata` | `PutMetadata` | Updates object metadata. Allows updating fixed-key and custom metadata and fixed-key metadata i.e... |
| `putObjectHold` | `PutObjectHold` | Changes object hold status. |
| `rewriteObject` | `RewriteObject` | Rewrite the object and updates metadata like KMS key. |
| `scheduleTime` | `string` | Output only. The time that the job was scheduled. |
| `state` | `string` | Output only. State of the job. |
| `updateObjectCustomContext` | `UpdateObjectCustomContext` | Update object custom context. |

### `ListBucketOperationsResponse`

Message for response to listing BucketOperations

| Property | Type | Description |
|----------|------|-------------|
| `bucketOperations` | `array<BucketOperation>` | A list of storage batch bucket operations. |
| `nextPageToken` | `string` | A token identifying a page of results. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListJobsResponse`

Message for response to listing Jobs

| Property | Type | Description |
|----------|------|-------------|
| `jobs` | `array<Job>` | A list of storage batch jobs. |
| `nextPageToken` | `string` | A token identifying a page of results. |
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

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

### `LoggingConfig`

Specifies the Cloud Logging behavior.

| Property | Type | Description |
|----------|------|-------------|
| `logActionStates` | `array<string>` | Required. States in which Action are logged.If empty, no logs are generated. |
| `logActions` | `array<string>` | Required. Specifies the actions to be logged. |

### `Manifest`

Describes list of objects to be transformed.

| Property | Type | Description |
|----------|------|-------------|
| `manifestLocation` | `string` | Required. `manifest_location` must contain the manifest source file that is a CSV file in a Googl... |

### `ObjectCustomContextPayload`

Describes the payload of a user defined object custom context.

| Property | Type | Description |
|----------|------|-------------|
| `value` | `string` | The value of the object custom context. If set, `value` must NOT be an empty string since it is a... |

### `ObjectRetention`

Describes options for object retention update.

| Property | Type | Description |
|----------|------|-------------|
| `retainUntilTime` | `string` | Required. The time when the object will be retained until. UNSET will clear the retention. Must b... |
| `retentionMode` | `string` | Required. The retention mode of the object. |

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
| `job` | `Job` | Output only. The Job associated with the operation. |
| `operation` | `string` | Output only. The unique operation resource name. Format: projects/{project}/locations/global/oper... |
| `requestedCancellation` | `boolean` | Output only. Identifies whether the user has requested cancellation of the operation. Operations ... |

### `PrefixList`

Describes prefixes of objects to be transformed.

| Property | Type | Description |
|----------|------|-------------|
| `includedObjectPrefixes` | `array<string>` | Optional. Include prefixes of the objects to be transformed. * Supports full object name * Suppor... |

### `PutMetadata`

Describes options for object metadata update.

| Property | Type | Description |
|----------|------|-------------|
| `cacheControl` | `string` | Optional. Updates objects Cache-Control fixed metadata. Unset values will be ignored. Set empty v... |
| `contentDisposition` | `string` | Optional. Updates objects Content-Disposition fixed metadata. Unset values will be ignored. Set e... |
| `contentEncoding` | `string` | Optional. Updates objects Content-Encoding fixed metadata. Unset values will be ignored. Set empt... |
| `contentLanguage` | `string` | Optional. Updates objects Content-Language fixed metadata. Refer to ISO 639-1 language codes for ... |
| `contentType` | `string` | Optional. Updates objects Content-Type fixed metadata. Unset values will be ignored. Set empty va... |
| `customMetadata` | `object` | Optional. Updates objects custom metadata. Adds or sets individual custom metadata key value pair... |
| `customTime` | `string` | Optional. Updates objects Custom-Time fixed metadata. Unset values will be ignored. Set empty val... |
| `objectRetention` | `ObjectRetention` | Optional. Updates objects retention lock configuration. Unset values will be ignored. Set empty v... |

### `PutObjectHold`

Describes options to update object hold.

| Property | Type | Description |
|----------|------|-------------|
| `eventBasedHold` | `string` | Required. Updates object event based holds state. When object event based hold is set, object can... |
| `temporaryHold` | `string` | Required. Updates object temporary holds state. When object temporary hold is set, object cannot ... |

### `RewriteObject`

Describes options for object rewrite.

| Property | Type | Description |
|----------|------|-------------|
| `kmsKey` | `string` | Required. Resource name of the Cloud KMS key that will be used to encrypt the object. The Cloud K... |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `UpdateObjectCustomContext`

Describes options to update object custom contexts.

| Property | Type | Description |
|----------|------|-------------|
| `clearAll` | `boolean` | If set, must be set to true and all existing object custom contexts will be deleted. |
| `customContextUpdates` | `CustomContextUpdates` | A collection of updates to apply to specific custom contexts. Use this to add, update or delete i... |

