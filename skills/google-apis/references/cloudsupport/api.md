# Google Cloud Support API - API Reference

**Version**: `v2` | **Methods**: 13 | **Schemas**: 25

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `cloudsupport.media.upload` | POST | `v2/{+parent}/attachments` | Create a file attachment on a case or Cloud resource. The attachment must have the following fiel... |
| `cloudsupport.media.download` | GET | `v2/{+name}:download` | Download a file attached to a case. When this endpoint is called, no "response body" will be retu... |
| `cloudsupport.cases.get` | GET | `v2/{+name}` | Retrieve a case. EXAMPLES: cURL: ```shell case="projects/some-project/cases/16033687" curl \ --he... |
| `cloudsupport.cases.list` | GET | `v2/{+parent}/cases` | Retrieve all cases under a parent, but not its children. For example, listing cases under an orga... |
| `cloudsupport.cases.search` | GET | `v2/{+parent}/cases:search` | Search for cases using a query. EXAMPLES: cURL: ```shell parent="projects/some-project" curl \ --... |
| `cloudsupport.cases.create` | POST | `v2/{+parent}/cases` | Create a new case and associate it with a parent. It must have the following fields set: `display... |
| `cloudsupport.cases.patch` | PATCH | `v2/{+name}` | Update a case. Only some fields can be updated. EXAMPLES: cURL: ```shell case="projects/some-proj... |
| `cloudsupport.cases.escalate` | POST | `v2/{+name}:escalate` | Escalate a case, starting the Google Cloud Support escalation management process. This operation ... |
| `cloudsupport.cases.close` | POST | `v2/{+name}:close` | Close a case. EXAMPLES: cURL: ```shell case="projects/some-project/cases/43595344" curl \ --reque... |
| `cloudsupport.cases.attachments.list` | GET | `v2/{+parent}/attachments` | List all the attachments associated with a support case. EXAMPLES: cURL: ```shell case="projects/... |
| `cloudsupport.cases.comments.list` | GET | `v2/{+parent}/comments` | List all the comments associated with a case. EXAMPLES: cURL: ```shell case="projects/some-projec... |
| `cloudsupport.cases.comments.create` | POST | `v2/{+parent}/comments` | Add a new comment to a case. The comment must have the following fields set: `body`. EXAMPLES: cU... |
| `cloudsupport.caseClassifications.search` | GET | `v2/caseClassifications:search` | Retrieve valid classifications to use when creating a support case. Classifications are hierarchi... |

### `cloudsupport.media.upload`

**POST** `v2/{+parent}/attachments`

Create a file attachment on a case or Cloud resource. The attachment must have the following fields set: `filename`. EXAMPLES: cURL: ```shell echo "This text is in a file I'm uploading using CSAPI." \ > "./example_file.txt" case="projects/some-project/cases/43594844" curl \ --header "Authorization: Bearer $(gcloud auth print-access-token)" \ --data-binary @"./example_file.txt" \ "https://cloudsupport.googleapis.com/upload/v2beta/$case/attachments?attachment.filename=uploaded_via_curl.txt" ``` Python: ```python import googleapiclient.discovery api_version = "v2" supportApiService = googleapiclient.discovery.build( serviceName="cloudsupport", version=api_version, discoveryServiceUrl=f"https://cloudsupport.googleapis.com/$discovery/rest?version={api_version}", ) file_path = "./example_file.txt" with open(file_path, "w") as file: file.write( "This text is inside a file I'm going to upload using the Cloud Support API.", ) request = supportApiService.media().upload( parent="projects/some-project/cases/43595344", media_body=file_path ) request.uri = request.uri.split("?")[0] + "?attachment.filename=uploaded_via_python.txt" print(request.execute()) ```

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the case or Cloud resource to which the attachment should be attached. |

**Request body**: `CreateAttachmentRequest`

**Response**: `Attachment`

```typescript
const res = await cloudsupport.media.upload({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudsupport.media.download`

**GET** `v2/{+name}:download`

Download a file attached to a case. When this endpoint is called, no "response body" will be returned. Instead, the attachment's blob will be returned. Note: HTTP requests must append "?alt=media" to the URL. EXAMPLES: cURL: ```shell name="projects/some-project/cases/43594844/attachments/0674M00000WijAnZAJ" curl \ --header "Authorization: Bearer $(gcloud auth print-access-token)" \ "https://cloudsupport.googleapis.com/v2/$name:download?alt=media" ``` Python: ```python import googleapiclient.discovery api_version = "v2" supportApiService = googleapiclient.discovery.build( serviceName="cloudsupport", version=api_version, discoveryServiceUrl=f"https://cloudsupport.googleapis.com/$discovery/rest?version={api_version}", ) request = supportApiService.media().download( name="projects/some-project/cases/43595344/attachments/0684M00000Pw6pHQAR" ) request.uri = request.uri.split("?")[0] + "?alt=media" print(request.execute()) ```

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the file attachment to download. |

**Response**: `Media`

```typescript
const res = await cloudsupport.media.download({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudsupport.cases.get`

**GET** `v2/{+name}`

Retrieve a case. EXAMPLES: cURL: ```shell case="projects/some-project/cases/16033687" curl \ --header "Authorization: Bearer $(gcloud auth print-access-token)" \ "https://cloudsupport.googleapis.com/v2/$case" ``` Python: ```python import googleapiclient.discovery api_version = "v2" supportApiService = googleapiclient.discovery.build( serviceName="cloudsupport", version=api_version, discoveryServiceUrl=f"https://cloudsupport.googleapis.com/$discovery/rest?version={api_version}", ) request = supportApiService.cases().get( name="projects/some-project/cases/43595344", ) print(request.execute()) ```

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full name of a case to be retrieved. |

**Response**: `Case`

```typescript
const res = await cloudsupport.cases.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudsupport.cases.list`

**GET** `v2/{+parent}/cases`

Retrieve all cases under a parent, but not its children. For example, listing cases under an organization only returns the cases that are directly parented by that organization. To retrieve cases under an organization and its projects, use `cases.search`. EXAMPLES: cURL: ```shell parent="projects/some-project" curl \ --header "Authorization: Bearer $(gcloud auth print-access-token)" \ "https://cloudsupport.googleapis.com/v2/$parent/cases" ``` Python: ```python import googleapiclient.discovery api_version = "v2" supportApiService = googleapiclient.discovery.build( serviceName="cloudsupport", version=api_version, discoveryServiceUrl=f"https://cloudsupport.googleapis.com/$discovery/rest?version={api_version}", ) request = supportApiService.cases().list(parent="projects/some-project") print(request.execute()) ```

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of a parent to list cases under. |
| `filter` | `string` | query | No | An expression used to filter cases. If it's an empty string, then no filtering happens. Otherwise, the endpoint retur... |
| `pageSize` | `integer` | query | No | The maximum number of cases fetched with each request. Defaults to 10. |
| `pageToken` | `string` | query | No | A token identifying the page of results to return. If unspecified, the first page is retrieved. |

**Response**: `ListCasesResponse`

```typescript
const res = await cloudsupport.cases.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudsupport.cases.search`

**GET** `v2/{+parent}/cases:search`

Search for cases using a query. EXAMPLES: cURL: ```shell parent="projects/some-project" curl \ --header "Authorization: Bearer $(gcloud auth print-access-token)" \ "https://cloudsupport.googleapis.com/v2/$parent/cases:search" ``` Python: ```python import googleapiclient.discovery api_version = "v2" supportApiService = googleapiclient.discovery.build( serviceName="cloudsupport", version=api_version, discoveryServiceUrl=f"https://cloudsupport.googleapis.com/$discovery/rest?version={api_version}", ) request = supportApiService.cases().search( parent="projects/some-project", query="state=OPEN" ) print(request.execute()) ```

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The name of the parent resource to search for cases under. |
| `pageSize` | `integer` | query | No | The maximum number of cases fetched with each request. The default page size is 10. |
| `pageToken` | `string` | query | No | A token identifying the page of results to return. If unspecified, the first page is retrieved. |
| `query` | `string` | query | No | An expression used to filter cases. Expressions use the following fields separated by `AND` and specified with `=`: -... |

**Response**: `SearchCasesResponse`

```typescript
const res = await cloudsupport.cases.search({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudsupport.cases.create`

**POST** `v2/{+parent}/cases`

Create a new case and associate it with a parent. It must have the following fields set: `display_name`, `description`, `classification`, and `priority`. If you're just testing the API and don't want to route your case to an agent, set `testCase=true`. EXAMPLES: cURL: ```shell parent="projects/some-project" curl \ --request POST \ --header "Authorization: Bearer $(gcloud auth print-access-token)" \ --header 'Content-Type: application/json' \ --data '{ "display_name": "Test case created by me.", "description": "a random test case, feel free to close", "classification": { "id": "100IK2AKCLHMGRJ9CDGMOCGP8DM6UTB4BT262T31BT1M2T31DHNMENPO6KS36CPJ786L2TBFEHGN6NPI64R3CDHN8880G08I1H3MURR7DHII0GRCDTQM8" }, "time_zone": "-07:00", "subscriber_email_addresses": [ "foo@domain.com", "bar@domain.com" ], "testCase": true, "priority": "P3" }' \ "https://cloudsupport.googleapis.com/v2/$parent/cases" ``` Python: ```python import googleapiclient.discovery api_version = "v2" supportApiService = googleapiclient.discovery.build( serviceName="cloudsupport", version=api_version, discoveryServiceUrl=f"https://cloudsupport.googleapis.com/$discovery/rest?version={api_version}", ) request = supportApiService.cases().create( parent="projects/some-project", body={ "displayName": "A Test Case", "description": "This is a test case.", "testCase": True, "priority": "P2", "classification": { "id": "100IK2AKCLHMGRJ9CDGMOCGP8DM6UTB4BT262T31BT1M2T31DHNMENPO6KS36CPJ786L2TBFEHGN6NPI64R3CDHN8880G08I1H3MURR7DHII0GRCDTQM8" }, }, ) print(request.execute()) ```

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent under which the case should be created. |

**Request body**: `Case`

**Response**: `Case`

```typescript
const res = await cloudsupport.cases.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudsupport.cases.patch`

**PATCH** `v2/{+name}`

Update a case. Only some fields can be updated. EXAMPLES: cURL: ```shell case="projects/some-project/cases/43595344" curl \ --request PATCH \ --header "Authorization: Bearer $(gcloud auth print-access-token)" \ --header "Content-Type: application/json" \ --data '{ "priority": "P1" }' \ "https://cloudsupport.googleapis.com/v2/$case?updateMask=priority" ``` Python: ```python import googleapiclient.discovery api_version = "v2" supportApiService = googleapiclient.discovery.build( serviceName="cloudsupport", version=api_version, discoveryServiceUrl=f"https://cloudsupport.googleapis.com/$discovery/rest?version={api_version}", ) request = supportApiService.cases().patch( name="projects/some-project/cases/43112854", body={ "displayName": "This is Now a New Title", "priority": "P2", }, ) print(request.execute()) ```

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name for the case. |
| `updateMask` | `string` | query | No | A list of attributes of the case that should be updated. Supported values are `priority`, `display_name`, and `subscr... |

**Request body**: `Case`

**Response**: `Case`

```typescript
const res = await cloudsupport.cases.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudsupport.cases.escalate`

**POST** `v2/{+name}:escalate`

Escalate a case, starting the Google Cloud Support escalation management process. This operation is only available for some support services. Go to https://cloud.google.com/support and look for 'Technical support escalations' in the feature list to find out which ones let you do that. EXAMPLES: cURL: ```shell case="projects/some-project/cases/43595344" curl \ --request POST \ --header "Authorization: Bearer $(gcloud auth print-access-token)" \ --header "Content-Type: application/json" \ --data '{ "escalation": { "reason": "BUSINESS_IMPACT", "justification": "This is a test escalation." } }' \ "https://cloudsupport.googleapis.com/v2/$case:escalate" ``` Python: ```python import googleapiclient.discovery api_version = "v2" supportApiService = googleapiclient.discovery.build( serviceName="cloudsupport", version=api_version, discoveryServiceUrl=f"https://cloudsupport.googleapis.com/$discovery/rest?version={api_version}", ) request = supportApiService.cases().escalate( name="projects/some-project/cases/43595344", body={ "escalation": { "reason": "BUSINESS_IMPACT", "justification": "This is a test escalation.", }, }, ) print(request.execute()) ```

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the case to be escalated. |

**Request body**: `EscalateCaseRequest`

**Response**: `Case`

```typescript
const res = await cloudsupport.cases.escalate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudsupport.cases.close`

**POST** `v2/{+name}:close`

Close a case. EXAMPLES: cURL: ```shell case="projects/some-project/cases/43595344" curl \ --request POST \ --header "Authorization: Bearer $(gcloud auth print-access-token)" \ "https://cloudsupport.googleapis.com/v2/$case:close" ``` Python: ```python import googleapiclient.discovery api_version = "v2" supportApiService = googleapiclient.discovery.build( serviceName="cloudsupport", version=api_version, discoveryServiceUrl=f"https://cloudsupport.googleapis.com/$discovery/rest?version={api_version}", ) request = supportApiService.cases().close( name="projects/some-project/cases/43595344" ) print(request.execute()) ```

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the case to close. |

**Request body**: `CloseCaseRequest`

**Response**: `Case`

```typescript
const res = await cloudsupport.cases.close({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudsupport.cases.attachments.list`

**GET** `v2/{+parent}/attachments`

List all the attachments associated with a support case. EXAMPLES: cURL: ```shell case="projects/some-project/cases/23598314" curl \ --header "Authorization: Bearer $(gcloud auth print-access-token)" \ "https://cloudsupport.googleapis.com/v2/$case/attachments" ``` Python: ```python import googleapiclient.discovery api_version = "v2" supportApiService = googleapiclient.discovery.build( serviceName="cloudsupport", version=api_version, discoveryServiceUrl=f"https://cloudsupport.googleapis.com/$discovery/rest?version={api_version}", ) request = ( supportApiService.cases() .attachments() .list(parent="projects/some-project/cases/43595344") ) print(request.execute()) ```

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the case for which attachments should be listed. |
| `pageSize` | `integer` | query | No | The maximum number of attachments fetched with each request. If not provided, the default is 10. The maximum page siz... |
| `pageToken` | `string` | query | No | A token identifying the page of results to return. If unspecified, the first page is retrieved. |

**Response**: `ListAttachmentsResponse`

```typescript
const res = await cloudsupport.attachments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudsupport.cases.comments.list`

**GET** `v2/{+parent}/comments`

List all the comments associated with a case. EXAMPLES: cURL: ```shell case="projects/some-project/cases/43595344" curl \ --header "Authorization: Bearer $(gcloud auth print-access-token)" \ "https://cloudsupport.googleapis.com/v2/$case/comments" ``` Python: ```python import googleapiclient.discovery api_version = "v2" supportApiService = googleapiclient.discovery.build( serviceName="cloudsupport", version=api_version, discoveryServiceUrl=f"https://cloudsupport.googleapis.com/$discovery/rest?version={api_version}", ) request = ( supportApiService.cases() .comments() .list(parent="projects/some-project/cases/43595344") ) print(request.execute()) ```

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the case for which to list comments. |
| `pageSize` | `integer` | query | No | The maximum number of comments to fetch. Defaults to 10. |
| `pageToken` | `string` | query | No | A token identifying the page of results to return. If unspecified, the first page is returned. |

**Response**: `ListCommentsResponse`

```typescript
const res = await cloudsupport.comments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudsupport.cases.comments.create`

**POST** `v2/{+parent}/comments`

Add a new comment to a case. The comment must have the following fields set: `body`. EXAMPLES: cURL: ```shell case="projects/some-project/cases/43591344" curl \ --request POST \ --header "Authorization: Bearer $(gcloud auth print-access-token)" \ --header 'Content-Type: application/json' \ --data '{ "body": "This is a test comment." }' \ "https://cloudsupport.googleapis.com/v2/$case/comments" ``` Python: ```python import googleapiclient.discovery api_version = "v2" supportApiService = googleapiclient.discovery.build( serviceName="cloudsupport", version=api_version, discoveryServiceUrl=f"https://cloudsupport.googleapis.com/$discovery/rest?version={api_version}", ) request = ( supportApiService.cases() .comments() .create( parent="projects/some-project/cases/43595344", body={"body": "This is a test comment."}, ) ) print(request.execute()) ```

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the case to which the comment should be added. |

**Request body**: `Comment`

**Response**: `Comment`

```typescript
const res = await cloudsupport.comments.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudsupport.caseClassifications.search`

**GET** `v2/caseClassifications:search`

Retrieve valid classifications to use when creating a support case. Classifications are hierarchical. Each classification is a string containing all levels of the hierarchy separated by `" > "`. For example, `"Technical Issue > Compute > Compute Engine"`. Classification IDs returned by this endpoint are valid for at least six months. When a classification is deactivated, this endpoint immediately stops returning it. After six months, `case.create` requests using the classification will fail. EXAMPLES: cURL: ```shell curl \ --header "Authorization: Bearer $(gcloud auth print-access-token)" \ 'https://cloudsupport.googleapis.com/v2/caseClassifications:search?query=display_name:"*Compute%20Engine*"' ``` Python: ```python import googleapiclient.discovery supportApiService = googleapiclient.discovery.build( serviceName="cloudsupport", version="v2", discoveryServiceUrl=f"https://cloudsupport.googleapis.com/$discovery/rest?version=v2", ) request = supportApiService.caseClassifications().search( query='display_name:"*Compute Engine*"' ) print(request.execute()) ```

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pageSize` | `integer` | query | No | The maximum number of classifications fetched with each request. |
| `pageToken` | `string` | query | No | A token identifying the page of results to return. If unspecified, the first page is retrieved. |
| `query` | `string` | query | No | An expression used to filter case classifications. If it's an empty string, then no filtering happens. Otherwise, cas... |

**Response**: `SearchCaseClassificationsResponse`

```typescript
const res = await cloudsupport.caseClassifications.search({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `Actor`

An Actor represents an entity that performed an action. For example, an actor could be a user who posted a comment on a support case, a user who uploaded an attachment, or a service account that created a support case.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The name to display for the actor. If not provided, it is inferred from credentials supplied duri... |
| `email` | `string` | The email address of the actor. If not provided, it is inferred from the credentials supplied dur... |
| `googleSupport` | `boolean` | Output only. Whether the actor is a Google support actor. |
| `username` | `string` | Output only. The username of the actor. It may look like an email or other format provided by the... |

### `Attachment`

An Attachment contains metadata about a file that was uploaded to a case - it is NOT a file itself. That being said, the name of an Attachment object can be used to download its accompanying file through the `media.download` endpoint. While attachments can be uploaded in the console at the same time as a comment, they're associated on a "case" level, not a "comment" level.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time at which the attachment was created. |
| `creator` | `Actor` | Output only. The user who uploaded the attachment. Note, the name and email will be obfuscated if... |
| `filename` | `string` | The filename of the attachment (e.g. `"graph.jpg"`). |
| `mimeType` | `string` | Output only. The MIME type of the attachment (e.g. text/plain). |
| `name` | `string` | Output only. Identifier. The resource name of the attachment. |
| `sizeBytes` | `string` | Output only. The size of the attachment in bytes. |

### `Blobstore2Info`

# gdata.* are outside protos with mising documentation

| Property | Type | Description |
|----------|------|-------------|
| `blobGeneration` | `string` | # gdata.* are outside protos with mising documentation |
| `blobId` | `string` | # gdata.* are outside protos with mising documentation |
| `downloadExternalReadToken` | `string` | # gdata.* are outside protos with mising documentation |
| `downloadReadHandle` | `string` | # gdata.* are outside protos with mising documentation |
| `readToken` | `string` | # gdata.* are outside protos with mising documentation |
| `uploadFragmentListCreationInfo` | `string` | # gdata.* are outside protos with mising documentation |
| `uploadMetadataContainer` | `string` | # gdata.* are outside protos with mising documentation |

### `Case`

A Case is an object that contains the details of a support case. It contains fields for the time it was created, its priority, its classification, and more. Cases can also have comments and attachments that get added over time. A case is parented by a Google Cloud organization or project. Organizations are identified by a number, so the name of a case parented by an organization would look like this: ``` organizations/123/cases/456 ``` Projects have two unique identifiers, an ID and a number, and they look like this: ``` projects/abc/cases/456 ``` ``` projects/123/cases/456 ``` You can use either of them when calling the API. To learn more about project identifiers, see [AIP-2510](https://google.aip.dev/cloud/2510).

| Property | Type | Description |
|----------|------|-------------|
| `classification` | `CaseClassification` | The issue classification applicable to this case. |
| `contactEmail` | `string` | A user-supplied email address to send case update notifications for. This should only be used in ... |
| `createTime` | `string` | Output only. The time this case was created. |
| `creator` | `Actor` | The user who created the case. Note: The name and email will be obfuscated if the case was create... |
| `description` | `string` | A broad description of the issue. |
| `displayName` | `string` | The short summary of the issue reported in this case. |
| `escalated` | `boolean` | Whether the case is currently escalated. |
| `languageCode` | `string` | The language the user has requested to receive support in. This should be a BCP 47 language code ... |
| `name` | `string` | Identifier. The resource name for the case. |
| `priority` | `string` | The priority of this case. |
| `state` | `string` | Output only. The current status of the support case. |
| `subscriberEmailAddresses` | `array<string>` | The email addresses to receive updates on this case. |
| `testCase` | `boolean` | Whether this case was created for internal API testing and should not be acted on by the support ... |
| `timeZone` | `string` | The timezone of the user who created the support case. It should be in a format IANA recognizes: ... |
| `updateTime` | `string` | Output only. The time this case was last updated. |

### `CaseClassification`

A Case Classification represents the topic that a case is about. It's very important to use accurate classifications, because they're used to route your cases to specialists who can help you. A classification always has an ID that is its unique identifier. A valid ID is required when creating a case.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | A display name for the classification. The display name is not static and can change. To uniquely... |
| `id` | `string` | The unique ID for a classification. Must be specified for case creation. To retrieve valid classi... |

### `CloseCaseRequest`

The request message for the CloseCase endpoint.

### `Comment`

A comment associated with a support case. Case comments are the primary way for Google Support to communicate with a user who has opened a case. When a user responds to Google Support, the user's responses also appear as comments.

| Property | Type | Description |
|----------|------|-------------|
| `body` | `string` | The full comment body. Maximum of 12800 characters. |
| `createTime` | `string` | Output only. The time when the comment was created. |
| `creator` | `Actor` | Output only. The user or Google Support agent who created the comment. |
| `name` | `string` | Output only. Identifier. The resource name of the comment. |
| `plainTextBody` | `string` | Output only. DEPRECATED. DO NOT USE. A duplicate of the `body` field. This field is only present ... |

### `CompositeMedia`

# gdata.* are outside protos with mising documentation

| Property | Type | Description |
|----------|------|-------------|
| `blobRef` | `string` | # gdata.* are outside protos with mising documentation |
| `blobstore2Info` | `Blobstore2Info` | # gdata.* are outside protos with mising documentation |
| `cosmoBinaryReference` | `string` | # gdata.* are outside protos with mising documentation |
| `crc32cHash` | `integer` | # gdata.* are outside protos with mising documentation |
| `inline` | `string` | # gdata.* are outside protos with mising documentation |
| `length` | `string` | # gdata.* are outside protos with mising documentation |
| `md5Hash` | `string` | # gdata.* are outside protos with mising documentation |
| `objectId` | `ObjectId` | # gdata.* are outside protos with mising documentation |
| `path` | `string` | # gdata.* are outside protos with mising documentation |
| `referenceType` | `string` | # gdata.* are outside protos with mising documentation |
| `sha1Hash` | `string` | # gdata.* are outside protos with mising documentation |

### `ContentTypeInfo`

# gdata.* are outside protos with mising documentation

| Property | Type | Description |
|----------|------|-------------|
| `bestGuess` | `string` | # gdata.* are outside protos with mising documentation |
| `fromBytes` | `string` | # gdata.* are outside protos with mising documentation |
| `fromFileName` | `string` | # gdata.* are outside protos with mising documentation |
| `fromHeader` | `string` | # gdata.* are outside protos with mising documentation |
| `fromUrlPath` | `string` | # gdata.* are outside protos with mising documentation |

### `CreateAttachmentRequest`

The request message for the CreateAttachment endpoint.

| Property | Type | Description |
|----------|------|-------------|
| `attachment` | `Attachment` | Required. The attachment to be created. |

### `DiffChecksumsResponse`

# gdata.* are outside protos with mising documentation

| Property | Type | Description |
|----------|------|-------------|
| `checksumsLocation` | `CompositeMedia` | # gdata.* are outside protos with mising documentation |
| `chunkSizeBytes` | `string` | # gdata.* are outside protos with mising documentation |
| `objectLocation` | `CompositeMedia` | # gdata.* are outside protos with mising documentation |
| `objectSizeBytes` | `string` | # gdata.* are outside protos with mising documentation |
| `objectVersion` | `string` | # gdata.* are outside protos with mising documentation |

### `DiffDownloadResponse`

# gdata.* are outside protos with mising documentation

| Property | Type | Description |
|----------|------|-------------|
| `objectLocation` | `CompositeMedia` | # gdata.* are outside protos with mising documentation |

### `DiffUploadRequest`

# gdata.* are outside protos with mising documentation

| Property | Type | Description |
|----------|------|-------------|
| `checksumsInfo` | `CompositeMedia` | # gdata.* are outside protos with mising documentation |
| `objectInfo` | `CompositeMedia` | # gdata.* are outside protos with mising documentation |
| `objectVersion` | `string` | # gdata.* are outside protos with mising documentation |

### `DiffUploadResponse`

# gdata.* are outside protos with mising documentation

| Property | Type | Description |
|----------|------|-------------|
| `objectVersion` | `string` | # gdata.* are outside protos with mising documentation |
| `originalObject` | `CompositeMedia` | # gdata.* are outside protos with mising documentation |

### `DiffVersionResponse`

# gdata.* are outside protos with mising documentation

| Property | Type | Description |
|----------|------|-------------|
| `objectSizeBytes` | `string` | # gdata.* are outside protos with mising documentation |
| `objectVersion` | `string` | # gdata.* are outside protos with mising documentation |

### `DownloadParameters`

# gdata.* are outside protos with mising documentation

| Property | Type | Description |
|----------|------|-------------|
| `allowGzipCompression` | `boolean` | # gdata.* are outside protos with mising documentation |
| `ignoreRange` | `boolean` | # gdata.* are outside protos with mising documentation |

### `EscalateCaseRequest`

The request message for the EscalateCase endpoint.

| Property | Type | Description |
|----------|------|-------------|
| `escalation` | `Escalation` | The escalation information to be sent with the escalation request. |

### `Escalation`

An escalation of a support case.

| Property | Type | Description |
|----------|------|-------------|
| `justification` | `string` | Required. A free text description to accompany the `reason` field above. Provides additional cont... |
| `reason` | `string` | Required. The reason why the Case is being escalated. |

### `ListAttachmentsResponse`

The response message for the ListAttachments endpoint.

| Property | Type | Description |
|----------|------|-------------|
| `attachments` | `array<Attachment>` | The list of attachments associated with a case. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Set this in the `page_token` field of subsequent `c... |

### `ListCasesResponse`

The response message for the ListCases endpoint.

| Property | Type | Description |
|----------|------|-------------|
| `cases` | `array<Case>` | The list of cases associated with the parent after any filters have been applied. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Set this in the `page_token` field of subsequent `c... |

### `ListCommentsResponse`

The response message for the ListComments endpoint.

| Property | Type | Description |
|----------|------|-------------|
| `comments` | `array<Comment>` | List of the comments associated with the case. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Set this in the `page_token` field of subsequent `c... |

### `Media`

# gdata.* are outside protos with mising documentation

| Property | Type | Description |
|----------|------|-------------|
| `algorithm` | `string` | # gdata.* are outside protos with mising documentation |
| `bigstoreObjectRef` | `string` | # gdata.* are outside protos with mising documentation |
| `blobRef` | `string` | # gdata.* are outside protos with mising documentation |
| `blobstore2Info` | `Blobstore2Info` | # gdata.* are outside protos with mising documentation |
| `compositeMedia` | `array<CompositeMedia>` | # gdata.* are outside protos with mising documentation |
| `contentType` | `string` | # gdata.* are outside protos with mising documentation |
| `contentTypeInfo` | `ContentTypeInfo` | # gdata.* are outside protos with mising documentation |
| `cosmoBinaryReference` | `string` | # gdata.* are outside protos with mising documentation |
| `crc32cHash` | `integer` | # gdata.* are outside protos with mising documentation |
| `diffChecksumsResponse` | `DiffChecksumsResponse` | # gdata.* are outside protos with mising documentation |
| `diffDownloadResponse` | `DiffDownloadResponse` | # gdata.* are outside protos with mising documentation |
| `diffUploadRequest` | `DiffUploadRequest` | # gdata.* are outside protos with mising documentation |
| `diffUploadResponse` | `DiffUploadResponse` | # gdata.* are outside protos with mising documentation |
| `diffVersionResponse` | `DiffVersionResponse` | # gdata.* are outside protos with mising documentation |
| `downloadParameters` | `DownloadParameters` | # gdata.* are outside protos with mising documentation |
| `filename` | `string` | # gdata.* are outside protos with mising documentation |
| `hash` | `string` | # gdata.* are outside protos with mising documentation |
| `hashVerified` | `boolean` | # gdata.* are outside protos with mising documentation |
| `inline` | `string` | # gdata.* are outside protos with mising documentation |
| `isPotentialRetry` | `boolean` | # gdata.* are outside protos with mising documentation |
| `length` | `string` | # gdata.* are outside protos with mising documentation |
| `md5Hash` | `string` | # gdata.* are outside protos with mising documentation |
| `mediaId` | `string` | # gdata.* are outside protos with mising documentation |
| `objectId` | `ObjectId` | # gdata.* are outside protos with mising documentation |
| `path` | `string` | # gdata.* are outside protos with mising documentation |
| `referenceType` | `string` | # gdata.* are outside protos with mising documentation |
| `sha1Hash` | `string` | # gdata.* are outside protos with mising documentation |
| `sha256Hash` | `string` | # gdata.* are outside protos with mising documentation |
| `timestamp` | `string` | # gdata.* are outside protos with mising documentation |
| `token` | `string` | # gdata.* are outside protos with mising documentation |

### `ObjectId`

# gdata.* are outside protos with mising documentation

| Property | Type | Description |
|----------|------|-------------|
| `bucketName` | `string` | # gdata.* are outside protos with mising documentation |
| `generation` | `string` | # gdata.* are outside protos with mising documentation |
| `objectName` | `string` | # gdata.* are outside protos with mising documentation |

### `SearchCaseClassificationsResponse`

The response message for SearchCaseClassifications endpoint.

| Property | Type | Description |
|----------|------|-------------|
| `caseClassifications` | `array<CaseClassification>` | The classifications retrieved. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Set this in the `page_token` field of subsequent `c... |

### `SearchCasesResponse`

The response message for the SearchCases endpoint.

| Property | Type | Description |
|----------|------|-------------|
| `cases` | `array<Case>` | The list of cases associated with the parent after any filters have been applied. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Set this in the `page_token` field of subsequent `c... |

