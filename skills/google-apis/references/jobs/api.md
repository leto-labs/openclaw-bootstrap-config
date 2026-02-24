# Cloud Talent Solution API - API Reference

**Version**: `v4` | **Methods**: 23 | **Schemas**: 50

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `jobs.projects.operations.get` | GET | `v4/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `jobs.projects.tenants.get` | GET | `v4/{+name}` | Retrieves specified tenant. |
| `jobs.projects.tenants.create` | POST | `v4/{+parent}/tenants` | Creates a new tenant entity. |
| `jobs.projects.tenants.completeQuery` | GET | `v4/{+tenant}:completeQuery` | Completes the specified prefix with keyword suggestions. Intended for use by a job search auto-co... |
| `jobs.projects.tenants.list` | GET | `v4/{+parent}/tenants` | Lists all tenants associated with the project. |
| `jobs.projects.tenants.delete` | DELETE | `v4/{+name}` | Deletes specified tenant. |
| `jobs.projects.tenants.patch` | PATCH | `v4/{+name}` | Updates specified tenant. |
| `jobs.projects.tenants.clientEvents.create` | POST | `v4/{+parent}/clientEvents` | Report events issued when end user interacts with customer's application that uses Cloud Talent S... |
| `jobs.projects.tenants.companies.delete` | DELETE | `v4/{+name}` | Deletes specified company. Prerequisite: The company has no jobs associated with it. |
| `jobs.projects.tenants.companies.list` | GET | `v4/{+parent}/companies` | Lists all companies associated with the project. |
| `jobs.projects.tenants.companies.get` | GET | `v4/{+name}` | Retrieves specified company. |
| `jobs.projects.tenants.companies.create` | POST | `v4/{+parent}/companies` | Creates a new company entity. |
| `jobs.projects.tenants.companies.patch` | PATCH | `v4/{+name}` | Updates specified company. |
| `jobs.projects.tenants.jobs.delete` | DELETE | `v4/{+name}` | Deletes the specified job. Typically, the job becomes unsearchable within 10 seconds, but it may ... |
| `jobs.projects.tenants.jobs.search` | POST | `v4/{+parent}/jobs:search` | Searches for jobs using the provided SearchJobsRequest. This call constrains the visibility of jo... |
| `jobs.projects.tenants.jobs.create` | POST | `v4/{+parent}/jobs` | Creates a new job. Typically, the job becomes searchable within 10 seconds, but it may take up to... |
| `jobs.projects.tenants.jobs.batchUpdate` | POST | `v4/{+parent}/jobs:batchUpdate` | Begins executing a batch update jobs operation. |
| `jobs.projects.tenants.jobs.get` | GET | `v4/{+name}` | Retrieves the specified job, whose status is OPEN or recently EXPIRED within the last 90 days. |
| `jobs.projects.tenants.jobs.list` | GET | `v4/{+parent}/jobs` | Lists jobs by filter. |
| `jobs.projects.tenants.jobs.patch` | PATCH | `v4/{+name}` | Updates specified job. Typically, updated contents become visible in search results within 10 sec... |
| `jobs.projects.tenants.jobs.batchDelete` | POST | `v4/{+parent}/jobs:batchDelete` | Begins executing a batch delete jobs operation. |
| `jobs.projects.tenants.jobs.searchForAlert` | POST | `v4/{+parent}/jobs:searchForAlert` | Searches for jobs using the provided SearchJobsRequest. This API call is intended for the use cas... |
| `jobs.projects.tenants.jobs.batchCreate` | POST | `v4/{+parent}/jobs:batchCreate` | Begins executing a batch create jobs operation. |

### `jobs.projects.operations.get`

**GET** `v4/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await jobs.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/jobs`

---

### `jobs.projects.tenants.get`

**GET** `v4/{+name}`

Retrieves specified tenant.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the tenant to be retrieved. The format is "projects/{project_id}/tenants/{tenant_id}",... |

**Response**: `Tenant`

```typescript
const res = await jobs.tenants.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/jobs`

---

### `jobs.projects.tenants.create`

**POST** `v4/{+parent}/tenants`

Creates a new tenant entity.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the project under which the tenant is created. The format is "projects/{project_id}", for ... |

**Request body**: `Tenant`

**Response**: `Tenant`

```typescript
const res = await jobs.tenants.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/jobs`

---

### `jobs.projects.tenants.completeQuery`

**GET** `v4/{+tenant}:completeQuery`

Completes the specified prefix with keyword suggestions. Intended for use by a job search auto-complete search box.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `tenant` | `string` | path | Yes | Required. Resource name of tenant the completion is performed within. The format is "projects/{project_id}/tenants/{t... |
| `company` | `string` | query | No | If provided, restricts completion to specified company. The format is "projects/{project_id}/tenants/{tenant_id}/comp... |
| `languageCodes` | `string` | query | No | The list of languages of the query. This is the BCP-47 language code, such as "en-US" or "sr-Latn". For more informat... |
| `pageSize` | `integer` | query | No | Required. Completion result count. The maximum allowed page size is 10. |
| `query` | `string` | query | No | Required. The query used to generate suggestions. The maximum number of allowed characters is 255. |
| `scope` | `string` | query | No | The scope of the completion. The defaults is CompletionScope.PUBLIC. |
| `type` | `string` | query | No | The completion topic. The default is CompletionType.COMBINED. |

**Response**: `CompleteQueryResponse`

```typescript
const res = await jobs.tenants.completeQuery({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/jobs`

---

### `jobs.projects.tenants.list`

**GET** `v4/{+parent}/tenants`

Lists all tenants associated with the project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the project under which the tenant is created. The format is "projects/{project_id}", for ... |
| `pageSize` | `integer` | query | No | The maximum number of tenants to be returned, at most 100. Default is 100 if a non-positive number is provided. |
| `pageToken` | `string` | query | No | The starting indicator from which to return results. |

**Response**: `ListTenantsResponse`

```typescript
const res = await jobs.tenants.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/jobs`

---

### `jobs.projects.tenants.delete`

**DELETE** `v4/{+name}`

Deletes specified tenant.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the tenant to be deleted. The format is "projects/{project_id}/tenants/{tenant_id}", f... |

**Response**: `Empty`

```typescript
const res = await jobs.tenants.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/jobs`

---

### `jobs.projects.tenants.patch`

**PATCH** `v4/{+name}`

Updates specified tenant.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required during tenant update. The resource name for a tenant. This is generated by the service when a tenant is crea... |
| `updateMask` | `string` | query | No | Strongly recommended for the best service experience. If update_mask is provided, only the specified fields in tenant... |

**Request body**: `Tenant`

**Response**: `Tenant`

```typescript
const res = await jobs.tenants.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/jobs`

---

### `jobs.projects.tenants.clientEvents.create`

**POST** `v4/{+parent}/clientEvents`

Report events issued when end user interacts with customer's application that uses Cloud Talent Solution. You may inspect the created events in [self service tools](https://console.cloud.google.com/talent-solution/overview). [Learn more](https://cloud.google.com/talent-solution/docs/management-tools) about self service tools.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the tenant under which the event is created. The format is "projects/{project_id}/tenants/... |

**Request body**: `ClientEvent`

**Response**: `ClientEvent`

```typescript
const res = await jobs.clientEvents.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/jobs`

---

### `jobs.projects.tenants.companies.delete`

**DELETE** `v4/{+name}`

Deletes specified company. Prerequisite: The company has no jobs associated with it.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the company to be deleted. The format is "projects/{project_id}/tenants/{tenant_id}/co... |

**Response**: `Empty`

```typescript
const res = await jobs.companies.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/jobs`

---

### `jobs.projects.tenants.companies.list`

**GET** `v4/{+parent}/companies`

Lists all companies associated with the project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the tenant under which the company is created. The format is "projects/{project_id}/tenant... |
| `pageSize` | `integer` | query | No | The maximum number of companies to be returned, at most 100. Default is 100 if a non-positive number is provided. |
| `pageToken` | `string` | query | No | The starting indicator from which to return results. |
| `requireOpenJobs` | `boolean` | query | No | Set to true if the companies requested must have open jobs. Defaults to false. If true, at most page_size of companie... |

**Response**: `ListCompaniesResponse`

```typescript
const res = await jobs.companies.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/jobs`

---

### `jobs.projects.tenants.companies.get`

**GET** `v4/{+name}`

Retrieves specified company.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the company to be retrieved. The format is "projects/{project_id}/tenants/{tenant_id}/... |

**Response**: `Company`

```typescript
const res = await jobs.companies.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/jobs`

---

### `jobs.projects.tenants.companies.create`

**POST** `v4/{+parent}/companies`

Creates a new company entity.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the tenant under which the company is created. The format is "projects/{project_id}/tenant... |

**Request body**: `Company`

**Response**: `Company`

```typescript
const res = await jobs.companies.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/jobs`

---

### `jobs.projects.tenants.companies.patch`

**PATCH** `v4/{+name}`

Updates specified company.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required during company update. The resource name for a company. This is generated by the service when a company is c... |
| `updateMask` | `string` | query | No | Strongly recommended for the best service experience. If update_mask is provided, only the specified fields in compan... |

**Request body**: `Company`

**Response**: `Company`

```typescript
const res = await jobs.companies.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/jobs`

---

### `jobs.projects.tenants.jobs.delete`

**DELETE** `v4/{+name}`

Deletes the specified job. Typically, the job becomes unsearchable within 10 seconds, but it may take up to 5 minutes.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the job to be deleted. The format is "projects/{project_id}/tenants/{tenant_id}/jobs/{... |

**Response**: `Empty`

```typescript
const res = await jobs.jobs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/jobs`

---

### `jobs.projects.tenants.jobs.search`

**POST** `v4/{+parent}/jobs:search`

Searches for jobs using the provided SearchJobsRequest. This call constrains the visibility of jobs present in the database, and only returns jobs that the caller has permission to search against.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the tenant to search within. The format is "projects/{project_id}/tenants/{tenant_id}"... |

**Request body**: `SearchJobsRequest`

**Response**: `SearchJobsResponse`

```typescript
const res = await jobs.jobs.search({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/jobs`

---

### `jobs.projects.tenants.jobs.create`

**POST** `v4/{+parent}/jobs`

Creates a new job. Typically, the job becomes searchable within 10 seconds, but it may take up to 5 minutes.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the tenant under which the job is created. The format is "projects/{project_id}/tenant... |

**Request body**: `Job`

**Response**: `Job`

```typescript
const res = await jobs.jobs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/jobs`

---

### `jobs.projects.tenants.jobs.batchUpdate`

**POST** `v4/{+parent}/jobs:batchUpdate`

Begins executing a batch update jobs operation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the tenant under which the job is created. The format is "projects/{project_id}/tenant... |

**Request body**: `BatchUpdateJobsRequest`

**Response**: `Operation`

```typescript
const res = await jobs.jobs.batchUpdate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/jobs`

---

### `jobs.projects.tenants.jobs.get`

**GET** `v4/{+name}`

Retrieves the specified job, whose status is OPEN or recently EXPIRED within the last 90 days.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the job to retrieve. The format is "projects/{project_id}/tenants/{tenant_id}/jobs/{jo... |

**Response**: `Job`

```typescript
const res = await jobs.jobs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/jobs`

---

### `jobs.projects.tenants.jobs.list`

**GET** `v4/{+parent}/jobs`

Lists jobs by filter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the tenant under which the job is created. The format is "projects/{project_id}/tenant... |
| `filter` | `string` | query | No | Required. The filter string specifies the jobs to be enumerated. Supported operator: =, AND The fields eligible for f... |
| `jobView` | `string` | query | No | The desired job attributes returned for jobs in the search response. Defaults to JobView.JOB_VIEW_FULL if no value is... |
| `pageSize` | `integer` | query | No | The maximum number of jobs to be returned per page of results. If job_view is set to JobView.JOB_VIEW_ID_ONLY, the ma... |
| `pageToken` | `string` | query | No | The starting point of a query result. |

**Response**: `ListJobsResponse`

```typescript
const res = await jobs.jobs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/jobs`

---

### `jobs.projects.tenants.jobs.patch`

**PATCH** `v4/{+name}`

Updates specified job. Typically, updated contents become visible in search results within 10 seconds, but it may take up to 5 minutes.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required during job update. The resource name for the job. This is generated by the service when a job is created. Th... |
| `updateMask` | `string` | query | No | Strongly recommended for the best service experience. If update_mask is provided, only the specified fields in job ar... |

**Request body**: `Job`

**Response**: `Job`

```typescript
const res = await jobs.jobs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/jobs`

---

### `jobs.projects.tenants.jobs.batchDelete`

**POST** `v4/{+parent}/jobs:batchDelete`

Begins executing a batch delete jobs operation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the tenant under which the job is created. The format is "projects/{project_id}/tenant... |

**Request body**: `BatchDeleteJobsRequest`

**Response**: `Operation`

```typescript
const res = await jobs.jobs.batchDelete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/jobs`

---

### `jobs.projects.tenants.jobs.searchForAlert`

**POST** `v4/{+parent}/jobs:searchForAlert`

Searches for jobs using the provided SearchJobsRequest. This API call is intended for the use case of targeting passive job seekers (for example, job seekers who have signed up to receive email alerts about potential job opportunities), it has different algorithmic adjustments that are designed to specifically target passive job seekers. This call constrains the visibility of jobs present in the database, and only returns jobs the caller has permission to search against.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the tenant to search within. The format is "projects/{project_id}/tenants/{tenant_id}"... |

**Request body**: `SearchJobsRequest`

**Response**: `SearchJobsResponse`

```typescript
const res = await jobs.jobs.searchForAlert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/jobs`

---

### `jobs.projects.tenants.jobs.batchCreate`

**POST** `v4/{+parent}/jobs:batchCreate`

Begins executing a batch create jobs operation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the tenant under which the job is created. The format is "projects/{project_id}/tenant... |

**Request body**: `BatchCreateJobsRequest`

**Response**: `Operation`

```typescript
const res = await jobs.jobs.batchCreate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/jobs`

---

## Schemas

### `ApplicationInfo`

Application related details of a job posting.

| Property | Type | Description |
|----------|------|-------------|
| `emails` | `array<string>` | Use this field to specify email address(es) to which resumes or applications can be sent. The max... |
| `instruction` | `string` | Use this field to provide instructions, such as "Mail your application to ...", that a candidate ... |
| `uris` | `array<string>` | Use this URI field to direct an applicant to a website, for example to link to an online applicat... |

### `BatchCreateJobsRequest`

Request to create a batch of jobs.

| Property | Type | Description |
|----------|------|-------------|
| `jobs` | `array<Job>` | Required. The jobs to be created. A maximum of 200 jobs can be created in a batch. |

### `BatchCreateJobsResponse`

The result of JobService.BatchCreateJobs. It's used to replace google.longrunning.Operation.response in case of success.

| Property | Type | Description |
|----------|------|-------------|
| `jobResults` | `array<JobResult>` | List of job mutation results from a batch create operation. It can change until operation status ... |

### `BatchDeleteJobsRequest`

Request to delete a batch of jobs.

| Property | Type | Description |
|----------|------|-------------|
| `names` | `array<string>` | The names of the jobs to delete. The format is "projects/{project_id}/tenants/{tenant_id}/jobs/{j... |

### `BatchDeleteJobsResponse`

The result of JobService.BatchDeleteJobs. It's used to replace google.longrunning.Operation.response in case of success.

| Property | Type | Description |
|----------|------|-------------|
| `jobResults` | `array<JobResult>` | List of job mutation results from a batch delete operation. It can change until operation status ... |

### `BatchOperationMetadata`

Metadata used for long running operations returned by CTS batch APIs. It's used to replace google.longrunning.Operation.metadata.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | The time when the batch operation is created. |
| `endTime` | `string` | The time when the batch operation is finished and google.longrunning.Operation.done is set to `tr... |
| `failureCount` | `integer` | Count of failed item(s) inside an operation. |
| `state` | `string` | The state of a long running operation. |
| `stateDescription` | `string` | More detailed information about operation state. |
| `successCount` | `integer` | Count of successful item(s) inside an operation. |
| `totalCount` | `integer` | Count of total item(s) inside an operation. |
| `updateTime` | `string` | The time when the batch operation status is updated. The metadata and the update_time is refreshe... |

### `BatchUpdateJobsRequest`

Request to update a batch of jobs.

| Property | Type | Description |
|----------|------|-------------|
| `jobs` | `array<Job>` | Required. The jobs to be updated. A maximum of 200 jobs can be updated in a batch. |
| `updateMask` | `string` | Strongly recommended for the best service experience. Be aware that it will also increase latency... |

### `BatchUpdateJobsResponse`

The result of JobService.BatchUpdateJobs. It's used to replace google.longrunning.Operation.response in case of success.

| Property | Type | Description |
|----------|------|-------------|
| `jobResults` | `array<JobResult>` | List of job mutation results from a batch update operation. It can change until operation status ... |

### `ClientEvent`

An event issued when an end user interacts with the application that implements Cloud Talent Solution. Providing this information improves the quality of results for the API clients, enabling the service to perform optimally. The number of events sent must be consistent with other calls, such as job searches, issued to the service by the client.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Required. The timestamp of the event. |
| `eventId` | `string` | Required. A unique identifier, generated by the client application. |
| `eventNotes` | `string` | Notes about the event provided by recruiters or other users, for example, feedback on why a job w... |
| `jobEvent` | `JobEvent` | An event issued when a job seeker interacts with the application that implements Cloud Talent Sol... |
| `requestId` | `string` | Strongly recommended for the best service experience. A unique ID generated in the API responses.... |

### `CommuteFilter`

Parameters needed for commute search.

| Property | Type | Description |
|----------|------|-------------|
| `allowImpreciseAddresses` | `boolean` | If `true`, jobs without street level addresses may also be returned. For city level addresses, th... |
| `commuteMethod` | `string` | Required. The method of transportation to calculate the commute time for. |
| `departureTime` | `TimeOfDay` | The departure time used to calculate traffic impact, represented as google.type.TimeOfDay in loca... |
| `roadTraffic` | `string` | Specifies the traffic density to use when calculating commute time. |
| `startCoordinates` | `LatLng` | Required. The latitude and longitude of the location to calculate the commute time from. |
| `travelDuration` | `string` | Required. The maximum travel time in seconds. The maximum allowed value is `3600s` (one hour). Fo... |

### `CommuteInfo`

Commute details related to this job.

| Property | Type | Description |
|----------|------|-------------|
| `jobLocation` | `Location` | Location used as the destination in the commute calculation. |
| `travelDuration` | `string` | The number of seconds required to travel to the job location from the query location. A duration ... |

### `Company`

A Company resource represents a company in the service. A company is the entity that owns job postings, that is, the hiring entity responsible for employing applicants for the job position.

| Property | Type | Description |
|----------|------|-------------|
| `careerSiteUri` | `string` | The URI to employer's career site or careers page on the employer's web site, for example, "https... |
| `derivedInfo` | `CompanyDerivedInfo` | Output only. Derived details about the company. |
| `displayName` | `string` | Required. The display name of the company, for example, "Google LLC". |
| `eeoText` | `string` | Equal Employment Opportunity legal disclaimer text to be associated with all jobs, and typically ... |
| `externalId` | `string` | Required. Client side company identifier, used to uniquely identify the company. The maximum numb... |
| `headquartersAddress` | `string` | The street address of the company's main headquarters, which may be different from the job locati... |
| `hiringAgency` | `boolean` | Set to true if it is the hiring agency that post jobs for other employers. Defaults to false if n... |
| `imageUri` | `string` | A URI that hosts the employer's company logo. |
| `keywordSearchableJobCustomAttributes` | `array<string>` | This field is deprecated. Please set the searchability of the custom attribute in the Job.custom_... |
| `name` | `string` | Required during company update. The resource name for a company. This is generated by the service... |
| `size` | `string` | The employer's company size. |
| `suspended` | `boolean` | Output only. Indicates whether a company is flagged to be suspended from public availability by t... |
| `websiteUri` | `string` | The URI representing the company's primary web site or home page, for example, "https://www.googl... |

### `CompanyDerivedInfo`

Derived details about the company.

| Property | Type | Description |
|----------|------|-------------|
| `headquartersLocation` | `Location` | A structured headquarters location of the company, resolved from Company.headquarters_address if ... |

### `CompensationEntry`

A compensation entry that represents one component of compensation, such as base pay, bonus, or other compensation type. Annualization: One compensation entry can be annualized if - it contains valid amount or range. - and its expected_units_per_year is set or can be derived. Its annualized range is determined as (amount or range) times expected_units_per_year.

| Property | Type | Description |
|----------|------|-------------|
| `amount` | `Money` | Compensation amount. |
| `description` | `string` | Compensation description. For example, could indicate equity terms or provide additional context ... |
| `expectedUnitsPerYear` | `number` | Expected number of units paid each year. If not specified, when Job.employment_types is FULLTIME,... |
| `range` | `CompensationRange` | Compensation range. |
| `type` | `string` | Compensation type. Default is CompensationType.COMPENSATION_TYPE_UNSPECIFIED. |
| `unit` | `string` | Frequency of the specified amount. Default is CompensationUnit.COMPENSATION_UNIT_UNSPECIFIED. |

### `CompensationFilter`

Filter on job compensation type and amount.

| Property | Type | Description |
|----------|------|-------------|
| `includeJobsWithUnspecifiedCompensationRange` | `boolean` | If set to true, jobs with unspecified compensation range fields are included. |
| `range` | `CompensationRange` | Compensation range. |
| `type` | `string` | Required. Type of filter. |
| `units` | `array<string>` | Required. Specify desired `base compensation entry's` CompensationInfo.CompensationUnit. |

### `CompensationInfo`

Job compensation details.

| Property | Type | Description |
|----------|------|-------------|
| `annualizedBaseCompensationRange` | `CompensationRange` | Output only. Annualized base compensation range. Computed as base compensation entry's Compensati... |
| `annualizedTotalCompensationRange` | `CompensationRange` | Output only. Annualized total compensation range. Computed as all compensation entries' Compensat... |
| `entries` | `array<CompensationEntry>` | Job compensation information. At most one entry can be of type CompensationInfo.CompensationType.... |

### `CompensationRange`

Compensation range.

| Property | Type | Description |
|----------|------|-------------|
| `maxCompensation` | `Money` | The maximum amount of compensation. If left empty, the value is set to a maximal compensation val... |
| `minCompensation` | `Money` | The minimum amount of compensation. If left empty, the value is set to zero and the currency code... |

### `CompleteQueryResponse`

Response of auto-complete query.

| Property | Type | Description |
|----------|------|-------------|
| `completionResults` | `array<CompletionResult>` | Results of the matching job/company candidates. |
| `metadata` | `ResponseMetadata` | Additional information for the API invocation, such as the request tracking id. |

### `CompletionResult`

Resource that represents completion results.

| Property | Type | Description |
|----------|------|-------------|
| `imageUri` | `string` | The URI of the company image for COMPANY_NAME. |
| `suggestion` | `string` | The suggestion for the query. |
| `type` | `string` | The completion topic. |

### `CustomAttribute`

Custom attribute values that are either filterable or non-filterable.

| Property | Type | Description |
|----------|------|-------------|
| `filterable` | `boolean` | If the `filterable` flag is true, the custom field values may be used for custom attribute filter... |
| `keywordSearchable` | `boolean` | If the `keyword_searchable` flag is true, the keywords in custom fields are searchable by keyword... |
| `longValues` | `array<string>` | Exactly one of string_values or long_values must be specified. This field is used to perform numb... |
| `stringValues` | `array<string>` | Exactly one of string_values or long_values must be specified. This field is used to perform a st... |

### `CustomRankingInfo`

Custom ranking information for SearchJobsRequest.

| Property | Type | Description |
|----------|------|-------------|
| `importanceLevel` | `string` | Required. Controls over how important the score of CustomRankingInfo.ranking_expression gets appl... |
| `rankingExpression` | `string` | Required. Controls over how job documents get ranked on top of existing relevance score (determin... |

### `DeviceInfo`

Device information collected from the job seeker, candidate, or other entity conducting the job search. Providing this information improves the quality of the search results across devices.

| Property | Type | Description |
|----------|------|-------------|
| `deviceType` | `string` | Type of the device. |
| `id` | `string` | A device-specific ID. The ID must be a unique identifier that distinguishes the device from other... |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `HistogramQuery`

The histogram request.

| Property | Type | Description |
|----------|------|-------------|
| `histogramQuery` | `string` | An expression specifies a histogram request against matching jobs for searches. See SearchJobsReq... |

### `HistogramQueryResult`

Histogram result that matches HistogramQuery specified in searches.

| Property | Type | Description |
|----------|------|-------------|
| `histogram` | `object` | A map from the values of the facet associated with distinct values to the number of matching entr... |
| `histogramQuery` | `string` | Requested histogram expression. |

### `Job`

A Job resource represents a job posting (also referred to as a "job listing" or "job requisition"). A job belongs to a Company, which is the hiring entity responsible for the job.

| Property | Type | Description |
|----------|------|-------------|
| `addresses` | `array<string>` | Strongly recommended for the best service experience. Location(s) where the employer is looking t... |
| `applicationInfo` | `ApplicationInfo` | Job application information. |
| `company` | `string` | Required. The resource name of the company listing the job. The format is "projects/{project_id}/... |
| `companyDisplayName` | `string` | Output only. Display name of the company listing the job. |
| `compensationInfo` | `CompensationInfo` | Job compensation information (a.k.a. "pay rate") i.e., the compensation that will paid to the emp... |
| `customAttributes` | `object` | A map of fields to hold both filterable and non-filterable custom job attributes that are not cov... |
| `degreeTypes` | `array<string>` | The desired education degrees for the job, such as Bachelors, Masters. |
| `department` | `string` | The department or functional area within the company with the open position. The maximum number o... |
| `derivedInfo` | `JobDerivedInfo` | Output only. Derived details about the job posting. |
| `description` | `string` | Required. The description of the job, which typically includes a multi-paragraph description of t... |
| `employmentTypes` | `array<string>` | The employment type(s) of a job, for example, full time or part time. |
| `incentives` | `string` | A description of bonus, commission, and other compensation incentives associated with the job not... |
| `jobBenefits` | `array<string>` | The benefits included with the job. |
| `jobEndTime` | `string` | The end timestamp of the job. Typically this field is used for contracting engagements. Invalid t... |
| `jobLevel` | `string` | The experience level associated with the job, such as "Entry Level". |
| `jobStartTime` | `string` | The start timestamp of the job in UTC time zone. Typically this field is used for contracting eng... |
| `languageCode` | `string` | The language of the posting. This field is distinct from any requirements for fluency that are as... |
| `name` | `string` | Required during job update. The resource name for the job. This is generated by the service when ... |
| `postingCreateTime` | `string` | Output only. The timestamp when this job posting was created. |
| `postingExpireTime` | `string` | Strongly recommended for the best service experience. The expiration timestamp of the job. After ... |
| `postingPublishTime` | `string` | The timestamp this job posting was most recently published. The default value is the time the req... |
| `postingRegion` | `string` | The job PostingRegion (for example, state, country) throughout which the job is available. If thi... |
| `postingUpdateTime` | `string` | Output only. The timestamp when this job posting was last updated. |
| `processingOptions` | `ProcessingOptions` | Options for job processing. |
| `promotionValue` | `integer` | A promotion value of the job, as determined by the client. The value determines the sort order of... |
| `qualifications` | `string` | A description of the qualifications required to perform the job. The use of this field is recomme... |
| `requisitionId` | `string` | Required. The requisition ID, also referred to as the posting ID, is assigned by the client to id... |
| `responsibilities` | `string` | A description of job responsibilities. The use of this field is recommended as an alternative to ... |
| `title` | `string` | Required. The title of the job, such as "Software Engineer" The maximum number of allowed charact... |
| `visibility` | `string` | Deprecated. The job is only visible to the owner. The visibility of the job. Defaults to Visibili... |

### `JobDerivedInfo`

Derived details about the job posting.

| Property | Type | Description |
|----------|------|-------------|
| `jobCategories` | `array<string>` | Job categories derived from Job.title and Job.description. |
| `locations` | `array<Location>` | Structured locations of the job, resolved from Job.addresses. locations are exactly matched to Jo... |

### `JobEvent`

An event issued when a job seeker interacts with the application that implements Cloud Talent Solution.

| Property | Type | Description |
|----------|------|-------------|
| `jobs` | `array<string>` | Required. The job name(s) associated with this event. For example, if this is an impression event... |
| `type` | `string` | Required. The type of the event (see JobEventType). |

### `JobQuery`

The query required to perform a search query.

| Property | Type | Description |
|----------|------|-------------|
| `commuteFilter` | `CommuteFilter` | Allows filtering jobs by commute time with different travel methods (for example, driving or publ... |
| `companies` | `array<string>` | This filter specifies the company entities to search against. If a value isn't specified, jobs ar... |
| `companyDisplayNames` | `array<string>` | This filter specifies the company Company.display_name of the jobs to search against. The company... |
| `compensationFilter` | `CompensationFilter` | This search filter is applied only to Job.compensation_info. For example, if the filter is specif... |
| `customAttributeFilter` | `string` | This filter specifies a structured syntax to match against the Job.custom_attributes marked as `f... |
| `disableSpellCheck` | `boolean` | This flag controls the spell-check feature. If false, the service attempts to correct a misspelle... |
| `employmentTypes` | `array<string>` | The employment type filter specifies the employment type of jobs to search against, such as Emplo... |
| `excludedJobs` | `array<string>` | This filter specifies a list of job names to be excluded during search. At most 400 excluded job ... |
| `jobCategories` | `array<string>` | The category filter specifies the categories of jobs to search against. See JobCategory for more ... |
| `languageCodes` | `array<string>` | This filter specifies the locale of jobs to search against, for example, "en-US". If a value isn'... |
| `locationFilters` | `array<LocationFilter>` | The location filter specifies geo-regions containing the jobs to search against. See LocationFilt... |
| `publishTimeRange` | `TimestampRange` | Jobs published within a range specified by this filter are searched against. |
| `query` | `string` | The query string that matches against the job title, description, and location fields. The maximu... |
| `queryLanguageCode` | `string` | The language code of query. For example, "en-US". This field helps to better interpret the query.... |

### `JobResult`

Mutation result of a job from a batch operation.

| Property | Type | Description |
|----------|------|-------------|
| `job` | `Job` | Here Job only contains basic information including name, company, language_code and requisition_i... |
| `status` | `Status` | The status of the job processed. This field is populated if the processing of the job fails. |

### `LatLng`

An object that represents a latitude/longitude pair. This is expressed as a pair of doubles to represent degrees latitude and degrees longitude. Unless specified otherwise, this object must conform to the WGS84 standard. Values must be within normalized ranges.

| Property | Type | Description |
|----------|------|-------------|
| `latitude` | `number` | The latitude in degrees. It must be in the range [-90.0, +90.0]. |
| `longitude` | `number` | The longitude in degrees. It must be in the range [-180.0, +180.0]. |

### `ListCompaniesResponse`

The List companies response object.

| Property | Type | Description |
|----------|------|-------------|
| `companies` | `array<Company>` | Companies for the current client. |
| `metadata` | `ResponseMetadata` | Additional information for the API invocation, such as the request tracking id. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. |

### `ListJobsResponse`

List jobs response.

| Property | Type | Description |
|----------|------|-------------|
| `jobs` | `array<Job>` | The Jobs for a given company. The maximum number of items returned is based on the limit field pr... |
| `metadata` | `ResponseMetadata` | Additional information for the API invocation, such as the request tracking id. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. |

### `ListTenantsResponse`

The List tenants response object.

| Property | Type | Description |
|----------|------|-------------|
| `metadata` | `ResponseMetadata` | Additional information for the API invocation, such as the request tracking id. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. |
| `tenants` | `array<Tenant>` | Tenants for the current client. |

### `Location`

A resource that represents a location with full geographic information.

| Property | Type | Description |
|----------|------|-------------|
| `latLng` | `LatLng` | An object representing a latitude/longitude pair. |
| `locationType` | `string` | The type of a location, which corresponds to the address lines field of google.type.PostalAddress... |
| `postalAddress` | `PostalAddress` | Postal address of the location that includes human readable information, such as postal delivery ... |
| `radiusMiles` | `number` | Radius in miles of the job location. This value is derived from the location bounding box in whic... |

### `LocationFilter`

Geographic region of the search.

| Property | Type | Description |
|----------|------|-------------|
| `address` | `string` | The address name, such as "Mountain View" or "Bay Area". |
| `distanceInMiles` | `number` | The distance_in_miles is applied when the location being searched for is identified as a city or ... |
| `latLng` | `LatLng` | The latitude and longitude of the geographic center to search from. This field is ignored if `add... |
| `regionCode` | `string` | CLDR region code of the country/region. This field may be used in two ways: 1) If telecommute pre... |
| `telecommutePreference` | `string` | Allows the client to return jobs without a set location, specifically, telecommuting jobs (teleco... |

### `MatchingJob`

Job entry with metadata inside SearchJobsResponse.

| Property | Type | Description |
|----------|------|-------------|
| `commuteInfo` | `CommuteInfo` | Commute information which is generated based on specified CommuteFilter. |
| `job` | `Job` | Job resource that matches the specified SearchJobsRequest. |
| `jobSummary` | `string` | A summary of the job with core information that's displayed on the search results listing page. |
| `jobTitleSnippet` | `string` | Contains snippets of text from the Job.title field most closely matching a search query's keyword... |
| `searchTextSnippet` | `string` | Contains snippets of text from the Job.description and similar fields that most closely match a s... |

### `Money`

Represents an amount of money with its currency type.

| Property | Type | Description |
|----------|------|-------------|
| `currencyCode` | `string` | The three-letter currency code defined in ISO 4217. |
| `nanos` | `integer` | Number of nano (10^-9) units of the amount. The value must be between -999,999,999 and +999,999,9... |
| `units` | `string` | The whole units of the amount. For example if `currencyCode` is `"USD"`, then 1 unit is one US do... |

### `Operation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `Status` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `PostalAddress`

Represents a postal address, such as for postal delivery or payments addresses. With a postal address, a postal service can deliver items to a premise, P.O. box, or similar. A postal address is not intended to model geographical locations like roads, towns, or mountains. In typical usage, an address would be created by user input or from importing existing data, depending on the type of process. Advice on address input or editing: - Use an internationalization-ready address widget such as https://github.com/google/libaddressinput. - Users should not be presented with UI elements for input or editing of fields outside countries where that field is used. For more guidance on how to use this schema, see: https://support.google.com/business/answer/6397478.

| Property | Type | Description |
|----------|------|-------------|
| `addressLines` | `array<string>` | Unstructured address lines describing the lower levels of an address. Because values in `address_... |
| `administrativeArea` | `string` | Optional. Highest administrative subdivision which is used for postal addresses of a country or r... |
| `languageCode` | `string` | Optional. BCP-47 language code of the contents of this address (if known). This is often the UI l... |
| `locality` | `string` | Optional. Generally refers to the city or town portion of the address. Examples: US city, IT comu... |
| `organization` | `string` | Optional. The name of the organization at the address. |
| `postalCode` | `string` | Optional. Postal code of the address. Not all countries use or require postal codes to be present... |
| `recipients` | `array<string>` | Optional. The recipient at the address. This field may, under certain circumstances, contain mult... |
| `regionCode` | `string` | Required. CLDR region code of the country/region of the address. This is never inferred and it is... |
| `revision` | `integer` | The schema revision of the `PostalAddress`. This must be set to 0, which is the latest revision. ... |
| `sortingCode` | `string` | Optional. Additional, country-specific, sorting code. This is not used in most regions. Where it ... |
| `sublocality` | `string` | Optional. Sublocality of the address. For example, this can be a neighborhood, borough, or district. |

### `ProcessingOptions`

Options for job processing.

| Property | Type | Description |
|----------|------|-------------|
| `disableStreetAddressResolution` | `boolean` | If set to `true`, the service does not attempt to resolve a more precise address for the job. |
| `htmlSanitization` | `string` | Option for job HTML content sanitization. Applied fields are: * description * applicationInfo.ins... |

### `RequestMetadata`

Meta information related to the job searcher or entity conducting the job search. This information is used to improve the performance of the service.

| Property | Type | Description |
|----------|------|-------------|
| `allowMissingIds` | `boolean` | Only set when any of domain, session_id and user_id isn't available for some reason. It is highly... |
| `deviceInfo` | `DeviceInfo` | The type of device used by the job seeker at the time of the call to the service. |
| `domain` | `string` | Required if allow_missing_ids is unset or `false`. The client-defined scope or source of the serv... |
| `sessionId` | `string` | Required if allow_missing_ids is unset or `false`. A unique session identification string. A sess... |
| `userId` | `string` | Required if allow_missing_ids is unset or `false`. A unique user identification string, as determ... |

### `ResponseMetadata`

Additional information returned to client, such as debugging information.

| Property | Type | Description |
|----------|------|-------------|
| `requestId` | `string` | A unique id associated with this call. This id is logged for tracking purposes. |

### `SearchJobsRequest`

The Request body of the `SearchJobs` call.

| Property | Type | Description |
|----------|------|-------------|
| `customRankingInfo` | `CustomRankingInfo` | Controls over how job documents get ranked on top of existing relevance score (determined by API ... |
| `disableKeywordMatch` | `boolean` | This field is deprecated. Please use SearchJobsRequest.keyword_match_mode going forward. To migra... |
| `diversificationLevel` | `string` | Controls whether highly similar jobs are returned next to each other in the search results. Jobs ... |
| `enableBroadening` | `boolean` | Controls whether to broaden the search when it produces sparse results. Broadened queries append ... |
| `histogramQueries` | `array<HistogramQuery>` | An expression specifies a histogram request against matching jobs. Expression syntax is an aggreg... |
| `jobQuery` | `JobQuery` | Query used to search against jobs, such as keyword, location filters, etc. |
| `jobView` | `string` | The desired job attributes returned for jobs in the search response. Defaults to JobView.JOB_VIEW... |
| `keywordMatchMode` | `string` | Controls what keyword match options to use. If both keyword_match_mode and disable_keyword_match ... |
| `maxPageSize` | `integer` | A limit on the number of jobs returned in the search results. Increasing this value above the def... |
| `offset` | `integer` | An integer that specifies the current offset (that is, starting result location, amongst the jobs... |
| `orderBy` | `string` | The criteria determining how search results are sorted. Default is `"relevance desc"`. Supported ... |
| `pageToken` | `string` | The token specifying the current offset within search results. See SearchJobsResponse.next_page_t... |
| `relevanceThreshold` | `string` | Optional. The relevance threshold of the search results. Default to Google defined threshold, lev... |
| `requestMetadata` | `RequestMetadata` | Required. The meta information collected about the job searcher, used to improve the search quali... |
| `searchMode` | `string` | Mode of a search. Defaults to SearchMode.JOB_SEARCH. |

### `SearchJobsResponse`

Response for SearchJob method.

| Property | Type | Description |
|----------|------|-------------|
| `broadenedQueryJobsCount` | `integer` | If query broadening is enabled, we may append additional results from the broadened query. This n... |
| `histogramQueryResults` | `array<HistogramQueryResult>` | The histogram results that match with specified SearchJobsRequest.histogram_queries. |
| `locationFilters` | `array<Location>` | The location filters that the service applied to the specified query. If any filters are lat-lng ... |
| `matchingJobs` | `array<MatchingJob>` | The Job entities that match the specified SearchJobsRequest. |
| `metadata` | `ResponseMetadata` | Additional information for the API invocation, such as the request tracking id. |
| `nextPageToken` | `string` | The token that specifies the starting position of the next page of results. This field is empty i... |
| `spellCorrection` | `SpellingCorrection` | The spell checking result, and correction. |
| `totalSize` | `integer` | Number of jobs that match the specified query. Note: This size is precise only if the total is le... |

### `SpellingCorrection`

Spell check result.

| Property | Type | Description |
|----------|------|-------------|
| `corrected` | `boolean` | Indicates if the query was corrected by the spell checker. |
| `correctedHtml` | `string` | Corrected output with html tags to highlight the corrected words. Corrected words are called out ... |
| `correctedText` | `string` | Correction output consisting of the corrected keyword string. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `Tenant`

A Tenant resource represents a tenant in the service. A tenant is a group or entity that shares common access with specific privileges for resources like jobs. Customer may create multiple tenants to provide data isolation for different groups.

| Property | Type | Description |
|----------|------|-------------|
| `externalId` | `string` | Required. Client side tenant identifier, used to uniquely identify the tenant. The maximum number... |
| `name` | `string` | Required during tenant update. The resource name for a tenant. This is generated by the service w... |

### `TimeOfDay`

Represents a time of day. The date and time zone are either not significant or are specified elsewhere. An API may choose to allow leap seconds. Related types are google.type.Date and `google.protobuf.Timestamp`.

| Property | Type | Description |
|----------|------|-------------|
| `hours` | `integer` | Hours of a day in 24 hour format. Must be greater than or equal to 0 and typically must be less t... |
| `minutes` | `integer` | Minutes of an hour. Must be greater than or equal to 0 and less than or equal to 59. |
| `nanos` | `integer` | Fractions of seconds, in nanoseconds. Must be greater than or equal to 0 and less than or equal t... |
| `seconds` | `integer` | Seconds of a minute. Must be greater than or equal to 0 and typically must be less than or equal ... |

### `TimestampRange`

Message representing a period of time between two timestamps.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | End of the period (exclusive). |
| `startTime` | `string` | Begin of the period (inclusive). |

