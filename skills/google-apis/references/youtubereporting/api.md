# YouTube Reporting API - API Reference

**Version**: `v1` | **Methods**: 8 | **Schemas**: 18

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `youtubereporting.reportTypes.list` | GET | `v1/reportTypes` | Lists report types. |
| `youtubereporting.jobs.create` | POST | `v1/jobs` | Creates a job and returns it. |
| `youtubereporting.jobs.list` | GET | `v1/jobs` | Lists jobs. |
| `youtubereporting.jobs.get` | GET | `v1/jobs/{jobId}` | Gets a job. |
| `youtubereporting.jobs.delete` | DELETE | `v1/jobs/{jobId}` | Deletes a job. |
| `youtubereporting.jobs.reports.list` | GET | `v1/jobs/{jobId}/reports` | Lists reports created by a specific job. Returns NOT_FOUND if the job does not exist. |
| `youtubereporting.jobs.reports.get` | GET | `v1/jobs/{jobId}/reports/{reportId}` | Gets the metadata of a specific report. |
| `youtubereporting.media.download` | GET | `v1/media/{+resourceName}` | Method for media download. Download is supported on the URI `/v1/media/{+name}?alt=media`. |

### `youtubereporting.reportTypes.list`

**GET** `v1/reportTypes`

Lists report types.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `includeSystemManaged` | `boolean` | query | No | If set to true, also system-managed report types will be returned; otherwise only the report types that can be used t... |
| `onBehalfOfContentOwner` | `string` | query | No | The content owner's external ID on which behalf the user is acting on. If not set, the user is acting for himself (hi... |
| `pageSize` | `integer` | query | No | Requested page size. Server may return fewer report types than requested. If unspecified, server will pick an appropr... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListReportTypesRespon... |

**Response**: `ListReportTypesResponse`

```typescript
const res = await youtubereporting.reportTypes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/yt-analytics-monetary.readonly`
- `https://www.googleapis.com/auth/yt-analytics.readonly`

---

### `youtubereporting.jobs.create`

**POST** `v1/jobs`

Creates a job and returns it.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `onBehalfOfContentOwner` | `string` | query | No | The content owner's external ID on which behalf the user is acting on. If not set, the user is acting for himself (hi... |

**Request body**: `Job`

**Response**: `Job`

```typescript
const res = await youtubereporting.jobs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/yt-analytics-monetary.readonly`
- `https://www.googleapis.com/auth/yt-analytics.readonly`

---

### `youtubereporting.jobs.list`

**GET** `v1/jobs`

Lists jobs.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `includeSystemManaged` | `boolean` | query | No | If set to true, also system-managed jobs will be returned; otherwise only user-created jobs will be returned. System-... |
| `onBehalfOfContentOwner` | `string` | query | No | The content owner's external ID on which behalf the user is acting on. If not set, the user is acting for himself (hi... |
| `pageSize` | `integer` | query | No | Requested page size. Server may return fewer jobs than requested. If unspecified, server will pick an appropriate def... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListReportTypesRespon... |

**Response**: `ListJobsResponse`

```typescript
const res = await youtubereporting.jobs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/yt-analytics-monetary.readonly`
- `https://www.googleapis.com/auth/yt-analytics.readonly`

---

### `youtubereporting.jobs.get`

**GET** `v1/jobs/{jobId}`

Gets a job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `jobId` | `string` | path | Yes | The ID of the job to retrieve. |
| `onBehalfOfContentOwner` | `string` | query | No | The content owner's external ID on which behalf the user is acting on. If not set, the user is acting for himself (hi... |

**Response**: `Job`

```typescript
const res = await youtubereporting.jobs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/yt-analytics-monetary.readonly`
- `https://www.googleapis.com/auth/yt-analytics.readonly`

---

### `youtubereporting.jobs.delete`

**DELETE** `v1/jobs/{jobId}`

Deletes a job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `jobId` | `string` | path | Yes | The ID of the job to delete. |
| `onBehalfOfContentOwner` | `string` | query | No | The content owner's external ID on which behalf the user is acting on. If not set, the user is acting for himself (hi... |

**Response**: `Empty`

```typescript
const res = await youtubereporting.jobs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/yt-analytics-monetary.readonly`
- `https://www.googleapis.com/auth/yt-analytics.readonly`

---

### `youtubereporting.jobs.reports.list`

**GET** `v1/jobs/{jobId}/reports`

Lists reports created by a specific job. Returns NOT_FOUND if the job does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `jobId` | `string` | path | Yes | The ID of the job. |
| `createdAfter` | `string` | query | No | If set, only reports created after the specified date/time are returned. |
| `onBehalfOfContentOwner` | `string` | query | No | The content owner's external ID on which behalf the user is acting on. If not set, the user is acting for himself (hi... |
| `pageSize` | `integer` | query | No | Requested page size. Server may return fewer report types than requested. If unspecified, server will pick an appropr... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListReportsResponse.n... |
| `startTimeAtOrAfter` | `string` | query | No | If set, only reports whose start time is greater than or equal the specified date/time are returned. |
| `startTimeBefore` | `string` | query | No | If set, only reports whose start time is smaller than the specified date/time are returned. |

**Response**: `ListReportsResponse`

```typescript
const res = await youtubereporting.reports.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/yt-analytics-monetary.readonly`
- `https://www.googleapis.com/auth/yt-analytics.readonly`

---

### `youtubereporting.jobs.reports.get`

**GET** `v1/jobs/{jobId}/reports/{reportId}`

Gets the metadata of a specific report.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `jobId` | `string` | path | Yes | The ID of the job. |
| `reportId` | `string` | path | Yes | The ID of the report to retrieve. |
| `onBehalfOfContentOwner` | `string` | query | No | The content owner's external ID on which behalf the user is acting on. If not set, the user is acting for himself (hi... |

**Response**: `Report`

```typescript
const res = await youtubereporting.reports.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/yt-analytics-monetary.readonly`
- `https://www.googleapis.com/auth/yt-analytics.readonly`

---

### `youtubereporting.media.download`

**GET** `v1/media/{+resourceName}`

Method for media download. Download is supported on the URI `/v1/media/{+name}?alt=media`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceName` | `string` | path | Yes | Name of the media that is being downloaded. |

**Response**: `GdataMedia`

```typescript
const res = await youtubereporting.media.download({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/yt-analytics-monetary.readonly`
- `https://www.googleapis.com/auth/yt-analytics.readonly`

---

## Schemas

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `GdataBlobstore2Info`

gdata

| Property | Type | Description |
|----------|------|-------------|
| `blobGeneration` | `string` | gdata |
| `blobId` | `string` | gdata |
| `downloadExternalReadToken` | `string` | gdata |
| `downloadReadHandle` | `string` | gdata |
| `readToken` | `string` | gdata |
| `uploadFragmentListCreationInfo` | `string` | gdata |
| `uploadMetadataContainer` | `string` | gdata |

### `GdataCompositeMedia`

gdata

| Property | Type | Description |
|----------|------|-------------|
| `blobRef` | `string` | gdata |
| `blobstore2Info` | `GdataBlobstore2Info` | gdata |
| `cosmoBinaryReference` | `string` | gdata |
| `crc32cHash` | `integer` | gdata |
| `inline` | `string` | gdata |
| `length` | `string` | gdata |
| `md5Hash` | `string` | gdata |
| `objectId` | `GdataObjectId` | gdata |
| `path` | `string` | gdata |
| `referenceType` | `string` | gdata |
| `sha1Hash` | `string` | gdata |

### `GdataContentTypeInfo`

gdata

| Property | Type | Description |
|----------|------|-------------|
| `bestGuess` | `string` | gdata |
| `fromBytes` | `string` | gdata |
| `fromFileName` | `string` | gdata |
| `fromHeader` | `string` | gdata |
| `fromUrlPath` | `string` | gdata |

### `GdataDiffChecksumsResponse`

gdata

| Property | Type | Description |
|----------|------|-------------|
| `checksumsLocation` | `GdataCompositeMedia` | gdata |
| `chunkSizeBytes` | `string` | gdata |
| `objectLocation` | `GdataCompositeMedia` | gdata |
| `objectSizeBytes` | `string` | gdata |
| `objectVersion` | `string` | gdata |

### `GdataDiffDownloadResponse`

gdata

| Property | Type | Description |
|----------|------|-------------|
| `objectLocation` | `GdataCompositeMedia` | gdata |

### `GdataDiffUploadRequest`

gdata

| Property | Type | Description |
|----------|------|-------------|
| `checksumsInfo` | `GdataCompositeMedia` | gdata |
| `objectInfo` | `GdataCompositeMedia` | gdata |
| `objectVersion` | `string` | gdata |

### `GdataDiffUploadResponse`

gdata

| Property | Type | Description |
|----------|------|-------------|
| `objectVersion` | `string` | gdata |
| `originalObject` | `GdataCompositeMedia` | gdata |

### `GdataDiffVersionResponse`

gdata

| Property | Type | Description |
|----------|------|-------------|
| `objectSizeBytes` | `string` | gdata |
| `objectVersion` | `string` | gdata |

### `GdataDownloadParameters`

gdata

| Property | Type | Description |
|----------|------|-------------|
| `allowGzipCompression` | `boolean` | gdata |
| `ignoreRange` | `boolean` | gdata |

### `GdataMedia`

gdata

| Property | Type | Description |
|----------|------|-------------|
| `algorithm` | `string` | gdata |
| `bigstoreObjectRef` | `string` | gdata |
| `blobRef` | `string` | gdata |
| `blobstore2Info` | `GdataBlobstore2Info` | gdata |
| `compositeMedia` | `array<GdataCompositeMedia>` | gdata |
| `contentType` | `string` | gdata |
| `contentTypeInfo` | `GdataContentTypeInfo` | gdata |
| `cosmoBinaryReference` | `string` | gdata |
| `crc32cHash` | `integer` | gdata |
| `diffChecksumsResponse` | `GdataDiffChecksumsResponse` | gdata |
| `diffDownloadResponse` | `GdataDiffDownloadResponse` | gdata |
| `diffUploadRequest` | `GdataDiffUploadRequest` | gdata |
| `diffUploadResponse` | `GdataDiffUploadResponse` | gdata |
| `diffVersionResponse` | `GdataDiffVersionResponse` | gdata |
| `downloadParameters` | `GdataDownloadParameters` | gdata |
| `filename` | `string` | gdata |
| `hash` | `string` | gdata |
| `hashVerified` | `boolean` | gdata |
| `inline` | `string` | gdata |
| `isPotentialRetry` | `boolean` | gdata |
| `length` | `string` | gdata |
| `md5Hash` | `string` | gdata |
| `mediaId` | `string` | gdata |
| `objectId` | `GdataObjectId` | gdata |
| `path` | `string` | gdata |
| `referenceType` | `string` | gdata |
| `sha1Hash` | `string` | gdata |
| `sha256Hash` | `string` | gdata |
| `timestamp` | `string` | gdata |
| `token` | `string` | gdata |

### `GdataObjectId`

gdata

| Property | Type | Description |
|----------|------|-------------|
| `bucketName` | `string` | gdata |
| `generation` | `string` | gdata |
| `objectName` | `string` | gdata |

### `Job`

A job creating reports of a specific type.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | The creation date/time of the job. |
| `expireTime` | `string` | The date/time when this job will expire/expired. After a job expired, no new reports are generated. |
| `id` | `string` | The server-generated ID of the job (max. 40 characters). |
| `name` | `string` | The name of the job (max. 100 characters). |
| `reportTypeId` | `string` | The type of reports this job creates. Corresponds to the ID of a ReportType. |
| `systemManaged` | `boolean` | True if this a system-managed job that cannot be modified by the user; otherwise false. |

### `ListJobsResponse`

Response message for ReportingService.ListJobs.

| Property | Type | Description |
|----------|------|-------------|
| `jobs` | `array<Job>` | The list of jobs. |
| `nextPageToken` | `string` | A token to retrieve next page of results. Pass this value in the ListJobsRequest.page_token field... |

### `ListReportTypesResponse`

Response message for ReportingService.ListReportTypes.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token to retrieve next page of results. Pass this value in the ListReportTypesRequest.page_toke... |
| `reportTypes` | `array<ReportType>` | The list of report types. |

### `ListReportsResponse`

Response message for ReportingService.ListReports.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token to retrieve next page of results. Pass this value in the ListReportsRequest.page_token fi... |
| `reports` | `array<Report>` | The list of report types. |

### `Report`

A report's metadata including the URL from which the report itself can be downloaded.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | The date/time when this report was created. |
| `downloadUrl` | `string` | The URL from which the report can be downloaded (max. 1000 characters). |
| `endTime` | `string` | The end of the time period that the report instance covers. The value is exclusive. |
| `id` | `string` | The server-generated ID of the report. |
| `jobExpireTime` | `string` | The date/time when the job this report belongs to will expire/expired. |
| `jobId` | `string` | The ID of the job that created this report. |
| `startTime` | `string` | The start of the time period that the report instance covers. The value is inclusive. |

### `ReportType`

A report type.

| Property | Type | Description |
|----------|------|-------------|
| `deprecateTime` | `string` | The date/time when this report type was/will be deprecated. |
| `id` | `string` | The ID of the report type (max. 100 characters). |
| `name` | `string` | The name of the report type (max. 100 characters). |
| `systemManaged` | `boolean` | True if this a system-managed report type; otherwise false. Reporting jobs for system-managed rep... |

