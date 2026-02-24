# Threat Intelligence API - API Reference

**Version**: `v1beta` | **Methods**: 21 | **Schemas**: 53

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `threatintelligence.projects.generateOrgProfile` | POST | `v1beta/{+name}:generateOrgProfile` | Triggers the generation of a Customer Profile for a project. |
| `threatintelligence.projects.configurations.get` | GET | `v1beta/{+name}` | Get a configuration by name. |
| `threatintelligence.projects.configurations.list` | GET | `v1beta/{+parent}/configurations` | Get a list of configurations that meet the filter criteria. |
| `threatintelligence.projects.configurations.upsert` | POST | `v1beta/{+parent}/configurations:upsert` | Creates or updates a configuration. |
| `threatintelligence.projects.configurations.revisions.list` | GET | `v1beta/{+parent}/revisions` | List configuration revisions that meet the filter criteria. |
| `threatintelligence.projects.findings.get` | GET | `v1beta/{+name}` | Get a finding by name. The `name` field should have the format: `projects/{project}/findings/{fin... |
| `threatintelligence.projects.findings.list` | GET | `v1beta/{+parent}/findings` | Get a list of findings that meet the filter criteria. The `parent` field in ListFindingsRequest s... |
| `threatintelligence.projects.findings.search` | GET | `v1beta/{+parent}/findings:search` | SearchFindings is a more powerful version of ListFindings that supports complex queries like "fin... |
| `threatintelligence.projects.alerts.get` | GET | `v1beta/{+name}` | Get an alert by name. |
| `threatintelligence.projects.alerts.list` | GET | `v1beta/{+parent}/alerts` | Get a list of alerts that meet the filter criteria. |
| `threatintelligence.projects.alerts.enumerateFacets` | GET | `v1beta/{+parent}/alerts:enumerateFacets` | EnumerateAlertFacets returns the facets and the number of alerts that meet the filter criteria an... |
| `threatintelligence.projects.alerts.read` | POST | `v1beta/{+name}:read` | Marks an alert as read - READ. |
| `threatintelligence.projects.alerts.triage` | POST | `v1beta/{+name}:triage` | Marks an alert as triaged - TRIAGED. |
| `threatintelligence.projects.alerts.escalate` | POST | `v1beta/{+name}:escalate` | Marks an alert as escalated - ESCALATED. |
| `threatintelligence.projects.alerts.resolve` | POST | `v1beta/{+name}:resolve` | Marks an alert to closed state - RESOLVED. |
| `threatintelligence.projects.alerts.falsePositive` | POST | `v1beta/{+name}:falsePositive` | Marks an alert as a false positive - FALSE_POSITIVE. |
| `threatintelligence.projects.alerts.notActionable` | POST | `v1beta/{+name}:notActionable` | Marks an alert as not actionable - NOT_ACTIONABLE. |
| `threatintelligence.projects.alerts.benign` | POST | `v1beta/{+name}:benign` | Marks an alert as benign - BENIGN. |
| `threatintelligence.projects.alerts.trackExternally` | POST | `v1beta/{+name}:trackExternally` | Marks an alert as tracked externally - TRACKED_EXTERNALLY. |
| `threatintelligence.projects.alerts.duplicate` | POST | `v1beta/{+name}:duplicate` | Marks an alert as a duplicate of another alert. - DUPLICATE. |
| `threatintelligence.projects.alerts.documents.get` | GET | `v1beta/{+name}` | Gets a specific document associated with an alert. |

### `threatintelligence.projects.generateOrgProfile`

**POST** `v1beta/{+name}:generateOrgProfile`

Triggers the generation of a Customer Profile for a project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the project to generate the profile for. Format: projects/{project} |

**Request body**: `GenerateOrgProfileConfigurationRequest`

**Response**: `Operation`

```typescript
const res = await threatintelligence.projects.generateOrgProfile({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `threatintelligence.projects.configurations.get`

**GET** `v1beta/{+name}`

Get a configuration by name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the configuration to get. Format: vaults/{vault}/configurations/{configuration} |

**Response**: `Configuration`

```typescript
const res = await threatintelligence.configurations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `threatintelligence.projects.configurations.list`

**GET** `v1beta/{+parent}/configurations`

Get a list of configurations that meet the filter criteria.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent of the configuration. Format: vaults/{vault} |
| `filter` | `string` | query | No | Optional. Filter criteria. |
| `orderBy` | `string` | query | No | Optional. Order by criteria in the csv format: "field1,field2 desc" or "field1,field2" or "field1 asc, field2". |
| `pageSize` | `integer` | query | No | Optional. Page size. |
| `pageToken` | `string` | query | No | Optional. Page token. |

**Response**: `ListConfigurationsResponse`

```typescript
const res = await threatintelligence.configurations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `threatintelligence.projects.configurations.upsert`

**POST** `v1beta/{+parent}/configurations:upsert`

Creates or updates a configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent of the configuration. |
| `publishTime` | `string` | query | No | Optional. Time that the configuration should be considered to have been published. This is an advanced feature used w... |

**Request body**: `Configuration`

**Response**: `UpsertConfigurationResponse`

```typescript
const res = await threatintelligence.configurations.upsert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `threatintelligence.projects.configurations.revisions.list`

**GET** `v1beta/{+parent}/revisions`

List configuration revisions that meet the filter criteria.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the Configuration to retrieve Revisions for |
| `filter` | `string` | query | No | Optional. An AIP-160 filter string |
| `orderBy` | `string` | query | No | Optional. Specify ordering of response |
| `pageSize` | `integer` | query | No | Optional. Page Size |
| `pageToken` | `string` | query | No | Optional. A page token provided by the API |

**Response**: `ListConfigurationRevisionsResponse`

```typescript
const res = await threatintelligence.revisions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `threatintelligence.projects.findings.get`

**GET** `v1beta/{+name}`

Get a finding by name. The `name` field should have the format: `projects/{project}/findings/{finding}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the finding to get. |

**Response**: `Finding`

```typescript
const res = await threatintelligence.findings.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `threatintelligence.projects.findings.list`

**GET** `v1beta/{+parent}/findings`

Get a list of findings that meet the filter criteria. The `parent` field in ListFindingsRequest should have the format: projects/{project}

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent of the findings. |
| `filter` | `string` | query | No | Optional. Filter criteria. |
| `orderBy` | `string` | query | No | Optional. Order by criteria in the csv format: "field1,field2 desc" or "field1,field2" or "field1 asc, field2". |
| `pageSize` | `integer` | query | No | Optional. Page size. |
| `pageToken` | `string` | query | No | Optional. Page token. |

**Response**: `ListFindingsResponse`

```typescript
const res = await threatintelligence.findings.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `threatintelligence.projects.findings.search`

**GET** `v1beta/{+parent}/findings:search`

SearchFindings is a more powerful version of ListFindings that supports complex queries like "findings for alerts" using functions such as `has_alert` in the query string. The `parent` field in SearchFindingsRequest should have the format: projects/{project} Example to search for findings for a specific issue: `has_alert("name=\"projects/gti-12345/alerts/alert-12345\"")`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent of the findings. Format: vaults/{vault} |
| `orderBy` | `string` | query | No | Optional. Order by criteria in the csv format: "field1,field2 desc" or "field1,field2" or "field1 asc, field2". |
| `pageSize` | `integer` | query | No | Optional. Page size. |
| `pageToken` | `string` | query | No | Optional. Page token. |
| `query` | `string` | query | No | Optional. Query on what findings will be returned. This supports the same filter criteria as FindingService.ListFindi... |

**Response**: `SearchFindingsResponse`

```typescript
const res = await threatintelligence.findings.search({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `threatintelligence.projects.alerts.get`

**GET** `v1beta/{+name}`

Get an alert by name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the alert to get. Format: projects/{project}/alerts/{alert} |

**Response**: `Alert`

```typescript
const res = await threatintelligence.alerts.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `threatintelligence.projects.alerts.list`

**GET** `v1beta/{+parent}/alerts`

Get a list of alerts that meet the filter criteria.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent of the alerts. Format: projects/{project} |
| `filter` | `string` | query | No | Optional. Filter criteria. |
| `orderBy` | `string` | query | No | Optional. Order by criteria in the csv format: "field1,field2 desc" or "field1,field2" or "field1 asc, field2". |
| `pageSize` | `integer` | query | No | Optional. Page size. |
| `pageToken` | `string` | query | No | Optional. Page token. |

**Response**: `ListAlertsResponse`

```typescript
const res = await threatintelligence.alerts.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `threatintelligence.projects.alerts.enumerateFacets`

**GET** `v1beta/{+parent}/alerts:enumerateFacets`

EnumerateAlertFacets returns the facets and the number of alerts that meet the filter criteria and have that value for each facet.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent of the alerts. |
| `filter` | `string` | query | No | Optional. Filter on what alerts will be enumerated. |

**Response**: `EnumerateAlertFacetsResponse`

```typescript
const res = await threatintelligence.alerts.enumerateFacets({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `threatintelligence.projects.alerts.read`

**POST** `v1beta/{+name}:read`

Marks an alert as read - READ.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the alert to mark as read. Format: projects/{project}/alerts/{alert} |

**Request body**: `MarkAlertAsReadRequest`

**Response**: `Alert`

```typescript
const res = await threatintelligence.alerts.read({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `threatintelligence.projects.alerts.triage`

**POST** `v1beta/{+name}:triage`

Marks an alert as triaged - TRIAGED.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the alert to mark as a triaged. Format: projects/{project}/alerts/{alert} |

**Request body**: `MarkAlertAsTriagedRequest`

**Response**: `Alert`

```typescript
const res = await threatintelligence.alerts.triage({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `threatintelligence.projects.alerts.escalate`

**POST** `v1beta/{+name}:escalate`

Marks an alert as escalated - ESCALATED.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the alert to mark as escalated. Format: projects/{project}/alerts/{alert} |

**Request body**: `MarkAlertAsEscalatedRequest`

**Response**: `Alert`

```typescript
const res = await threatintelligence.alerts.escalate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `threatintelligence.projects.alerts.resolve`

**POST** `v1beta/{+name}:resolve`

Marks an alert to closed state - RESOLVED.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the alert to mark as resolved. Format: projects/{project}/alerts/{alert} |

**Request body**: `MarkAlertAsResolvedRequest`

**Response**: `Alert`

```typescript
const res = await threatintelligence.alerts.resolve({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `threatintelligence.projects.alerts.falsePositive`

**POST** `v1beta/{+name}:falsePositive`

Marks an alert as a false positive - FALSE_POSITIVE.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the alert to mark as a false positive. Format: projects/{project}/alerts/{alert} |

**Request body**: `MarkAlertAsFalsePositiveRequest`

**Response**: `Alert`

```typescript
const res = await threatintelligence.alerts.falsePositive({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `threatintelligence.projects.alerts.notActionable`

**POST** `v1beta/{+name}:notActionable`

Marks an alert as not actionable - NOT_ACTIONABLE.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the alert to mark as a not actionable. Format: projects/{project}/alerts/{alert} |

**Request body**: `MarkAlertAsNotActionableRequest`

**Response**: `Alert`

```typescript
const res = await threatintelligence.alerts.notActionable({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `threatintelligence.projects.alerts.benign`

**POST** `v1beta/{+name}:benign`

Marks an alert as benign - BENIGN.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the alert to mark as a benign. Format: projects/{project}/alerts/{alert} |

**Request body**: `MarkAlertAsBenignRequest`

**Response**: `Alert`

```typescript
const res = await threatintelligence.alerts.benign({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `threatintelligence.projects.alerts.trackExternally`

**POST** `v1beta/{+name}:trackExternally`

Marks an alert as tracked externally - TRACKED_EXTERNALLY.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the alert to mark as tracked externally. Format: projects/{project}/alerts/{alert} |

**Request body**: `MarkAlertAsTrackedExternallyRequest`

**Response**: `Alert`

```typescript
const res = await threatintelligence.alerts.trackExternally({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `threatintelligence.projects.alerts.duplicate`

**POST** `v1beta/{+name}:duplicate`

Marks an alert as a duplicate of another alert. - DUPLICATE.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the alert to mark as a duplicate. Format: projects/{project}/alerts/{alert} |

**Request body**: `MarkAlertAsDuplicateRequest`

**Response**: `Alert`

```typescript
const res = await threatintelligence.alerts.duplicate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `threatintelligence.projects.alerts.documents.get`

**GET** `v1beta/{+name}`

Gets a specific document associated with an alert.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the alert document to get. Format: projects/{project}/alerts/{alert}/documents/{document} |

**Response**: `AlertDocument`

```typescript
const res = await threatintelligence.documents.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `Alert`

Stateful object representing a group of Findings. Key feature to an Alert is that it expresses the user's intent towards the findings of that group, even those that haven't occurred yet.

| Property | Type | Description |
|----------|------|-------------|
| `aiSummary` | `string` | Optional. AI summary of the finding. |
| `audit` | `Audit` | Output only. Audit information for the alert. |
| `configurations` | `array<string>` | Output only. The resource names of the Configurations bound to this alert. Format: projects/{proj... |
| `detail` | `AlertDetail` | Output only. Details object for the alert, not all alerts will have a details object. |
| `displayName` | `string` | Output only. A short title for the alert. |
| `duplicateOf` | `string` | Output only. alert name of the alert this alert is a duplicate of. Format: projects/{project}/ale... |
| `duplicatedBy` | `array<string>` | Output only. alert names of the alerts that are duplicates of this alert. Format: projects/{proje... |
| `etag` | `string` | Optional. If included when updating an alert, this should be set to the current etag of the alert... |
| `externalId` | `string` | Output only. External ID for the alert. This is used internally to provide protection against out... |
| `findingCount` | `string` | Output only. The number of findings associated with this alert. |
| `findings` | `array<string>` | Output only. Findings that are covered by this alert. |
| `name` | `string` | Identifier. Server generated name for the alert. format is projects/{project}/alerts/{alert} |
| `priorityAnalysis` | `PriorityAnalysis` | Output only. High-Precision Priority Analysis for the alert. |
| `relevanceAnalysis` | `RelevanceAnalysis` | Output only. High-Precision Relevance Analysis verdict for the alert. |
| `severityAnalysis` | `SeverityAnalysis` | Output only. High-Precision Severity Analysis for the alert. |
| `state` | `string` | Output only. State of the alert. |

### `AlertDetail`

Container for different types of alert details.

| Property | Type | Description |
|----------|------|-------------|
| `dataLeak` | `DataLeakAlertDetail` | Data Leak alert detail type. |
| `detailType` | `string` | Output only. Name of the detail type. Will be set by the server during creation to the name of th... |
| `initialAccessBroker` | `InitialAccessBrokerAlertDetail` | Initial Access Broker alert detail type. |
| `insiderThreat` | `InsiderThreatAlertDetail` | Insider Threat alert detail type. |

### `AlertDocument`

A document that is associated with an alert.

| Property | Type | Description |
|----------|------|-------------|
| `aiSummary` | `string` | Output only. AI summary of the finding. |
| `author` | `string` | Output only. The author of the document. |
| `collectionTime` | `string` | Output only. Time when the origin source collected the intel. |
| `content` | `string` | Output only. The content of the document. |
| `createTime` | `string` | Output only. The time the document was created. |
| `ingestTime` | `string` | Output only. Time when GTI received the intel. |
| `languageCode` | `string` | Output only. The language code of the document. |
| `name` | `string` | Identifier. Server generated name for the alert document. format is projects/{project}/alerts/{al... |
| `source` | `string` | Output only. Source of the intel item, e.g. DarkMarket. |
| `sourceUpdateTime` | `string` | Output only. Time when the intel was last updated by the source. |
| `sourceUri` | `string` | Output only. URI of the intel item from the source. |
| `title` | `string` | Output only. The title of the document, if available. |
| `translation` | `AlertDocumentTranslation` | Output only. The translation of the document, if available. |

### `AlertDocumentTranslation`

The translation of an alert document.

| Property | Type | Description |
|----------|------|-------------|
| `translatedContent` | `string` | Output only. The translated content of the document. |
| `translatedTitle` | `string` | Output only. The translated title of the document. |

### `Audit`

Tracks basic CRUD facts.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Time of creation. |
| `creator` | `string` | Output only. Agent that created or updated the record, could be a UserId or a JobId. |
| `updateTime` | `string` | Output only. Time of creation or last update. |
| `updater` | `string` | Output only. Agent that last updated the record, could be a UserId or a JobId. |

### `Configuration`

A configuration represents a behavior an engine should follow when producing new findings.

| Property | Type | Description |
|----------|------|-------------|
| `audit` | `Audit` | Output only. Audit information for the configuration. |
| `description` | `string` | Optional. A description of the configuration. |
| `detail` | `ConfigurationDetail` | Required. Domain specific details for the configuration. |
| `displayName` | `string` | Output only. Human readable name for the configuration. |
| `name` | `string` | Identifier. Server generated name for the configuration. format is projects/{project}/configurati... |
| `provider` | `string` | Required. Name of the service that provides the configuration. |
| `state` | `string` | Optional. State of the configuration. |
| `version` | `string` | Optional. A user-manipulatable version. Does not adhere to a specific format |

### `ConfigurationDetail`

Wrapper class that contains the union struct for all the various configuration detail specific classes.

| Property | Type | Description |
|----------|------|-------------|
| `customerProfile` | `CustomerProfileConfig` | Customer Profile detail config. |
| `detailType` | `string` | Output only. Name of the detail type. Will be set by the server during creation to the name of th... |

### `ConfigurationRevision`

A ConfigurationRevision is a snapshot of a Configuration at a point in time. It is immutable.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the Revision was created |
| `name` | `string` | Identifier. The name of the ConfigurationRevision Format: projects//configurations//revisions/ |
| `snapshot` | `Configuration` | The snapshot of the configuration |

### `CustomerProfileCitation`

Citation information for the customer profile.

| Property | Type | Description |
|----------|------|-------------|
| `citationId` | `string` | Required. The citation id for the citation. Should be unique within the profile. |
| `document` | `string` | Required. The name of the document the citation is from. |
| `retrievalTime` | `string` | The time the citation was retrieved. |
| `source` | `string` | Required. The source of the citation. |
| `uri` | `string` | Optional. The url of the citation. |

### `CustomerProfileCitedString`

A string with citation ids.

| Property | Type | Description |
|----------|------|-------------|
| `citationIds` | `array<string>` | Optional. The citation ids for the string. |
| `value` | `string` | Required. The value of the string. |

### `CustomerProfileCompany`

Company information for the customer profile.

| Property | Type | Description |
|----------|------|-------------|
| `citationIds` | `array<string>` | Optional. The citation ids for the company. |
| `company` | `string` | Required. The name of the company. |

### `CustomerProfileConfig`

CustomerProfileConfig is the configuration for the customer profile.

| Property | Type | Description |
|----------|------|-------------|
| `citations` | `array<CustomerProfileCitation>` | Optional. Citations for the organization profile. |
| `contactInfo` | `array<CustomerProfileContactInfo>` | Optional. Contact information for the organization. |
| `executives` | `array<CustomerProfilePerson>` | Optional. Executives of the organization. |
| `industries` | `array<CustomerProfileIndustry>` | Optional. The industries the organization is involved in. |
| `locations` | `array<CustomerProfileLocation>` | Optional. Locations the organization is present or conducts business in. |
| `org` | `string` | Required. The name of the organization. |
| `orgSummary` | `string` | Optional. A summary of the organization. |
| `parentCompanies` | `array<CustomerProfileCompany>` | Optional. The parent companies of the organization. |
| `products` | `array<CustomerProfileProduct>` | Optional. Product information for the organization. |
| `securityConsiderations` | `CustomerProfileSecurityConsiderations` | Optional. Security considerations for the organization. |
| `summary` | `CustomerProfileSummary` | Optional. A summarized version of the customer profile. |
| `technologyPresence` | `string` | Optional. Technology presence of the organization. |
| `webPresences` | `array<CustomerProfileWebPresence>` | Optional. Web presence of the organization. |

### `CustomerProfileContactInfo`

Contact information for the customer profile.

| Property | Type | Description |
|----------|------|-------------|
| `address` | `string` | The address of the contact. |
| `citationIds` | `array<string>` | Optional. The citation ids for the contact information. |
| `email` | `string` | The email address of the contact. |
| `label` | `string` | Optional. The name of the contact. |
| `other` | `string` | The other contact information. |
| `phone` | `string` | The phone number of the contact. |

### `CustomerProfileIndustry`

Industry information for the customer profile.

| Property | Type | Description |
|----------|------|-------------|
| `citationIds` | `array<string>` | Optional. The citation ids for the industry. |
| `industry` | `string` | Required. The name of the industry. |

### `CustomerProfileLocation`

Location information for the customer profile.

| Property | Type | Description |
|----------|------|-------------|
| `address` | `string` | Required. The address of the location. |
| `brand` | `string` | Required. The brand of the location. |
| `citationIds` | `array<string>` | Optional. The citation ids for the location. |
| `facilityType` | `string` | Optional. The type of location. |

### `CustomerProfilePerson`

Person information for the customer profile.

| Property | Type | Description |
|----------|------|-------------|
| `citationIds` | `array<string>` | Optional. The citation ids for the person. |
| `name` | `string` | Required. The name of the person. |
| `title` | `string` | Optional. The title of the person. |

### `CustomerProfileProduct`

Product information for the customer profile.

| Property | Type | Description |
|----------|------|-------------|
| `brand` | `string` | Required. The brand of the product. |
| `citationIds` | `array<string>` | Optional. The citation ids for the product. |
| `product` | `string` | Required. The name of the product. |

### `CustomerProfileSecurityConsiderations`

Security considerations for the customer profile.

| Property | Type | Description |
|----------|------|-------------|
| `considerations` | `array<string>` | Optional. A series of considerations for the security of the organization, such as "high risk of ... |
| `note` | `string` | Optional. A note about the security considerations. |

### `CustomerProfileSummary`

A summarized version of the customer profile. Generated by the backend.

| Property | Type | Description |
|----------|------|-------------|
| `areaServed` | `CustomerProfileCitedString` | Optional. The area the customer serves. |
| `brands` | `CustomerProfileCitedString` | Optional. A narrative summary of brands. |
| `entityType` | `CustomerProfileCitedString` | Optional. The entity type of the customer. |
| `founded` | `CustomerProfileCitedString` | Optional. The date the customer was founded. |
| `headquarters` | `CustomerProfileCitedString` | Optional. The headquarters of the customer. |
| `industry` | `CustomerProfileCitedString` | Optional. The industry the customer is in. |
| `keyPeopleSummary` | `CustomerProfileCitedString` | Optional. A narrative summary of key people. |
| `parentCompany` | `CustomerProfileCitedString` | Optional. The parent company of the customer. |
| `primaryWebsite` | `CustomerProfileCitedString` | Optional. The primary website of the customer. |
| `productsSummary` | `CustomerProfileCitedString` | Optional. A narrative summary of products. |
| `servicesSummary` | `CustomerProfileCitedString` | Optional. A narrative summary of services. |
| `title` | `CustomerProfileCitedString` | Optional. The official name of the customer. |

### `CustomerProfileWebPresence`

Web presence information for the customer profile.

| Property | Type | Description |
|----------|------|-------------|
| `citationIds` | `array<string>` | Optional. The citation ids for the web presence. |
| `domain` | `string` | Required. The domain name of the web presence. |

### `DataLeakAlertDetail`

Captures the specific details of Data Leak alert.

| Property | Type | Description |
|----------|------|-------------|
| `discoveryDocumentIds` | `array<string>` | Required. Array of ids to accommodate multiple discovery documents |
| `severity` | `string` | Required. Data Leak specific severity This will be the string representation of the DataLeakFindi... |

### `DataLeakFindingDetail`

A detail object for a Data Leak finding.

| Property | Type | Description |
|----------|------|-------------|
| `documentId` | `string` | Required. The unique identifier of the document that triggered the Data Leak finding. This ID can... |
| `matchScore` | `number` | Required. Reference to the match score of the Data Leak finding. This is a float value greater th... |
| `severity` | `string` | Required. The severity of the Data Leak finding. This indicates the potential impact of the threat. |

### `EnumerateAlertFacetsResponse`

Response message for EnumerateAlertFacets.

| Property | Type | Description |
|----------|------|-------------|
| `facets` | `array<Facet>` | List of facets and the counts. |

### `Evidence`

Details the evidence used to determine the relevance verdict.

| Property | Type | Description |
|----------|------|-------------|
| `commonThemes` | `array<string>` | A list of semantic themes or concepts found to be common, related, or aligned between the sources... |
| `distinctThemes` | `array<string>` | A list of semantic themes or descriptions unique to one source or semantically distant. |

### `Facet`

Facet represents a sub element of a resource for filtering. The results from this method are used to populate the filterable facets in the UI.

| Property | Type | Description |
|----------|------|-------------|
| `facet` | `string` | Name of the facet. This is also the string that needs to be used in the filtering expression. |
| `facetCounts` | `array<FacetCount>` | List of counts for the facet (if categorical). |
| `facetType` | `string` | The type of the facet. Options include "string", "int", "float", "bool", "enum", "timestamp", "us... |
| `maxValue` | `string` | Max value of the facet stringified based on type. Will be populated and formatted the same as min... |
| `minValue` | `string` | Min value of the facet stringified based on type. This is only populated for facets that have a c... |
| `totalCount` | `string` | Total number of records that contain this facet with ANY value. |

### `FacetCount`

FacetCount represents a count of records with each facet value.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `integer` | Count of records with the value. |
| `value` | `string` | Value of the facet stringified. Timestamps will be formatted using RFC3339. |

### `Finding`

A ‘stateless’ and a point in time event that a check produced a result of interest.

| Property | Type | Description |
|----------|------|-------------|
| `aiSummary` | `string` | Optional. AI summary of the finding. |
| `alert` | `string` | Optional. Name of the alert that this finding is bound to. |
| `audit` | `Audit` | Output only. Audit data about the finding. |
| `configurations` | `array<string>` | Optional. Configuration names that are bound to this finding. |
| `detail` | `FindingDetail` | Required. Holder of the domain specific details of the finding. |
| `displayName` | `string` | Required. A short descriptive title for the finding <= 250 chars. EX: "Actor 'baddy' offering $10... |
| `name` | `string` | Identifier. Server generated name for the finding (leave clear during creation). Format: projects... |
| `provider` | `string` | Required. Logical source of this finding (name of the sub-engine). |
| `relevanceAnalysis` | `RelevanceAnalysis` | Output only. High-Precision Relevance Analysis verdict for the finding. |
| `reoccurrenceTimes` | `array<string>` | Output only. When identical finding (same labels and same details) has re-occurred. |
| `severity` | `number` | Optional. Deprecated: Use the `severity_analysis` field instead. Base severity score from the fin... |
| `severityAnalysis` | `SeverityAnalysis` | Output only. High-Precision Severity Analysis verdict for the finding. |

### `FindingDetail`

Wrapper class that contains the union struct for all the various findings detail specific classes.

| Property | Type | Description |
|----------|------|-------------|
| `dataLeak` | `DataLeakFindingDetail` | Data Leak finding detail type. |
| `detailType` | `string` | Output only. Name of the detail type. Will be set by the server during creation to the name of th... |
| `initialAccessBroker` | `InitialAccessBrokerFindingDetail` | Initial Access Broker finding detail type. |
| `insiderThreat` | `InsiderThreatFindingDetail` | Insider Threat finding detail type. |

### `GenerateOrgProfileConfigurationRequest`

Request message for GenerateOrgProfileConfiguration.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Required. The display name of the organization to generate the profile for. |
| `domain` | `string` | Required. The domain of the organization to generate the profile for. |

### `InitialAccessBrokerAlertDetail`

Captures the specific details of InitialAccessBroker (IAB) alert.

| Property | Type | Description |
|----------|------|-------------|
| `discoveryDocumentIds` | `array<string>` | Required. Array of ids to accommodate multiple discovery documents |
| `severity` | `string` | Required. IAB specific severity |

### `InitialAccessBrokerFindingDetail`

A detail object for an Initial Access Broker (IAB) finding.

| Property | Type | Description |
|----------|------|-------------|
| `documentId` | `string` | Required. The unique identifier of the document that triggered the IAB finding. This ID can be us... |
| `matchScore` | `number` | Required. Reference to the match score of the IAB finding. This is a float value between 0 and 1 ... |
| `severity` | `string` | Required. The severity of the IAB finding. This indicates the potential impact of the threat. |

### `InsiderThreatAlertDetail`

Captures the specific details of InsiderThreat alert.

| Property | Type | Description |
|----------|------|-------------|
| `discoveryDocumentIds` | `array<string>` | Required. Array of ids to accommodate multiple discovery documents |
| `severity` | `string` | Required. InsiderThreat specific severity This will be the string representation of the InsiderTh... |

### `InsiderThreatFindingDetail`

A detail object for a InsiderThreat finding.

| Property | Type | Description |
|----------|------|-------------|
| `documentId` | `string` | Required. The unique identifier of the document that triggered the InsiderThreat finding. This ID... |
| `matchScore` | `number` | Required. Reference to the match score of the InsiderThreat finding. This is a float value greate... |
| `severity` | `string` | Required. The severity of the InsiderThreat finding. This indicates the potential impact of the t... |

### `ListAlertsResponse`

Response message for ListAlerts.

| Property | Type | Description |
|----------|------|-------------|
| `alerts` | `array<Alert>` | List of alerts. |
| `nextPageToken` | `string` | Page token. |

### `ListConfigurationRevisionsResponse`

Response message for ListConfigurationRevisions.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `revisions` | `array<ConfigurationRevision>` | The Configuration Revisions associated with the specified Configuration |

### `ListConfigurationsResponse`

Response message for ListConfigurations.

| Property | Type | Description |
|----------|------|-------------|
| `configurations` | `array<Configuration>` | List of configurations. |
| `nextPageToken` | `string` | Page token. |

### `ListFindingsResponse`

Response message for ListFindings.

| Property | Type | Description |
|----------|------|-------------|
| `findings` | `array<Finding>` | List of findings. |
| `nextPageToken` | `string` | Page token. |

### `MarkAlertAsBenignRequest`

Request message for MarkAlertAsBenign.

### `MarkAlertAsDuplicateRequest`

Request message for MarkAlertAsDuplicate.

| Property | Type | Description |
|----------|------|-------------|
| `duplicateOf` | `string` | Optional. Name of the alert to mark as a duplicate of. Format: projects/{project}/alerts/{alert} |

### `MarkAlertAsEscalatedRequest`

Request message for MarkAlertAsEscalated.

### `MarkAlertAsFalsePositiveRequest`

Request message for MarkAlertAsFalsePositive.

### `MarkAlertAsNotActionableRequest`

Request message for MarkAlertAsNotActionable.

### `MarkAlertAsReadRequest`

Request message for MarkAlertAsRead.

### `MarkAlertAsResolvedRequest`

Request message for MarkAlertAsResolved.

### `MarkAlertAsTrackedExternallyRequest`

Request message for MarkAlertAsTrackedExternally.

### `MarkAlertAsTriagedRequest`

Request message for MarkAlertAsTriaged.

### `Operation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `Status` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `PriorityAnalysis`

Structured priority analysis for a threat.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `string` | The level of confidence in the given verdict. |
| `priorityLevel` | `string` | The level of Priority. |
| `reasoning` | `string` | Human-readable explanation from the model, detailing why a particular result is considered to hav... |

### `RelevanceAnalysis`

Structured relevance analysis for a threat.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `string` | The level of confidence in the given verdict. |
| `evidence` | `Evidence` | Evidence supporting the verdict, including matched and unmatched items. |
| `reasoning` | `string` | Human-readable explanation from the matcher, detailing why a particular result is considered rele... |
| `relevanceLevel` | `string` | The level of relevance. |
| `relevant` | `boolean` | Indicates whether the threat is considered relevant. |

### `SearchFindingsResponse`

Response message for SearchFindings.

| Property | Type | Description |
|----------|------|-------------|
| `findings` | `array<Finding>` | List of findings. |
| `nextPageToken` | `string` | Page token. |

### `SeverityAnalysis`

Structured severity analysis for a threat.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `string` | The level of confidence in the given verdict. |
| `reasoning` | `string` | Human-readable explanation from the model, detailing why a particular result is considered to hav... |
| `severityLevel` | `string` | The level of severity. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `UpsertConfigurationResponse`

Response message for UpsertConfiguration.

| Property | Type | Description |
|----------|------|-------------|
| `configuration` | `string` | Output only. Created configuration ID with server assigned id. |

