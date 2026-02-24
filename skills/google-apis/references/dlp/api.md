# Sensitive Data Protection (DLP) - API Reference

**Version**: `v2` | **Methods**: 145 | **Schemas**: 351

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `dlp.organizations.inspectTemplates.get` | GET | `v2/{+name}` | Gets an InspectTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creating-tem... |
| `dlp.organizations.inspectTemplates.patch` | PATCH | `v2/{+name}` | Updates the InspectTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creating... |
| `dlp.organizations.inspectTemplates.list` | GET | `v2/{+parent}/inspectTemplates` | Lists InspectTemplates. See https://cloud.google.com/sensitive-data-protection/docs/creating-temp... |
| `dlp.organizations.inspectTemplates.delete` | DELETE | `v2/{+name}` | Deletes an InspectTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creating-... |
| `dlp.organizations.inspectTemplates.create` | POST | `v2/{+parent}/inspectTemplates` | Creates an InspectTemplate for reusing frequently used configuration for inspecting content, imag... |
| `dlp.organizations.deidentifyTemplates.create` | POST | `v2/{+parent}/deidentifyTemplates` | Creates a DeidentifyTemplate for reusing frequently used configuration for de-identifying content... |
| `dlp.organizations.deidentifyTemplates.patch` | PATCH | `v2/{+name}` | Updates the DeidentifyTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creat... |
| `dlp.organizations.deidentifyTemplates.delete` | DELETE | `v2/{+name}` | Deletes a DeidentifyTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creatin... |
| `dlp.organizations.deidentifyTemplates.get` | GET | `v2/{+name}` | Gets a DeidentifyTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creating-t... |
| `dlp.organizations.deidentifyTemplates.list` | GET | `v2/{+parent}/deidentifyTemplates` | Lists DeidentifyTemplates. See https://cloud.google.com/sensitive-data-protection/docs/creating-t... |
| `dlp.organizations.storedInfoTypes.patch` | PATCH | `v2/{+name}` | Updates the stored infoType by creating a new version. The existing version will continue to be u... |
| `dlp.organizations.storedInfoTypes.create` | POST | `v2/{+parent}/storedInfoTypes` | Creates a pre-built stored infoType to be used for inspection. See https://cloud.google.com/sensi... |
| `dlp.organizations.storedInfoTypes.delete` | DELETE | `v2/{+name}` | Deletes a stored infoType. See https://cloud.google.com/sensitive-data-protection/docs/creating-s... |
| `dlp.organizations.storedInfoTypes.get` | GET | `v2/{+name}` | Gets a stored infoType. See https://cloud.google.com/sensitive-data-protection/docs/creating-stor... |
| `dlp.organizations.storedInfoTypes.list` | GET | `v2/{+parent}/storedInfoTypes` | Lists stored infoTypes. See https://cloud.google.com/sensitive-data-protection/docs/creating-stor... |
| `dlp.organizations.locations.jobTriggers.list` | GET | `v2/{+parent}/jobTriggers` | Lists job triggers. See https://cloud.google.com/sensitive-data-protection/docs/creating-job-trig... |
| `dlp.organizations.locations.jobTriggers.create` | POST | `v2/{+parent}/jobTriggers` | Creates a job trigger to run DLP actions such as scanning storage for sensitive information on a ... |
| `dlp.organizations.locations.jobTriggers.delete` | DELETE | `v2/{+name}` | Deletes a job trigger. See https://cloud.google.com/sensitive-data-protection/docs/creating-job-t... |
| `dlp.organizations.locations.jobTriggers.patch` | PATCH | `v2/{+name}` | Updates a job trigger. See https://cloud.google.com/sensitive-data-protection/docs/creating-job-t... |
| `dlp.organizations.locations.jobTriggers.get` | GET | `v2/{+name}` | Gets a job trigger. See https://cloud.google.com/sensitive-data-protection/docs/creating-job-trig... |
| `dlp.organizations.locations.connections.create` | POST | `v2/{+parent}/connections` | Create a Connection to an external data source. |
| `dlp.organizations.locations.connections.search` | GET | `v2/{+parent}/connections:search` | Searches for Connections in a parent. |
| `dlp.organizations.locations.connections.list` | GET | `v2/{+parent}/connections` | Lists Connections in a parent. Use SearchConnections to see all connections within an organization. |
| `dlp.organizations.locations.connections.get` | GET | `v2/{+name}` | Get a Connection by name. |
| `dlp.organizations.locations.connections.patch` | PATCH | `v2/{+name}` | Update a Connection. |
| `dlp.organizations.locations.connections.delete` | DELETE | `v2/{+name}` | Delete a Connection. |
| `dlp.organizations.locations.inspectTemplates.create` | POST | `v2/{+parent}/inspectTemplates` | Creates an InspectTemplate for reusing frequently used configuration for inspecting content, imag... |
| `dlp.organizations.locations.inspectTemplates.patch` | PATCH | `v2/{+name}` | Updates the InspectTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creating... |
| `dlp.organizations.locations.inspectTemplates.get` | GET | `v2/{+name}` | Gets an InspectTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creating-tem... |
| `dlp.organizations.locations.inspectTemplates.list` | GET | `v2/{+parent}/inspectTemplates` | Lists InspectTemplates. See https://cloud.google.com/sensitive-data-protection/docs/creating-temp... |
| `dlp.organizations.locations.inspectTemplates.delete` | DELETE | `v2/{+name}` | Deletes an InspectTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creating-... |
| `dlp.organizations.locations.dlpJobs.list` | GET | `v2/{+parent}/dlpJobs` | Lists DlpJobs that match the specified filter in the request. See https://cloud.google.com/sensit... |
| `dlp.organizations.locations.columnDataProfiles.list` | GET | `v2/{+parent}/columnDataProfiles` | Lists column data profiles for an organization. |
| `dlp.organizations.locations.columnDataProfiles.get` | GET | `v2/{+name}` | Gets a column data profile. |
| `dlp.organizations.locations.infoTypes.list` | GET | `v2/{+parent}/infoTypes` | Returns a list of the sensitive information types that the DLP API supports. See https://cloud.go... |
| `dlp.organizations.locations.discoveryConfigs.get` | GET | `v2/{+name}` | Gets a discovery configuration. |
| `dlp.organizations.locations.discoveryConfigs.create` | POST | `v2/{+parent}/discoveryConfigs` | Creates a config for discovery to scan and profile storage. |
| `dlp.organizations.locations.discoveryConfigs.patch` | PATCH | `v2/{+name}` | Updates a discovery configuration. |
| `dlp.organizations.locations.discoveryConfigs.delete` | DELETE | `v2/{+name}` | Deletes a discovery configuration. |
| `dlp.organizations.locations.discoveryConfigs.list` | GET | `v2/{+parent}/discoveryConfigs` | Lists discovery configurations. |
| `dlp.organizations.locations.storedInfoTypes.patch` | PATCH | `v2/{+name}` | Updates the stored infoType by creating a new version. The existing version will continue to be u... |
| `dlp.organizations.locations.storedInfoTypes.list` | GET | `v2/{+parent}/storedInfoTypes` | Lists stored infoTypes. See https://cloud.google.com/sensitive-data-protection/docs/creating-stor... |
| `dlp.organizations.locations.storedInfoTypes.create` | POST | `v2/{+parent}/storedInfoTypes` | Creates a pre-built stored infoType to be used for inspection. See https://cloud.google.com/sensi... |
| `dlp.organizations.locations.storedInfoTypes.delete` | DELETE | `v2/{+name}` | Deletes a stored infoType. See https://cloud.google.com/sensitive-data-protection/docs/creating-s... |
| `dlp.organizations.locations.storedInfoTypes.get` | GET | `v2/{+name}` | Gets a stored infoType. See https://cloud.google.com/sensitive-data-protection/docs/creating-stor... |
| `dlp.organizations.locations.deidentifyTemplates.create` | POST | `v2/{+parent}/deidentifyTemplates` | Creates a DeidentifyTemplate for reusing frequently used configuration for de-identifying content... |
| `dlp.organizations.locations.deidentifyTemplates.list` | GET | `v2/{+parent}/deidentifyTemplates` | Lists DeidentifyTemplates. See https://cloud.google.com/sensitive-data-protection/docs/creating-t... |
| `dlp.organizations.locations.deidentifyTemplates.patch` | PATCH | `v2/{+name}` | Updates the DeidentifyTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creat... |
| `dlp.organizations.locations.deidentifyTemplates.delete` | DELETE | `v2/{+name}` | Deletes a DeidentifyTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creatin... |
| `dlp.organizations.locations.deidentifyTemplates.get` | GET | `v2/{+name}` | Gets a DeidentifyTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creating-t... |
| `dlp.organizations.locations.projectDataProfiles.get` | GET | `v2/{+name}` | Gets a project data profile. |
| `dlp.organizations.locations.projectDataProfiles.list` | GET | `v2/{+parent}/projectDataProfiles` | Lists project data profiles for an organization. |
| `dlp.organizations.locations.tableDataProfiles.get` | GET | `v2/{+name}` | Gets a table data profile. |
| `dlp.organizations.locations.tableDataProfiles.list` | GET | `v2/{+parent}/tableDataProfiles` | Lists table data profiles for an organization. |
| `dlp.organizations.locations.tableDataProfiles.delete` | DELETE | `v2/{+name}` | Delete a TableDataProfile. Will not prevent the profile from being regenerated if the table is st... |
| `dlp.organizations.locations.fileStoreDataProfiles.get` | GET | `v2/{+name}` | Gets a file store data profile. |
| `dlp.organizations.locations.fileStoreDataProfiles.list` | GET | `v2/{+parent}/fileStoreDataProfiles` | Lists file store data profiles for an organization. |
| `dlp.organizations.locations.fileStoreDataProfiles.delete` | DELETE | `v2/{+name}` | Delete a FileStoreDataProfile. Will not prevent the profile from being regenerated if the resourc... |
| `dlp.infoTypes.list` | GET | `v2/infoTypes` | Returns a list of the sensitive information types that the DLP API supports. See https://cloud.go... |
| `dlp.locations.infoTypes.list` | GET | `v2/{+parent}/infoTypes` | Returns a list of the sensitive information types that the DLP API supports. See https://cloud.go... |
| `dlp.projects.inspectTemplates.list` | GET | `v2/{+parent}/inspectTemplates` | Lists InspectTemplates. See https://cloud.google.com/sensitive-data-protection/docs/creating-temp... |
| `dlp.projects.inspectTemplates.create` | POST | `v2/{+parent}/inspectTemplates` | Creates an InspectTemplate for reusing frequently used configuration for inspecting content, imag... |
| `dlp.projects.inspectTemplates.patch` | PATCH | `v2/{+name}` | Updates the InspectTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creating... |
| `dlp.projects.inspectTemplates.delete` | DELETE | `v2/{+name}` | Deletes an InspectTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creating-... |
| `dlp.projects.inspectTemplates.get` | GET | `v2/{+name}` | Gets an InspectTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creating-tem... |
| `dlp.projects.image.redact` | POST | `v2/{+parent}/image:redact` | Redacts potentially sensitive info from an image. This method has limits on input size, processin... |
| `dlp.projects.content.inspect` | POST | `v2/{+parent}/content:inspect` | Finds potentially sensitive info in content. This method has limits on input size, processing tim... |
| `dlp.projects.content.deidentify` | POST | `v2/{+parent}/content:deidentify` | De-identifies potentially sensitive info from a ContentItem. This method has limits on input size... |
| `dlp.projects.content.reidentify` | POST | `v2/{+parent}/content:reidentify` | Re-identifies content that has been de-identified. See https://cloud.google.com/sensitive-data-pr... |
| `dlp.projects.dlpJobs.create` | POST | `v2/{+parent}/dlpJobs` | Creates a new job to inspect storage or calculate risk metrics. See https://cloud.google.com/sens... |
| `dlp.projects.dlpJobs.list` | GET | `v2/{+parent}/dlpJobs` | Lists DlpJobs that match the specified filter in the request. See https://cloud.google.com/sensit... |
| `dlp.projects.dlpJobs.get` | GET | `v2/{+name}` | Gets the latest state of a long-running DlpJob. See https://cloud.google.com/sensitive-data-prote... |
| `dlp.projects.dlpJobs.delete` | DELETE | `v2/{+name}` | Deletes a long-running DlpJob. This method indicates that the client is no longer interested in t... |
| `dlp.projects.dlpJobs.cancel` | POST | `v2/{+name}:cancel` | Starts asynchronous cancellation on a long-running DlpJob. The server makes a best effort to canc... |
| `dlp.projects.locations.jobTriggers.patch` | PATCH | `v2/{+name}` | Updates a job trigger. See https://cloud.google.com/sensitive-data-protection/docs/creating-job-t... |
| `dlp.projects.locations.jobTriggers.get` | GET | `v2/{+name}` | Gets a job trigger. See https://cloud.google.com/sensitive-data-protection/docs/creating-job-trig... |
| `dlp.projects.locations.jobTriggers.delete` | DELETE | `v2/{+name}` | Deletes a job trigger. See https://cloud.google.com/sensitive-data-protection/docs/creating-job-t... |
| `dlp.projects.locations.jobTriggers.hybridInspect` | POST | `v2/{+name}:hybridInspect` | Inspect hybrid content and store findings to a trigger. The inspection will be processed asynchro... |
| `dlp.projects.locations.jobTriggers.activate` | POST | `v2/{+name}:activate` | Activate a job trigger. Causes the immediate execute of a trigger instead of waiting on the trigg... |
| `dlp.projects.locations.jobTriggers.create` | POST | `v2/{+parent}/jobTriggers` | Creates a job trigger to run DLP actions such as scanning storage for sensitive information on a ... |
| `dlp.projects.locations.jobTriggers.list` | GET | `v2/{+parent}/jobTriggers` | Lists job triggers. See https://cloud.google.com/sensitive-data-protection/docs/creating-job-trig... |
| `dlp.projects.locations.inspectTemplates.patch` | PATCH | `v2/{+name}` | Updates the InspectTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creating... |
| `dlp.projects.locations.inspectTemplates.delete` | DELETE | `v2/{+name}` | Deletes an InspectTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creating-... |
| `dlp.projects.locations.inspectTemplates.create` | POST | `v2/{+parent}/inspectTemplates` | Creates an InspectTemplate for reusing frequently used configuration for inspecting content, imag... |
| `dlp.projects.locations.inspectTemplates.get` | GET | `v2/{+name}` | Gets an InspectTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creating-tem... |
| `dlp.projects.locations.inspectTemplates.list` | GET | `v2/{+parent}/inspectTemplates` | Lists InspectTemplates. See https://cloud.google.com/sensitive-data-protection/docs/creating-temp... |
| `dlp.projects.locations.dlpJobs.create` | POST | `v2/{+parent}/dlpJobs` | Creates a new job to inspect storage or calculate risk metrics. See https://cloud.google.com/sens... |
| `dlp.projects.locations.dlpJobs.list` | GET | `v2/{+parent}/dlpJobs` | Lists DlpJobs that match the specified filter in the request. See https://cloud.google.com/sensit... |
| `dlp.projects.locations.dlpJobs.cancel` | POST | `v2/{+name}:cancel` | Starts asynchronous cancellation on a long-running DlpJob. The server makes a best effort to canc... |
| `dlp.projects.locations.dlpJobs.finish` | POST | `v2/{+name}:finish` | Finish a running hybrid DlpJob. Triggers the finalization steps and running of any enabled action... |
| `dlp.projects.locations.dlpJobs.delete` | DELETE | `v2/{+name}` | Deletes a long-running DlpJob. This method indicates that the client is no longer interested in t... |
| `dlp.projects.locations.dlpJobs.hybridInspect` | POST | `v2/{+name}:hybridInspect` | Inspect hybrid content and store findings to a job. To review the findings, inspect the job. Insp... |
| `dlp.projects.locations.dlpJobs.get` | GET | `v2/{+name}` | Gets the latest state of a long-running DlpJob. See https://cloud.google.com/sensitive-data-prote... |
| `dlp.projects.locations.infoTypes.list` | GET | `v2/{+parent}/infoTypes` | Returns a list of the sensitive information types that the DLP API supports. See https://cloud.go... |
| `dlp.projects.locations.connections.delete` | DELETE | `v2/{+name}` | Delete a Connection. |
| `dlp.projects.locations.connections.list` | GET | `v2/{+parent}/connections` | Lists Connections in a parent. Use SearchConnections to see all connections within an organization. |
| `dlp.projects.locations.connections.patch` | PATCH | `v2/{+name}` | Update a Connection. |
| `dlp.projects.locations.connections.search` | GET | `v2/{+parent}/connections:search` | Searches for Connections in a parent. |
| `dlp.projects.locations.connections.get` | GET | `v2/{+name}` | Get a Connection by name. |
| `dlp.projects.locations.connections.create` | POST | `v2/{+parent}/connections` | Create a Connection to an external data source. |
| `dlp.projects.locations.discoveryConfigs.get` | GET | `v2/{+name}` | Gets a discovery configuration. |
| `dlp.projects.locations.discoveryConfigs.patch` | PATCH | `v2/{+name}` | Updates a discovery configuration. |
| `dlp.projects.locations.discoveryConfigs.create` | POST | `v2/{+parent}/discoveryConfigs` | Creates a config for discovery to scan and profile storage. |
| `dlp.projects.locations.discoveryConfigs.list` | GET | `v2/{+parent}/discoveryConfigs` | Lists discovery configurations. |
| `dlp.projects.locations.discoveryConfigs.delete` | DELETE | `v2/{+name}` | Deletes a discovery configuration. |
| `dlp.projects.locations.fileStoreDataProfiles.delete` | DELETE | `v2/{+name}` | Delete a FileStoreDataProfile. Will not prevent the profile from being regenerated if the resourc... |
| `dlp.projects.locations.fileStoreDataProfiles.get` | GET | `v2/{+name}` | Gets a file store data profile. |
| `dlp.projects.locations.fileStoreDataProfiles.list` | GET | `v2/{+parent}/fileStoreDataProfiles` | Lists file store data profiles for an organization. |
| `dlp.projects.locations.tableDataProfiles.delete` | DELETE | `v2/{+name}` | Delete a TableDataProfile. Will not prevent the profile from being regenerated if the table is st... |
| `dlp.projects.locations.tableDataProfiles.get` | GET | `v2/{+name}` | Gets a table data profile. |
| `dlp.projects.locations.tableDataProfiles.list` | GET | `v2/{+parent}/tableDataProfiles` | Lists table data profiles for an organization. |
| `dlp.projects.locations.deidentifyTemplates.list` | GET | `v2/{+parent}/deidentifyTemplates` | Lists DeidentifyTemplates. See https://cloud.google.com/sensitive-data-protection/docs/creating-t... |
| `dlp.projects.locations.deidentifyTemplates.get` | GET | `v2/{+name}` | Gets a DeidentifyTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creating-t... |
| `dlp.projects.locations.deidentifyTemplates.create` | POST | `v2/{+parent}/deidentifyTemplates` | Creates a DeidentifyTemplate for reusing frequently used configuration for de-identifying content... |
| `dlp.projects.locations.deidentifyTemplates.delete` | DELETE | `v2/{+name}` | Deletes a DeidentifyTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creatin... |
| `dlp.projects.locations.deidentifyTemplates.patch` | PATCH | `v2/{+name}` | Updates the DeidentifyTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creat... |
| `dlp.projects.locations.content.reidentify` | POST | `v2/{+parent}/content:reidentify` | Re-identifies content that has been de-identified. See https://cloud.google.com/sensitive-data-pr... |
| `dlp.projects.locations.content.deidentify` | POST | `v2/{+parent}/content:deidentify` | De-identifies potentially sensitive info from a ContentItem. This method has limits on input size... |
| `dlp.projects.locations.content.inspect` | POST | `v2/{+parent}/content:inspect` | Finds potentially sensitive info in content. This method has limits on input size, processing tim... |
| `dlp.projects.locations.image.redact` | POST | `v2/{+parent}/image:redact` | Redacts potentially sensitive info from an image. This method has limits on input size, processin... |
| `dlp.projects.locations.columnDataProfiles.list` | GET | `v2/{+parent}/columnDataProfiles` | Lists column data profiles for an organization. |
| `dlp.projects.locations.columnDataProfiles.get` | GET | `v2/{+name}` | Gets a column data profile. |
| `dlp.projects.locations.storedInfoTypes.list` | GET | `v2/{+parent}/storedInfoTypes` | Lists stored infoTypes. See https://cloud.google.com/sensitive-data-protection/docs/creating-stor... |
| `dlp.projects.locations.storedInfoTypes.patch` | PATCH | `v2/{+name}` | Updates the stored infoType by creating a new version. The existing version will continue to be u... |
| `dlp.projects.locations.storedInfoTypes.delete` | DELETE | `v2/{+name}` | Deletes a stored infoType. See https://cloud.google.com/sensitive-data-protection/docs/creating-s... |
| `dlp.projects.locations.storedInfoTypes.get` | GET | `v2/{+name}` | Gets a stored infoType. See https://cloud.google.com/sensitive-data-protection/docs/creating-stor... |
| `dlp.projects.locations.storedInfoTypes.create` | POST | `v2/{+parent}/storedInfoTypes` | Creates a pre-built stored infoType to be used for inspection. See https://cloud.google.com/sensi... |
| `dlp.projects.locations.projectDataProfiles.list` | GET | `v2/{+parent}/projectDataProfiles` | Lists project data profiles for an organization. |
| `dlp.projects.locations.projectDataProfiles.get` | GET | `v2/{+name}` | Gets a project data profile. |
| `dlp.projects.deidentifyTemplates.get` | GET | `v2/{+name}` | Gets a DeidentifyTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creating-t... |
| `dlp.projects.deidentifyTemplates.list` | GET | `v2/{+parent}/deidentifyTemplates` | Lists DeidentifyTemplates. See https://cloud.google.com/sensitive-data-protection/docs/creating-t... |
| `dlp.projects.deidentifyTemplates.patch` | PATCH | `v2/{+name}` | Updates the DeidentifyTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creat... |
| `dlp.projects.deidentifyTemplates.delete` | DELETE | `v2/{+name}` | Deletes a DeidentifyTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creatin... |
| `dlp.projects.deidentifyTemplates.create` | POST | `v2/{+parent}/deidentifyTemplates` | Creates a DeidentifyTemplate for reusing frequently used configuration for de-identifying content... |
| `dlp.projects.jobTriggers.get` | GET | `v2/{+name}` | Gets a job trigger. See https://cloud.google.com/sensitive-data-protection/docs/creating-job-trig... |
| `dlp.projects.jobTriggers.patch` | PATCH | `v2/{+name}` | Updates a job trigger. See https://cloud.google.com/sensitive-data-protection/docs/creating-job-t... |
| `dlp.projects.jobTriggers.list` | GET | `v2/{+parent}/jobTriggers` | Lists job triggers. See https://cloud.google.com/sensitive-data-protection/docs/creating-job-trig... |
| `dlp.projects.jobTriggers.create` | POST | `v2/{+parent}/jobTriggers` | Creates a job trigger to run DLP actions such as scanning storage for sensitive information on a ... |
| `dlp.projects.jobTriggers.delete` | DELETE | `v2/{+name}` | Deletes a job trigger. See https://cloud.google.com/sensitive-data-protection/docs/creating-job-t... |
| `dlp.projects.jobTriggers.activate` | POST | `v2/{+name}:activate` | Activate a job trigger. Causes the immediate execute of a trigger instead of waiting on the trigg... |
| `dlp.projects.storedInfoTypes.list` | GET | `v2/{+parent}/storedInfoTypes` | Lists stored infoTypes. See https://cloud.google.com/sensitive-data-protection/docs/creating-stor... |
| `dlp.projects.storedInfoTypes.patch` | PATCH | `v2/{+name}` | Updates the stored infoType by creating a new version. The existing version will continue to be u... |
| `dlp.projects.storedInfoTypes.create` | POST | `v2/{+parent}/storedInfoTypes` | Creates a pre-built stored infoType to be used for inspection. See https://cloud.google.com/sensi... |
| `dlp.projects.storedInfoTypes.get` | GET | `v2/{+name}` | Gets a stored infoType. See https://cloud.google.com/sensitive-data-protection/docs/creating-stor... |
| `dlp.projects.storedInfoTypes.delete` | DELETE | `v2/{+name}` | Deletes a stored infoType. See https://cloud.google.com/sensitive-data-protection/docs/creating-s... |

### `dlp.organizations.inspectTemplates.get`

**GET** `v2/{+name}`

Gets an InspectTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creating-templates to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the organization and inspectTemplate to be read, for example `organizations/433245324/insp... |

**Response**: `GooglePrivacyDlpV2InspectTemplate`

```typescript
const res = await dlp.inspectTemplates.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.inspectTemplates.patch`

**PATCH** `v2/{+name}`

Updates the InspectTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creating-templates to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of organization and inspectTemplate to be updated, for example `organizations/433245324/inspe... |

**Request body**: `GooglePrivacyDlpV2UpdateInspectTemplateRequest`

**Response**: `GooglePrivacyDlpV2InspectTemplate`

```typescript
const res = await dlp.inspectTemplates.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.inspectTemplates.list`

**GET** `v2/{+parent}/inspectTemplates`

Lists InspectTemplates. See https://cloud.google.com/sensitive-data-protection/docs/creating-templates to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. The format of this value varies depending on the scope of the request (project or org... |
| `locationId` | `string` | query | No | Deprecated. This field has no effect. |
| `orderBy` | `string` | query | No | Comma-separated list of fields to order by, followed by `asc` or `desc` postfix. This list is case insensitive. The d... |
| `pageSize` | `integer` | query | No | Size of the page. This value can be limited by the server. If zero server returns a page of max size 100. |
| `pageToken` | `string` | query | No | Page token to continue retrieval. Comes from the previous call to `ListInspectTemplates`. |

**Response**: `GooglePrivacyDlpV2ListInspectTemplatesResponse`

```typescript
const res = await dlp.inspectTemplates.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.inspectTemplates.delete`

**DELETE** `v2/{+name}`

Deletes an InspectTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creating-templates to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the organization and inspectTemplate to be deleted, for example `organizations/433245324/i... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dlp.inspectTemplates.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.inspectTemplates.create`

**POST** `v2/{+parent}/inspectTemplates`

Creates an InspectTemplate for reusing frequently used configuration for inspecting content, images, and storage. See https://cloud.google.com/sensitive-data-protection/docs/creating-templates to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. The format of this value varies depending on the scope of the request (project or org... |

**Request body**: `GooglePrivacyDlpV2CreateInspectTemplateRequest`

**Response**: `GooglePrivacyDlpV2InspectTemplate`

```typescript
const res = await dlp.inspectTemplates.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.deidentifyTemplates.create`

**POST** `v2/{+parent}/deidentifyTemplates`

Creates a DeidentifyTemplate for reusing frequently used configuration for de-identifying content, images, and storage. See https://cloud.google.com/sensitive-data-protection/docs/creating-templates-deid to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. The format of this value varies depending on the scope of the request (project or org... |

**Request body**: `GooglePrivacyDlpV2CreateDeidentifyTemplateRequest`

**Response**: `GooglePrivacyDlpV2DeidentifyTemplate`

```typescript
const res = await dlp.deidentifyTemplates.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.deidentifyTemplates.patch`

**PATCH** `v2/{+name}`

Updates the DeidentifyTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creating-templates-deid to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of organization and deidentify template to be updated, for example `organizations/433245324/d... |

**Request body**: `GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest`

**Response**: `GooglePrivacyDlpV2DeidentifyTemplate`

```typescript
const res = await dlp.deidentifyTemplates.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.deidentifyTemplates.delete`

**DELETE** `v2/{+name}`

Deletes a DeidentifyTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creating-templates-deid to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the organization and deidentify template to be deleted, for example `organizations/4332453... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dlp.deidentifyTemplates.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.deidentifyTemplates.get`

**GET** `v2/{+name}`

Gets a DeidentifyTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creating-templates-deid to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the organization and deidentify template to be read, for example `organizations/433245324/... |

**Response**: `GooglePrivacyDlpV2DeidentifyTemplate`

```typescript
const res = await dlp.deidentifyTemplates.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.deidentifyTemplates.list`

**GET** `v2/{+parent}/deidentifyTemplates`

Lists DeidentifyTemplates. See https://cloud.google.com/sensitive-data-protection/docs/creating-templates-deid to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. The format of this value varies depending on the scope of the request (project or org... |
| `locationId` | `string` | query | No | Deprecated. This field has no effect. |
| `orderBy` | `string` | query | No | Comma-separated list of fields to order by, followed by `asc` or `desc` postfix. This list is case insensitive. The d... |
| `pageSize` | `integer` | query | No | Size of the page. This value can be limited by the server. If zero server returns a page of max size 100. |
| `pageToken` | `string` | query | No | Page token to continue retrieval. Comes from the previous call to `ListDeidentifyTemplates`. |

**Response**: `GooglePrivacyDlpV2ListDeidentifyTemplatesResponse`

```typescript
const res = await dlp.deidentifyTemplates.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.storedInfoTypes.patch`

**PATCH** `v2/{+name}`

Updates the stored infoType by creating a new version. The existing version will continue to be used until the new version is ready. See https://cloud.google.com/sensitive-data-protection/docs/creating-stored-infotypes to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of organization and storedInfoType to be updated, for example `organizations/433245324/stored... |

**Request body**: `GooglePrivacyDlpV2UpdateStoredInfoTypeRequest`

**Response**: `GooglePrivacyDlpV2StoredInfoType`

```typescript
const res = await dlp.storedInfoTypes.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.storedInfoTypes.create`

**POST** `v2/{+parent}/storedInfoTypes`

Creates a pre-built stored infoType to be used for inspection. See https://cloud.google.com/sensitive-data-protection/docs/creating-stored-infotypes to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. The format of this value varies depending on the scope of the request (project or org... |

**Request body**: `GooglePrivacyDlpV2CreateStoredInfoTypeRequest`

**Response**: `GooglePrivacyDlpV2StoredInfoType`

```typescript
const res = await dlp.storedInfoTypes.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.storedInfoTypes.delete`

**DELETE** `v2/{+name}`

Deletes a stored infoType. See https://cloud.google.com/sensitive-data-protection/docs/creating-stored-infotypes to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the organization and storedInfoType to be deleted, for example `organizations/433245324/st... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dlp.storedInfoTypes.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.storedInfoTypes.get`

**GET** `v2/{+name}`

Gets a stored infoType. See https://cloud.google.com/sensitive-data-protection/docs/creating-stored-infotypes to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the organization and storedInfoType to be read, for example `organizations/433245324/store... |

**Response**: `GooglePrivacyDlpV2StoredInfoType`

```typescript
const res = await dlp.storedInfoTypes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.storedInfoTypes.list`

**GET** `v2/{+parent}/storedInfoTypes`

Lists stored infoTypes. See https://cloud.google.com/sensitive-data-protection/docs/creating-stored-infotypes to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. The format of this value varies depending on the scope of the request (project or org... |
| `locationId` | `string` | query | No | Deprecated. This field has no effect. |
| `orderBy` | `string` | query | No | Comma-separated list of fields to order by, followed by `asc` or `desc` postfix. This list is case insensitive. The d... |
| `pageSize` | `integer` | query | No | Size of the page. This value can be limited by the server. If zero server returns a page of max size 100. |
| `pageToken` | `string` | query | No | Page token to continue retrieval. Comes from the previous call to `ListStoredInfoTypes`. |

**Response**: `GooglePrivacyDlpV2ListStoredInfoTypesResponse`

```typescript
const res = await dlp.storedInfoTypes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.locations.jobTriggers.list`

**GET** `v2/{+parent}/jobTriggers`

Lists job triggers. See https://cloud.google.com/sensitive-data-protection/docs/creating-job-triggers to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. The format of this value varies depending on whether you have [specified a processing... |
| `filter` | `string` | query | No | Allows filtering. Supported syntax: * Filter expressions are made up of one or more restrictions. * Restrictions can ... |
| `locationId` | `string` | query | No | Deprecated. This field has no effect. |
| `orderBy` | `string` | query | No | Comma-separated list of triggeredJob fields to order by, followed by `asc` or `desc` postfix. This list is case insen... |
| `pageSize` | `integer` | query | No | Size of the page. This value can be limited by a server. |
| `pageToken` | `string` | query | No | Page token to continue retrieval. Comes from the previous call to ListJobTriggers. `order_by` field must not change f... |
| `type` | `string` | query | No | The type of jobs. Will use `DlpJobType.INSPECT` if not set. |

**Response**: `GooglePrivacyDlpV2ListJobTriggersResponse`

```typescript
const res = await dlp.jobTriggers.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.locations.jobTriggers.create`

**POST** `v2/{+parent}/jobTriggers`

Creates a job trigger to run DLP actions such as scanning storage for sensitive information on a set schedule. See https://cloud.google.com/sensitive-data-protection/docs/creating-job-triggers to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. The format of this value varies depending on whether you have [specified a processing... |

**Request body**: `GooglePrivacyDlpV2CreateJobTriggerRequest`

**Response**: `GooglePrivacyDlpV2JobTrigger`

```typescript
const res = await dlp.jobTriggers.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.locations.jobTriggers.delete`

**DELETE** `v2/{+name}`

Deletes a job trigger. See https://cloud.google.com/sensitive-data-protection/docs/creating-job-triggers to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the project and the triggeredJob, for example `projects/dlp-test-project/jobTriggers/53234... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dlp.jobTriggers.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.locations.jobTriggers.patch`

**PATCH** `v2/{+name}`

Updates a job trigger. See https://cloud.google.com/sensitive-data-protection/docs/creating-job-triggers to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the project and the triggeredJob, for example `projects/dlp-test-project/jobTriggers/53234... |

**Request body**: `GooglePrivacyDlpV2UpdateJobTriggerRequest`

**Response**: `GooglePrivacyDlpV2JobTrigger`

```typescript
const res = await dlp.jobTriggers.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.locations.jobTriggers.get`

**GET** `v2/{+name}`

Gets a job trigger. See https://cloud.google.com/sensitive-data-protection/docs/creating-job-triggers to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the project and the triggeredJob, for example `projects/dlp-test-project/jobTriggers/53234... |

**Response**: `GooglePrivacyDlpV2JobTrigger`

```typescript
const res = await dlp.jobTriggers.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.locations.connections.create`

**POST** `v2/{+parent}/connections`

Create a Connection to an external data source.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. The format of this value varies depending on the scope of the request (project or org... |

**Request body**: `GooglePrivacyDlpV2CreateConnectionRequest`

**Response**: `GooglePrivacyDlpV2Connection`

```typescript
const res = await dlp.connections.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.locations.connections.search`

**GET** `v2/{+parent}/connections:search`

Searches for Connections in a parent.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the organization or project with a wildcard location, for example, `organizations/43324532... |
| `filter` | `string` | query | No | Optional. Supported field/value: - `state` - MISSING|AVAILABLE|ERROR The syntax is based on https://google.aip.dev/160. |
| `pageSize` | `integer` | query | No | Optional. Number of results per page, max 1000. |
| `pageToken` | `string` | query | No | Optional. Page token from a previous page to return the next set of results. If set, all other request fields must ma... |

**Response**: `GooglePrivacyDlpV2SearchConnectionsResponse`

```typescript
const res = await dlp.connections.search({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.locations.connections.list`

**GET** `v2/{+parent}/connections`

Lists Connections in a parent. Use SearchConnections to see all connections within an organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the organization or project, for example, `organizations/433245324/locations/europe` or `p... |
| `filter` | `string` | query | No | Optional. Supported field/value: `state` - MISSING|AVAILABLE|ERROR The syntax is based on https://google.aip.dev/160. |
| `pageSize` | `integer` | query | No | Optional. Number of results per page, max 1000. |
| `pageToken` | `string` | query | No | Optional. Page token from a previous page to return the next set of results. If set, all other request fields must ma... |

**Response**: `GooglePrivacyDlpV2ListConnectionsResponse`

```typescript
const res = await dlp.connections.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.locations.connections.get`

**GET** `v2/{+name}`

Get a Connection by name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name in the format: `projects/{project}/locations/{location}/connections/{connection}`. |

**Response**: `GooglePrivacyDlpV2Connection`

```typescript
const res = await dlp.connections.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.locations.connections.patch`

**PATCH** `v2/{+name}`

Update a Connection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name in the format: `projects/{project}/locations/{location}/connections/{connection}`. |

**Request body**: `GooglePrivacyDlpV2UpdateConnectionRequest`

**Response**: `GooglePrivacyDlpV2Connection`

```typescript
const res = await dlp.connections.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.locations.connections.delete`

**DELETE** `v2/{+name}`

Delete a Connection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the Connection to be deleted, in the format: `projects/{project}/locations/{location}/conn... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dlp.connections.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.locations.inspectTemplates.create`

**POST** `v2/{+parent}/inspectTemplates`

Creates an InspectTemplate for reusing frequently used configuration for inspecting content, images, and storage. See https://cloud.google.com/sensitive-data-protection/docs/creating-templates to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. The format of this value varies depending on the scope of the request (project or org... |

**Request body**: `GooglePrivacyDlpV2CreateInspectTemplateRequest`

**Response**: `GooglePrivacyDlpV2InspectTemplate`

```typescript
const res = await dlp.inspectTemplates.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.locations.inspectTemplates.patch`

**PATCH** `v2/{+name}`

Updates the InspectTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creating-templates to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of organization and inspectTemplate to be updated, for example `organizations/433245324/inspe... |

**Request body**: `GooglePrivacyDlpV2UpdateInspectTemplateRequest`

**Response**: `GooglePrivacyDlpV2InspectTemplate`

```typescript
const res = await dlp.inspectTemplates.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.locations.inspectTemplates.get`

**GET** `v2/{+name}`

Gets an InspectTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creating-templates to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the organization and inspectTemplate to be read, for example `organizations/433245324/insp... |

**Response**: `GooglePrivacyDlpV2InspectTemplate`

```typescript
const res = await dlp.inspectTemplates.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.locations.inspectTemplates.list`

**GET** `v2/{+parent}/inspectTemplates`

Lists InspectTemplates. See https://cloud.google.com/sensitive-data-protection/docs/creating-templates to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. The format of this value varies depending on the scope of the request (project or org... |
| `locationId` | `string` | query | No | Deprecated. This field has no effect. |
| `orderBy` | `string` | query | No | Comma-separated list of fields to order by, followed by `asc` or `desc` postfix. This list is case insensitive. The d... |
| `pageSize` | `integer` | query | No | Size of the page. This value can be limited by the server. If zero server returns a page of max size 100. |
| `pageToken` | `string` | query | No | Page token to continue retrieval. Comes from the previous call to `ListInspectTemplates`. |

**Response**: `GooglePrivacyDlpV2ListInspectTemplatesResponse`

```typescript
const res = await dlp.inspectTemplates.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.locations.inspectTemplates.delete`

**DELETE** `v2/{+name}`

Deletes an InspectTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creating-templates to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the organization and inspectTemplate to be deleted, for example `organizations/433245324/i... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dlp.inspectTemplates.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.locations.dlpJobs.list`

**GET** `v2/{+parent}/dlpJobs`

Lists DlpJobs that match the specified filter in the request. See https://cloud.google.com/sensitive-data-protection/docs/inspecting-storage and https://cloud.google.com/sensitive-data-protection/docs/compute-risk-analysis to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. The format of this value varies depending on whether you have [specified a processing... |
| `filter` | `string` | query | No | Allows filtering. Supported syntax: * Filter expressions are made up of one or more restrictions. * Restrictions can ... |
| `locationId` | `string` | query | No | Deprecated. This field has no effect. |
| `orderBy` | `string` | query | No | Comma-separated list of fields to order by, followed by `asc` or `desc` postfix. This list is case insensitive. The d... |
| `pageSize` | `integer` | query | No | The standard list page size. |
| `pageToken` | `string` | query | No | The standard list page token. |
| `type` | `string` | query | No | The type of job. Defaults to `DlpJobType.INSPECT` |

**Response**: `GooglePrivacyDlpV2ListDlpJobsResponse`

```typescript
const res = await dlp.dlpJobs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.locations.columnDataProfiles.list`

**GET** `v2/{+parent}/columnDataProfiles`

Lists column data profiles for an organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the organization or project, for example `organizations/433245324/locations/europe` or `pr... |
| `filter` | `string` | query | No | Allows filtering. Supported syntax: * Filter expressions are made up of one or more restrictions. * Restrictions can ... |
| `orderBy` | `string` | query | No | Comma-separated list of fields to order by, followed by `asc` or `desc` postfix. This list is case insensitive. The d... |
| `pageSize` | `integer` | query | No | Size of the page. This value can be limited by the server. If zero, server returns a page of max size 100. |
| `pageToken` | `string` | query | No | Page token to continue retrieval. |

**Response**: `GooglePrivacyDlpV2ListColumnDataProfilesResponse`

```typescript
const res = await dlp.columnDataProfiles.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.locations.columnDataProfiles.get`

**GET** `v2/{+name}`

Gets a column data profile.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name, for example `organizations/12345/locations/us/columnDataProfiles/53234423`. |

**Response**: `GooglePrivacyDlpV2ColumnDataProfile`

```typescript
const res = await dlp.columnDataProfiles.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.locations.infoTypes.list`

**GET** `v2/{+parent}/infoTypes`

Returns a list of the sensitive information types that the DLP API supports. See https://cloud.google.com/sensitive-data-protection/docs/infotypes-reference to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The parent resource name. The format of this value is as follows: `locations/{location_id}` |
| `filter` | `string` | query | No | filter to only return infoTypes supported by certain parts of the API. Defaults to supported_by=INSPECT. |
| `languageCode` | `string` | query | No | BCP-47 language code for localized infoType friendly names. If omitted, or if localized strings are not available, en... |
| `locationId` | `string` | query | No | Deprecated. This field has no effect. |

**Response**: `GooglePrivacyDlpV2ListInfoTypesResponse`

```typescript
const res = await dlp.infoTypes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.locations.discoveryConfigs.get`

**GET** `v2/{+name}`

Gets a discovery configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the project and the configuration, for example `projects/dlp-test-project/discoveryConfigs... |

**Response**: `GooglePrivacyDlpV2DiscoveryConfig`

```typescript
const res = await dlp.discoveryConfigs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.locations.discoveryConfigs.create`

**POST** `v2/{+parent}/discoveryConfigs`

Creates a config for discovery to scan and profile storage.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. The format of this value varies depending on the scope of the request (project or org... |

**Request body**: `GooglePrivacyDlpV2CreateDiscoveryConfigRequest`

**Response**: `GooglePrivacyDlpV2DiscoveryConfig`

```typescript
const res = await dlp.discoveryConfigs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.locations.discoveryConfigs.patch`

**PATCH** `v2/{+name}`

Updates a discovery configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the project and the configuration, for example `projects/dlp-test-project/discoveryConfigs... |

**Request body**: `GooglePrivacyDlpV2UpdateDiscoveryConfigRequest`

**Response**: `GooglePrivacyDlpV2DiscoveryConfig`

```typescript
const res = await dlp.discoveryConfigs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.locations.discoveryConfigs.delete`

**DELETE** `v2/{+name}`

Deletes a discovery configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the project and the config, for example `projects/dlp-test-project/discoveryConfigs/532344... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dlp.discoveryConfigs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.locations.discoveryConfigs.list`

**GET** `v2/{+parent}/discoveryConfigs`

Lists discovery configurations.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. The format of this value is as follows: `projects/{project_id}/locations/{location_id... |
| `orderBy` | `string` | query | No | Comma-separated list of config fields to order by, followed by `asc` or `desc` postfix. This list is case insensitive... |
| `pageSize` | `integer` | query | No | Size of the page. This value can be limited by a server. |
| `pageToken` | `string` | query | No | Page token to continue retrieval. Comes from the previous call to ListDiscoveryConfigs. `order_by` field must not cha... |

**Response**: `GooglePrivacyDlpV2ListDiscoveryConfigsResponse`

```typescript
const res = await dlp.discoveryConfigs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.locations.storedInfoTypes.patch`

**PATCH** `v2/{+name}`

Updates the stored infoType by creating a new version. The existing version will continue to be used until the new version is ready. See https://cloud.google.com/sensitive-data-protection/docs/creating-stored-infotypes to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of organization and storedInfoType to be updated, for example `organizations/433245324/stored... |

**Request body**: `GooglePrivacyDlpV2UpdateStoredInfoTypeRequest`

**Response**: `GooglePrivacyDlpV2StoredInfoType`

```typescript
const res = await dlp.storedInfoTypes.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.locations.storedInfoTypes.list`

**GET** `v2/{+parent}/storedInfoTypes`

Lists stored infoTypes. See https://cloud.google.com/sensitive-data-protection/docs/creating-stored-infotypes to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. The format of this value varies depending on the scope of the request (project or org... |
| `locationId` | `string` | query | No | Deprecated. This field has no effect. |
| `orderBy` | `string` | query | No | Comma-separated list of fields to order by, followed by `asc` or `desc` postfix. This list is case insensitive. The d... |
| `pageSize` | `integer` | query | No | Size of the page. This value can be limited by the server. If zero server returns a page of max size 100. |
| `pageToken` | `string` | query | No | Page token to continue retrieval. Comes from the previous call to `ListStoredInfoTypes`. |

**Response**: `GooglePrivacyDlpV2ListStoredInfoTypesResponse`

```typescript
const res = await dlp.storedInfoTypes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.locations.storedInfoTypes.create`

**POST** `v2/{+parent}/storedInfoTypes`

Creates a pre-built stored infoType to be used for inspection. See https://cloud.google.com/sensitive-data-protection/docs/creating-stored-infotypes to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. The format of this value varies depending on the scope of the request (project or org... |

**Request body**: `GooglePrivacyDlpV2CreateStoredInfoTypeRequest`

**Response**: `GooglePrivacyDlpV2StoredInfoType`

```typescript
const res = await dlp.storedInfoTypes.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.locations.storedInfoTypes.delete`

**DELETE** `v2/{+name}`

Deletes a stored infoType. See https://cloud.google.com/sensitive-data-protection/docs/creating-stored-infotypes to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the organization and storedInfoType to be deleted, for example `organizations/433245324/st... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dlp.storedInfoTypes.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.locations.storedInfoTypes.get`

**GET** `v2/{+name}`

Gets a stored infoType. See https://cloud.google.com/sensitive-data-protection/docs/creating-stored-infotypes to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the organization and storedInfoType to be read, for example `organizations/433245324/store... |

**Response**: `GooglePrivacyDlpV2StoredInfoType`

```typescript
const res = await dlp.storedInfoTypes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.locations.deidentifyTemplates.create`

**POST** `v2/{+parent}/deidentifyTemplates`

Creates a DeidentifyTemplate for reusing frequently used configuration for de-identifying content, images, and storage. See https://cloud.google.com/sensitive-data-protection/docs/creating-templates-deid to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. The format of this value varies depending on the scope of the request (project or org... |

**Request body**: `GooglePrivacyDlpV2CreateDeidentifyTemplateRequest`

**Response**: `GooglePrivacyDlpV2DeidentifyTemplate`

```typescript
const res = await dlp.deidentifyTemplates.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.locations.deidentifyTemplates.list`

**GET** `v2/{+parent}/deidentifyTemplates`

Lists DeidentifyTemplates. See https://cloud.google.com/sensitive-data-protection/docs/creating-templates-deid to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. The format of this value varies depending on the scope of the request (project or org... |
| `locationId` | `string` | query | No | Deprecated. This field has no effect. |
| `orderBy` | `string` | query | No | Comma-separated list of fields to order by, followed by `asc` or `desc` postfix. This list is case insensitive. The d... |
| `pageSize` | `integer` | query | No | Size of the page. This value can be limited by the server. If zero server returns a page of max size 100. |
| `pageToken` | `string` | query | No | Page token to continue retrieval. Comes from the previous call to `ListDeidentifyTemplates`. |

**Response**: `GooglePrivacyDlpV2ListDeidentifyTemplatesResponse`

```typescript
const res = await dlp.deidentifyTemplates.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.locations.deidentifyTemplates.patch`

**PATCH** `v2/{+name}`

Updates the DeidentifyTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creating-templates-deid to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of organization and deidentify template to be updated, for example `organizations/433245324/d... |

**Request body**: `GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest`

**Response**: `GooglePrivacyDlpV2DeidentifyTemplate`

```typescript
const res = await dlp.deidentifyTemplates.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.locations.deidentifyTemplates.delete`

**DELETE** `v2/{+name}`

Deletes a DeidentifyTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creating-templates-deid to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the organization and deidentify template to be deleted, for example `organizations/4332453... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dlp.deidentifyTemplates.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.locations.deidentifyTemplates.get`

**GET** `v2/{+name}`

Gets a DeidentifyTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creating-templates-deid to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the organization and deidentify template to be read, for example `organizations/433245324/... |

**Response**: `GooglePrivacyDlpV2DeidentifyTemplate`

```typescript
const res = await dlp.deidentifyTemplates.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.locations.projectDataProfiles.get`

**GET** `v2/{+name}`

Gets a project data profile.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name, for example `organizations/12345/locations/us/projectDataProfiles/53234423`. |

**Response**: `GooglePrivacyDlpV2ProjectDataProfile`

```typescript
const res = await dlp.projectDataProfiles.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.locations.projectDataProfiles.list`

**GET** `v2/{+parent}/projectDataProfiles`

Lists project data profiles for an organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. organizations/{org_id}/locations/{loc_id} |
| `filter` | `string` | query | No | Allows filtering. Supported syntax: * Filter expressions are made up of one or more restrictions. * Restrictions can ... |
| `orderBy` | `string` | query | No | Comma-separated list of fields to order by, followed by `asc` or `desc` postfix. This list is case insensitive. The d... |
| `pageSize` | `integer` | query | No | Size of the page. This value can be limited by the server. If zero, server returns a page of max size 100. |
| `pageToken` | `string` | query | No | Page token to continue retrieval. |

**Response**: `GooglePrivacyDlpV2ListProjectDataProfilesResponse`

```typescript
const res = await dlp.projectDataProfiles.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.locations.tableDataProfiles.get`

**GET** `v2/{+name}`

Gets a table data profile.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name, for example `organizations/12345/locations/us/tableDataProfiles/53234423`. |

**Response**: `GooglePrivacyDlpV2TableDataProfile`

```typescript
const res = await dlp.tableDataProfiles.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.locations.tableDataProfiles.list`

**GET** `v2/{+parent}/tableDataProfiles`

Lists table data profiles for an organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the organization or project, for example `organizations/433245324/locations/europe` or `pr... |
| `filter` | `string` | query | No | Allows filtering. Supported syntax: * Filter expressions are made up of one or more restrictions. * Restrictions can ... |
| `orderBy` | `string` | query | No | Comma-separated list of fields to order by, followed by `asc` or `desc` postfix. This list is case insensitive. The d... |
| `pageSize` | `integer` | query | No | Size of the page. This value can be limited by the server. If zero, server returns a page of max size 100. |
| `pageToken` | `string` | query | No | Page token to continue retrieval. |

**Response**: `GooglePrivacyDlpV2ListTableDataProfilesResponse`

```typescript
const res = await dlp.tableDataProfiles.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.locations.tableDataProfiles.delete`

**DELETE** `v2/{+name}`

Delete a TableDataProfile. Will not prevent the profile from being regenerated if the table is still included in a discovery configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the table data profile. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dlp.tableDataProfiles.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.locations.fileStoreDataProfiles.get`

**GET** `v2/{+name}`

Gets a file store data profile.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name, for example `organizations/12345/locations/us/fileStoreDataProfiles/53234423`. |

**Response**: `GooglePrivacyDlpV2FileStoreDataProfile`

```typescript
const res = await dlp.fileStoreDataProfiles.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.locations.fileStoreDataProfiles.list`

**GET** `v2/{+parent}/fileStoreDataProfiles`

Lists file store data profiles for an organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the organization or project, for example `organizations/433245324/locations/europe` or `pr... |
| `filter` | `string` | query | No | Optional. Allows filtering. Supported syntax: * Filter expressions are made up of one or more restrictions. * Restric... |
| `orderBy` | `string` | query | No | Optional. Comma-separated list of fields to order by, followed by `asc` or `desc` postfix. This list is case insensit... |
| `pageSize` | `integer` | query | No | Optional. Size of the page. This value can be limited by the server. If zero, server returns a page of max size 100. |
| `pageToken` | `string` | query | No | Optional. Page token to continue retrieval. |

**Response**: `GooglePrivacyDlpV2ListFileStoreDataProfilesResponse`

```typescript
const res = await dlp.fileStoreDataProfiles.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.organizations.locations.fileStoreDataProfiles.delete`

**DELETE** `v2/{+name}`

Delete a FileStoreDataProfile. Will not prevent the profile from being regenerated if the resource is still included in a discovery configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the file store data profile. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dlp.fileStoreDataProfiles.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.infoTypes.list`

**GET** `v2/infoTypes`

Returns a list of the sensitive information types that the DLP API supports. See https://cloud.google.com/sensitive-data-protection/docs/infotypes-reference to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filter` | `string` | query | No | filter to only return infoTypes supported by certain parts of the API. Defaults to supported_by=INSPECT. |
| `languageCode` | `string` | query | No | BCP-47 language code for localized infoType friendly names. If omitted, or if localized strings are not available, en... |
| `locationId` | `string` | query | No | Deprecated. This field has no effect. |
| `parent` | `string` | query | No | The parent resource name. The format of this value is as follows: `locations/{location_id}` |

**Response**: `GooglePrivacyDlpV2ListInfoTypesResponse`

```typescript
const res = await dlp.infoTypes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.locations.infoTypes.list`

**GET** `v2/{+parent}/infoTypes`

Returns a list of the sensitive information types that the DLP API supports. See https://cloud.google.com/sensitive-data-protection/docs/infotypes-reference to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The parent resource name. The format of this value is as follows: `locations/{location_id}` |
| `filter` | `string` | query | No | filter to only return infoTypes supported by certain parts of the API. Defaults to supported_by=INSPECT. |
| `languageCode` | `string` | query | No | BCP-47 language code for localized infoType friendly names. If omitted, or if localized strings are not available, en... |
| `locationId` | `string` | query | No | Deprecated. This field has no effect. |

**Response**: `GooglePrivacyDlpV2ListInfoTypesResponse`

```typescript
const res = await dlp.infoTypes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.inspectTemplates.list`

**GET** `v2/{+parent}/inspectTemplates`

Lists InspectTemplates. See https://cloud.google.com/sensitive-data-protection/docs/creating-templates to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. The format of this value varies depending on the scope of the request (project or org... |
| `locationId` | `string` | query | No | Deprecated. This field has no effect. |
| `orderBy` | `string` | query | No | Comma-separated list of fields to order by, followed by `asc` or `desc` postfix. This list is case insensitive. The d... |
| `pageSize` | `integer` | query | No | Size of the page. This value can be limited by the server. If zero server returns a page of max size 100. |
| `pageToken` | `string` | query | No | Page token to continue retrieval. Comes from the previous call to `ListInspectTemplates`. |

**Response**: `GooglePrivacyDlpV2ListInspectTemplatesResponse`

```typescript
const res = await dlp.inspectTemplates.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.inspectTemplates.create`

**POST** `v2/{+parent}/inspectTemplates`

Creates an InspectTemplate for reusing frequently used configuration for inspecting content, images, and storage. See https://cloud.google.com/sensitive-data-protection/docs/creating-templates to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. The format of this value varies depending on the scope of the request (project or org... |

**Request body**: `GooglePrivacyDlpV2CreateInspectTemplateRequest`

**Response**: `GooglePrivacyDlpV2InspectTemplate`

```typescript
const res = await dlp.inspectTemplates.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.inspectTemplates.patch`

**PATCH** `v2/{+name}`

Updates the InspectTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creating-templates to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of organization and inspectTemplate to be updated, for example `organizations/433245324/inspe... |

**Request body**: `GooglePrivacyDlpV2UpdateInspectTemplateRequest`

**Response**: `GooglePrivacyDlpV2InspectTemplate`

```typescript
const res = await dlp.inspectTemplates.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.inspectTemplates.delete`

**DELETE** `v2/{+name}`

Deletes an InspectTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creating-templates to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the organization and inspectTemplate to be deleted, for example `organizations/433245324/i... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dlp.inspectTemplates.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.inspectTemplates.get`

**GET** `v2/{+name}`

Gets an InspectTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creating-templates to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the organization and inspectTemplate to be read, for example `organizations/433245324/insp... |

**Response**: `GooglePrivacyDlpV2InspectTemplate`

```typescript
const res = await dlp.inspectTemplates.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.image.redact`

**POST** `v2/{+parent}/image:redact`

Redacts potentially sensitive info from an image. This method has limits on input size, processing time, and output size. See https://cloud.google.com/sensitive-data-protection/docs/redacting-sensitive-data-images to learn more. When no InfoTypes or CustomInfoTypes are specified in this request, the system will automatically choose what detectors to run. By default this may be all types, but may change over time as detectors are updated. Only the first frame of each multiframe image is redacted. Metadata and other frames are omitted in the response.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Parent resource name. The format of this value varies depending on whether you have [specified a processing location]... |

**Request body**: `GooglePrivacyDlpV2RedactImageRequest`

**Response**: `GooglePrivacyDlpV2RedactImageResponse`

```typescript
const res = await dlp.image.redact({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.content.inspect`

**POST** `v2/{+parent}/content:inspect`

Finds potentially sensitive info in content. This method has limits on input size, processing time, and output size. When no InfoTypes or CustomInfoTypes are specified in this request, the system will automatically choose what detectors to run. By default this may be all types, but may change over time as detectors are updated. For how to guides, see https://cloud.google.com/sensitive-data-protection/docs/inspecting-images and https://cloud.google.com/sensitive-data-protection/docs/inspecting-text,

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Parent resource name. The format of this value varies depending on whether you have [specified a processing location]... |

**Request body**: `GooglePrivacyDlpV2InspectContentRequest`

**Response**: `GooglePrivacyDlpV2InspectContentResponse`

```typescript
const res = await dlp.content.inspect({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.content.deidentify`

**POST** `v2/{+parent}/content:deidentify`

De-identifies potentially sensitive info from a ContentItem. This method has limits on input size and output size. See https://cloud.google.com/sensitive-data-protection/docs/deidentify-sensitive-data to learn more. When no InfoTypes or CustomInfoTypes are specified in this request, the system will automatically choose what detectors to run. By default this may be all types, but may change over time as detectors are updated.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Parent resource name. The format of this value varies depending on whether you have [specified a processing location]... |

**Request body**: `GooglePrivacyDlpV2DeidentifyContentRequest`

**Response**: `GooglePrivacyDlpV2DeidentifyContentResponse`

```typescript
const res = await dlp.content.deidentify({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.content.reidentify`

**POST** `v2/{+parent}/content:reidentify`

Re-identifies content that has been de-identified. See https://cloud.google.com/sensitive-data-protection/docs/pseudonymization#re-identification_in_free_text_code_example to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. The format of this value varies depending on whether you have [specified a processing... |

**Request body**: `GooglePrivacyDlpV2ReidentifyContentRequest`

**Response**: `GooglePrivacyDlpV2ReidentifyContentResponse`

```typescript
const res = await dlp.content.reidentify({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.dlpJobs.create`

**POST** `v2/{+parent}/dlpJobs`

Creates a new job to inspect storage or calculate risk metrics. See https://cloud.google.com/sensitive-data-protection/docs/inspecting-storage and https://cloud.google.com/sensitive-data-protection/docs/compute-risk-analysis to learn more. When no InfoTypes or CustomInfoTypes are specified in inspect jobs, the system will automatically choose what detectors to run. By default this may be all types, but may change over time as detectors are updated.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. The format of this value varies depending on whether you have [specified a processing... |

**Request body**: `GooglePrivacyDlpV2CreateDlpJobRequest`

**Response**: `GooglePrivacyDlpV2DlpJob`

```typescript
const res = await dlp.dlpJobs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.dlpJobs.list`

**GET** `v2/{+parent}/dlpJobs`

Lists DlpJobs that match the specified filter in the request. See https://cloud.google.com/sensitive-data-protection/docs/inspecting-storage and https://cloud.google.com/sensitive-data-protection/docs/compute-risk-analysis to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. The format of this value varies depending on whether you have [specified a processing... |
| `filter` | `string` | query | No | Allows filtering. Supported syntax: * Filter expressions are made up of one or more restrictions. * Restrictions can ... |
| `locationId` | `string` | query | No | Deprecated. This field has no effect. |
| `orderBy` | `string` | query | No | Comma-separated list of fields to order by, followed by `asc` or `desc` postfix. This list is case insensitive. The d... |
| `pageSize` | `integer` | query | No | The standard list page size. |
| `pageToken` | `string` | query | No | The standard list page token. |
| `type` | `string` | query | No | The type of job. Defaults to `DlpJobType.INSPECT` |

**Response**: `GooglePrivacyDlpV2ListDlpJobsResponse`

```typescript
const res = await dlp.dlpJobs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.dlpJobs.get`

**GET** `v2/{+name}`

Gets the latest state of a long-running DlpJob. See https://cloud.google.com/sensitive-data-protection/docs/inspecting-storage and https://cloud.google.com/sensitive-data-protection/docs/compute-risk-analysis to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the DlpJob resource. |

**Response**: `GooglePrivacyDlpV2DlpJob`

```typescript
const res = await dlp.dlpJobs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.dlpJobs.delete`

**DELETE** `v2/{+name}`

Deletes a long-running DlpJob. This method indicates that the client is no longer interested in the DlpJob result. The job will be canceled if possible. See https://cloud.google.com/sensitive-data-protection/docs/inspecting-storage and https://cloud.google.com/sensitive-data-protection/docs/compute-risk-analysis to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the DlpJob resource to be deleted. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dlp.dlpJobs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.dlpJobs.cancel`

**POST** `v2/{+name}:cancel`

Starts asynchronous cancellation on a long-running DlpJob. The server makes a best effort to cancel the DlpJob, but success is not guaranteed. See https://cloud.google.com/sensitive-data-protection/docs/inspecting-storage and https://cloud.google.com/sensitive-data-protection/docs/compute-risk-analysis to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the DlpJob resource to be cancelled. |

**Request body**: `GooglePrivacyDlpV2CancelDlpJobRequest`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dlp.dlpJobs.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.jobTriggers.patch`

**PATCH** `v2/{+name}`

Updates a job trigger. See https://cloud.google.com/sensitive-data-protection/docs/creating-job-triggers to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the project and the triggeredJob, for example `projects/dlp-test-project/jobTriggers/53234... |

**Request body**: `GooglePrivacyDlpV2UpdateJobTriggerRequest`

**Response**: `GooglePrivacyDlpV2JobTrigger`

```typescript
const res = await dlp.jobTriggers.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.jobTriggers.get`

**GET** `v2/{+name}`

Gets a job trigger. See https://cloud.google.com/sensitive-data-protection/docs/creating-job-triggers to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the project and the triggeredJob, for example `projects/dlp-test-project/jobTriggers/53234... |

**Response**: `GooglePrivacyDlpV2JobTrigger`

```typescript
const res = await dlp.jobTriggers.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.jobTriggers.delete`

**DELETE** `v2/{+name}`

Deletes a job trigger. See https://cloud.google.com/sensitive-data-protection/docs/creating-job-triggers to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the project and the triggeredJob, for example `projects/dlp-test-project/jobTriggers/53234... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dlp.jobTriggers.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.jobTriggers.hybridInspect`

**POST** `v2/{+name}:hybridInspect`

Inspect hybrid content and store findings to a trigger. The inspection will be processed asynchronously. To review the findings monitor the jobs within the trigger.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the trigger to execute a hybrid inspect on, for example `projects/dlp-test-project/jobTrig... |

**Request body**: `GooglePrivacyDlpV2HybridInspectJobTriggerRequest`

**Response**: `GooglePrivacyDlpV2HybridInspectResponse`

```typescript
const res = await dlp.jobTriggers.hybridInspect({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.jobTriggers.activate`

**POST** `v2/{+name}:activate`

Activate a job trigger. Causes the immediate execute of a trigger instead of waiting on the trigger event to occur.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the trigger to activate, for example `projects/dlp-test-project/jobTriggers/53234423`. |

**Request body**: `GooglePrivacyDlpV2ActivateJobTriggerRequest`

**Response**: `GooglePrivacyDlpV2DlpJob`

```typescript
const res = await dlp.jobTriggers.activate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.jobTriggers.create`

**POST** `v2/{+parent}/jobTriggers`

Creates a job trigger to run DLP actions such as scanning storage for sensitive information on a set schedule. See https://cloud.google.com/sensitive-data-protection/docs/creating-job-triggers to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. The format of this value varies depending on whether you have [specified a processing... |

**Request body**: `GooglePrivacyDlpV2CreateJobTriggerRequest`

**Response**: `GooglePrivacyDlpV2JobTrigger`

```typescript
const res = await dlp.jobTriggers.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.jobTriggers.list`

**GET** `v2/{+parent}/jobTriggers`

Lists job triggers. See https://cloud.google.com/sensitive-data-protection/docs/creating-job-triggers to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. The format of this value varies depending on whether you have [specified a processing... |
| `filter` | `string` | query | No | Allows filtering. Supported syntax: * Filter expressions are made up of one or more restrictions. * Restrictions can ... |
| `locationId` | `string` | query | No | Deprecated. This field has no effect. |
| `orderBy` | `string` | query | No | Comma-separated list of triggeredJob fields to order by, followed by `asc` or `desc` postfix. This list is case insen... |
| `pageSize` | `integer` | query | No | Size of the page. This value can be limited by a server. |
| `pageToken` | `string` | query | No | Page token to continue retrieval. Comes from the previous call to ListJobTriggers. `order_by` field must not change f... |
| `type` | `string` | query | No | The type of jobs. Will use `DlpJobType.INSPECT` if not set. |

**Response**: `GooglePrivacyDlpV2ListJobTriggersResponse`

```typescript
const res = await dlp.jobTriggers.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.inspectTemplates.patch`

**PATCH** `v2/{+name}`

Updates the InspectTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creating-templates to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of organization and inspectTemplate to be updated, for example `organizations/433245324/inspe... |

**Request body**: `GooglePrivacyDlpV2UpdateInspectTemplateRequest`

**Response**: `GooglePrivacyDlpV2InspectTemplate`

```typescript
const res = await dlp.inspectTemplates.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.inspectTemplates.delete`

**DELETE** `v2/{+name}`

Deletes an InspectTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creating-templates to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the organization and inspectTemplate to be deleted, for example `organizations/433245324/i... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dlp.inspectTemplates.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.inspectTemplates.create`

**POST** `v2/{+parent}/inspectTemplates`

Creates an InspectTemplate for reusing frequently used configuration for inspecting content, images, and storage. See https://cloud.google.com/sensitive-data-protection/docs/creating-templates to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. The format of this value varies depending on the scope of the request (project or org... |

**Request body**: `GooglePrivacyDlpV2CreateInspectTemplateRequest`

**Response**: `GooglePrivacyDlpV2InspectTemplate`

```typescript
const res = await dlp.inspectTemplates.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.inspectTemplates.get`

**GET** `v2/{+name}`

Gets an InspectTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creating-templates to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the organization and inspectTemplate to be read, for example `organizations/433245324/insp... |

**Response**: `GooglePrivacyDlpV2InspectTemplate`

```typescript
const res = await dlp.inspectTemplates.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.inspectTemplates.list`

**GET** `v2/{+parent}/inspectTemplates`

Lists InspectTemplates. See https://cloud.google.com/sensitive-data-protection/docs/creating-templates to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. The format of this value varies depending on the scope of the request (project or org... |
| `locationId` | `string` | query | No | Deprecated. This field has no effect. |
| `orderBy` | `string` | query | No | Comma-separated list of fields to order by, followed by `asc` or `desc` postfix. This list is case insensitive. The d... |
| `pageSize` | `integer` | query | No | Size of the page. This value can be limited by the server. If zero server returns a page of max size 100. |
| `pageToken` | `string` | query | No | Page token to continue retrieval. Comes from the previous call to `ListInspectTemplates`. |

**Response**: `GooglePrivacyDlpV2ListInspectTemplatesResponse`

```typescript
const res = await dlp.inspectTemplates.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.dlpJobs.create`

**POST** `v2/{+parent}/dlpJobs`

Creates a new job to inspect storage or calculate risk metrics. See https://cloud.google.com/sensitive-data-protection/docs/inspecting-storage and https://cloud.google.com/sensitive-data-protection/docs/compute-risk-analysis to learn more. When no InfoTypes or CustomInfoTypes are specified in inspect jobs, the system will automatically choose what detectors to run. By default this may be all types, but may change over time as detectors are updated.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. The format of this value varies depending on whether you have [specified a processing... |

**Request body**: `GooglePrivacyDlpV2CreateDlpJobRequest`

**Response**: `GooglePrivacyDlpV2DlpJob`

```typescript
const res = await dlp.dlpJobs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.dlpJobs.list`

**GET** `v2/{+parent}/dlpJobs`

Lists DlpJobs that match the specified filter in the request. See https://cloud.google.com/sensitive-data-protection/docs/inspecting-storage and https://cloud.google.com/sensitive-data-protection/docs/compute-risk-analysis to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. The format of this value varies depending on whether you have [specified a processing... |
| `filter` | `string` | query | No | Allows filtering. Supported syntax: * Filter expressions are made up of one or more restrictions. * Restrictions can ... |
| `locationId` | `string` | query | No | Deprecated. This field has no effect. |
| `orderBy` | `string` | query | No | Comma-separated list of fields to order by, followed by `asc` or `desc` postfix. This list is case insensitive. The d... |
| `pageSize` | `integer` | query | No | The standard list page size. |
| `pageToken` | `string` | query | No | The standard list page token. |
| `type` | `string` | query | No | The type of job. Defaults to `DlpJobType.INSPECT` |

**Response**: `GooglePrivacyDlpV2ListDlpJobsResponse`

```typescript
const res = await dlp.dlpJobs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.dlpJobs.cancel`

**POST** `v2/{+name}:cancel`

Starts asynchronous cancellation on a long-running DlpJob. The server makes a best effort to cancel the DlpJob, but success is not guaranteed. See https://cloud.google.com/sensitive-data-protection/docs/inspecting-storage and https://cloud.google.com/sensitive-data-protection/docs/compute-risk-analysis to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the DlpJob resource to be cancelled. |

**Request body**: `GooglePrivacyDlpV2CancelDlpJobRequest`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dlp.dlpJobs.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.dlpJobs.finish`

**POST** `v2/{+name}:finish`

Finish a running hybrid DlpJob. Triggers the finalization steps and running of any enabled actions that have not yet run.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the DlpJob resource to be finished. |

**Request body**: `GooglePrivacyDlpV2FinishDlpJobRequest`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dlp.dlpJobs.finish({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.dlpJobs.delete`

**DELETE** `v2/{+name}`

Deletes a long-running DlpJob. This method indicates that the client is no longer interested in the DlpJob result. The job will be canceled if possible. See https://cloud.google.com/sensitive-data-protection/docs/inspecting-storage and https://cloud.google.com/sensitive-data-protection/docs/compute-risk-analysis to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the DlpJob resource to be deleted. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dlp.dlpJobs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.dlpJobs.hybridInspect`

**POST** `v2/{+name}:hybridInspect`

Inspect hybrid content and store findings to a job. To review the findings, inspect the job. Inspection will occur asynchronously.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the job to execute a hybrid inspect on, for example `projects/dlp-test-project/dlpJob/5323... |

**Request body**: `GooglePrivacyDlpV2HybridInspectDlpJobRequest`

**Response**: `GooglePrivacyDlpV2HybridInspectResponse`

```typescript
const res = await dlp.dlpJobs.hybridInspect({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.dlpJobs.get`

**GET** `v2/{+name}`

Gets the latest state of a long-running DlpJob. See https://cloud.google.com/sensitive-data-protection/docs/inspecting-storage and https://cloud.google.com/sensitive-data-protection/docs/compute-risk-analysis to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the DlpJob resource. |

**Response**: `GooglePrivacyDlpV2DlpJob`

```typescript
const res = await dlp.dlpJobs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.infoTypes.list`

**GET** `v2/{+parent}/infoTypes`

Returns a list of the sensitive information types that the DLP API supports. See https://cloud.google.com/sensitive-data-protection/docs/infotypes-reference to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The parent resource name. The format of this value is as follows: `locations/{location_id}` |
| `filter` | `string` | query | No | filter to only return infoTypes supported by certain parts of the API. Defaults to supported_by=INSPECT. |
| `languageCode` | `string` | query | No | BCP-47 language code for localized infoType friendly names. If omitted, or if localized strings are not available, en... |
| `locationId` | `string` | query | No | Deprecated. This field has no effect. |

**Response**: `GooglePrivacyDlpV2ListInfoTypesResponse`

```typescript
const res = await dlp.infoTypes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.connections.delete`

**DELETE** `v2/{+name}`

Delete a Connection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the Connection to be deleted, in the format: `projects/{project}/locations/{location}/conn... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dlp.connections.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.connections.list`

**GET** `v2/{+parent}/connections`

Lists Connections in a parent. Use SearchConnections to see all connections within an organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the organization or project, for example, `organizations/433245324/locations/europe` or `p... |
| `filter` | `string` | query | No | Optional. Supported field/value: `state` - MISSING|AVAILABLE|ERROR The syntax is based on https://google.aip.dev/160. |
| `pageSize` | `integer` | query | No | Optional. Number of results per page, max 1000. |
| `pageToken` | `string` | query | No | Optional. Page token from a previous page to return the next set of results. If set, all other request fields must ma... |

**Response**: `GooglePrivacyDlpV2ListConnectionsResponse`

```typescript
const res = await dlp.connections.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.connections.patch`

**PATCH** `v2/{+name}`

Update a Connection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name in the format: `projects/{project}/locations/{location}/connections/{connection}`. |

**Request body**: `GooglePrivacyDlpV2UpdateConnectionRequest`

**Response**: `GooglePrivacyDlpV2Connection`

```typescript
const res = await dlp.connections.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.connections.search`

**GET** `v2/{+parent}/connections:search`

Searches for Connections in a parent.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the organization or project with a wildcard location, for example, `organizations/43324532... |
| `filter` | `string` | query | No | Optional. Supported field/value: - `state` - MISSING|AVAILABLE|ERROR The syntax is based on https://google.aip.dev/160. |
| `pageSize` | `integer` | query | No | Optional. Number of results per page, max 1000. |
| `pageToken` | `string` | query | No | Optional. Page token from a previous page to return the next set of results. If set, all other request fields must ma... |

**Response**: `GooglePrivacyDlpV2SearchConnectionsResponse`

```typescript
const res = await dlp.connections.search({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.connections.get`

**GET** `v2/{+name}`

Get a Connection by name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name in the format: `projects/{project}/locations/{location}/connections/{connection}`. |

**Response**: `GooglePrivacyDlpV2Connection`

```typescript
const res = await dlp.connections.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.connections.create`

**POST** `v2/{+parent}/connections`

Create a Connection to an external data source.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. The format of this value varies depending on the scope of the request (project or org... |

**Request body**: `GooglePrivacyDlpV2CreateConnectionRequest`

**Response**: `GooglePrivacyDlpV2Connection`

```typescript
const res = await dlp.connections.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.discoveryConfigs.get`

**GET** `v2/{+name}`

Gets a discovery configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the project and the configuration, for example `projects/dlp-test-project/discoveryConfigs... |

**Response**: `GooglePrivacyDlpV2DiscoveryConfig`

```typescript
const res = await dlp.discoveryConfigs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.discoveryConfigs.patch`

**PATCH** `v2/{+name}`

Updates a discovery configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the project and the configuration, for example `projects/dlp-test-project/discoveryConfigs... |

**Request body**: `GooglePrivacyDlpV2UpdateDiscoveryConfigRequest`

**Response**: `GooglePrivacyDlpV2DiscoveryConfig`

```typescript
const res = await dlp.discoveryConfigs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.discoveryConfigs.create`

**POST** `v2/{+parent}/discoveryConfigs`

Creates a config for discovery to scan and profile storage.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. The format of this value varies depending on the scope of the request (project or org... |

**Request body**: `GooglePrivacyDlpV2CreateDiscoveryConfigRequest`

**Response**: `GooglePrivacyDlpV2DiscoveryConfig`

```typescript
const res = await dlp.discoveryConfigs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.discoveryConfigs.list`

**GET** `v2/{+parent}/discoveryConfigs`

Lists discovery configurations.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. The format of this value is as follows: `projects/{project_id}/locations/{location_id... |
| `orderBy` | `string` | query | No | Comma-separated list of config fields to order by, followed by `asc` or `desc` postfix. This list is case insensitive... |
| `pageSize` | `integer` | query | No | Size of the page. This value can be limited by a server. |
| `pageToken` | `string` | query | No | Page token to continue retrieval. Comes from the previous call to ListDiscoveryConfigs. `order_by` field must not cha... |

**Response**: `GooglePrivacyDlpV2ListDiscoveryConfigsResponse`

```typescript
const res = await dlp.discoveryConfigs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.discoveryConfigs.delete`

**DELETE** `v2/{+name}`

Deletes a discovery configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the project and the config, for example `projects/dlp-test-project/discoveryConfigs/532344... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dlp.discoveryConfigs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.fileStoreDataProfiles.delete`

**DELETE** `v2/{+name}`

Delete a FileStoreDataProfile. Will not prevent the profile from being regenerated if the resource is still included in a discovery configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the file store data profile. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dlp.fileStoreDataProfiles.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.fileStoreDataProfiles.get`

**GET** `v2/{+name}`

Gets a file store data profile.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name, for example `organizations/12345/locations/us/fileStoreDataProfiles/53234423`. |

**Response**: `GooglePrivacyDlpV2FileStoreDataProfile`

```typescript
const res = await dlp.fileStoreDataProfiles.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.fileStoreDataProfiles.list`

**GET** `v2/{+parent}/fileStoreDataProfiles`

Lists file store data profiles for an organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the organization or project, for example `organizations/433245324/locations/europe` or `pr... |
| `filter` | `string` | query | No | Optional. Allows filtering. Supported syntax: * Filter expressions are made up of one or more restrictions. * Restric... |
| `orderBy` | `string` | query | No | Optional. Comma-separated list of fields to order by, followed by `asc` or `desc` postfix. This list is case insensit... |
| `pageSize` | `integer` | query | No | Optional. Size of the page. This value can be limited by the server. If zero, server returns a page of max size 100. |
| `pageToken` | `string` | query | No | Optional. Page token to continue retrieval. |

**Response**: `GooglePrivacyDlpV2ListFileStoreDataProfilesResponse`

```typescript
const res = await dlp.fileStoreDataProfiles.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.tableDataProfiles.delete`

**DELETE** `v2/{+name}`

Delete a TableDataProfile. Will not prevent the profile from being regenerated if the table is still included in a discovery configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the table data profile. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dlp.tableDataProfiles.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.tableDataProfiles.get`

**GET** `v2/{+name}`

Gets a table data profile.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name, for example `organizations/12345/locations/us/tableDataProfiles/53234423`. |

**Response**: `GooglePrivacyDlpV2TableDataProfile`

```typescript
const res = await dlp.tableDataProfiles.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.tableDataProfiles.list`

**GET** `v2/{+parent}/tableDataProfiles`

Lists table data profiles for an organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the organization or project, for example `organizations/433245324/locations/europe` or `pr... |
| `filter` | `string` | query | No | Allows filtering. Supported syntax: * Filter expressions are made up of one or more restrictions. * Restrictions can ... |
| `orderBy` | `string` | query | No | Comma-separated list of fields to order by, followed by `asc` or `desc` postfix. This list is case insensitive. The d... |
| `pageSize` | `integer` | query | No | Size of the page. This value can be limited by the server. If zero, server returns a page of max size 100. |
| `pageToken` | `string` | query | No | Page token to continue retrieval. |

**Response**: `GooglePrivacyDlpV2ListTableDataProfilesResponse`

```typescript
const res = await dlp.tableDataProfiles.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.deidentifyTemplates.list`

**GET** `v2/{+parent}/deidentifyTemplates`

Lists DeidentifyTemplates. See https://cloud.google.com/sensitive-data-protection/docs/creating-templates-deid to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. The format of this value varies depending on the scope of the request (project or org... |
| `locationId` | `string` | query | No | Deprecated. This field has no effect. |
| `orderBy` | `string` | query | No | Comma-separated list of fields to order by, followed by `asc` or `desc` postfix. This list is case insensitive. The d... |
| `pageSize` | `integer` | query | No | Size of the page. This value can be limited by the server. If zero server returns a page of max size 100. |
| `pageToken` | `string` | query | No | Page token to continue retrieval. Comes from the previous call to `ListDeidentifyTemplates`. |

**Response**: `GooglePrivacyDlpV2ListDeidentifyTemplatesResponse`

```typescript
const res = await dlp.deidentifyTemplates.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.deidentifyTemplates.get`

**GET** `v2/{+name}`

Gets a DeidentifyTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creating-templates-deid to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the organization and deidentify template to be read, for example `organizations/433245324/... |

**Response**: `GooglePrivacyDlpV2DeidentifyTemplate`

```typescript
const res = await dlp.deidentifyTemplates.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.deidentifyTemplates.create`

**POST** `v2/{+parent}/deidentifyTemplates`

Creates a DeidentifyTemplate for reusing frequently used configuration for de-identifying content, images, and storage. See https://cloud.google.com/sensitive-data-protection/docs/creating-templates-deid to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. The format of this value varies depending on the scope of the request (project or org... |

**Request body**: `GooglePrivacyDlpV2CreateDeidentifyTemplateRequest`

**Response**: `GooglePrivacyDlpV2DeidentifyTemplate`

```typescript
const res = await dlp.deidentifyTemplates.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.deidentifyTemplates.delete`

**DELETE** `v2/{+name}`

Deletes a DeidentifyTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creating-templates-deid to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the organization and deidentify template to be deleted, for example `organizations/4332453... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dlp.deidentifyTemplates.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.deidentifyTemplates.patch`

**PATCH** `v2/{+name}`

Updates the DeidentifyTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creating-templates-deid to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of organization and deidentify template to be updated, for example `organizations/433245324/d... |

**Request body**: `GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest`

**Response**: `GooglePrivacyDlpV2DeidentifyTemplate`

```typescript
const res = await dlp.deidentifyTemplates.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.content.reidentify`

**POST** `v2/{+parent}/content:reidentify`

Re-identifies content that has been de-identified. See https://cloud.google.com/sensitive-data-protection/docs/pseudonymization#re-identification_in_free_text_code_example to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. The format of this value varies depending on whether you have [specified a processing... |

**Request body**: `GooglePrivacyDlpV2ReidentifyContentRequest`

**Response**: `GooglePrivacyDlpV2ReidentifyContentResponse`

```typescript
const res = await dlp.content.reidentify({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.content.deidentify`

**POST** `v2/{+parent}/content:deidentify`

De-identifies potentially sensitive info from a ContentItem. This method has limits on input size and output size. See https://cloud.google.com/sensitive-data-protection/docs/deidentify-sensitive-data to learn more. When no InfoTypes or CustomInfoTypes are specified in this request, the system will automatically choose what detectors to run. By default this may be all types, but may change over time as detectors are updated.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Parent resource name. The format of this value varies depending on whether you have [specified a processing location]... |

**Request body**: `GooglePrivacyDlpV2DeidentifyContentRequest`

**Response**: `GooglePrivacyDlpV2DeidentifyContentResponse`

```typescript
const res = await dlp.content.deidentify({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.content.inspect`

**POST** `v2/{+parent}/content:inspect`

Finds potentially sensitive info in content. This method has limits on input size, processing time, and output size. When no InfoTypes or CustomInfoTypes are specified in this request, the system will automatically choose what detectors to run. By default this may be all types, but may change over time as detectors are updated. For how to guides, see https://cloud.google.com/sensitive-data-protection/docs/inspecting-images and https://cloud.google.com/sensitive-data-protection/docs/inspecting-text,

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Parent resource name. The format of this value varies depending on whether you have [specified a processing location]... |

**Request body**: `GooglePrivacyDlpV2InspectContentRequest`

**Response**: `GooglePrivacyDlpV2InspectContentResponse`

```typescript
const res = await dlp.content.inspect({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.image.redact`

**POST** `v2/{+parent}/image:redact`

Redacts potentially sensitive info from an image. This method has limits on input size, processing time, and output size. See https://cloud.google.com/sensitive-data-protection/docs/redacting-sensitive-data-images to learn more. When no InfoTypes or CustomInfoTypes are specified in this request, the system will automatically choose what detectors to run. By default this may be all types, but may change over time as detectors are updated. Only the first frame of each multiframe image is redacted. Metadata and other frames are omitted in the response.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Parent resource name. The format of this value varies depending on whether you have [specified a processing location]... |

**Request body**: `GooglePrivacyDlpV2RedactImageRequest`

**Response**: `GooglePrivacyDlpV2RedactImageResponse`

```typescript
const res = await dlp.image.redact({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.columnDataProfiles.list`

**GET** `v2/{+parent}/columnDataProfiles`

Lists column data profiles for an organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the organization or project, for example `organizations/433245324/locations/europe` or `pr... |
| `filter` | `string` | query | No | Allows filtering. Supported syntax: * Filter expressions are made up of one or more restrictions. * Restrictions can ... |
| `orderBy` | `string` | query | No | Comma-separated list of fields to order by, followed by `asc` or `desc` postfix. This list is case insensitive. The d... |
| `pageSize` | `integer` | query | No | Size of the page. This value can be limited by the server. If zero, server returns a page of max size 100. |
| `pageToken` | `string` | query | No | Page token to continue retrieval. |

**Response**: `GooglePrivacyDlpV2ListColumnDataProfilesResponse`

```typescript
const res = await dlp.columnDataProfiles.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.columnDataProfiles.get`

**GET** `v2/{+name}`

Gets a column data profile.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name, for example `organizations/12345/locations/us/columnDataProfiles/53234423`. |

**Response**: `GooglePrivacyDlpV2ColumnDataProfile`

```typescript
const res = await dlp.columnDataProfiles.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.storedInfoTypes.list`

**GET** `v2/{+parent}/storedInfoTypes`

Lists stored infoTypes. See https://cloud.google.com/sensitive-data-protection/docs/creating-stored-infotypes to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. The format of this value varies depending on the scope of the request (project or org... |
| `locationId` | `string` | query | No | Deprecated. This field has no effect. |
| `orderBy` | `string` | query | No | Comma-separated list of fields to order by, followed by `asc` or `desc` postfix. This list is case insensitive. The d... |
| `pageSize` | `integer` | query | No | Size of the page. This value can be limited by the server. If zero server returns a page of max size 100. |
| `pageToken` | `string` | query | No | Page token to continue retrieval. Comes from the previous call to `ListStoredInfoTypes`. |

**Response**: `GooglePrivacyDlpV2ListStoredInfoTypesResponse`

```typescript
const res = await dlp.storedInfoTypes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.storedInfoTypes.patch`

**PATCH** `v2/{+name}`

Updates the stored infoType by creating a new version. The existing version will continue to be used until the new version is ready. See https://cloud.google.com/sensitive-data-protection/docs/creating-stored-infotypes to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of organization and storedInfoType to be updated, for example `organizations/433245324/stored... |

**Request body**: `GooglePrivacyDlpV2UpdateStoredInfoTypeRequest`

**Response**: `GooglePrivacyDlpV2StoredInfoType`

```typescript
const res = await dlp.storedInfoTypes.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.storedInfoTypes.delete`

**DELETE** `v2/{+name}`

Deletes a stored infoType. See https://cloud.google.com/sensitive-data-protection/docs/creating-stored-infotypes to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the organization and storedInfoType to be deleted, for example `organizations/433245324/st... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dlp.storedInfoTypes.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.storedInfoTypes.get`

**GET** `v2/{+name}`

Gets a stored infoType. See https://cloud.google.com/sensitive-data-protection/docs/creating-stored-infotypes to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the organization and storedInfoType to be read, for example `organizations/433245324/store... |

**Response**: `GooglePrivacyDlpV2StoredInfoType`

```typescript
const res = await dlp.storedInfoTypes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.storedInfoTypes.create`

**POST** `v2/{+parent}/storedInfoTypes`

Creates a pre-built stored infoType to be used for inspection. See https://cloud.google.com/sensitive-data-protection/docs/creating-stored-infotypes to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. The format of this value varies depending on the scope of the request (project or org... |

**Request body**: `GooglePrivacyDlpV2CreateStoredInfoTypeRequest`

**Response**: `GooglePrivacyDlpV2StoredInfoType`

```typescript
const res = await dlp.storedInfoTypes.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.projectDataProfiles.list`

**GET** `v2/{+parent}/projectDataProfiles`

Lists project data profiles for an organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. organizations/{org_id}/locations/{loc_id} |
| `filter` | `string` | query | No | Allows filtering. Supported syntax: * Filter expressions are made up of one or more restrictions. * Restrictions can ... |
| `orderBy` | `string` | query | No | Comma-separated list of fields to order by, followed by `asc` or `desc` postfix. This list is case insensitive. The d... |
| `pageSize` | `integer` | query | No | Size of the page. This value can be limited by the server. If zero, server returns a page of max size 100. |
| `pageToken` | `string` | query | No | Page token to continue retrieval. |

**Response**: `GooglePrivacyDlpV2ListProjectDataProfilesResponse`

```typescript
const res = await dlp.projectDataProfiles.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.locations.projectDataProfiles.get`

**GET** `v2/{+name}`

Gets a project data profile.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name, for example `organizations/12345/locations/us/projectDataProfiles/53234423`. |

**Response**: `GooglePrivacyDlpV2ProjectDataProfile`

```typescript
const res = await dlp.projectDataProfiles.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.deidentifyTemplates.get`

**GET** `v2/{+name}`

Gets a DeidentifyTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creating-templates-deid to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the organization and deidentify template to be read, for example `organizations/433245324/... |

**Response**: `GooglePrivacyDlpV2DeidentifyTemplate`

```typescript
const res = await dlp.deidentifyTemplates.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.deidentifyTemplates.list`

**GET** `v2/{+parent}/deidentifyTemplates`

Lists DeidentifyTemplates. See https://cloud.google.com/sensitive-data-protection/docs/creating-templates-deid to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. The format of this value varies depending on the scope of the request (project or org... |
| `locationId` | `string` | query | No | Deprecated. This field has no effect. |
| `orderBy` | `string` | query | No | Comma-separated list of fields to order by, followed by `asc` or `desc` postfix. This list is case insensitive. The d... |
| `pageSize` | `integer` | query | No | Size of the page. This value can be limited by the server. If zero server returns a page of max size 100. |
| `pageToken` | `string` | query | No | Page token to continue retrieval. Comes from the previous call to `ListDeidentifyTemplates`. |

**Response**: `GooglePrivacyDlpV2ListDeidentifyTemplatesResponse`

```typescript
const res = await dlp.deidentifyTemplates.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.deidentifyTemplates.patch`

**PATCH** `v2/{+name}`

Updates the DeidentifyTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creating-templates-deid to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of organization and deidentify template to be updated, for example `organizations/433245324/d... |

**Request body**: `GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest`

**Response**: `GooglePrivacyDlpV2DeidentifyTemplate`

```typescript
const res = await dlp.deidentifyTemplates.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.deidentifyTemplates.delete`

**DELETE** `v2/{+name}`

Deletes a DeidentifyTemplate. See https://cloud.google.com/sensitive-data-protection/docs/creating-templates-deid to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the organization and deidentify template to be deleted, for example `organizations/4332453... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dlp.deidentifyTemplates.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.deidentifyTemplates.create`

**POST** `v2/{+parent}/deidentifyTemplates`

Creates a DeidentifyTemplate for reusing frequently used configuration for de-identifying content, images, and storage. See https://cloud.google.com/sensitive-data-protection/docs/creating-templates-deid to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. The format of this value varies depending on the scope of the request (project or org... |

**Request body**: `GooglePrivacyDlpV2CreateDeidentifyTemplateRequest`

**Response**: `GooglePrivacyDlpV2DeidentifyTemplate`

```typescript
const res = await dlp.deidentifyTemplates.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.jobTriggers.get`

**GET** `v2/{+name}`

Gets a job trigger. See https://cloud.google.com/sensitive-data-protection/docs/creating-job-triggers to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the project and the triggeredJob, for example `projects/dlp-test-project/jobTriggers/53234... |

**Response**: `GooglePrivacyDlpV2JobTrigger`

```typescript
const res = await dlp.jobTriggers.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.jobTriggers.patch`

**PATCH** `v2/{+name}`

Updates a job trigger. See https://cloud.google.com/sensitive-data-protection/docs/creating-job-triggers to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the project and the triggeredJob, for example `projects/dlp-test-project/jobTriggers/53234... |

**Request body**: `GooglePrivacyDlpV2UpdateJobTriggerRequest`

**Response**: `GooglePrivacyDlpV2JobTrigger`

```typescript
const res = await dlp.jobTriggers.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.jobTriggers.list`

**GET** `v2/{+parent}/jobTriggers`

Lists job triggers. See https://cloud.google.com/sensitive-data-protection/docs/creating-job-triggers to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. The format of this value varies depending on whether you have [specified a processing... |
| `filter` | `string` | query | No | Allows filtering. Supported syntax: * Filter expressions are made up of one or more restrictions. * Restrictions can ... |
| `locationId` | `string` | query | No | Deprecated. This field has no effect. |
| `orderBy` | `string` | query | No | Comma-separated list of triggeredJob fields to order by, followed by `asc` or `desc` postfix. This list is case insen... |
| `pageSize` | `integer` | query | No | Size of the page. This value can be limited by a server. |
| `pageToken` | `string` | query | No | Page token to continue retrieval. Comes from the previous call to ListJobTriggers. `order_by` field must not change f... |
| `type` | `string` | query | No | The type of jobs. Will use `DlpJobType.INSPECT` if not set. |

**Response**: `GooglePrivacyDlpV2ListJobTriggersResponse`

```typescript
const res = await dlp.jobTriggers.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.jobTriggers.create`

**POST** `v2/{+parent}/jobTriggers`

Creates a job trigger to run DLP actions such as scanning storage for sensitive information on a set schedule. See https://cloud.google.com/sensitive-data-protection/docs/creating-job-triggers to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. The format of this value varies depending on whether you have [specified a processing... |

**Request body**: `GooglePrivacyDlpV2CreateJobTriggerRequest`

**Response**: `GooglePrivacyDlpV2JobTrigger`

```typescript
const res = await dlp.jobTriggers.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.jobTriggers.delete`

**DELETE** `v2/{+name}`

Deletes a job trigger. See https://cloud.google.com/sensitive-data-protection/docs/creating-job-triggers to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the project and the triggeredJob, for example `projects/dlp-test-project/jobTriggers/53234... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dlp.jobTriggers.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.jobTriggers.activate`

**POST** `v2/{+name}:activate`

Activate a job trigger. Causes the immediate execute of a trigger instead of waiting on the trigger event to occur.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the trigger to activate, for example `projects/dlp-test-project/jobTriggers/53234423`. |

**Request body**: `GooglePrivacyDlpV2ActivateJobTriggerRequest`

**Response**: `GooglePrivacyDlpV2DlpJob`

```typescript
const res = await dlp.jobTriggers.activate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.storedInfoTypes.list`

**GET** `v2/{+parent}/storedInfoTypes`

Lists stored infoTypes. See https://cloud.google.com/sensitive-data-protection/docs/creating-stored-infotypes to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. The format of this value varies depending on the scope of the request (project or org... |
| `locationId` | `string` | query | No | Deprecated. This field has no effect. |
| `orderBy` | `string` | query | No | Comma-separated list of fields to order by, followed by `asc` or `desc` postfix. This list is case insensitive. The d... |
| `pageSize` | `integer` | query | No | Size of the page. This value can be limited by the server. If zero server returns a page of max size 100. |
| `pageToken` | `string` | query | No | Page token to continue retrieval. Comes from the previous call to `ListStoredInfoTypes`. |

**Response**: `GooglePrivacyDlpV2ListStoredInfoTypesResponse`

```typescript
const res = await dlp.storedInfoTypes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.storedInfoTypes.patch`

**PATCH** `v2/{+name}`

Updates the stored infoType by creating a new version. The existing version will continue to be used until the new version is ready. See https://cloud.google.com/sensitive-data-protection/docs/creating-stored-infotypes to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of organization and storedInfoType to be updated, for example `organizations/433245324/stored... |

**Request body**: `GooglePrivacyDlpV2UpdateStoredInfoTypeRequest`

**Response**: `GooglePrivacyDlpV2StoredInfoType`

```typescript
const res = await dlp.storedInfoTypes.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.storedInfoTypes.create`

**POST** `v2/{+parent}/storedInfoTypes`

Creates a pre-built stored infoType to be used for inspection. See https://cloud.google.com/sensitive-data-protection/docs/creating-stored-infotypes to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. The format of this value varies depending on the scope of the request (project or org... |

**Request body**: `GooglePrivacyDlpV2CreateStoredInfoTypeRequest`

**Response**: `GooglePrivacyDlpV2StoredInfoType`

```typescript
const res = await dlp.storedInfoTypes.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.storedInfoTypes.get`

**GET** `v2/{+name}`

Gets a stored infoType. See https://cloud.google.com/sensitive-data-protection/docs/creating-stored-infotypes to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the organization and storedInfoType to be read, for example `organizations/433245324/store... |

**Response**: `GooglePrivacyDlpV2StoredInfoType`

```typescript
const res = await dlp.storedInfoTypes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dlp.projects.storedInfoTypes.delete`

**DELETE** `v2/{+name}`

Deletes a stored infoType. See https://cloud.google.com/sensitive-data-protection/docs/creating-stored-infotypes to learn more.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the organization and storedInfoType to be deleted, for example `organizations/433245324/st... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await dlp.storedInfoTypes.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `GooglePrivacyDlpV2Action`

A task to execute on the completion of a job. See https://cloud.google.com/sensitive-data-protection/docs/concepts-actions to learn more.

| Property | Type | Description |
|----------|------|-------------|
| `deidentify` | `GooglePrivacyDlpV2Deidentify` | Create a de-identified copy of the input data. |
| `jobNotificationEmails` | `GooglePrivacyDlpV2JobNotificationEmails` | Sends an email when the job completes. The email goes to IAM project owners and technical [Essent... |
| `pubSub` | `GooglePrivacyDlpV2PublishToPubSub` | Publish a notification to a Pub/Sub topic. |
| `publishFindingsToCloudDataCatalog` | `GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog` | Deprecated because Data Catalog is being turned down. Use publish_findings_to_dataplex_catalog to... |
| `publishFindingsToDataplexCatalog` | `GooglePrivacyDlpV2PublishFindingsToDataplexCatalog` | Publish findings as an aspect to Dataplex Universal Catalog. |
| `publishSummaryToCscc` | `GooglePrivacyDlpV2PublishSummaryToCscc` | Publish summary to Cloud Security Command Center (Alpha). |
| `publishToStackdriver` | `GooglePrivacyDlpV2PublishToStackdriver` | Enable Stackdriver metric dlp.googleapis.com/finding_count. |
| `saveFindings` | `GooglePrivacyDlpV2SaveFindings` | Save resulting findings in a provided location. |

### `GooglePrivacyDlpV2ActionDetails`

The results of an Action.

| Property | Type | Description |
|----------|------|-------------|
| `deidentifyDetails` | `GooglePrivacyDlpV2DeidentifyDataSourceDetails` | Outcome of a de-identification action. |

### `GooglePrivacyDlpV2ActivateJobTriggerRequest`

Request message for ActivateJobTrigger.

### `GooglePrivacyDlpV2AdjustByImageFindings`

AdjustmentRule condition for image findings. This rule is silently ignored if the content being inspected is not an image.

| Property | Type | Description |
|----------|------|-------------|
| `imageContainmentType` | `GooglePrivacyDlpV2ImageContainmentType` | Specifies the required spatial relationship between the bounding boxes of the target finding and ... |
| `infoTypes` | `array<GooglePrivacyDlpV2InfoType>` | A list of image-supported infoTypes—excluding [document infoTypes](https://cloud.google.com/sensi... |
| `minLikelihood` | `string` | Required. Minimum likelihood of the `adjust_by_image_findings.info_types` finding. If the likelih... |

### `GooglePrivacyDlpV2AdjustByMatchingInfoTypes`

AdjustmentRule condition for matching infoTypes.

| Property | Type | Description |
|----------|------|-------------|
| `infoTypes` | `array<GooglePrivacyDlpV2InfoType>` | Sensitive Data Protection adjusts the likelihood of a finding if that finding also matches one of... |
| `matchingType` | `string` | How the adjustment rule is applied. Only MATCHING_TYPE_PARTIAL_MATCH is supported: - Partial matc... |
| `minLikelihood` | `string` | Required. Minimum likelihood of the `adjust_by_matching_info_types.info_types` finding. If the li... |

### `GooglePrivacyDlpV2AdjustmentRule`

Rule that specifies conditions when a certain infoType's finding details should be adjusted.

| Property | Type | Description |
|----------|------|-------------|
| `adjustByImageFindings` | `GooglePrivacyDlpV2AdjustByImageFindings` | AdjustmentRule condition for image findings. |
| `adjustByMatchingInfoTypes` | `GooglePrivacyDlpV2AdjustByMatchingInfoTypes` | Set of infoTypes for which findings would affect this rule. |
| `likelihoodAdjustment` | `GooglePrivacyDlpV2LikelihoodAdjustment` | Likelihood adjustment to apply to the infoType. |

### `GooglePrivacyDlpV2AllInfoTypes`

Apply transformation to all findings.

### `GooglePrivacyDlpV2AllOtherBigQueryTables`

Catch-all for all other tables not specified by other filters. Should always be last, except for single-table configurations, which will only have a TableReference target.

### `GooglePrivacyDlpV2AllOtherDatabaseResources`

Match database resources not covered by any other filter.

### `GooglePrivacyDlpV2AllOtherResources`

Match discovery resources not covered by any other filter.

### `GooglePrivacyDlpV2AllText`

Apply to all text.

### `GooglePrivacyDlpV2AmazonS3Bucket`

Amazon S3 bucket.

| Property | Type | Description |
|----------|------|-------------|
| `awsAccount` | `GooglePrivacyDlpV2AwsAccount` | The AWS account. |
| `bucketName` | `string` | Required. The bucket name. |

### `GooglePrivacyDlpV2AmazonS3BucketConditions`

Amazon S3 bucket conditions.

| Property | Type | Description |
|----------|------|-------------|
| `bucketTypes` | `array<string>` | Optional. Bucket types that should be profiled. Optional. Defaults to TYPE_ALL_SUPPORTED if unspe... |
| `objectStorageClasses` | `array<string>` | Optional. Object classes that should be profiled. Optional. Defaults to ALL_SUPPORTED_CLASSES if ... |

### `GooglePrivacyDlpV2AmazonS3BucketRegex`

Amazon S3 bucket regex.

| Property | Type | Description |
|----------|------|-------------|
| `awsAccountRegex` | `GooglePrivacyDlpV2AwsAccountRegex` | The AWS account regex. |
| `bucketNameRegex` | `string` | Optional. Regex to test the bucket name against. If empty, all buckets match. |

### `GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails`

Result of a risk analysis operation request.

| Property | Type | Description |
|----------|------|-------------|
| `categoricalStatsResult` | `GooglePrivacyDlpV2CategoricalStatsResult` | Categorical stats result |
| `deltaPresenceEstimationResult` | `GooglePrivacyDlpV2DeltaPresenceEstimationResult` | Delta-presence result |
| `kAnonymityResult` | `GooglePrivacyDlpV2KAnonymityResult` | K-anonymity result |
| `kMapEstimationResult` | `GooglePrivacyDlpV2KMapEstimationResult` | K-map result |
| `lDiversityResult` | `GooglePrivacyDlpV2LDiversityResult` | L-divesity result |
| `numericalStatsResult` | `GooglePrivacyDlpV2NumericalStatsResult` | Numerical stats result |
| `requestedOptions` | `GooglePrivacyDlpV2RequestedRiskAnalysisOptions` | The configuration used for this job. |
| `requestedPrivacyMetric` | `GooglePrivacyDlpV2PrivacyMetric` | Privacy metric to compute. |
| `requestedSourceTable` | `GooglePrivacyDlpV2BigQueryTable` | Input dataset to compute metrics over. |

### `GooglePrivacyDlpV2AuxiliaryTable`

An auxiliary table contains statistical information on the relative frequency of different quasi-identifiers values. It has one or several quasi-identifiers columns, and one column that indicates the relative frequency of each quasi-identifier tuple. If a tuple is present in the data but not in the auxiliary table, the corresponding relative frequency is assumed to be zero (and thus, the tuple is highly reidentifiable).

| Property | Type | Description |
|----------|------|-------------|
| `quasiIds` | `array<GooglePrivacyDlpV2QuasiIdField>` | Required. Quasi-identifier columns. |
| `relativeFrequency` | `GooglePrivacyDlpV2FieldId` | Required. The relative frequency column must contain a floating-point number between 0 and 1 (inc... |
| `table` | `GooglePrivacyDlpV2BigQueryTable` | Required. Auxiliary table location. |

### `GooglePrivacyDlpV2AwsAccount`

AWS account.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Required. AWS account ID. |

### `GooglePrivacyDlpV2AwsAccountRegex`

AWS account regex.

| Property | Type | Description |
|----------|------|-------------|
| `accountIdRegex` | `string` | Optional. Regex to test the AWS account ID against. If empty, all accounts match. |

### `GooglePrivacyDlpV2AwsDiscoveryStartingLocation`

The AWS starting location for discovery.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | The AWS account ID that this discovery config applies to. Within an AWS organization, you can fin... |
| `allAssetInventoryAssets` | `boolean` | All AWS assets stored in Asset Inventory that didn't match other AWS discovery configs. |

### `GooglePrivacyDlpV2BigQueryDiscoveryTarget`

Target used to match against for discovery with BigQuery tables

| Property | Type | Description |
|----------|------|-------------|
| `cadence` | `GooglePrivacyDlpV2DiscoveryGenerationCadence` | How often and when to update profiles. New tables that match both the filter and conditions are s... |
| `conditions` | `GooglePrivacyDlpV2DiscoveryBigQueryConditions` | In addition to matching the filter, these conditions must be true before a profile is generated. |
| `disabled` | `GooglePrivacyDlpV2Disabled` | Tables that match this filter will not have profiles created. |
| `filter` | `GooglePrivacyDlpV2DiscoveryBigQueryFilter` | Required. The tables the discovery cadence applies to. The first target with a matching filter wi... |

### `GooglePrivacyDlpV2BigQueryField`

Message defining a field of a BigQuery table.

| Property | Type | Description |
|----------|------|-------------|
| `field` | `GooglePrivacyDlpV2FieldId` | Designated field in the BigQuery table. |
| `table` | `GooglePrivacyDlpV2BigQueryTable` | Source table of the field. |

### `GooglePrivacyDlpV2BigQueryKey`

Row key for identifying a record in BigQuery table.

| Property | Type | Description |
|----------|------|-------------|
| `rowNumber` | `string` | Row number inferred at the time the table was scanned. This value is nondeterministic, cannot be ... |
| `tableReference` | `GooglePrivacyDlpV2BigQueryTable` | Complete BigQuery table reference. |

### `GooglePrivacyDlpV2BigQueryOptions`

Options defining BigQuery table and row identifiers.

| Property | Type | Description |
|----------|------|-------------|
| `excludedFields` | `array<GooglePrivacyDlpV2FieldId>` | References to fields excluded from scanning. This allows you to skip inspection of entire columns... |
| `identifyingFields` | `array<GooglePrivacyDlpV2FieldId>` | Table fields that may uniquely identify a row within the table. When `actions.saveFindings.output... |
| `includedFields` | `array<GooglePrivacyDlpV2FieldId>` | Limit scanning only to these fields. When inspecting a table, we recommend that you inspect all c... |
| `rowsLimit` | `string` | Max number of rows to scan. If the table has more rows than this value, the rest of the rows are ... |
| `rowsLimitPercent` | `integer` | Max percentage of rows to scan. The rest are omitted. The number of rows scanned is rounded down.... |
| `sampleMethod` | `string` | How to sample the data. |
| `tableReference` | `GooglePrivacyDlpV2BigQueryTable` | Complete BigQuery table reference. |

### `GooglePrivacyDlpV2BigQueryRegex`

A pattern to match against one or more tables, datasets, or projects that contain BigQuery tables. At least one pattern must be specified. Regular expressions use RE2 [syntax](https://github.com/google/re2/wiki/Syntax); a guide can be found under the google/re2 repository on GitHub.

| Property | Type | Description |
|----------|------|-------------|
| `datasetIdRegex` | `string` | If unset, this property matches all datasets. |
| `projectIdRegex` | `string` | For organizations, if unset, will match all projects. Has no effect for data profile configuratio... |
| `tableIdRegex` | `string` | If unset, this property matches all tables. |

### `GooglePrivacyDlpV2BigQueryRegexes`

A collection of regular expressions to determine what tables to match against.

| Property | Type | Description |
|----------|------|-------------|
| `patterns` | `array<GooglePrivacyDlpV2BigQueryRegex>` | A single BigQuery regular expression pattern to match against one or more tables, datasets, or pr... |

### `GooglePrivacyDlpV2BigQueryTable`

Message defining the location of a BigQuery table. A table is uniquely identified by its project_id, dataset_id, and table_name. Within a query a table is often referenced with a string in the format of: `:.` or `..`.

| Property | Type | Description |
|----------|------|-------------|
| `datasetId` | `string` | Dataset ID of the table. |
| `projectId` | `string` | The Google Cloud project ID of the project containing the table. If omitted, project ID is inferr... |
| `tableId` | `string` | Name of the table. |

### `GooglePrivacyDlpV2BigQueryTableCollection`

Specifies a collection of BigQuery tables. Used for Discovery.

| Property | Type | Description |
|----------|------|-------------|
| `includeRegexes` | `GooglePrivacyDlpV2BigQueryRegexes` | A collection of regular expressions to match a BigQuery table against. |

### `GooglePrivacyDlpV2BigQueryTableTypes`

The types of BigQuery tables supported by Cloud DLP.

| Property | Type | Description |
|----------|------|-------------|
| `types` | `array<string>` | A set of BigQuery table types. |

### `GooglePrivacyDlpV2BoundingBox`

Bounding box encompassing detected text within an image.

| Property | Type | Description |
|----------|------|-------------|
| `height` | `integer` | Height of the bounding box in pixels. |
| `left` | `integer` | Left coordinate of the bounding box. (0,0) is upper left. |
| `top` | `integer` | Top coordinate of the bounding box. (0,0) is upper left. |
| `width` | `integer` | Width of the bounding box in pixels. |

### `GooglePrivacyDlpV2Bucket`

Bucket is represented as a range, along with replacement values.

| Property | Type | Description |
|----------|------|-------------|
| `max` | `GooglePrivacyDlpV2Value` | Upper bound of the range, exclusive; type must match min. |
| `min` | `GooglePrivacyDlpV2Value` | Lower bound of the range, inclusive. Type should be the same as max if used. |
| `replacementValue` | `GooglePrivacyDlpV2Value` | Required. Replacement value for this bucket. |

### `GooglePrivacyDlpV2BucketingConfig`

Generalization function that buckets values based on ranges. The ranges and replacement values are dynamically provided by the user for custom behavior, such as 1-30 -> LOW, 31-65 -> MEDIUM, 66-100 -> HIGH. This can be used on data of type: number, long, string, timestamp. If the bound `Value` type differs from the type of data being transformed, we will first attempt converting the type of the data to be transformed to match the type of the bound before comparing. See https://cloud.google.com/sensitive-data-protection/docs/concepts-bucketing to learn more.

| Property | Type | Description |
|----------|------|-------------|
| `buckets` | `array<GooglePrivacyDlpV2Bucket>` | Set of buckets. Ranges must be non-overlapping. |

### `GooglePrivacyDlpV2ByteContentItem`

Container for bytes to inspect or redact.

| Property | Type | Description |
|----------|------|-------------|
| `data` | `string` | Content data to inspect or redact. |
| `type` | `string` | The type of data stored in the bytes string. Default will be TEXT_UTF8. |

### `GooglePrivacyDlpV2CancelDlpJobRequest`

The request message for canceling a DLP job.

### `GooglePrivacyDlpV2CategoricalStatsConfig`

Compute numerical stats over an individual column, including number of distinct values and value count distribution.

| Property | Type | Description |
|----------|------|-------------|
| `field` | `GooglePrivacyDlpV2FieldId` | Field to compute categorical stats on. All column types are supported except for arrays and struc... |

### `GooglePrivacyDlpV2CategoricalStatsHistogramBucket`

Histogram of value frequencies in the column.

| Property | Type | Description |
|----------|------|-------------|
| `bucketSize` | `string` | Total number of values in this bucket. |
| `bucketValueCount` | `string` | Total number of distinct values in this bucket. |
| `bucketValues` | `array<GooglePrivacyDlpV2ValueFrequency>` | Sample of value frequencies in this bucket. The total number of values returned per bucket is cap... |
| `valueFrequencyLowerBound` | `string` | Lower bound on the value frequency of the values in this bucket. |
| `valueFrequencyUpperBound` | `string` | Upper bound on the value frequency of the values in this bucket. |

### `GooglePrivacyDlpV2CategoricalStatsResult`

Result of the categorical stats computation.

| Property | Type | Description |
|----------|------|-------------|
| `valueFrequencyHistogramBuckets` | `array<GooglePrivacyDlpV2CategoricalStatsHistogramBucket>` | Histogram of value frequencies in the column. |

### `GooglePrivacyDlpV2CharacterMaskConfig`

Partially mask a string by replacing a given number of characters with a fixed character. Masking can start from the beginning or end of the string. This can be used on data of any type (numbers, longs, and so on) and when de-identifying structured data we'll attempt to preserve the original data's type. (This allows you to take a long like 123 and modify it to a string like **3.

| Property | Type | Description |
|----------|------|-------------|
| `charactersToIgnore` | `array<GooglePrivacyDlpV2CharsToIgnore>` | When masking a string, items in this list will be skipped when replacing characters. For example,... |
| `maskingCharacter` | `string` | Character to use to mask the sensitive values—for example, `*` for an alphabetic string such as a... |
| `numberToMask` | `integer` | Number of characters to mask. If not set, all matching chars will be masked. Skipped characters d... |
| `reverseOrder` | `boolean` | Mask characters in reverse order. For example, if `masking_character` is `0`, `number_to_mask` is... |

### `GooglePrivacyDlpV2CharsToIgnore`

Characters to skip when doing deidentification of a value. These will be left alone and skipped.

| Property | Type | Description |
|----------|------|-------------|
| `charactersToSkip` | `string` | Characters to not transform when masking. |
| `commonCharactersToIgnore` | `string` | Common characters to not transform when masking. Useful to avoid removing punctuation. |

### `GooglePrivacyDlpV2CloudSqlDiscoveryTarget`

Target used to match against for discovery with Cloud SQL tables.

| Property | Type | Description |
|----------|------|-------------|
| `conditions` | `GooglePrivacyDlpV2DiscoveryCloudSqlConditions` | In addition to matching the filter, these conditions must be true before a profile is generated. |
| `disabled` | `GooglePrivacyDlpV2Disabled` | Disable profiling for database resources that match this filter. |
| `filter` | `GooglePrivacyDlpV2DiscoveryCloudSqlFilter` | Required. The tables the discovery cadence applies to. The first target with a matching filter wi... |
| `generationCadence` | `GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence` | How often and when to update profiles. New tables that match both the filter and conditions are s... |

### `GooglePrivacyDlpV2CloudSqlIamCredential`

Use IAM authentication to connect. This requires the Cloud SQL IAM feature to be enabled on the instance, which is not the default for Cloud SQL. See https://cloud.google.com/sql/docs/postgres/authentication and https://cloud.google.com/sql/docs/mysql/authentication.

### `GooglePrivacyDlpV2CloudSqlProperties`

Cloud SQL connection properties.

| Property | Type | Description |
|----------|------|-------------|
| `cloudSqlIam` | `GooglePrivacyDlpV2CloudSqlIamCredential` | Built-in IAM authentication (must be configured in Cloud SQL). |
| `connectionName` | `string` | Optional. Immutable. The Cloud SQL instance for which the connection is defined. Only one connect... |
| `databaseEngine` | `string` | Required. The database engine used by the Cloud SQL instance that this connection configures. |
| `maxConnections` | `integer` | Required. The DLP API will limit its connections to max_connections. Must be 2 or greater. |
| `usernamePassword` | `GooglePrivacyDlpV2SecretManagerCredential` | A username and password stored in Secret Manager. |

### `GooglePrivacyDlpV2CloudStorageDiscoveryTarget`

Target used to match against for discovery with Cloud Storage buckets.

| Property | Type | Description |
|----------|------|-------------|
| `conditions` | `GooglePrivacyDlpV2DiscoveryFileStoreConditions` | Optional. In addition to matching the filter, these conditions must be true before a profile is g... |
| `disabled` | `GooglePrivacyDlpV2Disabled` | Optional. Disable profiling for buckets that match this filter. |
| `filter` | `GooglePrivacyDlpV2DiscoveryCloudStorageFilter` | Required. The buckets the generation_cadence applies to. The first target with a matching filter ... |
| `generationCadence` | `GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence` | Optional. How often and when to update profiles. New buckets that match both the filter and condi... |

### `GooglePrivacyDlpV2CloudStorageFileSet`

Message representing a set of files in Cloud Storage.

| Property | Type | Description |
|----------|------|-------------|
| `url` | `string` | The url, in the format `gs:///`. Trailing wildcard in the path is allowed. |

### `GooglePrivacyDlpV2CloudStorageOptions`

Options defining a file or a set of files within a Cloud Storage bucket.

| Property | Type | Description |
|----------|------|-------------|
| `bytesLimitPerFile` | `string` | Max number of bytes to scan from a file. If a scanned file's size is bigger than this value then ... |
| `bytesLimitPerFilePercent` | `integer` | Max percentage of bytes to scan from a file. The rest are omitted. The number of bytes scanned is... |
| `fileSet` | `GooglePrivacyDlpV2FileSet` | The set of one or more files to scan. |
| `fileTypes` | `array<string>` | List of file type groups to include in the scan. If empty, all files are scanned and available da... |
| `filesLimitPercent` | `integer` | Limits the number of files to scan to this percentage of the input FileSet. Number of files scann... |
| `sampleMethod` | `string` | How to sample the data. |

### `GooglePrivacyDlpV2CloudStoragePath`

Message representing a single file or path in Cloud Storage.

| Property | Type | Description |
|----------|------|-------------|
| `path` | `string` | A URL representing a file or path (no wildcards) in Cloud Storage. Example: `gs://[BUCKET_NAME]/d... |

### `GooglePrivacyDlpV2CloudStorageRegex`

A pattern to match against one or more file stores. At least one pattern must be specified. Regular expressions use RE2 [syntax](https://github.com/google/re2/wiki/Syntax); a guide can be found under the google/re2 repository on GitHub.

| Property | Type | Description |
|----------|------|-------------|
| `bucketNameRegex` | `string` | Optional. Regex to test the bucket name against. If empty, all buckets match. Example: "marketing... |
| `projectIdRegex` | `string` | Optional. For organizations, if unset, will match all projects. |

### `GooglePrivacyDlpV2CloudStorageRegexFileSet`

Message representing a set of files in a Cloud Storage bucket. Regular expressions are used to allow fine-grained control over which files in the bucket to include. Included files are those that match at least one item in `include_regex` and do not match any items in `exclude_regex`. Note that a file that matches items from both lists will _not_ be included. For a match to occur, the entire file path (i.e., everything in the url after the bucket name) must match the regular expression. For example, given the input `{bucket_name: "mybucket", include_regex: ["directory1/.*"], exclude_regex: ["directory1/excluded.*"]}`: * `gs://mybucket/directory1/myfile` will be included * `gs://mybucket/directory1/directory2/myfile` will be included (`.*` matches across `/`) * `gs://mybucket/directory0/directory1/myfile` will _not_ be included (the full path doesn't match any items in `include_regex`) * `gs://mybucket/directory1/excludedfile` will _not_ be included (the path matches an item in `exclude_regex`) If `include_regex` is left empty, it will match all files by default (this is equivalent to setting `include_regex: [".*"]`). Some other common use cases: * `{bucket_name: "mybucket", exclude_regex: [".*\.pdf"]}` will include all files in `mybucket` except for .pdf files * `{bucket_name: "mybucket", include_regex: ["directory/[^/]+"]}` will include all files directly under `gs://mybucket/directory/`, without matching across `/`

| Property | Type | Description |
|----------|------|-------------|
| `bucketName` | `string` | The name of a Cloud Storage bucket. Required. |
| `excludeRegex` | `array<string>` | A list of regular expressions matching file paths to exclude. All files in the bucket that match ... |
| `includeRegex` | `array<string>` | A list of regular expressions matching file paths to include. All files in the bucket that match ... |

### `GooglePrivacyDlpV2CloudStorageResourceReference`

Identifies a single Cloud Storage bucket.

| Property | Type | Description |
|----------|------|-------------|
| `bucketName` | `string` | Required. The bucket to scan. |
| `projectId` | `string` | Required. If within a project-level config, then this must match the config's project id. |

### `GooglePrivacyDlpV2Color`

Represents a color in the RGB color space.

| Property | Type | Description |
|----------|------|-------------|
| `blue` | `number` | The amount of blue in the color as a value in the interval [0, 1]. |
| `green` | `number` | The amount of green in the color as a value in the interval [0, 1]. |
| `red` | `number` | The amount of red in the color as a value in the interval [0, 1]. |

### `GooglePrivacyDlpV2ColumnDataProfile`

The profile for a scanned column within a table.

| Property | Type | Description |
|----------|------|-------------|
| `column` | `string` | The name of the column. |
| `columnInfoType` | `GooglePrivacyDlpV2InfoTypeSummary` | If it's been determined this column can be identified as a single type, this will be set. Otherwi... |
| `columnType` | `string` | The data type of a given column. |
| `dataRiskLevel` | `GooglePrivacyDlpV2DataRiskLevel` | The data risk level for this column. |
| `datasetId` | `string` | The BigQuery dataset ID, if the resource profiled is a BigQuery table. |
| `datasetLocation` | `string` | If supported, the location where the dataset's data is stored. See https://cloud.google.com/bigqu... |
| `datasetProjectId` | `string` | The Google Cloud project ID that owns the profiled resource. |
| `estimatedNullPercentage` | `string` | Approximate percentage of entries being null in the column. |
| `estimatedUniquenessScore` | `string` | Approximate uniqueness of the column. |
| `freeTextScore` | `number` | The likelihood that this column contains free-form text. A value close to 1 may indicate the colu... |
| `name` | `string` | The name of the profile. |
| `otherMatches` | `array<GooglePrivacyDlpV2OtherInfoTypeSummary>` | Other types found within this column. List will be unordered. |
| `policyState` | `string` | Indicates if a policy tag has been applied to the column. |
| `profileLastGenerated` | `string` | The last time the profile was generated. |
| `profileStatus` | `GooglePrivacyDlpV2ProfileStatus` | Success or error status from the most recent profile generation attempt. May be empty if the prof... |
| `sensitivityScore` | `GooglePrivacyDlpV2SensitivityScore` | The sensitivity of this column. |
| `state` | `string` | State of a profile. |
| `tableDataProfile` | `string` | The resource name of the table data profile. |
| `tableFullResource` | `string` | The resource name of the resource this column is within. |
| `tableId` | `string` | The table ID. |

### `GooglePrivacyDlpV2Condition`

The field type of `value` and `field` do not need to match to be considered equal, but not all comparisons are possible. EQUAL_TO and NOT_EQUAL_TO attempt to compare even with incompatible types, but all other comparisons are invalid with incompatible types. A `value` of type: - `string` can be compared against all other types - `boolean` can only be compared against other booleans - `integer` can be compared against doubles or a string if the string value can be parsed as an integer. - `double` can be compared against integers or a string if the string can be parsed as a double. - `Timestamp` can be compared against strings in RFC 3339 date string format. - `TimeOfDay` can be compared against timestamps and strings in the format of 'HH:mm:ss'. If we fail to compare do to type mismatch, a warning will be given and the condition will evaluate to false.

| Property | Type | Description |
|----------|------|-------------|
| `field` | `GooglePrivacyDlpV2FieldId` | Required. Field within the record this condition is evaluated against. |
| `operator` | `string` | Required. Operator used to compare the field or infoType to the value. |
| `value` | `GooglePrivacyDlpV2Value` | Value to compare against. [Mandatory, except for `EXISTS` tests.] |

### `GooglePrivacyDlpV2Conditions`

A collection of conditions.

| Property | Type | Description |
|----------|------|-------------|
| `conditions` | `array<GooglePrivacyDlpV2Condition>` | A collection of conditions. |

### `GooglePrivacyDlpV2Connection`

A data connection to allow the DLP API to profile data in locations that require additional configuration.

| Property | Type | Description |
|----------|------|-------------|
| `cloudSql` | `GooglePrivacyDlpV2CloudSqlProperties` | Connect to a Cloud SQL instance. |
| `errors` | `array<GooglePrivacyDlpV2Error>` | Output only. Set if status == ERROR, to provide additional details. Will store the last 10 errors... |
| `name` | `string` | Output only. Name of the connection: `projects/{project}/locations/{location}/connections/{name}`. |
| `state` | `string` | Required. The connection's state in its lifecycle. |

### `GooglePrivacyDlpV2Container`

Represents a container that may contain DLP findings. Examples of a container include a file, table, or database record.

| Property | Type | Description |
|----------|------|-------------|
| `fullPath` | `string` | A string representation of the full container name. Examples: - BigQuery: 'Project:DataSetId.Tabl... |
| `projectId` | `string` | Project where the finding was found. Can be different from the project that owns the finding. |
| `relativePath` | `string` | The rest of the path after the root. Examples: - For BigQuery table `project_id:dataset_id.table_... |
| `rootPath` | `string` | The root of the container. Examples: - For BigQuery table `project_id:dataset_id.table_id`, the r... |
| `type` | `string` | Container type, for example BigQuery or Cloud Storage. |
| `updateTime` | `string` | Findings container modification timestamp, if applicable. For Cloud Storage, this field contains ... |
| `version` | `string` | Findings container version, if available ("generation" for Cloud Storage). |

### `GooglePrivacyDlpV2ContentItem`

Type of content to inspect.

| Property | Type | Description |
|----------|------|-------------|
| `byteItem` | `GooglePrivacyDlpV2ByteContentItem` | Content data to inspect or redact. Replaces `type` and `data`. |
| `table` | `GooglePrivacyDlpV2Table` | Structured content for inspection. See https://cloud.google.com/sensitive-data-protection/docs/in... |
| `value` | `string` | String data to inspect or redact. |

### `GooglePrivacyDlpV2ContentLocation`

Precise location of the finding within a document, record, image, or metadata container.

| Property | Type | Description |
|----------|------|-------------|
| `containerName` | `string` | Name of the container where the finding is located. The top level name is the source file name or... |
| `containerTimestamp` | `string` | Finding container modification timestamp, if applicable. For Cloud Storage, this field contains t... |
| `containerVersion` | `string` | Finding container version, if available ("generation" for Cloud Storage). |
| `documentLocation` | `GooglePrivacyDlpV2DocumentLocation` | Location data for document files. |
| `imageLocation` | `GooglePrivacyDlpV2ImageLocation` | Location within an image's pixels. |
| `metadataLocation` | `GooglePrivacyDlpV2MetadataLocation` | Location within the metadata for inspected content. |
| `recordLocation` | `GooglePrivacyDlpV2RecordLocation` | Location within a row or record of a database table. |

### `GooglePrivacyDlpV2CreateConnectionRequest`

Request message for CreateConnection.

| Property | Type | Description |
|----------|------|-------------|
| `connection` | `GooglePrivacyDlpV2Connection` | Required. The connection resource. |

### `GooglePrivacyDlpV2CreateDeidentifyTemplateRequest`

Request message for CreateDeidentifyTemplate.

| Property | Type | Description |
|----------|------|-------------|
| `deidentifyTemplate` | `GooglePrivacyDlpV2DeidentifyTemplate` | Required. The DeidentifyTemplate to create. |
| `locationId` | `string` | Deprecated. This field has no effect. |
| `templateId` | `string` | The template id can contain uppercase and lowercase letters, numbers, and hyphens; that is, it mu... |

### `GooglePrivacyDlpV2CreateDiscoveryConfigRequest`

Request message for CreateDiscoveryConfig.

| Property | Type | Description |
|----------|------|-------------|
| `configId` | `string` | The config ID can contain uppercase and lowercase letters, numbers, and hyphens; that is, it must... |
| `discoveryConfig` | `GooglePrivacyDlpV2DiscoveryConfig` | Required. The DiscoveryConfig to create. |

### `GooglePrivacyDlpV2CreateDlpJobRequest`

Request message for CreateDlpJobRequest. Used to initiate long running jobs such as calculating risk metrics or inspecting Google Cloud Storage.

| Property | Type | Description |
|----------|------|-------------|
| `inspectJob` | `GooglePrivacyDlpV2InspectJobConfig` | An inspection job scans a storage repository for InfoTypes. |
| `jobId` | `string` | The job id can contain uppercase and lowercase letters, numbers, and hyphens; that is, it must ma... |
| `locationId` | `string` | Deprecated. This field has no effect. |
| `riskJob` | `GooglePrivacyDlpV2RiskAnalysisJobConfig` | A risk analysis job calculates re-identification risk metrics for a BigQuery table. |

### `GooglePrivacyDlpV2CreateInspectTemplateRequest`

Request message for CreateInspectTemplate.

| Property | Type | Description |
|----------|------|-------------|
| `inspectTemplate` | `GooglePrivacyDlpV2InspectTemplate` | Required. The InspectTemplate to create. |
| `locationId` | `string` | Deprecated. This field has no effect. |
| `templateId` | `string` | The template id can contain uppercase and lowercase letters, numbers, and hyphens; that is, it mu... |

### `GooglePrivacyDlpV2CreateJobTriggerRequest`

Request message for CreateJobTrigger.

| Property | Type | Description |
|----------|------|-------------|
| `jobTrigger` | `GooglePrivacyDlpV2JobTrigger` | Required. The JobTrigger to create. |
| `locationId` | `string` | Deprecated. This field has no effect. |
| `triggerId` | `string` | The trigger id can contain uppercase and lowercase letters, numbers, and hyphens; that is, it mus... |

### `GooglePrivacyDlpV2CreateStoredInfoTypeRequest`

Request message for CreateStoredInfoType.

| Property | Type | Description |
|----------|------|-------------|
| `config` | `GooglePrivacyDlpV2StoredInfoTypeConfig` | Required. Configuration of the storedInfoType to create. |
| `locationId` | `string` | Deprecated. This field has no effect. |
| `storedInfoTypeId` | `string` | The storedInfoType ID can contain uppercase and lowercase letters, numbers, and hyphens; that is,... |

### `GooglePrivacyDlpV2CryptoDeterministicConfig`

Pseudonymization method that generates deterministic encryption for the given input. Outputs a base64 encoded representation of the encrypted output. Uses AES-SIV based on the RFC https://tools.ietf.org/html/rfc5297.

| Property | Type | Description |
|----------|------|-------------|
| `context` | `GooglePrivacyDlpV2FieldId` | A context may be used for higher security and maintaining referential integrity such that the sam... |
| `cryptoKey` | `GooglePrivacyDlpV2CryptoKey` | The key used by the encryption function. For deterministic encryption using AES-SIV, the provided... |
| `surrogateInfoType` | `GooglePrivacyDlpV2InfoType` | The custom info type to annotate the surrogate with. This annotation will be applied to the surro... |

### `GooglePrivacyDlpV2CryptoHashConfig`

Pseudonymization method that generates surrogates via cryptographic hashing. Uses SHA-256. The key size must be either 32 or 64 bytes. Outputs a base64 encoded representation of the hashed output (for example, L7k0BHmF1ha5U3NfGykjro4xWi1MPVQPjhMAZbSV9mM=). Currently, only string and integer values can be hashed. See https://cloud.google.com/sensitive-data-protection/docs/pseudonymization to learn more.

| Property | Type | Description |
|----------|------|-------------|
| `cryptoKey` | `GooglePrivacyDlpV2CryptoKey` | The key used by the hash function. |

### `GooglePrivacyDlpV2CryptoKey`

This is a data encryption key (DEK) (as opposed to a key encryption key (KEK) stored by Cloud Key Management Service (Cloud KMS). When using Cloud KMS to wrap or unwrap a DEK, be sure to set an appropriate IAM policy on the KEK to ensure an attacker cannot unwrap the DEK.

| Property | Type | Description |
|----------|------|-------------|
| `kmsWrapped` | `GooglePrivacyDlpV2KmsWrappedCryptoKey` | Key wrapped using Cloud KMS |
| `transient` | `GooglePrivacyDlpV2TransientCryptoKey` | Transient crypto key |
| `unwrapped` | `GooglePrivacyDlpV2UnwrappedCryptoKey` | Unwrapped crypto key |

### `GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig`

Replaces an identifier with a surrogate using Format Preserving Encryption (FPE) with the FFX mode of operation; however when used in the `ReidentifyContent` API method, it serves the opposite function by reversing the surrogate back into the original identifier. The identifier must be encoded as ASCII. For a given crypto key and context, the same identifier will be replaced with the same surrogate. Identifiers must be at least two characters long. In the case that the identifier is the empty string, it will be skipped. See https://cloud.google.com/sensitive-data-protection/docs/pseudonymization to learn more. Note: We recommend using CryptoDeterministicConfig for all use cases which do not require preserving the input alphabet space and size, plus warrant referential integrity. FPE incurs significant latency costs.

| Property | Type | Description |
|----------|------|-------------|
| `commonAlphabet` | `string` | Common alphabets. |
| `context` | `GooglePrivacyDlpV2FieldId` | The 'tweak', a context may be used for higher security since the same identifier in two different... |
| `cryptoKey` | `GooglePrivacyDlpV2CryptoKey` | Required. The key used by the encryption algorithm. |
| `customAlphabet` | `string` | This is supported by mapping these to the alphanumeric characters that the FFX mode natively supp... |
| `radix` | `integer` | The native way to select the alphabet. Must be in the range [2, 95]. |
| `surrogateInfoType` | `GooglePrivacyDlpV2InfoType` | The custom infoType to annotate the surrogate with. This annotation will be applied to the surrog... |

### `GooglePrivacyDlpV2CustomInfoType`

Custom information type provided by the user. Used to find domain-specific sensitive information configurable to the data in question.

| Property | Type | Description |
|----------|------|-------------|
| `detectionRules` | `array<GooglePrivacyDlpV2DetectionRule>` | Set of detection rules to apply to all findings of this CustomInfoType. Rules are applied in orde... |
| `dictionary` | `GooglePrivacyDlpV2Dictionary` | A list of phrases to detect as a CustomInfoType. |
| `exclusionType` | `string` | If set to EXCLUSION_TYPE_EXCLUDE this infoType will not cause a finding to be returned. It still ... |
| `infoType` | `GooglePrivacyDlpV2InfoType` | CustomInfoType can either be a new infoType, or an extension of built-in infoType, when the name ... |
| `likelihood` | `string` | Likelihood to return for this CustomInfoType. This base value can be altered by a detection rule ... |
| `regex` | `GooglePrivacyDlpV2Regex` | Regular expression based CustomInfoType. |
| `sensitivityScore` | `GooglePrivacyDlpV2SensitivityScore` | Sensitivity for this CustomInfoType. If this CustomInfoType extends an existing InfoType, the sen... |
| `storedType` | `GooglePrivacyDlpV2StoredType` | Loads an existing `StoredInfoType` resource. |
| `surrogateType` | `GooglePrivacyDlpV2SurrogateType` | Message for detecting output from deidentification transformations that support reversing. |

### `GooglePrivacyDlpV2DataProfileAction`

A task to execute when a data profile has been generated.

| Property | Type | Description |
|----------|------|-------------|
| `exportData` | `GooglePrivacyDlpV2Export` | Export data profiles into a provided location. |
| `pubSubNotification` | `GooglePrivacyDlpV2PubSubNotification` | Publish a message into the Pub/Sub topic. |
| `publishToChronicle` | `GooglePrivacyDlpV2PublishToChronicle` | Publishes generated data profiles to Google Security Operations. For more information, see [Use S... |
| `publishToDataplexCatalog` | `GooglePrivacyDlpV2PublishToDataplexCatalog` | Publishes a portion of each profile to Dataplex Universal Catalog with the aspect type Sensitive ... |
| `publishToScc` | `GooglePrivacyDlpV2PublishToSecurityCommandCenter` | Publishes findings to Security Command Center for each data profile. |
| `tagResources` | `GooglePrivacyDlpV2TagResources` | Tags the profiled resources with the specified tag values. |

### `GooglePrivacyDlpV2DataProfileBigQueryRowSchema`

The schema of data to be saved to the BigQuery table when the `DataProfileAction` is enabled.

| Property | Type | Description |
|----------|------|-------------|
| `columnProfile` | `GooglePrivacyDlpV2ColumnDataProfile` | Column data profile column |
| `fileStoreProfile` | `GooglePrivacyDlpV2FileStoreDataProfile` | File store data profile column. |
| `tableProfile` | `GooglePrivacyDlpV2TableDataProfile` | Table data profile column |

### `GooglePrivacyDlpV2DataProfileConfigSnapshot`

Snapshot of the configurations used to generate the profile.

| Property | Type | Description |
|----------|------|-------------|
| `dataProfileJob` | `GooglePrivacyDlpV2DataProfileJobConfig` | A copy of the configuration used to generate this profile. This is deprecated, and the DiscoveryC... |
| `discoveryConfig` | `GooglePrivacyDlpV2DiscoveryConfig` | A copy of the configuration used to generate this profile. |
| `inspectConfig` | `GooglePrivacyDlpV2InspectConfig` | A copy of the inspection config used to generate this profile. This is a copy of the inspect_temp... |
| `inspectTemplateModifiedTime` | `string` | Timestamp when the template was modified |
| `inspectTemplateName` | `string` | Name of the inspection template used to generate this profile |

### `GooglePrivacyDlpV2DataProfileFinding`

Details about a piece of potentially sensitive information that was detected when the data resource was profiled.

| Property | Type | Description |
|----------|------|-------------|
| `dataProfileResourceName` | `string` | Resource name of the data profile associated with the finding. |
| `dataSourceType` | `GooglePrivacyDlpV2DataSourceType` | The type of the resource that was profiled. |
| `findingId` | `string` | A unique identifier for the finding. |
| `fullResourceName` | `string` | The [full resource name](https://cloud.google.com/apis/design/resource_names#full_resource_name) ... |
| `infotype` | `GooglePrivacyDlpV2InfoType` | The [type of content](https://cloud.google.com/sensitive-data-protection/docs/infotypes-reference... |
| `location` | `GooglePrivacyDlpV2DataProfileFindingLocation` | Where the content was found. |
| `quote` | `string` | The content that was found. Even if the content is not textual, it may be converted to a textual ... |
| `quoteInfo` | `GooglePrivacyDlpV2QuoteInfo` | Contains data parsed from quotes. Currently supported infoTypes: DATE, DATE_OF_BIRTH, and TIME. |
| `resourceVisibility` | `string` | How broadly a resource has been shared. |
| `timestamp` | `string` | Timestamp when the finding was detected. |

### `GooglePrivacyDlpV2DataProfileFindingLocation`

Location of a data profile finding within a resource.

| Property | Type | Description |
|----------|------|-------------|
| `containerName` | `string` | Name of the container where the finding is located. The top-level name is the source file name or... |
| `dataProfileFindingRecordLocation` | `GooglePrivacyDlpV2DataProfileFindingRecordLocation` | Location of a finding within a resource that produces a table data profile. |

### `GooglePrivacyDlpV2DataProfileFindingRecordLocation`

Location of a finding within a resource that produces a table data profile.

| Property | Type | Description |
|----------|------|-------------|
| `field` | `GooglePrivacyDlpV2FieldId` | Field ID of the column containing the finding. |

### `GooglePrivacyDlpV2DataProfileJobConfig`

Configuration for setting up a job to scan resources for profile generation. Only one data profile configuration may exist per organization, folder, or project. The generated data profiles are retained according to the [data retention policy] (https://cloud.google.com/sensitive-data-protection/docs/data-profiles#retention).

| Property | Type | Description |
|----------|------|-------------|
| `dataProfileActions` | `array<GooglePrivacyDlpV2DataProfileAction>` | Actions to execute at the completion of the job. |
| `inspectTemplates` | `array<string>` | Detection logic for profile generation. Not all template features are used by profiles. FindingLi... |
| `location` | `GooglePrivacyDlpV2DataProfileLocation` | The data to scan. |
| `otherCloudStartingLocation` | `GooglePrivacyDlpV2OtherCloudDiscoveryStartingLocation` | Must be set only when scanning other clouds. |
| `projectId` | `string` | The project that will run the scan. The DLP service account that exists within this project must ... |

### `GooglePrivacyDlpV2DataProfileLocation`

The data that will be profiled.

| Property | Type | Description |
|----------|------|-------------|
| `folderId` | `string` | The ID of the folder within an organization to scan. |
| `organizationId` | `string` | The ID of an organization to scan. |

### `GooglePrivacyDlpV2DataProfilePubSubCondition`

A condition for determining whether a Pub/Sub should be triggered.

| Property | Type | Description |
|----------|------|-------------|
| `expressions` | `GooglePrivacyDlpV2PubSubExpressions` | An expression. |

### `GooglePrivacyDlpV2DataProfilePubSubMessage`

Pub/Sub topic message for a DataProfileAction.PubSubNotification event. To receive a message of protocol buffer schema type, convert the message data to an object of this proto class.

| Property | Type | Description |
|----------|------|-------------|
| `event` | `string` | The event that caused the Pub/Sub message to be sent. |
| `fileStoreProfile` | `GooglePrivacyDlpV2FileStoreDataProfile` | If `DetailLevel` is `FILE_STORE_PROFILE` this will be fully populated. Otherwise, if `DetailLevel... |
| `profile` | `GooglePrivacyDlpV2TableDataProfile` | If `DetailLevel` is `TABLE_PROFILE` this will be fully populated. Otherwise, if `DetailLevel` is ... |

### `GooglePrivacyDlpV2DataRiskLevel`

Score is a summary of all elements in the data profile. A higher number means more risk.

| Property | Type | Description |
|----------|------|-------------|
| `score` | `string` | The score applied to the resource. |

### `GooglePrivacyDlpV2DataSourceType`

Message used to identify the type of resource being profiled.

| Property | Type | Description |
|----------|------|-------------|
| `dataSource` | `string` | A string that identifies the type of resource being profiled. Current values: * google/bigquery/t... |

### `GooglePrivacyDlpV2DatabaseResourceCollection`

Match database resources using regex filters. Examples of database resources are tables, views, and stored procedures.

| Property | Type | Description |
|----------|------|-------------|
| `includeRegexes` | `GooglePrivacyDlpV2DatabaseResourceRegexes` | A collection of regular expressions to match a database resource against. |

### `GooglePrivacyDlpV2DatabaseResourceReference`

Identifies a single database resource, like a table within a database.

| Property | Type | Description |
|----------|------|-------------|
| `database` | `string` | Required. Name of a database within the instance. |
| `databaseResource` | `string` | Required. Name of a database resource, for example, a table within the database. |
| `instance` | `string` | Required. The instance where this resource is located. For example: Cloud SQL instance ID. |
| `projectId` | `string` | Required. If within a project-level config, then this must match the config's project ID. |

### `GooglePrivacyDlpV2DatabaseResourceRegex`

A pattern to match against one or more database resources. At least one pattern must be specified. Regular expressions use RE2 [syntax](https://github.com/google/re2/wiki/Syntax); a guide can be found under the google/re2 repository on GitHub.

| Property | Type | Description |
|----------|------|-------------|
| `databaseRegex` | `string` | Regex to test the database name against. If empty, all databases match. |
| `databaseResourceNameRegex` | `string` | Regex to test the database resource's name against. An example of a database resource name is a t... |
| `instanceRegex` | `string` | Regex to test the instance name against. If empty, all instances match. |
| `projectIdRegex` | `string` | For organizations, if unset, will match all projects. Has no effect for configurations created wi... |

### `GooglePrivacyDlpV2DatabaseResourceRegexes`

A collection of regular expressions to determine what database resources to match against.

| Property | Type | Description |
|----------|------|-------------|
| `patterns` | `array<GooglePrivacyDlpV2DatabaseResourceRegex>` | A group of regular expression patterns to match against one or more database resources. Maximum o... |

### `GooglePrivacyDlpV2DatastoreKey`

Record key for a finding in Cloud Datastore.

| Property | Type | Description |
|----------|------|-------------|
| `entityKey` | `GooglePrivacyDlpV2Key` | Datastore entity key. |

### `GooglePrivacyDlpV2DatastoreOptions`

Options defining a data set within Google Cloud Datastore.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `GooglePrivacyDlpV2KindExpression` | The kind to process. |
| `partitionId` | `GooglePrivacyDlpV2PartitionId` | A partition ID identifies a grouping of entities. The grouping is always by project and namespace... |

### `GooglePrivacyDlpV2DateShiftConfig`

Shifts dates by random number of days, with option to be consistent for the same context. See https://cloud.google.com/sensitive-data-protection/docs/concepts-date-shifting to learn more.

| Property | Type | Description |
|----------|------|-------------|
| `context` | `GooglePrivacyDlpV2FieldId` | Points to the field that contains the context, for example, an entity id. If set, must also set c... |
| `cryptoKey` | `GooglePrivacyDlpV2CryptoKey` | Causes the shift to be computed based on this key and the context. This results in the same shift... |
| `lowerBoundDays` | `integer` | Required. For example, -5 means shift date to at most 5 days back in the past. |
| `upperBoundDays` | `integer` | Required. Range of shift in days. Actual shift will be selected at random within this range (incl... |

### `GooglePrivacyDlpV2DateTime`

Message for a date time object. e.g. 2018-01-01, 5th August.

| Property | Type | Description |
|----------|------|-------------|
| `date` | `GoogleTypeDate` | One or more of the following must be set. Must be a valid date or time value. |
| `dayOfWeek` | `string` | Day of week |
| `time` | `GoogleTypeTimeOfDay` | Time of day |
| `timeZone` | `GooglePrivacyDlpV2TimeZone` | Time zone |

### `GooglePrivacyDlpV2Deidentify`

Create a de-identified copy of a storage bucket. Only compatible with Cloud Storage buckets. A TransformationDetail will be created for each transformation. Compatible with: Inspection of Cloud Storage

| Property | Type | Description |
|----------|------|-------------|
| `cloudStorageOutput` | `string` | Required. User settable Cloud Storage bucket and folders to store de-identified files. This field... |
| `fileTypesToTransform` | `array<string>` | List of user-specified file type groups to transform. If specified, only the files with these fil... |
| `transformationConfig` | `GooglePrivacyDlpV2TransformationConfig` | User specified deidentify templates and configs for structured, unstructured, and image files. |
| `transformationDetailsStorageConfig` | `GooglePrivacyDlpV2TransformationDetailsStorageConfig` | Config for storing transformation details. This field specifies the configuration for storing det... |

### `GooglePrivacyDlpV2DeidentifyConfig`

The configuration that controls how the data will change.

| Property | Type | Description |
|----------|------|-------------|
| `imageTransformations` | `GooglePrivacyDlpV2ImageTransformations` | Treat the dataset as an image and redact. |
| `infoTypeTransformations` | `GooglePrivacyDlpV2InfoTypeTransformations` | Treat the dataset as free-form text and apply the same free text transformation everywhere. |
| `recordTransformations` | `GooglePrivacyDlpV2RecordTransformations` | Treat the dataset as structured. Transformations can be applied to specific locations within stru... |
| `transformationErrorHandling` | `GooglePrivacyDlpV2TransformationErrorHandling` | Mode for handling transformation errors. If left unspecified, the default mode is `Transformation... |

### `GooglePrivacyDlpV2DeidentifyContentRequest`

Request to de-identify a ContentItem.

| Property | Type | Description |
|----------|------|-------------|
| `deidentifyConfig` | `GooglePrivacyDlpV2DeidentifyConfig` | Configuration for the de-identification of the content item. Items specified here will override t... |
| `deidentifyTemplateName` | `string` | Template to use. Any configuration directly specified in deidentify_config will override those se... |
| `inspectConfig` | `GooglePrivacyDlpV2InspectConfig` | Configuration for the inspector. Items specified here will override the template referenced by th... |
| `inspectTemplateName` | `string` | Template to use. Any configuration directly specified in inspect_config will override those set i... |
| `item` | `GooglePrivacyDlpV2ContentItem` | The item to de-identify. Will be treated as text. This value must be of type Table if your deiden... |
| `locationId` | `string` | Deprecated. This field has no effect. |

### `GooglePrivacyDlpV2DeidentifyContentResponse`

Results of de-identifying a ContentItem.

| Property | Type | Description |
|----------|------|-------------|
| `item` | `GooglePrivacyDlpV2ContentItem` | The de-identified item. |
| `overview` | `GooglePrivacyDlpV2TransformationOverview` | An overview of the changes that were made on the `item`. |

### `GooglePrivacyDlpV2DeidentifyDataSourceDetails`

The results of a Deidentify action from an inspect job.

| Property | Type | Description |
|----------|------|-------------|
| `deidentifyStats` | `GooglePrivacyDlpV2DeidentifyDataSourceStats` | Stats about the de-identification operation. |
| `requestedOptions` | `GooglePrivacyDlpV2RequestedDeidentifyOptions` | De-identification config used for the request. |

### `GooglePrivacyDlpV2DeidentifyDataSourceStats`

Summary of what was modified during a transformation.

| Property | Type | Description |
|----------|------|-------------|
| `transformationCount` | `string` | Number of successfully applied transformations. |
| `transformationErrorCount` | `string` | Number of errors encountered while trying to apply transformations. |
| `transformedBytes` | `string` | Total size in bytes that were transformed in some way. |

### `GooglePrivacyDlpV2DeidentifyTemplate`

DeidentifyTemplates contains instructions on how to de-identify content. See https://cloud.google.com/sensitive-data-protection/docs/concepts-templates to learn more.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The creation timestamp of an inspectTemplate. |
| `deidentifyConfig` | `GooglePrivacyDlpV2DeidentifyConfig` | The core content of the template. |
| `description` | `string` | Short description (max 256 chars). |
| `displayName` | `string` | Display name (max 256 chars). |
| `name` | `string` | Output only. The template name. The template will have one of the following formats: `projects/PR... |
| `updateTime` | `string` | Output only. The last update timestamp of an inspectTemplate. |

### `GooglePrivacyDlpV2DeltaPresenceEstimationConfig`

δ-presence metric, used to estimate how likely it is for an attacker to figure out that one given individual appears in a de-identified dataset. Similarly to the k-map metric, we cannot compute δ-presence exactly without knowing the attack dataset, so we use a statistical model instead.

| Property | Type | Description |
|----------|------|-------------|
| `auxiliaryTables` | `array<GooglePrivacyDlpV2StatisticalTable>` | Several auxiliary tables can be used in the analysis. Each custom_tag used to tag a quasi-identif... |
| `quasiIds` | `array<GooglePrivacyDlpV2QuasiId>` | Required. Fields considered to be quasi-identifiers. No two fields can have the same tag. |
| `regionCode` | `string` | ISO 3166-1 alpha-2 region code to use in the statistical modeling. Set if no column is tagged wit... |

### `GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket`

A DeltaPresenceEstimationHistogramBucket message with the following values: min_probability: 0.1 max_probability: 0.2 frequency: 42 means that there are 42 records for which δ is in [0.1, 0.2). An important particular case is when min_probability = max_probability = 1: then, every individual who shares this quasi-identifier combination is in the dataset.

| Property | Type | Description |
|----------|------|-------------|
| `bucketSize` | `string` | Number of records within these probability bounds. |
| `bucketValueCount` | `string` | Total number of distinct quasi-identifier tuple values in this bucket. |
| `bucketValues` | `array<GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues>` | Sample of quasi-identifier tuple values in this bucket. The total number of classes returned per ... |
| `maxProbability` | `number` | Always greater than or equal to min_probability. |
| `minProbability` | `number` | Between 0 and 1. |

### `GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues`

A tuple of values for the quasi-identifier columns.

| Property | Type | Description |
|----------|------|-------------|
| `estimatedProbability` | `number` | The estimated probability that a given individual sharing these quasi-identifier values is in the... |
| `quasiIdsValues` | `array<GooglePrivacyDlpV2Value>` | The quasi-identifier values. |

### `GooglePrivacyDlpV2DeltaPresenceEstimationResult`

Result of the δ-presence computation. Note that these results are an estimation, not exact values.

| Property | Type | Description |
|----------|------|-------------|
| `deltaPresenceEstimationHistogram` | `array<GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket>` | The intervals [min_probability, max_probability) do not overlap. If a value doesn't correspond to... |

### `GooglePrivacyDlpV2DetectionRule`

Deprecated; use `InspectionRuleSet` instead. Rule for modifying a `CustomInfoType` to alter behavior under certain circumstances, depending on the specific details of the rule. Not supported for the `surrogate_type` custom infoType.

| Property | Type | Description |
|----------|------|-------------|
| `hotwordRule` | `GooglePrivacyDlpV2HotwordRule` | Hotword-based detection rule. |

### `GooglePrivacyDlpV2Dictionary`

Custom information type based on a dictionary of words or phrases. This can be used to match sensitive information specific to the data, such as a list of employee IDs or job titles. Dictionary words are case-insensitive and all characters other than letters and digits in the unicode [Basic Multilingual Plane](https://en.wikipedia.org/wiki/Plane_%28Unicode%29#Basic_Multilingual_Plane) will be replaced with whitespace when scanning for matches, so the dictionary phrase "Sam Johnson" will match all three phrases "sam johnson", "Sam, Johnson", and "Sam (Johnson)". Additionally, the characters surrounding any match must be of a different type than the adjacent characters within the word, so letters must be next to non-letters and digits next to non-digits. For example, the dictionary word "jen" will match the first three letters of the text "jen123" but will return no matches for "jennifer". Dictionary words containing a large number of characters that are not letters or digits may result in unexpected findings because such characters are treated as whitespace. The [limits](https://cloud.google.com/sensitive-data-protection/limits) page contains details about the size limits of dictionaries. For dictionaries that do not fit within these constraints, consider using `LargeCustomDictionaryConfig` in the `StoredInfoType` API.

| Property | Type | Description |
|----------|------|-------------|
| `cloudStoragePath` | `GooglePrivacyDlpV2CloudStoragePath` | Newline-delimited file of words in Cloud Storage. Only a single file is accepted. |
| `wordList` | `GooglePrivacyDlpV2WordList` | List of words or phrases to search for. |

### `GooglePrivacyDlpV2Disabled`

Do not profile the tables.

### `GooglePrivacyDlpV2DiscoveryBigQueryConditions`

Requirements that must be true before a table is scanned in discovery for the first time. There is an AND relationship between the top-level attributes. Additionally, minimum conditions with an OR relationship that must be met before Cloud DLP scans a table can be set (like a minimum row count or a minimum table age).

| Property | Type | Description |
|----------|------|-------------|
| `createdAfter` | `string` | BigQuery table must have been created after this date. Used to avoid backfilling. |
| `orConditions` | `GooglePrivacyDlpV2OrConditions` | At least one of the conditions must be true for a table to be scanned. |
| `typeCollection` | `string` | Restrict discovery to categories of table types. |
| `types` | `GooglePrivacyDlpV2BigQueryTableTypes` | Restrict discovery to specific table types. |

### `GooglePrivacyDlpV2DiscoveryBigQueryFilter`

Determines what tables will have profiles generated within an organization or project. Includes the ability to filter by regular expression patterns on project ID, dataset ID, and table ID.

| Property | Type | Description |
|----------|------|-------------|
| `otherTables` | `GooglePrivacyDlpV2AllOtherBigQueryTables` | Catch-all. This should always be the last filter in the list because anything above it will apply... |
| `tableReference` | `GooglePrivacyDlpV2TableReference` | The table to scan. Discovery configurations including this can only include one DiscoveryTarget (... |
| `tables` | `GooglePrivacyDlpV2BigQueryTableCollection` | A specific set of tables for this filter to apply to. A table collection must be specified in onl... |

### `GooglePrivacyDlpV2DiscoveryCloudSqlConditions`

Requirements that must be true before a table is profiled for the first time.

| Property | Type | Description |
|----------|------|-------------|
| `databaseEngines` | `array<string>` | Optional. Database engines that should be profiled. Optional. Defaults to ALL_SUPPORTED_DATABASE_... |
| `types` | `array<string>` | Data profiles will only be generated for the database resource types specified in this field. If ... |

### `GooglePrivacyDlpV2DiscoveryCloudSqlFilter`

Determines what tables will have profiles generated within an organization or project. Includes the ability to filter by regular expression patterns on project ID, location, instance, database, and database resource name.

| Property | Type | Description |
|----------|------|-------------|
| `collection` | `GooglePrivacyDlpV2DatabaseResourceCollection` | A specific set of database resources for this filter to apply to. |
| `databaseResourceReference` | `GooglePrivacyDlpV2DatabaseResourceReference` | The database resource to scan. Targets including this can only include one target (the target wit... |
| `others` | `GooglePrivacyDlpV2AllOtherDatabaseResources` | Catch-all. This should always be the last target in the list because anything above it will apply... |

### `GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence`

How often existing tables should have their profiles refreshed. New tables are scanned as quickly as possible depending on system capacity.

| Property | Type | Description |
|----------|------|-------------|
| `inspectTemplateModifiedCadence` | `GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence` | Governs when to update data profiles when the inspection rules defined by the `InspectTemplate` c... |
| `refreshFrequency` | `string` | Data changes (non-schema changes) in Cloud SQL tables can't trigger reprofiling. If you set this ... |
| `schemaModifiedCadence` | `GooglePrivacyDlpV2SchemaModifiedCadence` | When to reprofile if the schema has changed. |

### `GooglePrivacyDlpV2DiscoveryCloudStorageConditions`

Requirements that must be true before a Cloud Storage bucket or object is scanned in discovery for the first time. There is an AND relationship between the top-level attributes.

| Property | Type | Description |
|----------|------|-------------|
| `includedBucketAttributes` | `array<string>` | Required. Only objects with the specified attributes will be scanned. Defaults to [ALL_SUPPORTED_... |
| `includedObjectAttributes` | `array<string>` | Required. Only objects with the specified attributes will be scanned. If an object has one of the... |

### `GooglePrivacyDlpV2DiscoveryCloudStorageFilter`

Determines which buckets will have profiles generated within an organization or project. Includes the ability to filter by regular expression patterns on project ID and bucket name.

| Property | Type | Description |
|----------|------|-------------|
| `cloudStorageResourceReference` | `GooglePrivacyDlpV2CloudStorageResourceReference` | Optional. The bucket to scan. Targets including this can only include one target (the target with... |
| `collection` | `GooglePrivacyDlpV2FileStoreCollection` | Optional. A specific set of buckets for this filter to apply to. |
| `others` | `GooglePrivacyDlpV2AllOtherResources` | Optional. Catch-all. This should always be the last target in the list because anything above it ... |

### `GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence`

How often existing buckets should have their profiles refreshed. New buckets are scanned as quickly as possible depending on system capacity.

| Property | Type | Description |
|----------|------|-------------|
| `inspectTemplateModifiedCadence` | `GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence` | Optional. Governs when to update data profiles when the inspection rules defined by the `InspectT... |
| `refreshFrequency` | `string` | Optional. Data changes in Cloud Storage can't trigger reprofiling. If you set this field, profile... |

### `GooglePrivacyDlpV2DiscoveryConfig`

Configuration for discovery to scan resources for profile generation. Only one discovery configuration may exist per organization, folder, or project. The generated data profiles are retained according to the [data retention policy] (https://cloud.google.com/sensitive-data-protection/docs/data-profiles#retention).

| Property | Type | Description |
|----------|------|-------------|
| `actions` | `array<GooglePrivacyDlpV2DataProfileAction>` | Actions to execute at the completion of scanning. |
| `createTime` | `string` | Output only. The creation timestamp of a DiscoveryConfig. |
| `displayName` | `string` | Display name (max 100 chars) |
| `errors` | `array<GooglePrivacyDlpV2Error>` | Output only. A stream of errors encountered when the config was activated. Repeated errors may re... |
| `inspectTemplates` | `array<string>` | Detection logic for profile generation. Not all template features are used by Discovery. FindingL... |
| `lastRunTime` | `string` | Output only. The timestamp of the last time this config was executed. |
| `name` | `string` | Unique resource name for the DiscoveryConfig, assigned by the service when the DiscoveryConfig is... |
| `orgConfig` | `GooglePrivacyDlpV2OrgConfig` | Only set when the parent is an org. |
| `otherCloudStartingLocation` | `GooglePrivacyDlpV2OtherCloudDiscoveryStartingLocation` | Must be set only when scanning other clouds. |
| `processingLocation` | `GooglePrivacyDlpV2ProcessingLocation` | Optional. Processing location configuration. Vertex AI dataset scanning will set processing_locat... |
| `status` | `string` | Required. A status for this configuration. |
| `targets` | `array<GooglePrivacyDlpV2DiscoveryTarget>` | Target to match against for determining what to scan and how frequently. |
| `updateTime` | `string` | Output only. The last update timestamp of a DiscoveryConfig. |

### `GooglePrivacyDlpV2DiscoveryFileStoreConditions`

Requirements that must be true before a file store is scanned in discovery for the first time. There is an AND relationship between the top-level attributes.

| Property | Type | Description |
|----------|------|-------------|
| `cloudStorageConditions` | `GooglePrivacyDlpV2DiscoveryCloudStorageConditions` | Optional. Cloud Storage conditions. |
| `createdAfter` | `string` | Optional. File store must have been created after this date. Used to avoid backfilling. |
| `minAge` | `string` | Optional. Minimum age a file store must have. If set, the value must be 1 hour or greater. |

### `GooglePrivacyDlpV2DiscoveryGenerationCadence`

What must take place for a profile to be updated and how frequently it should occur. New tables are scanned as quickly as possible depending on system capacity.

| Property | Type | Description |
|----------|------|-------------|
| `inspectTemplateModifiedCadence` | `GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence` | Governs when to update data profiles when the inspection rules defined by the `InspectTemplate` c... |
| `refreshFrequency` | `string` | Frequency at which profiles should be updated, regardless of whether the underlying resource has ... |
| `schemaModifiedCadence` | `GooglePrivacyDlpV2DiscoverySchemaModifiedCadence` | Governs when to update data profiles when a schema is modified. |
| `tableModifiedCadence` | `GooglePrivacyDlpV2DiscoveryTableModifiedCadence` | Governs when to update data profiles when a table is modified. |

### `GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence`

The cadence at which to update data profiles when the inspection rules defined by the `InspectTemplate` change.

| Property | Type | Description |
|----------|------|-------------|
| `frequency` | `string` | How frequently data profiles can be updated when the template is modified. Defaults to never. |

### `GooglePrivacyDlpV2DiscoveryOtherCloudConditions`

Requirements that must be true before a resource is profiled for the first time.

| Property | Type | Description |
|----------|------|-------------|
| `amazonS3BucketConditions` | `GooglePrivacyDlpV2AmazonS3BucketConditions` | Amazon S3 bucket conditions. |
| `minAge` | `string` | Minimum age a resource must be before Cloud DLP can profile it. Value must be 1 hour or greater. |

### `GooglePrivacyDlpV2DiscoveryOtherCloudFilter`

Determines which resources from the other cloud will have profiles generated. Includes the ability to filter by resource names.

| Property | Type | Description |
|----------|------|-------------|
| `collection` | `GooglePrivacyDlpV2OtherCloudResourceCollection` | A collection of resources for this filter to apply to. |
| `others` | `GooglePrivacyDlpV2AllOtherResources` | Optional. Catch-all. This should always be the last target in the list because anything above it ... |
| `singleResource` | `GooglePrivacyDlpV2OtherCloudSingleResourceReference` | The resource to scan. Configs using this filter can only have one target (the target with this si... |

### `GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence`

How often existing resources should have their profiles refreshed. New resources are scanned as quickly as possible depending on system capacity.

| Property | Type | Description |
|----------|------|-------------|
| `inspectTemplateModifiedCadence` | `GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence` | Optional. Governs when to update data profiles when the inspection rules defined by the `InspectT... |
| `refreshFrequency` | `string` | Optional. Frequency to update profiles regardless of whether the underlying resource has changes.... |

### `GooglePrivacyDlpV2DiscoverySchemaModifiedCadence`

The cadence at which to update data profiles when a schema is modified.

| Property | Type | Description |
|----------|------|-------------|
| `frequency` | `string` | How frequently profiles may be updated when schemas are modified. Defaults to monthly. |
| `types` | `array<string>` | The type of events to consider when deciding if the table's schema has been modified and should h... |

### `GooglePrivacyDlpV2DiscoveryStartingLocation`

The location to begin a discovery scan. Denotes an organization ID or folder ID within an organization.

| Property | Type | Description |
|----------|------|-------------|
| `folderId` | `string` | The ID of the folder within an organization to be scanned. |
| `organizationId` | `string` | The ID of an organization to scan. |

### `GooglePrivacyDlpV2DiscoveryTableModifiedCadence`

The cadence at which to update data profiles when a table is modified.

| Property | Type | Description |
|----------|------|-------------|
| `frequency` | `string` | How frequently data profiles can be updated when tables are modified. Defaults to never. |
| `types` | `array<string>` | The type of events to consider when deciding if the table has been modified and should have the p... |

### `GooglePrivacyDlpV2DiscoveryTarget`

Target used to match against for Discovery.

| Property | Type | Description |
|----------|------|-------------|
| `bigQueryTarget` | `GooglePrivacyDlpV2BigQueryDiscoveryTarget` | BigQuery target for Discovery. The first target to match a table will be the one applied. |
| `cloudSqlTarget` | `GooglePrivacyDlpV2CloudSqlDiscoveryTarget` | Cloud SQL target for Discovery. The first target to match a table will be the one applied. |
| `cloudStorageTarget` | `GooglePrivacyDlpV2CloudStorageDiscoveryTarget` | Cloud Storage target for Discovery. The first target to match a table will be the one applied. |
| `otherCloudTarget` | `GooglePrivacyDlpV2OtherCloudDiscoveryTarget` | Other clouds target for discovery. The first target to match a resource will be the one applied. |
| `secretsTarget` | `GooglePrivacyDlpV2SecretsDiscoveryTarget` | Discovery target that looks for credentials and secrets stored in cloud resource metadata and rep... |
| `vertexDatasetTarget` | `GooglePrivacyDlpV2VertexDatasetDiscoveryTarget` | Vertex AI dataset target for Discovery. The first target to match a dataset will be the one appli... |

### `GooglePrivacyDlpV2DiscoveryVertexDatasetConditions`

Requirements that must be true before a dataset is profiled for the first time.

| Property | Type | Description |
|----------|------|-------------|
| `createdAfter` | `string` | Vertex AI dataset must have been created after this date. Used to avoid backfilling. |
| `minAge` | `string` | Minimum age a Vertex AI dataset must have. If set, the value must be 1 hour or greater. |

### `GooglePrivacyDlpV2DiscoveryVertexDatasetFilter`

Determines what datasets will have profiles generated within an organization or project. Includes the ability to filter by regular expression patterns on project ID or dataset regex.

| Property | Type | Description |
|----------|------|-------------|
| `collection` | `GooglePrivacyDlpV2VertexDatasetCollection` | A specific set of Vertex AI datasets for this filter to apply to. |
| `others` | `GooglePrivacyDlpV2AllOtherResources` | Catch-all. This should always be the last target in the list because anything above it will apply... |
| `vertexDatasetResourceReference` | `GooglePrivacyDlpV2VertexDatasetResourceReference` | The dataset resource to scan. Targets including this can only include one target (the target with... |

### `GooglePrivacyDlpV2DiscoveryVertexDatasetGenerationCadence`

How often existing datasets should have their profiles refreshed. New datasets are scanned as quickly as possible depending on system capacity.

| Property | Type | Description |
|----------|------|-------------|
| `inspectTemplateModifiedCadence` | `GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence` | Governs when to update data profiles when the inspection rules defined by the `InspectTemplate` c... |
| `refreshFrequency` | `string` | If you set this field, profiles are refreshed at this frequency regardless of whether the underly... |

### `GooglePrivacyDlpV2DlpJob`

Combines all of the information about a DLP job.

| Property | Type | Description |
|----------|------|-------------|
| `actionDetails` | `array<GooglePrivacyDlpV2ActionDetails>` | Events that should occur after the job has completed. |
| `createTime` | `string` | Time when the job was created. |
| `endTime` | `string` | Time when the job finished. |
| `errors` | `array<GooglePrivacyDlpV2Error>` | A stream of errors encountered running the job. |
| `inspectDetails` | `GooglePrivacyDlpV2InspectDataSourceDetails` | Results from inspecting a data source. |
| `jobTriggerName` | `string` | If created by a job trigger, the resource name of the trigger that instantiated the job. |
| `lastModified` | `string` | Time when the job was last modified by the system. |
| `name` | `string` | The server-assigned name. |
| `riskDetails` | `GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails` | Results from analyzing risk of a data source. |
| `startTime` | `string` | Time when the job started. |
| `state` | `string` | State of a job. |
| `type` | `string` | The type of job. |

### `GooglePrivacyDlpV2DocumentFallbackLocation`

Configure document processing to fall back to any of the following processing options if document processing is unavailable in the original request location.

| Property | Type | Description |
|----------|------|-------------|
| `globalProcessing` | `GooglePrivacyDlpV2GlobalProcessing` | Processing occurs in the global region. |
| `multiRegionProcessing` | `GooglePrivacyDlpV2MultiRegionProcessing` | Processing occurs in a multi-region that contains the current region if available. |

### `GooglePrivacyDlpV2DocumentLocation`

Location of a finding within a document.

| Property | Type | Description |
|----------|------|-------------|
| `fileOffset` | `string` | Offset of the line, from the beginning of the file, where the finding is located. |

### `GooglePrivacyDlpV2Domain`

A domain represents a thematic category that a data profile can fall under.

| Property | Type | Description |
|----------|------|-------------|
| `category` | `string` | A domain category that this profile is related to. |
| `signals` | `array<string>` | The collection of signals that influenced selection of the category. |

### `GooglePrivacyDlpV2Encloses`

Defines a condition where one bounding box encloses another.

### `GooglePrivacyDlpV2EntityId`

An entity in a dataset is a field or set of fields that correspond to a single person. For example, in medical records the `EntityId` might be a patient identifier, or for financial records it might be an account identifier. This message is used when generalizations or analysis must take into account that multiple rows correspond to the same entity.

| Property | Type | Description |
|----------|------|-------------|
| `field` | `GooglePrivacyDlpV2FieldId` | Composite key indicating which field contains the entity identifier. |

### `GooglePrivacyDlpV2Error`

Details information about an error encountered during job execution or the results of an unsuccessful activation of the JobTrigger.

| Property | Type | Description |
|----------|------|-------------|
| `details` | `GoogleRpcStatus` | Detailed error codes and messages. |
| `extraInfo` | `string` | Additional information about the error. |
| `timestamps` | `array<string>` | The times the error occurred. List includes the oldest timestamp and the last 9 timestamps. |

### `GooglePrivacyDlpV2ExcludeByHotword`

The rule to exclude findings based on a hotword. For record inspection of tables, column names are considered hotwords. An example of this is to exclude a finding if it belongs to a BigQuery column that matches a specific pattern.

| Property | Type | Description |
|----------|------|-------------|
| `hotwordRegex` | `GooglePrivacyDlpV2Regex` | Regular expression pattern defining what qualifies as a hotword. |
| `proximity` | `GooglePrivacyDlpV2Proximity` | Range of characters within which the entire hotword must reside. The total length of the window c... |

### `GooglePrivacyDlpV2ExcludeByImageFindings`

The rule to exclude image findings based on spatial relationships with other image findings. For example, exclude an image finding if it overlaps with another image finding. This rule is silently ignored if the content being inspected is not an image.

| Property | Type | Description |
|----------|------|-------------|
| `imageContainmentType` | `GooglePrivacyDlpV2ImageContainmentType` | Specifies the required spatial relationship between the bounding boxes of the target finding and ... |
| `infoTypes` | `array<GooglePrivacyDlpV2InfoType>` | A list of image-supported infoTypes—excluding [document infoTypes](https://cloud.google.com/sensi... |

### `GooglePrivacyDlpV2ExcludeInfoTypes`

List of excluded infoTypes.

| Property | Type | Description |
|----------|------|-------------|
| `infoTypes` | `array<GooglePrivacyDlpV2InfoType>` | InfoType list in ExclusionRule rule drops a finding when it overlaps or contained within with a f... |

### `GooglePrivacyDlpV2ExclusionRule`

The rule that specifies conditions when findings of infoTypes specified in `InspectionRuleSet` are removed from results.

| Property | Type | Description |
|----------|------|-------------|
| `dictionary` | `GooglePrivacyDlpV2Dictionary` | Dictionary which defines the rule. |
| `excludeByHotword` | `GooglePrivacyDlpV2ExcludeByHotword` | Drop if the hotword rule is contained in the proximate context. For tabular data, the context inc... |
| `excludeByImageFindings` | `GooglePrivacyDlpV2ExcludeByImageFindings` | Exclude findings based on image containment rules. For example, exclude an image finding if it ov... |
| `excludeInfoTypes` | `GooglePrivacyDlpV2ExcludeInfoTypes` | Set of infoTypes for which findings would affect this rule. |
| `matchingType` | `string` | How the rule is applied, see MatchingType documentation for details. |
| `regex` | `GooglePrivacyDlpV2Regex` | Regular expression which defines the rule. |

### `GooglePrivacyDlpV2Export`

If set, the detailed data profiles will be persisted to the location of your choice whenever updated.

| Property | Type | Description |
|----------|------|-------------|
| `profileTable` | `GooglePrivacyDlpV2BigQueryTable` | Store all profiles to BigQuery. * The system will create a new dataset and table for you if none ... |
| `sampleFindingsTable` | `GooglePrivacyDlpV2BigQueryTable` | Store sample data profile findings in an existing table or a new table in an existing dataset. Ea... |

### `GooglePrivacyDlpV2Expressions`

An expression, consisting of an operator and conditions.

| Property | Type | Description |
|----------|------|-------------|
| `conditions` | `GooglePrivacyDlpV2Conditions` | Conditions to apply to the expression. |
| `logicalOperator` | `string` | The operator to apply to the result of conditions. Default and currently only supported value is ... |

### `GooglePrivacyDlpV2FieldId`

General identifier of a data field in a storage service.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Name describing the field. |

### `GooglePrivacyDlpV2FieldTransformation`

The transformation to apply to the field.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `GooglePrivacyDlpV2RecordCondition` | Only apply the transformation if the condition evaluates to true for the given `RecordCondition`.... |
| `fields` | `array<GooglePrivacyDlpV2FieldId>` | Required. Input field(s) to apply the transformation to. When you have columns that reference the... |
| `infoTypeTransformations` | `GooglePrivacyDlpV2InfoTypeTransformations` | Treat the contents of the field as free text, and selectively transform content that matches an `... |
| `primitiveTransformation` | `GooglePrivacyDlpV2PrimitiveTransformation` | Apply the transformation to the entire field. |

### `GooglePrivacyDlpV2FileClusterSummary`

The file cluster summary.

| Property | Type | Description |
|----------|------|-------------|
| `dataRiskLevel` | `GooglePrivacyDlpV2DataRiskLevel` | The data risk level of this cluster. RISK_LOW if nothing has been scanned. |
| `errors` | `array<GooglePrivacyDlpV2Error>` | A list of errors detected while scanning this cluster. The list is truncated to 10 per cluster. |
| `fileClusterType` | `GooglePrivacyDlpV2FileClusterType` | The file cluster type. |
| `fileExtensionsScanned` | `array<GooglePrivacyDlpV2FileExtensionInfo>` | A sample of file types scanned in this cluster. Empty if no files were scanned. File extensions c... |
| `fileExtensionsSeen` | `array<GooglePrivacyDlpV2FileExtensionInfo>` | A sample of file types seen in this cluster. Empty if no files were seen. File extensions can be ... |
| `fileStoreInfoTypeSummaries` | `array<GooglePrivacyDlpV2FileStoreInfoTypeSummary>` | InfoTypes detected in this cluster. |
| `noFilesExist` | `boolean` | True if no files exist in this cluster. If the file store had more files than could be listed, th... |
| `sensitivityScore` | `GooglePrivacyDlpV2SensitivityScore` | The sensitivity score of this cluster. The score will be SENSITIVITY_LOW if nothing has been scan... |

### `GooglePrivacyDlpV2FileClusterType`

Message used to identify file cluster type being profiled.

| Property | Type | Description |
|----------|------|-------------|
| `cluster` | `string` | Cluster type. |

### `GooglePrivacyDlpV2FileExtensionInfo`

Information regarding the discovered file extension.

| Property | Type | Description |
|----------|------|-------------|
| `fileExtension` | `string` | The file extension if set. (aka .pdf, .jpg, .txt) |

### `GooglePrivacyDlpV2FileSet`

Set of files to scan.

| Property | Type | Description |
|----------|------|-------------|
| `regexFileSet` | `GooglePrivacyDlpV2CloudStorageRegexFileSet` | The regex-filtered set of files to scan. Exactly one of `url` or `regex_file_set` must be set. |
| `url` | `string` | The Cloud Storage url of the file(s) to scan, in the format `gs:///`. Trailing wildcard in the pa... |

### `GooglePrivacyDlpV2FileStoreCollection`

Match file stores (e.g. buckets) using filters.

| Property | Type | Description |
|----------|------|-------------|
| `includeRegexes` | `GooglePrivacyDlpV2FileStoreRegexes` | Optional. A collection of regular expressions to match a file store against. |
| `includeTags` | `GooglePrivacyDlpV2TagFilters` | Optional. To be included in the collection, a resource must meet all of the following requirement... |

### `GooglePrivacyDlpV2FileStoreDataProfile`

The profile for a file store. * Cloud Storage: maps 1:1 with a bucket. * Amazon S3: maps 1:1 with a bucket.

| Property | Type | Description |
|----------|------|-------------|
| `configSnapshot` | `GooglePrivacyDlpV2DataProfileConfigSnapshot` | The snapshot of the configurations used to generate the profile. |
| `createTime` | `string` | The time the file store was first created. |
| `dataRiskLevel` | `GooglePrivacyDlpV2DataRiskLevel` | The data risk level of this resource. |
| `dataSourceType` | `GooglePrivacyDlpV2DataSourceType` | The resource type that was profiled. |
| `dataStorageLocations` | `array<string>` | For resources that have multiple storage locations, these are those regions. For Cloud Storage th... |
| `domains` | `array<GooglePrivacyDlpV2Domain>` | Domains associated with the profile. |
| `fileClusterSummaries` | `array<GooglePrivacyDlpV2FileClusterSummary>` | FileClusterSummary per each cluster. |
| `fileStoreInfoTypeSummaries` | `array<GooglePrivacyDlpV2FileStoreInfoTypeSummary>` | InfoTypes detected in this file store. |
| `fileStoreIsEmpty` | `boolean` | The file store does not have any files. If the profiling operation failed, this is false. |
| `fileStoreLocation` | `string` | The location of the file store. * Cloud Storage: https://cloud.google.com/storage/docs/locations#... |
| `fileStorePath` | `string` | The file store path. * Cloud Storage: `gs://{bucket}` * Amazon S3: `s3://{bucket}` * Vertex AI da... |
| `fullResource` | `string` | The resource name of the resource profiled. https://cloud.google.com/apis/design/resource_names#f... |
| `lastModifiedTime` | `string` | The time the file store was last modified. |
| `locationType` | `string` | The location type of the file store (region, dual-region, multi-region, etc). If dual-region, exp... |
| `name` | `string` | The name of the profile. |
| `profileLastGenerated` | `string` | The last time the profile was generated. |
| `profileStatus` | `GooglePrivacyDlpV2ProfileStatus` | Success or error status from the most recent profile generation attempt. May be empty if the prof... |
| `projectDataProfile` | `string` | The resource name of the project data profile for this file store. |
| `projectId` | `string` | The Google Cloud project ID that owns the resource. For Amazon S3 buckets, this is the AWS Accoun... |
| `relatedResources` | `array<GooglePrivacyDlpV2RelatedResource>` | Resources related to this profile. |
| `resourceAttributes` | `object` | Attributes of the resource being profiled. Currently used attributes: * customer_managed_encrypti... |
| `resourceLabels` | `object` | The labels applied to the resource at the time the profile was generated. |
| `resourceVisibility` | `string` | How broadly a resource has been shared. |
| `sampleFindingsTable` | `GooglePrivacyDlpV2BigQueryTable` | The BigQuery table to which the sample findings are written. |
| `sensitivityScore` | `GooglePrivacyDlpV2SensitivityScore` | The sensitivity score of this resource. |
| `state` | `string` | State of a profile. |
| `tags` | `array<GooglePrivacyDlpV2Tag>` | The tags attached to the resource, including any tags attached during profiling. |

### `GooglePrivacyDlpV2FileStoreInfoTypeSummary`

Information regarding the discovered InfoType.

| Property | Type | Description |
|----------|------|-------------|
| `infoType` | `GooglePrivacyDlpV2InfoType` | The InfoType seen. |

### `GooglePrivacyDlpV2FileStoreRegex`

A pattern to match against one or more file stores.

| Property | Type | Description |
|----------|------|-------------|
| `cloudStorageRegex` | `GooglePrivacyDlpV2CloudStorageRegex` | Optional. Regex for Cloud Storage. |

### `GooglePrivacyDlpV2FileStoreRegexes`

A collection of regular expressions to determine what file store to match against.

| Property | Type | Description |
|----------|------|-------------|
| `patterns` | `array<GooglePrivacyDlpV2FileStoreRegex>` | Required. The group of regular expression patterns to match against one or more file stores. Maxi... |

### `GooglePrivacyDlpV2Finding`

Represents a piece of potentially sensitive content.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Timestamp when finding was detected. |
| `findingId` | `string` | The unique finding id. |
| `infoType` | `GooglePrivacyDlpV2InfoType` | The type of content that might have been found. Provided if `excluded_types` is false. |
| `jobCreateTime` | `string` | Time the job started that produced this finding. |
| `jobName` | `string` | The job that stored the finding. |
| `labels` | `object` | The labels associated with this `Finding`. Label keys must be between 1 and 63 characters long an... |
| `likelihood` | `string` | Confidence of how likely it is that the `info_type` is correct. |
| `location` | `GooglePrivacyDlpV2Location` | Where the content was found. |
| `name` | `string` | Resource name in format projects/{project}/locations/{location}/findings/{finding} Populated only... |
| `quote` | `string` | The content that was found. Even if the content is not textual, it may be converted to a textual ... |
| `quoteInfo` | `GooglePrivacyDlpV2QuoteInfo` | Contains data parsed from quotes. Only populated if include_quote was set to true and a supported... |
| `resourceName` | `string` | The job that stored the finding. |
| `triggerName` | `string` | Job trigger name, if applicable, for this finding. |

### `GooglePrivacyDlpV2FindingLimits`

Configuration to control the number of findings returned for inspection. This is not used for de-identification or data profiling. When redacting sensitive data from images, finding limits don't apply. They can cause unexpected or inconsistent results, where only some data is redacted. Don't include finding limits in RedactImage requests. Otherwise, Cloud DLP returns an error.

| Property | Type | Description |
|----------|------|-------------|
| `maxFindingsPerInfoType` | `array<GooglePrivacyDlpV2InfoTypeLimit>` | Configuration of findings limit given for specified infoTypes. |
| `maxFindingsPerItem` | `integer` | Max number of findings that are returned for each item scanned. When set within an InspectContent... |
| `maxFindingsPerRequest` | `integer` | Max number of findings that are returned per request or job. If you set this field in an InspectC... |

### `GooglePrivacyDlpV2FinishDlpJobRequest`

The request message for finishing a DLP hybrid job.

### `GooglePrivacyDlpV2FixedSizeBucketingConfig`

Buckets values based on fixed size ranges. The Bucketing transformation can provide all of this functionality, but requires more configuration. This message is provided as a convenience to the user for simple bucketing strategies. The transformed value will be a hyphenated string of {lower_bound}-{upper_bound}. For example, if lower_bound = 10 and upper_bound = 20, all values that are within this bucket will be replaced with "10-20". This can be used on data of type: double, long. If the bound Value type differs from the type of data being transformed, we will first attempt converting the type of the data to be transformed to match the type of the bound before comparing. See https://cloud.google.com/sensitive-data-protection/docs/concepts-bucketing to learn more.

| Property | Type | Description |
|----------|------|-------------|
| `bucketSize` | `number` | Required. Size of each bucket (except for minimum and maximum buckets). So if `lower_bound` = 10,... |
| `lowerBound` | `GooglePrivacyDlpV2Value` | Required. Lower bound value of buckets. All values less than `lower_bound` are grouped together i... |
| `upperBound` | `GooglePrivacyDlpV2Value` | Required. Upper bound value of buckets. All values greater than upper_bound are grouped together ... |

### `GooglePrivacyDlpV2FullyInside`

Defines a condition where one bounding box is fully inside another.

### `GooglePrivacyDlpV2GlobalProcessing`

Processing occurs in the global region.

### `GooglePrivacyDlpV2HotwordRule`

The rule that adjusts the likelihood of findings within a certain proximity of hotwords.

| Property | Type | Description |
|----------|------|-------------|
| `hotwordRegex` | `GooglePrivacyDlpV2Regex` | Regular expression pattern defining what qualifies as a hotword. |
| `likelihoodAdjustment` | `GooglePrivacyDlpV2LikelihoodAdjustment` | Likelihood adjustment to apply to all matching findings. |
| `proximity` | `GooglePrivacyDlpV2Proximity` | Range of characters within which the entire hotword must reside. The total length of the window c... |

### `GooglePrivacyDlpV2HybridContentItem`

An individual hybrid item to inspect. Will be stored temporarily during processing.

| Property | Type | Description |
|----------|------|-------------|
| `findingDetails` | `GooglePrivacyDlpV2HybridFindingDetails` | Supplementary information that will be added to each finding. |
| `item` | `GooglePrivacyDlpV2ContentItem` | The item to inspect. |

### `GooglePrivacyDlpV2HybridFindingDetails`

Populate to associate additional data with each finding.

| Property | Type | Description |
|----------|------|-------------|
| `containerDetails` | `GooglePrivacyDlpV2Container` | Details about the container where the content being inspected is from. |
| `fileOffset` | `string` | Offset in bytes of the line, from the beginning of the file, where the finding is located. Popula... |
| `labels` | `object` | Labels to represent user provided metadata about the data being inspected. If configured by the j... |
| `rowOffset` | `string` | Offset of the row for tables. Populate if the row(s) being scanned are part of a bigger dataset a... |
| `tableOptions` | `GooglePrivacyDlpV2TableOptions` | If the container is a table, additional information to make findings meaningful such as the colum... |

### `GooglePrivacyDlpV2HybridInspectDlpJobRequest`

Request to search for potentially sensitive info in a custom location.

| Property | Type | Description |
|----------|------|-------------|
| `hybridItem` | `GooglePrivacyDlpV2HybridContentItem` | The item to inspect. |

### `GooglePrivacyDlpV2HybridInspectJobTriggerRequest`

Request to search for potentially sensitive info in a custom location.

| Property | Type | Description |
|----------|------|-------------|
| `hybridItem` | `GooglePrivacyDlpV2HybridContentItem` | The item to inspect. |

### `GooglePrivacyDlpV2HybridInspectResponse`

Quota exceeded errors will be thrown once quota has been met.

### `GooglePrivacyDlpV2HybridInspectStatistics`

Statistics related to processing hybrid inspect requests.

| Property | Type | Description |
|----------|------|-------------|
| `abortedCount` | `string` | The number of hybrid inspection requests aborted because the job ran out of quota or was ended be... |
| `pendingCount` | `string` | The number of hybrid requests currently being processed. Only populated when called via method `g... |
| `processedCount` | `string` | The number of hybrid inspection requests processed within this job. |

### `GooglePrivacyDlpV2HybridOptions`

Configuration to control jobs where the content being inspected is outside of Google Cloud Platform.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | A short description of where the data is coming from. Will be stored once in the job. 256 max len... |
| `labels` | `object` | To organize findings, these labels will be added to each finding. Label keys must be between 1 an... |
| `requiredFindingLabelKeys` | `array<string>` | These are labels that each inspection request must include within their 'finding_labels' map. Req... |
| `tableOptions` | `GooglePrivacyDlpV2TableOptions` | If the container is a table, additional information to make findings meaningful such as the colum... |

### `GooglePrivacyDlpV2ImageContainmentType`

Specifies the relationship between bounding boxes for image findings.

| Property | Type | Description |
|----------|------|-------------|
| `encloses` | `GooglePrivacyDlpV2Encloses` | The context finding's bounding box must fully contain the target finding's bounding box. |
| `fullyInside` | `GooglePrivacyDlpV2FullyInside` | The context finding's bounding box must be fully inside the target finding's bounding box. |
| `overlaps` | `GooglePrivacyDlpV2Overlap` | The context finding's bounding box and the target finding's bounding box must have a non-zero int... |

### `GooglePrivacyDlpV2ImageFallbackLocation`

Configure image processing to fall back to any of the following processing options if image processing is unavailable in the original request location.

| Property | Type | Description |
|----------|------|-------------|
| `globalProcessing` | `GooglePrivacyDlpV2GlobalProcessing` | Processing occurs in the global region. |
| `multiRegionProcessing` | `GooglePrivacyDlpV2MultiRegionProcessing` | Processing occurs in a multi-region that contains the current region if available. |

### `GooglePrivacyDlpV2ImageLocation`

Location of the finding within an image.

| Property | Type | Description |
|----------|------|-------------|
| `boundingBoxes` | `array<GooglePrivacyDlpV2BoundingBox>` | Bounding boxes locating the pixels within the image containing the finding. |

### `GooglePrivacyDlpV2ImageRedactionConfig`

Configuration for determining how redaction of images should occur.

| Property | Type | Description |
|----------|------|-------------|
| `infoType` | `GooglePrivacyDlpV2InfoType` | Only one per info_type should be provided per request. If not specified, and redact_all_text is f... |
| `redactAllText` | `boolean` | If true, all text found in the image, regardless whether it matches an info_type, is redacted. On... |
| `redactionColor` | `GooglePrivacyDlpV2Color` | The color to use when redacting content from an image. If not specified, the default is black. |

### `GooglePrivacyDlpV2ImageTransformation`

Configuration for determining how redaction of images should occur.

| Property | Type | Description |
|----------|------|-------------|
| `allInfoTypes` | `GooglePrivacyDlpV2AllInfoTypes` | Apply transformation to all findings not specified in other ImageTransformation's selected_info_t... |
| `allText` | `GooglePrivacyDlpV2AllText` | Apply transformation to all text that doesn't match an infoType. Only one instance is allowed wit... |
| `redactionColor` | `GooglePrivacyDlpV2Color` | The color to use when redacting content from an image. If not specified, the default is black. |
| `selectedInfoTypes` | `GooglePrivacyDlpV2SelectedInfoTypes` | Apply transformation to the selected info_types. |

### `GooglePrivacyDlpV2ImageTransformations`

A type of transformation that is applied over images.

| Property | Type | Description |
|----------|------|-------------|
| `transforms` | `array<GooglePrivacyDlpV2ImageTransformation>` | List of transforms to make. |

### `GooglePrivacyDlpV2InfoType`

Type of information detected by the API.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Name of the information type. Either a name of your choosing when creating a CustomInfoType, or o... |
| `sensitivityScore` | `GooglePrivacyDlpV2SensitivityScore` | Optional custom sensitivity for this InfoType. This only applies to data profiling. |
| `version` | `string` | Optional version name for this InfoType. |

### `GooglePrivacyDlpV2InfoTypeCategory`

Classification of infoTypes to organize them according to geographic location, industry, and data type.

| Property | Type | Description |
|----------|------|-------------|
| `industryCategory` | `string` | The group of relevant businesses where this infoType is commonly used |
| `locationCategory` | `string` | The region or country that issued the ID or document represented by the infoType. |
| `typeCategory` | `string` | The class of identifiers where this infoType belongs |

### `GooglePrivacyDlpV2InfoTypeDescription`

InfoType description.

| Property | Type | Description |
|----------|------|-------------|
| `categories` | `array<GooglePrivacyDlpV2InfoTypeCategory>` | The category of the infoType. |
| `description` | `string` | Description of the infotype. Translated when language is provided in the request. |
| `displayName` | `string` | Human readable form of the infoType name. |
| `example` | `string` | A sample that is a true positive for this infoType. |
| `launchStatus` | `string` | The launch status of the infoType. |
| `locationSupport` | `GooglePrivacyDlpV2LocationSupport` | Locations at which this feature can be used. May change over time. |
| `name` | `string` | Internal name of the infoType. |
| `sensitivityScore` | `GooglePrivacyDlpV2SensitivityScore` | The default sensitivity of the infoType. |
| `specificInfoTypes` | `array<string>` | If this field is set, this infoType is a general infoType and these specific infoTypes are contai... |
| `supportedBy` | `array<string>` | Which parts of the API supports this InfoType. |
| `versions` | `array<GooglePrivacyDlpV2VersionDescription>` | A list of available versions for the infotype. |

### `GooglePrivacyDlpV2InfoTypeLikelihood`

Configuration for setting a minimum likelihood per infotype. Used to customize the minimum likelihood level for specific infotypes in the request. For example, use this if you want to lower the precision for PERSON_NAME without lowering the precision for the other infotypes in the request.

| Property | Type | Description |
|----------|------|-------------|
| `infoType` | `GooglePrivacyDlpV2InfoType` | Type of information the likelihood threshold applies to. Only one likelihood per info_type should... |
| `minLikelihood` | `string` | Only returns findings equal to or above this threshold. This field is required or else the config... |

### `GooglePrivacyDlpV2InfoTypeLimit`

Max findings configuration per infoType, per content item or long running DlpJob.

| Property | Type | Description |
|----------|------|-------------|
| `infoType` | `GooglePrivacyDlpV2InfoType` | Type of information the findings limit applies to. Only one limit per info_type should be provide... |
| `maxFindings` | `integer` | Max findings limit for the given infoType. |

### `GooglePrivacyDlpV2InfoTypeStats`

Statistics regarding a specific InfoType.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `string` | Number of findings for this infoType. |
| `infoType` | `GooglePrivacyDlpV2InfoType` | The type of finding this stat is for. |

### `GooglePrivacyDlpV2InfoTypeSummary`

The infoType details for this column.

| Property | Type | Description |
|----------|------|-------------|
| `estimatedPrevalence` | `integer` | Not populated for predicted infotypes. |
| `infoType` | `GooglePrivacyDlpV2InfoType` | The infoType. |

### `GooglePrivacyDlpV2InfoTypeTransformation`

A transformation to apply to text that is identified as a specific info_type.

| Property | Type | Description |
|----------|------|-------------|
| `infoTypes` | `array<GooglePrivacyDlpV2InfoType>` | InfoTypes to apply the transformation to. An empty list will cause this transformation to apply t... |
| `primitiveTransformation` | `GooglePrivacyDlpV2PrimitiveTransformation` | Required. Primitive transformation to apply to the infoType. |

### `GooglePrivacyDlpV2InfoTypeTransformations`

A type of transformation that will scan unstructured text and apply various `PrimitiveTransformation`s to each finding, where the transformation is applied to only values that were identified as a specific info_type.

| Property | Type | Description |
|----------|------|-------------|
| `transformations` | `array<GooglePrivacyDlpV2InfoTypeTransformation>` | Required. Transformation for each infoType. Cannot specify more than one for a given infoType. |

### `GooglePrivacyDlpV2InspectConfig`

Configuration description of the scanning process. When used with redactContent only info_types and min_likelihood are currently used.

| Property | Type | Description |
|----------|------|-------------|
| `contentOptions` | `array<string>` | Deprecated and unused. |
| `customInfoTypes` | `array<GooglePrivacyDlpV2CustomInfoType>` | CustomInfoTypes provided by the user. See https://cloud.google.com/sensitive-data-protection/docs... |
| `excludeInfoTypes` | `boolean` | When true, excludes type information of the findings. This is not used for data profiling. |
| `includeQuote` | `boolean` | When true, a contextual quote from the data that triggered a finding is included in the response;... |
| `infoTypes` | `array<GooglePrivacyDlpV2InfoType>` | Restricts what info_types to look for. The values must correspond to InfoType values returned by ... |
| `limits` | `GooglePrivacyDlpV2FindingLimits` | Configuration to control the number of findings returned. This is not used for data profiling. Wh... |
| `minLikelihood` | `string` | Only returns findings equal to or above this threshold. The default is POSSIBLE. In general, the ... |
| `minLikelihoodPerInfoType` | `array<GooglePrivacyDlpV2InfoTypeLikelihood>` | Minimum likelihood per infotype. For each infotype, a user can specify a minimum likelihood. The ... |
| `ruleSet` | `array<GooglePrivacyDlpV2InspectionRuleSet>` | Set of rules to apply to the findings for this InspectConfig. Exclusion rules, contained in the s... |

### `GooglePrivacyDlpV2InspectContentRequest`

Request to search for potentially sensitive info in a ContentItem.

| Property | Type | Description |
|----------|------|-------------|
| `inspectConfig` | `GooglePrivacyDlpV2InspectConfig` | Configuration for the inspector. What specified here will override the template referenced by the... |
| `inspectTemplateName` | `string` | Template to use. Any configuration directly specified in inspect_config will override those set i... |
| `item` | `GooglePrivacyDlpV2ContentItem` | The item to inspect. |
| `locationId` | `string` | Deprecated. This field has no effect. |

### `GooglePrivacyDlpV2InspectContentResponse`

Results of inspecting an item.

| Property | Type | Description |
|----------|------|-------------|
| `result` | `GooglePrivacyDlpV2InspectResult` | The findings. |

### `GooglePrivacyDlpV2InspectDataSourceDetails`

The results of an inspect DataSource job.

| Property | Type | Description |
|----------|------|-------------|
| `requestedOptions` | `GooglePrivacyDlpV2RequestedOptions` | The configuration used for this job. |
| `result` | `GooglePrivacyDlpV2Result` | A summary of the outcome of this inspection job. |

### `GooglePrivacyDlpV2InspectJobConfig`

Controls what and how to inspect for findings.

| Property | Type | Description |
|----------|------|-------------|
| `actions` | `array<GooglePrivacyDlpV2Action>` | Actions to execute at the completion of the job. |
| `inspectConfig` | `GooglePrivacyDlpV2InspectConfig` | How and what to scan for. |
| `inspectTemplateName` | `string` | If provided, will be used as the default for all values in InspectConfig. `inspect_config` will b... |
| `storageConfig` | `GooglePrivacyDlpV2StorageConfig` | The data to scan. |

### `GooglePrivacyDlpV2InspectResult`

All the findings for a single scanned item.

| Property | Type | Description |
|----------|------|-------------|
| `findings` | `array<GooglePrivacyDlpV2Finding>` | List of findings for an item. |
| `findingsTruncated` | `boolean` | If true, then this item might have more findings than were returned, and the findings returned ar... |

### `GooglePrivacyDlpV2InspectTemplate`

The inspectTemplate contains a configuration (set of types of sensitive data to be detected) to be used anywhere you otherwise would normally specify InspectConfig. See https://cloud.google.com/sensitive-data-protection/docs/concepts-templates to learn more.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The creation timestamp of an inspectTemplate. |
| `description` | `string` | Short description (max 256 chars). |
| `displayName` | `string` | Display name (max 256 chars). |
| `inspectConfig` | `GooglePrivacyDlpV2InspectConfig` | The core content of the template. Configuration of the scanning process. |
| `name` | `string` | Output only. The template name. The template will have one of the following formats: `projects/PR... |
| `updateTime` | `string` | Output only. The last update timestamp of an inspectTemplate. |

### `GooglePrivacyDlpV2InspectionRule`

A single inspection rule to be applied to infoTypes, specified in `InspectionRuleSet`.

| Property | Type | Description |
|----------|------|-------------|
| `adjustmentRule` | `GooglePrivacyDlpV2AdjustmentRule` | Adjustment rule. |
| `exclusionRule` | `GooglePrivacyDlpV2ExclusionRule` | Exclusion rule. |
| `hotwordRule` | `GooglePrivacyDlpV2HotwordRule` | Hotword-based detection rule. |

### `GooglePrivacyDlpV2InspectionRuleSet`

Rule set for modifying a set of infoTypes to alter behavior under certain circumstances, depending on the specific details of the rules within the set.

| Property | Type | Description |
|----------|------|-------------|
| `infoTypes` | `array<GooglePrivacyDlpV2InfoType>` | List of infoTypes this rule set is applied to. |
| `rules` | `array<GooglePrivacyDlpV2InspectionRule>` | Set of rules to be applied to infoTypes. The rules are applied in order. |

### `GooglePrivacyDlpV2JobNotificationEmails`

Sends an email when the job completes. The email goes to IAM project owners and technical [Essential Contacts](https://cloud.google.com/resource-manager/docs/managing-notification-contacts).

### `GooglePrivacyDlpV2JobTrigger`

Contains a configuration to make API calls on a repeating basis. See https://cloud.google.com/sensitive-data-protection/docs/concepts-job-triggers to learn more.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The creation timestamp of a triggeredJob. |
| `description` | `string` | User provided description (max 256 chars) |
| `displayName` | `string` | Display name (max 100 chars) |
| `errors` | `array<GooglePrivacyDlpV2Error>` | Output only. A stream of errors encountered when the trigger was activated. Repeated errors may r... |
| `inspectJob` | `GooglePrivacyDlpV2InspectJobConfig` | For inspect jobs, a snapshot of the configuration. |
| `lastRunTime` | `string` | Output only. The timestamp of the last time this trigger executed. |
| `name` | `string` | Unique resource name for the triggeredJob, assigned by the service when the triggeredJob is creat... |
| `status` | `string` | Required. A status for this trigger. |
| `triggers` | `array<GooglePrivacyDlpV2Trigger>` | A list of triggers which will be OR'ed together. Only one in the list needs to trigger for a job ... |
| `updateTime` | `string` | Output only. The last update timestamp of a triggeredJob. |

### `GooglePrivacyDlpV2KAnonymityConfig`

k-anonymity metric, used for analysis of reidentification risk.

| Property | Type | Description |
|----------|------|-------------|
| `entityId` | `GooglePrivacyDlpV2EntityId` | Message indicating that multiple rows might be associated to a single individual. If the same ent... |
| `quasiIds` | `array<GooglePrivacyDlpV2FieldId>` | Set of fields to compute k-anonymity over. When multiple fields are specified, they are considere... |

### `GooglePrivacyDlpV2KAnonymityEquivalenceClass`

The set of columns' values that share the same ldiversity value

| Property | Type | Description |
|----------|------|-------------|
| `equivalenceClassSize` | `string` | Size of the equivalence class, for example number of rows with the above set of values. |
| `quasiIdsValues` | `array<GooglePrivacyDlpV2Value>` | Set of values defining the equivalence class. One value per quasi-identifier column in the origin... |

### `GooglePrivacyDlpV2KAnonymityHistogramBucket`

Histogram of k-anonymity equivalence classes.

| Property | Type | Description |
|----------|------|-------------|
| `bucketSize` | `string` | Total number of equivalence classes in this bucket. |
| `bucketValueCount` | `string` | Total number of distinct equivalence classes in this bucket. |
| `bucketValues` | `array<GooglePrivacyDlpV2KAnonymityEquivalenceClass>` | Sample of equivalence classes in this bucket. The total number of classes returned per bucket is ... |
| `equivalenceClassSizeLowerBound` | `string` | Lower bound on the size of the equivalence classes in this bucket. |
| `equivalenceClassSizeUpperBound` | `string` | Upper bound on the size of the equivalence classes in this bucket. |

### `GooglePrivacyDlpV2KAnonymityResult`

Result of the k-anonymity computation.

| Property | Type | Description |
|----------|------|-------------|
| `equivalenceClassHistogramBuckets` | `array<GooglePrivacyDlpV2KAnonymityHistogramBucket>` | Histogram of k-anonymity equivalence classes. |

### `GooglePrivacyDlpV2KMapEstimationConfig`

Reidentifiability metric. This corresponds to a risk model similar to what is called "journalist risk" in the literature, except the attack dataset is statistically modeled instead of being perfectly known. This can be done using publicly available data (like the US Census), or using a custom statistical model (indicated as one or several BigQuery tables), or by extrapolating from the distribution of values in the input dataset.

| Property | Type | Description |
|----------|------|-------------|
| `auxiliaryTables` | `array<GooglePrivacyDlpV2AuxiliaryTable>` | Several auxiliary tables can be used in the analysis. Each custom_tag used to tag a quasi-identif... |
| `quasiIds` | `array<GooglePrivacyDlpV2TaggedField>` | Required. Fields considered to be quasi-identifiers. No two columns can have the same tag. |
| `regionCode` | `string` | ISO 3166-1 alpha-2 region code to use in the statistical modeling. Set if no column is tagged wit... |

### `GooglePrivacyDlpV2KMapEstimationHistogramBucket`

A KMapEstimationHistogramBucket message with the following values: min_anonymity: 3 max_anonymity: 5 frequency: 42 means that there are 42 records whose quasi-identifier values correspond to 3, 4 or 5 people in the overlying population. An important particular case is when min_anonymity = max_anonymity = 1: the frequency field then corresponds to the number of uniquely identifiable records.

| Property | Type | Description |
|----------|------|-------------|
| `bucketSize` | `string` | Number of records within these anonymity bounds. |
| `bucketValueCount` | `string` | Total number of distinct quasi-identifier tuple values in this bucket. |
| `bucketValues` | `array<GooglePrivacyDlpV2KMapEstimationQuasiIdValues>` | Sample of quasi-identifier tuple values in this bucket. The total number of classes returned per ... |
| `maxAnonymity` | `string` | Always greater than or equal to min_anonymity. |
| `minAnonymity` | `string` | Always positive. |

### `GooglePrivacyDlpV2KMapEstimationQuasiIdValues`

A tuple of values for the quasi-identifier columns.

| Property | Type | Description |
|----------|------|-------------|
| `estimatedAnonymity` | `string` | The estimated anonymity for these quasi-identifier values. |
| `quasiIdsValues` | `array<GooglePrivacyDlpV2Value>` | The quasi-identifier values. |

### `GooglePrivacyDlpV2KMapEstimationResult`

Result of the reidentifiability analysis. Note that these results are an estimation, not exact values.

| Property | Type | Description |
|----------|------|-------------|
| `kMapEstimationHistogram` | `array<GooglePrivacyDlpV2KMapEstimationHistogramBucket>` | The intervals [min_anonymity, max_anonymity] do not overlap. If a value doesn't correspond to any... |

### `GooglePrivacyDlpV2Key`

A unique identifier for a Datastore entity. If a key's partition ID or any of its path kinds or names are reserved/read-only, the key is reserved/read-only. A reserved/read-only key is forbidden in certain documented contexts.

| Property | Type | Description |
|----------|------|-------------|
| `partitionId` | `GooglePrivacyDlpV2PartitionId` | Entities are partitioned into subsets, currently identified by a project ID and namespace ID. Que... |
| `path` | `array<GooglePrivacyDlpV2PathElement>` | The entity path. An entity path consists of one or more elements composed of a kind and a string ... |

### `GooglePrivacyDlpV2KindExpression`

A representation of a Datastore kind.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The name of the kind. |

### `GooglePrivacyDlpV2KmsWrappedCryptoKey`

Include to use an existing data crypto key wrapped by KMS. The wrapped key must be a 128-, 192-, or 256-bit key. Authorization requires the following IAM permissions when sending a request to perform a crypto transformation using a KMS-wrapped crypto key: dlp.kms.encrypt For more information, see [Creating a wrapped key] (https://cloud.google.com/sensitive-data-protection/docs/create-wrapped-key). Note: When you use Cloud KMS for cryptographic operations, [charges apply](https://cloud.google.com/kms/pricing).

| Property | Type | Description |
|----------|------|-------------|
| `cryptoKeyName` | `string` | Required. The resource name of the KMS CryptoKey to use for unwrapping. |
| `wrappedKey` | `string` | Required. The wrapped data crypto key. |

### `GooglePrivacyDlpV2LDiversityConfig`

l-diversity metric, used for analysis of reidentification risk.

| Property | Type | Description |
|----------|------|-------------|
| `quasiIds` | `array<GooglePrivacyDlpV2FieldId>` | Set of quasi-identifiers indicating how equivalence classes are defined for the l-diversity compu... |
| `sensitiveAttribute` | `GooglePrivacyDlpV2FieldId` | Sensitive field for computing the l-value. |

### `GooglePrivacyDlpV2LDiversityEquivalenceClass`

The set of columns' values that share the same ldiversity value.

| Property | Type | Description |
|----------|------|-------------|
| `equivalenceClassSize` | `string` | Size of the k-anonymity equivalence class. |
| `numDistinctSensitiveValues` | `string` | Number of distinct sensitive values in this equivalence class. |
| `quasiIdsValues` | `array<GooglePrivacyDlpV2Value>` | Quasi-identifier values defining the k-anonymity equivalence class. The order is always the same ... |
| `topSensitiveValues` | `array<GooglePrivacyDlpV2ValueFrequency>` | Estimated frequencies of top sensitive values. |

### `GooglePrivacyDlpV2LDiversityHistogramBucket`

Histogram of l-diversity equivalence class sensitive value frequencies.

| Property | Type | Description |
|----------|------|-------------|
| `bucketSize` | `string` | Total number of equivalence classes in this bucket. |
| `bucketValueCount` | `string` | Total number of distinct equivalence classes in this bucket. |
| `bucketValues` | `array<GooglePrivacyDlpV2LDiversityEquivalenceClass>` | Sample of equivalence classes in this bucket. The total number of classes returned per bucket is ... |
| `sensitiveValueFrequencyLowerBound` | `string` | Lower bound on the sensitive value frequencies of the equivalence classes in this bucket. |
| `sensitiveValueFrequencyUpperBound` | `string` | Upper bound on the sensitive value frequencies of the equivalence classes in this bucket. |

### `GooglePrivacyDlpV2LDiversityResult`

Result of the l-diversity computation.

| Property | Type | Description |
|----------|------|-------------|
| `sensitiveValueFrequencyHistogramBuckets` | `array<GooglePrivacyDlpV2LDiversityHistogramBucket>` | Histogram of l-diversity equivalence class sensitive value frequencies. |

### `GooglePrivacyDlpV2LargeCustomDictionaryConfig`

Configuration for a custom dictionary created from a data source of any size up to the maximum size defined in the [limits](https://cloud.google.com/sensitive-data-protection/limits) page. The artifacts of dictionary creation are stored in the specified Cloud Storage location. Consider using `CustomInfoType.Dictionary` for smaller dictionaries that satisfy the size requirements.

| Property | Type | Description |
|----------|------|-------------|
| `bigQueryField` | `GooglePrivacyDlpV2BigQueryField` | Field in a BigQuery table where each cell represents a dictionary phrase. |
| `cloudStorageFileSet` | `GooglePrivacyDlpV2CloudStorageFileSet` | Set of files containing newline-delimited lists of dictionary phrases. |
| `outputPath` | `GooglePrivacyDlpV2CloudStoragePath` | Location to store dictionary artifacts in Cloud Storage. These files will only be accessible by p... |

### `GooglePrivacyDlpV2LargeCustomDictionaryStats`

Summary statistics of a custom dictionary.

| Property | Type | Description |
|----------|------|-------------|
| `approxNumPhrases` | `string` | Approximate number of distinct phrases in the dictionary. |

### `GooglePrivacyDlpV2LeaveUntransformed`

Skips the data without modifying it if the requested transformation would cause an error. For example, if a `DateShift` transformation were applied an an IP address, this mode would leave the IP address unchanged in the response.

### `GooglePrivacyDlpV2LikelihoodAdjustment`

Message for specifying an adjustment to the likelihood of a finding as part of a detection rule.

| Property | Type | Description |
|----------|------|-------------|
| `fixedLikelihood` | `string` | Set the likelihood of a finding to a fixed value. |
| `relativeLikelihood` | `integer` | Increase or decrease the likelihood by the specified number of levels. For example, if a finding ... |

### `GooglePrivacyDlpV2ListColumnDataProfilesResponse`

List of profiles generated for a given organization or project.

| Property | Type | Description |
|----------|------|-------------|
| `columnDataProfiles` | `array<GooglePrivacyDlpV2ColumnDataProfile>` | List of data profiles. |
| `nextPageToken` | `string` | The next page token. |

### `GooglePrivacyDlpV2ListConnectionsResponse`

Response message for ListConnections.

| Property | Type | Description |
|----------|------|-------------|
| `connections` | `array<GooglePrivacyDlpV2Connection>` | List of connections. |
| `nextPageToken` | `string` | Token to retrieve the next page of results. An empty value means there are no more results. |

### `GooglePrivacyDlpV2ListDeidentifyTemplatesResponse`

Response message for ListDeidentifyTemplates.

| Property | Type | Description |
|----------|------|-------------|
| `deidentifyTemplates` | `array<GooglePrivacyDlpV2DeidentifyTemplate>` | List of deidentify templates, up to page_size in ListDeidentifyTemplatesRequest. |
| `nextPageToken` | `string` | If the next page is available then the next page token to be used in the following ListDeidentify... |

### `GooglePrivacyDlpV2ListDiscoveryConfigsResponse`

Response message for ListDiscoveryConfigs.

| Property | Type | Description |
|----------|------|-------------|
| `discoveryConfigs` | `array<GooglePrivacyDlpV2DiscoveryConfig>` | List of configs, up to page_size in ListDiscoveryConfigsRequest. |
| `nextPageToken` | `string` | If the next page is available then this value is the next page token to be used in the following ... |

### `GooglePrivacyDlpV2ListDlpJobsResponse`

The response message for listing DLP jobs.

| Property | Type | Description |
|----------|------|-------------|
| `jobs` | `array<GooglePrivacyDlpV2DlpJob>` | A list of DlpJobs that matches the specified filter in the request. |
| `nextPageToken` | `string` | The standard List next-page token. |

### `GooglePrivacyDlpV2ListFileStoreDataProfilesResponse`

List of file store data profiles generated for a given organization or project.

| Property | Type | Description |
|----------|------|-------------|
| `fileStoreDataProfiles` | `array<GooglePrivacyDlpV2FileStoreDataProfile>` | List of data profiles. |
| `nextPageToken` | `string` | The next page token. |

### `GooglePrivacyDlpV2ListInfoTypesResponse`

Response to the ListInfoTypes request.

| Property | Type | Description |
|----------|------|-------------|
| `infoTypes` | `array<GooglePrivacyDlpV2InfoTypeDescription>` | Set of sensitive infoTypes. |

### `GooglePrivacyDlpV2ListInspectTemplatesResponse`

Response message for ListInspectTemplates.

| Property | Type | Description |
|----------|------|-------------|
| `inspectTemplates` | `array<GooglePrivacyDlpV2InspectTemplate>` | List of inspectTemplates, up to page_size in ListInspectTemplatesRequest. |
| `nextPageToken` | `string` | If the next page is available then the next page token to be used in the following ListInspectTem... |

### `GooglePrivacyDlpV2ListJobTriggersResponse`

Response message for ListJobTriggers.

| Property | Type | Description |
|----------|------|-------------|
| `jobTriggers` | `array<GooglePrivacyDlpV2JobTrigger>` | List of triggeredJobs, up to page_size in ListJobTriggersRequest. |
| `nextPageToken` | `string` | If the next page is available then this value is the next page token to be used in the following ... |

### `GooglePrivacyDlpV2ListProjectDataProfilesResponse`

List of profiles generated for a given organization or project.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The next page token. |
| `projectDataProfiles` | `array<GooglePrivacyDlpV2ProjectDataProfile>` | List of data profiles. |

### `GooglePrivacyDlpV2ListStoredInfoTypesResponse`

Response message for ListStoredInfoTypes.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If the next page is available then the next page token to be used in the following ListStoredInfo... |
| `storedInfoTypes` | `array<GooglePrivacyDlpV2StoredInfoType>` | List of storedInfoTypes, up to page_size in ListStoredInfoTypesRequest. |

### `GooglePrivacyDlpV2ListTableDataProfilesResponse`

List of profiles generated for a given organization or project.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The next page token. |
| `tableDataProfiles` | `array<GooglePrivacyDlpV2TableDataProfile>` | List of data profiles. |

### `GooglePrivacyDlpV2Location`

Specifies the location of the finding.

| Property | Type | Description |
|----------|------|-------------|
| `byteRange` | `GooglePrivacyDlpV2Range` | Zero-based byte offsets delimiting the finding. These are relative to the finding's containing el... |
| `codepointRange` | `GooglePrivacyDlpV2Range` | Unicode character offsets delimiting the finding. These are relative to the finding's containing ... |
| `container` | `GooglePrivacyDlpV2Container` | Information about the container where this finding occurred, if available. |
| `contentLocations` | `array<GooglePrivacyDlpV2ContentLocation>` | List of nested objects pointing to the precise location of the finding within the file or record. |

### `GooglePrivacyDlpV2LocationSupport`

Locations at which a feature can be used.

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<string>` | Specific locations where the feature may be used. Examples: us-central1, us, asia, global If scop... |
| `regionalizationScope` | `string` | The current scope for location on this feature. This may expand over time. |

### `GooglePrivacyDlpV2Manual`

Job trigger option for hybrid jobs. Jobs must be manually created and finished.

### `GooglePrivacyDlpV2MetadataLocation`

Metadata Location

| Property | Type | Description |
|----------|------|-------------|
| `storageLabel` | `GooglePrivacyDlpV2StorageMetadataLabel` | Storage metadata. |
| `type` | `string` | Type of metadata containing the finding. |

### `GooglePrivacyDlpV2MultiRegionProcessing`

Processing occurs in a multi-region that contains the current region if available.

### `GooglePrivacyDlpV2NumericalStatsConfig`

Compute numerical stats over an individual column, including min, max, and quantiles.

| Property | Type | Description |
|----------|------|-------------|
| `field` | `GooglePrivacyDlpV2FieldId` | Field to compute numerical stats on. Supported types are integer, float, date, datetime, timestam... |

### `GooglePrivacyDlpV2NumericalStatsResult`

Result of the numerical stats computation.

| Property | Type | Description |
|----------|------|-------------|
| `maxValue` | `GooglePrivacyDlpV2Value` | Maximum value appearing in the column. |
| `minValue` | `GooglePrivacyDlpV2Value` | Minimum value appearing in the column. |
| `quantileValues` | `array<GooglePrivacyDlpV2Value>` | List of 99 values that partition the set of field values into 100 equal sized buckets. |

### `GooglePrivacyDlpV2OrConditions`

There is an OR relationship between these attributes. They are used to determine if a table should be scanned or not in Discovery.

| Property | Type | Description |
|----------|------|-------------|
| `minAge` | `string` | Minimum age a table must have before Cloud DLP can profile it. Value must be 1 hour or greater. |
| `minRowCount` | `integer` | Minimum number of rows that should be present before Cloud DLP profiles a table |

### `GooglePrivacyDlpV2OrgConfig`

Project and scan location information. Only set when the parent is an org.

| Property | Type | Description |
|----------|------|-------------|
| `location` | `GooglePrivacyDlpV2DiscoveryStartingLocation` | The data to scan: folder, org, or project |
| `projectId` | `string` | The project that will run the scan. The DLP service account that exists within this project must ... |

### `GooglePrivacyDlpV2OtherCloudDiscoveryStartingLocation`

The other cloud starting location for discovery.

| Property | Type | Description |
|----------|------|-------------|
| `awsLocation` | `GooglePrivacyDlpV2AwsDiscoveryStartingLocation` | The AWS starting location for discovery. |

### `GooglePrivacyDlpV2OtherCloudDiscoveryTarget`

Target used to match against for discovery of resources from other clouds. An [AWS connector in Security Command Center (Enterprise](https://cloud.google.com/security-command-center/docs/connect-scc-to-aws) is required to use this feature.

| Property | Type | Description |
|----------|------|-------------|
| `conditions` | `GooglePrivacyDlpV2DiscoveryOtherCloudConditions` | Optional. In addition to matching the filter, these conditions must be true before a profile is g... |
| `dataSourceType` | `GooglePrivacyDlpV2DataSourceType` | Required. The type of data profiles generated by this discovery target. Supported values are: * a... |
| `disabled` | `GooglePrivacyDlpV2Disabled` | Disable profiling for resources that match this filter. |
| `filter` | `GooglePrivacyDlpV2DiscoveryOtherCloudFilter` | Required. The resources that the discovery cadence applies to. The first target with a matching f... |
| `generationCadence` | `GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence` | How often and when to update data profiles. New resources that match both the filter and conditio... |

### `GooglePrivacyDlpV2OtherCloudResourceCollection`

Match resources using regex filters.

| Property | Type | Description |
|----------|------|-------------|
| `includeRegexes` | `GooglePrivacyDlpV2OtherCloudResourceRegexes` | A collection of regular expressions to match a resource against. |

### `GooglePrivacyDlpV2OtherCloudResourceRegex`

A pattern to match against one or more resources. At least one pattern must be specified. Regular expressions use RE2 [syntax](https://github.com/google/re2/wiki/Syntax); a guide can be found under the google/re2 repository on GitHub.

| Property | Type | Description |
|----------|------|-------------|
| `amazonS3BucketRegex` | `GooglePrivacyDlpV2AmazonS3BucketRegex` | Regex for Amazon S3 buckets. |

### `GooglePrivacyDlpV2OtherCloudResourceRegexes`

A collection of regular expressions to determine what resources to match against.

| Property | Type | Description |
|----------|------|-------------|
| `patterns` | `array<GooglePrivacyDlpV2OtherCloudResourceRegex>` | A group of regular expression patterns to match against one or more resources. Maximum of 100 ent... |

### `GooglePrivacyDlpV2OtherCloudSingleResourceReference`

Identifies a single resource, like a single Amazon S3 bucket.

| Property | Type | Description |
|----------|------|-------------|
| `amazonS3Bucket` | `GooglePrivacyDlpV2AmazonS3Bucket` | Amazon S3 bucket. |

### `GooglePrivacyDlpV2OtherInfoTypeSummary`

Infotype details for other infoTypes found within a column.

| Property | Type | Description |
|----------|------|-------------|
| `estimatedPrevalence` | `integer` | Approximate percentage of non-null rows that contained data detected by this infotype. |
| `excludedFromAnalysis` | `boolean` | Whether this infoType was excluded from sensitivity and risk analysis due to factors such as low ... |
| `infoType` | `GooglePrivacyDlpV2InfoType` | The other infoType. |

### `GooglePrivacyDlpV2OutputStorageConfig`

Cloud repository for storing output.

| Property | Type | Description |
|----------|------|-------------|
| `outputSchema` | `string` | Schema used for writing the findings for Inspect jobs. This field is only used for Inspect and mu... |
| `storagePath` | `GooglePrivacyDlpV2CloudStoragePath` | Store findings in an existing Cloud Storage bucket. Files will be generated with the job ID and f... |
| `table` | `GooglePrivacyDlpV2BigQueryTable` | Store findings in an existing table or a new table in an existing dataset. If table_id is not set... |

### `GooglePrivacyDlpV2Overlap`

Defines a condition for overlapping bounding boxes.

### `GooglePrivacyDlpV2PartitionId`

Datastore partition ID. A partition ID identifies a grouping of entities. The grouping is always by project and namespace, however the namespace ID may be empty. A partition ID contains several dimensions: project ID and namespace ID.

| Property | Type | Description |
|----------|------|-------------|
| `namespaceId` | `string` | If not empty, the ID of the namespace to which the entities belong. |
| `projectId` | `string` | The ID of the project to which the entities belong. |

### `GooglePrivacyDlpV2PathElement`

A (kind, ID/name) pair used to construct a key path. If either name or ID is set, the element is complete. If neither is set, the element is incomplete.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | The auto-allocated ID of the entity. Never equal to zero. Values less than zero are discouraged a... |
| `kind` | `string` | The kind of the entity. A kind matching regex `__.*__` is reserved/read-only. A kind must not con... |
| `name` | `string` | The name of the entity. A name matching regex `__.*__` is reserved/read-only. A name must not be ... |

### `GooglePrivacyDlpV2PrimitiveTransformation`

A rule for transforming a value.

| Property | Type | Description |
|----------|------|-------------|
| `bucketingConfig` | `GooglePrivacyDlpV2BucketingConfig` | Bucketing |
| `characterMaskConfig` | `GooglePrivacyDlpV2CharacterMaskConfig` | Mask |
| `cryptoDeterministicConfig` | `GooglePrivacyDlpV2CryptoDeterministicConfig` | Deterministic Crypto |
| `cryptoHashConfig` | `GooglePrivacyDlpV2CryptoHashConfig` | Crypto |
| `cryptoReplaceFfxFpeConfig` | `GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig` | Ffx-Fpe. Strongly discouraged, consider using CryptoDeterministicConfig instead. Fpe is computati... |
| `dateShiftConfig` | `GooglePrivacyDlpV2DateShiftConfig` | Date Shift |
| `fixedSizeBucketingConfig` | `GooglePrivacyDlpV2FixedSizeBucketingConfig` | Fixed size bucketing |
| `redactConfig` | `GooglePrivacyDlpV2RedactConfig` | Redact |
| `replaceConfig` | `GooglePrivacyDlpV2ReplaceValueConfig` | Replace with a specified value. |
| `replaceDictionaryConfig` | `GooglePrivacyDlpV2ReplaceDictionaryConfig` | Replace with a value randomly drawn (with replacement) from a dictionary. |
| `replaceWithInfoTypeConfig` | `GooglePrivacyDlpV2ReplaceWithInfoTypeConfig` | Replace with infotype |
| `timePartConfig` | `GooglePrivacyDlpV2TimePartConfig` | Time extraction |

### `GooglePrivacyDlpV2PrivacyMetric`

Privacy metric to compute for reidentification risk analysis.

| Property | Type | Description |
|----------|------|-------------|
| `categoricalStatsConfig` | `GooglePrivacyDlpV2CategoricalStatsConfig` | Categorical stats |
| `deltaPresenceEstimationConfig` | `GooglePrivacyDlpV2DeltaPresenceEstimationConfig` | delta-presence |
| `kAnonymityConfig` | `GooglePrivacyDlpV2KAnonymityConfig` | K-anonymity |
| `kMapEstimationConfig` | `GooglePrivacyDlpV2KMapEstimationConfig` | k-map |
| `lDiversityConfig` | `GooglePrivacyDlpV2LDiversityConfig` | l-diversity |
| `numericalStatsConfig` | `GooglePrivacyDlpV2NumericalStatsConfig` | Numerical stats |

### `GooglePrivacyDlpV2ProcessingLocation`

Configure processing location for discovery and inspection. For example, image OCR is only provided in limited regions but configuring ProcessingLocation will redirect OCR to a location where OCR is provided.

| Property | Type | Description |
|----------|------|-------------|
| `documentFallbackLocation` | `GooglePrivacyDlpV2DocumentFallbackLocation` | Document processing falls back using this configuration. |
| `imageFallbackLocation` | `GooglePrivacyDlpV2ImageFallbackLocation` | Image processing falls back using this configuration. |

### `GooglePrivacyDlpV2ProfileStatus`

Success or errors for the profile generation.

| Property | Type | Description |
|----------|------|-------------|
| `status` | `GoogleRpcStatus` | Profiling status code and optional message. The `status.code` value is 0 (default value) for OK. |
| `timestamp` | `string` | Time when the profile generation status was updated |

### `GooglePrivacyDlpV2ProjectDataProfile`

An aggregated profile for this project, based on the resources profiled within it.

| Property | Type | Description |
|----------|------|-------------|
| `dataRiskLevel` | `GooglePrivacyDlpV2DataRiskLevel` | The data risk level of this project. |
| `fileStoreDataProfileCount` | `string` | The number of file store data profiles generated for this project. |
| `name` | `string` | The resource name of the profile. |
| `profileLastGenerated` | `string` | The last time the profile was generated. |
| `profileStatus` | `GooglePrivacyDlpV2ProfileStatus` | Success or error status of the last attempt to profile the project. |
| `projectId` | `string` | Project ID or account that was profiled. |
| `sensitivityScore` | `GooglePrivacyDlpV2SensitivityScore` | The sensitivity score of this project. |
| `tableDataProfileCount` | `string` | The number of table data profiles generated for this project. |

### `GooglePrivacyDlpV2Proximity`

Message for specifying a window around a finding to apply a detection rule.

| Property | Type | Description |
|----------|------|-------------|
| `windowAfter` | `integer` | Number of characters after the finding to consider. |
| `windowBefore` | `integer` | Number of characters before the finding to consider. For tabular data, if you want to modify the ... |

### `GooglePrivacyDlpV2PubSubCondition`

A condition consisting of a value.

| Property | Type | Description |
|----------|------|-------------|
| `minimumRiskScore` | `string` | The minimum data risk score that triggers the condition. |
| `minimumSensitivityScore` | `string` | The minimum sensitivity level that triggers the condition. |

### `GooglePrivacyDlpV2PubSubExpressions`

An expression, consisting of an operator and conditions.

| Property | Type | Description |
|----------|------|-------------|
| `conditions` | `array<GooglePrivacyDlpV2PubSubCondition>` | Conditions to apply to the expression. |
| `logicalOperator` | `string` | The operator to apply to the collection of conditions. |

### `GooglePrivacyDlpV2PubSubNotification`

Send a Pub/Sub message into the given Pub/Sub topic to connect other systems to data profile generation. The message payload data will be the byte serialization of `DataProfilePubSubMessage`.

| Property | Type | Description |
|----------|------|-------------|
| `detailOfMessage` | `string` | How much data to include in the Pub/Sub message. If the user wishes to limit the size of the mess... |
| `event` | `string` | The type of event that triggers a Pub/Sub. At most one `PubSubNotification` per EventType is perm... |
| `pubsubCondition` | `GooglePrivacyDlpV2DataProfilePubSubCondition` | Conditions (e.g., data risk or sensitivity level) for triggering a Pub/Sub. |
| `topic` | `string` | Cloud Pub/Sub topic to send notifications to. Format is projects/{project}/topics/{topic}. |

### `GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog`

Publish findings of a DlpJob to Data Catalog. In Data Catalog, tag templates are applied to the resource that Cloud DLP scanned. Data Catalog tag templates are stored in the same project and region where the BigQuery table exists. For Cloud DLP to create and apply the tag template, the Cloud DLP service agent must have the `roles/datacatalog.tagTemplateOwner` permission on the project. The tag template contains fields summarizing the results of the DlpJob. Any field values previously written by another DlpJob are deleted. InfoType naming patterns are strictly enforced when using this feature. Findings are persisted in Data Catalog storage and are governed by service-specific policies for Data Catalog. For more information, see [Service Specific Terms](https://cloud.google.com/terms/service-terms). Only a single instance of this action can be specified. This action is allowed only if all resources being scanned are BigQuery tables. Compatible with: Inspect

### `GooglePrivacyDlpV2PublishFindingsToDataplexCatalog`

Publish findings of a DlpJob to Dataplex Universal Catalog as a `sensitive-data-protection-job-result` aspect. For more information, see [Send inspection results to Dataplex Universal Catalog as aspects](https://cloud.google.com/sensitive-data-protection/docs/add-aspects-inspection-job). Aspects are stored in Dataplex Universal Catalog storage and are governed by service-specific policies for Dataplex Universal Catalog. For more information, see [Service Specific Terms](https://cloud.google.com/terms/service-terms). Only a single instance of this action can be specified. This action is allowed only if all resources being scanned are BigQuery tables. Compatible with: Inspect

### `GooglePrivacyDlpV2PublishSummaryToCscc`

Publish the result summary of a DlpJob to [Security Command Center](https://cloud.google.com/security-command-center). This action is available for only projects that belong to an organization. This action publishes the count of finding instances and their infoTypes. The summary of findings are persisted in Security Command Center and are governed by [service-specific policies for Security Command Center](https://cloud.google.com/terms/service-terms). Only a single instance of this action can be specified. Compatible with: Inspect

### `GooglePrivacyDlpV2PublishToChronicle`

Message expressing intention to publish to Google Security Operations.

### `GooglePrivacyDlpV2PublishToDataplexCatalog`

Create Dataplex Universal Catalog aspects for profiled resources with the aspect type Sensitive Data Protection Profile. To learn more about aspects, see https://cloud.google.com/sensitive-data-protection/docs/add-aspects.

| Property | Type | Description |
|----------|------|-------------|
| `lowerDataRiskToLow` | `boolean` | Whether creating a Dataplex Universal Catalog aspect for a profiled resource should lower the ris... |

### `GooglePrivacyDlpV2PublishToPubSub`

Publish a message into a given Pub/Sub topic when DlpJob has completed. The message contains a single field, `DlpJobName`, which is equal to the finished job's [`DlpJob.name`](https://cloud.google.com/sensitive-data-protection/docs/reference/rest/v2/projects.dlpJobs#DlpJob). Compatible with: Inspect, Risk

| Property | Type | Description |
|----------|------|-------------|
| `topic` | `string` | Cloud Pub/Sub topic to send notifications to. The topic must have given publishing access rights ... |

### `GooglePrivacyDlpV2PublishToSecurityCommandCenter`

If set, a summary finding will be created or updated in Security Command Center for each profile.

### `GooglePrivacyDlpV2PublishToStackdriver`

Enable Stackdriver metric dlp.googleapis.com/finding_count. This will publish a metric to stack driver on each infotype requested and how many findings were found for it. CustomDetectors will be bucketed as 'Custom' under the Stackdriver label 'info_type'.

### `GooglePrivacyDlpV2QuasiId`

A column with a semantic tag attached.

| Property | Type | Description |
|----------|------|-------------|
| `customTag` | `string` | A column can be tagged with a custom tag. In this case, the user must indicate an auxiliary table... |
| `field` | `GooglePrivacyDlpV2FieldId` | Required. Identifies the column. |
| `inferred` | `GoogleProtobufEmpty` | If no semantic tag is indicated, we infer the statistical model from the distribution of values i... |
| `infoType` | `GooglePrivacyDlpV2InfoType` | A column can be tagged with a InfoType to use the relevant public dataset as a statistical model ... |

### `GooglePrivacyDlpV2QuasiIdField`

A quasi-identifier column has a custom_tag, used to know which column in the data corresponds to which column in the statistical model.

| Property | Type | Description |
|----------|------|-------------|
| `customTag` | `string` | A auxiliary field. |
| `field` | `GooglePrivacyDlpV2FieldId` | Identifies the column. |

### `GooglePrivacyDlpV2QuasiIdentifierField`

A quasi-identifier column has a custom_tag, used to know which column in the data corresponds to which column in the statistical model.

| Property | Type | Description |
|----------|------|-------------|
| `customTag` | `string` | A column can be tagged with a custom tag. In this case, the user must indicate an auxiliary table... |
| `field` | `GooglePrivacyDlpV2FieldId` | Identifies the column. |

### `GooglePrivacyDlpV2QuoteInfo`

Message for infoType-dependent details parsed from quote.

| Property | Type | Description |
|----------|------|-------------|
| `dateTime` | `GooglePrivacyDlpV2DateTime` | The date time indicated by the quote. |

### `GooglePrivacyDlpV2Range`

Generic half-open interval [start, end)

| Property | Type | Description |
|----------|------|-------------|
| `end` | `string` | Index of the last character of the range (exclusive). |
| `start` | `string` | Index of the first character of the range (inclusive). |

### `GooglePrivacyDlpV2RecordCondition`

A condition for determining whether a transformation should be applied to a field.

| Property | Type | Description |
|----------|------|-------------|
| `expressions` | `GooglePrivacyDlpV2Expressions` | An expression. |

### `GooglePrivacyDlpV2RecordKey`

Message for a unique key indicating a record that contains a finding.

| Property | Type | Description |
|----------|------|-------------|
| `bigQueryKey` | `GooglePrivacyDlpV2BigQueryKey` | Datastore key |
| `datastoreKey` | `GooglePrivacyDlpV2DatastoreKey` | BigQuery key |
| `idValues` | `array<string>` | Values of identifying columns in the given row. Order of values matches the order of `identifying... |

### `GooglePrivacyDlpV2RecordLocation`

Location of a finding within a row or record.

| Property | Type | Description |
|----------|------|-------------|
| `fieldId` | `GooglePrivacyDlpV2FieldId` | Field id of the field containing the finding. |
| `recordKey` | `GooglePrivacyDlpV2RecordKey` | Key of the finding. |
| `tableLocation` | `GooglePrivacyDlpV2TableLocation` | Location within a `ContentItem.Table`. |

### `GooglePrivacyDlpV2RecordSuppression`

Configuration to suppress records whose suppression conditions evaluate to true.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `GooglePrivacyDlpV2RecordCondition` | A condition that when it evaluates to true will result in the record being evaluated to be suppre... |

### `GooglePrivacyDlpV2RecordTransformation`

The field in a record to transform.

| Property | Type | Description |
|----------|------|-------------|
| `containerTimestamp` | `string` | Findings container modification timestamp, if applicable. |
| `containerVersion` | `string` | Container version, if available ("generation" for Cloud Storage). |
| `fieldId` | `GooglePrivacyDlpV2FieldId` | For record transformations, provide a field. |

### `GooglePrivacyDlpV2RecordTransformations`

A type of transformation that is applied over structured data such as a table.

| Property | Type | Description |
|----------|------|-------------|
| `fieldTransformations` | `array<GooglePrivacyDlpV2FieldTransformation>` | Transform the record by applying various field transformations. |
| `recordSuppressions` | `array<GooglePrivacyDlpV2RecordSuppression>` | Configuration defining which records get suppressed entirely. Records that match any suppression ... |

### `GooglePrivacyDlpV2RedactConfig`

Redact a given value. For example, if used with an `InfoTypeTransformation` transforming PHONE_NUMBER, and input 'My phone number is 206-555-0123', the output would be 'My phone number is '.

### `GooglePrivacyDlpV2RedactImageRequest`

Request to search for potentially sensitive info in an image and redact it by covering it with a colored rectangle.

| Property | Type | Description |
|----------|------|-------------|
| `byteItem` | `GooglePrivacyDlpV2ByteContentItem` | The content must be PNG, JPEG, SVG or BMP. |
| `deidentifyTemplate` | `string` | The full resource name of the de-identification template to use. Settings in the main `image_reda... |
| `imageRedactionConfigs` | `array<GooglePrivacyDlpV2ImageRedactionConfig>` | The configuration for specifying what content to redact from images. |
| `includeFindings` | `boolean` | Whether the response should include findings along with the redacted image. |
| `inspectConfig` | `GooglePrivacyDlpV2InspectConfig` | Configuration for the inspector. |
| `inspectTemplate` | `string` | The full resource name of the inspection template to use. Settings in the main `inspect_config` f... |
| `locationId` | `string` | Deprecated. This field has no effect. |

### `GooglePrivacyDlpV2RedactImageResponse`

Results of redacting an image.

| Property | Type | Description |
|----------|------|-------------|
| `extractedText` | `string` | If an image was being inspected and the InspectConfig's include_quote was set to true, then this ... |
| `inspectResult` | `GooglePrivacyDlpV2InspectResult` | The findings. Populated when include_findings in the request is true. |
| `redactedImage` | `string` | The redacted image. The type will be the same as the original image. |

### `GooglePrivacyDlpV2Regex`

Message defining a custom regular expression.

| Property | Type | Description |
|----------|------|-------------|
| `groupIndexes` | `array<integer>` | The index of the submatch to extract as findings. When not specified, the entire match is returne... |
| `pattern` | `string` | Pattern defining the regular expression. Its syntax (https://github.com/google/re2/wiki/Syntax) c... |

### `GooglePrivacyDlpV2ReidentifyContentRequest`

Request to re-identify an item.

| Property | Type | Description |
|----------|------|-------------|
| `inspectConfig` | `GooglePrivacyDlpV2InspectConfig` | Configuration for the inspector. |
| `inspectTemplateName` | `string` | Template to use. Any configuration directly specified in `inspect_config` will override those set... |
| `item` | `GooglePrivacyDlpV2ContentItem` | The item to re-identify. Will be treated as text. |
| `locationId` | `string` | Deprecated. This field has no effect. |
| `reidentifyConfig` | `GooglePrivacyDlpV2DeidentifyConfig` | Configuration for the re-identification of the content item. This field shares the same proto mes... |
| `reidentifyTemplateName` | `string` | Template to use. References an instance of `DeidentifyTemplate`. Any configuration directly speci... |

### `GooglePrivacyDlpV2ReidentifyContentResponse`

Results of re-identifying an item.

| Property | Type | Description |
|----------|------|-------------|
| `item` | `GooglePrivacyDlpV2ContentItem` | The re-identified item. |
| `overview` | `GooglePrivacyDlpV2TransformationOverview` | An overview of the changes that were made to the `item`. |

### `GooglePrivacyDlpV2RelatedResource`

A related resource. Examples: * The source BigQuery table for a Vertex AI dataset. * The source Cloud Storage bucket for a Vertex AI dataset.

| Property | Type | Description |
|----------|------|-------------|
| `fullResource` | `string` | The full resource name of the related resource. |

### `GooglePrivacyDlpV2ReplaceDictionaryConfig`

Replace each input value with a value randomly selected from the dictionary.

| Property | Type | Description |
|----------|------|-------------|
| `wordList` | `GooglePrivacyDlpV2WordList` | A list of words to select from for random replacement. The [limits](https://cloud.google.com/sens... |

### `GooglePrivacyDlpV2ReplaceValueConfig`

Replace each input value with a given `Value`.

| Property | Type | Description |
|----------|------|-------------|
| `newValue` | `GooglePrivacyDlpV2Value` | Value to replace it with. |

### `GooglePrivacyDlpV2ReplaceWithInfoTypeConfig`

Replace each matching finding with the name of the info_type.

### `GooglePrivacyDlpV2RequestedDeidentifyOptions`

De-identification options.

| Property | Type | Description |
|----------|------|-------------|
| `snapshotDeidentifyTemplate` | `GooglePrivacyDlpV2DeidentifyTemplate` | Snapshot of the state of the `DeidentifyTemplate` from the Deidentify action at the time this job... |
| `snapshotImageRedactTemplate` | `GooglePrivacyDlpV2DeidentifyTemplate` | Snapshot of the state of the image transformation `DeidentifyTemplate` from the `Deidentify` acti... |
| `snapshotStructuredDeidentifyTemplate` | `GooglePrivacyDlpV2DeidentifyTemplate` | Snapshot of the state of the structured `DeidentifyTemplate` from the `Deidentify` action at the ... |

### `GooglePrivacyDlpV2RequestedOptions`

Snapshot of the inspection configuration.

| Property | Type | Description |
|----------|------|-------------|
| `jobConfig` | `GooglePrivacyDlpV2InspectJobConfig` | Inspect config. |
| `snapshotInspectTemplate` | `GooglePrivacyDlpV2InspectTemplate` | If run with an InspectTemplate, a snapshot of its state at the time of this run. |

### `GooglePrivacyDlpV2RequestedRiskAnalysisOptions`

Risk analysis options.

| Property | Type | Description |
|----------|------|-------------|
| `jobConfig` | `GooglePrivacyDlpV2RiskAnalysisJobConfig` | The job config for the risk job. |

### `GooglePrivacyDlpV2Result`

All Result fields are updated while the job is processing.

| Property | Type | Description |
|----------|------|-------------|
| `hybridStats` | `GooglePrivacyDlpV2HybridInspectStatistics` | Statistics related to the processing of hybrid inspect. |
| `infoTypeStats` | `array<GooglePrivacyDlpV2InfoTypeStats>` | Statistics of how many instances of each info type were found during inspect job. |
| `numRowsProcessed` | `string` | Number of rows scanned after sampling and time filtering (applicable for row based stores such as... |
| `processedBytes` | `string` | Total size in bytes that were processed. |
| `totalEstimatedBytes` | `string` | Estimate of the number of bytes to process. |

### `GooglePrivacyDlpV2RiskAnalysisJobConfig`

Configuration for a risk analysis job. See https://cloud.google.com/sensitive-data-protection/docs/concepts-risk-analysis to learn more.

| Property | Type | Description |
|----------|------|-------------|
| `actions` | `array<GooglePrivacyDlpV2Action>` | Actions to execute at the completion of the job. Are executed in the order provided. |
| `privacyMetric` | `GooglePrivacyDlpV2PrivacyMetric` | Privacy metric to compute. |
| `sourceTable` | `GooglePrivacyDlpV2BigQueryTable` | Input dataset to compute metrics over. |

### `GooglePrivacyDlpV2Row`

Values of the row.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<GooglePrivacyDlpV2Value>` | Individual cells. |

### `GooglePrivacyDlpV2SaveFindings`

If set, the detailed findings will be persisted to the specified OutputStorageConfig. Only a single instance of this action can be specified. Compatible with: Inspect, Risk

| Property | Type | Description |
|----------|------|-------------|
| `outputConfig` | `GooglePrivacyDlpV2OutputStorageConfig` | Location to store findings outside of DLP. |

### `GooglePrivacyDlpV2SaveToGcsFindingsOutput`

Collection of findings saved to a Cloud Storage bucket. This is used as the proto schema for textproto files created when specifying a cloud storage path to save Inspect findings.

| Property | Type | Description |
|----------|------|-------------|
| `findings` | `array<GooglePrivacyDlpV2Finding>` | List of findings. |

### `GooglePrivacyDlpV2Schedule`

Schedule for inspect job triggers.

| Property | Type | Description |
|----------|------|-------------|
| `recurrencePeriodDuration` | `string` | With this option a job is started on a regular periodic basis. For example: every day (86400 seco... |

### `GooglePrivacyDlpV2SchemaModifiedCadence`

How frequently to modify the profile when the table's schema is modified.

| Property | Type | Description |
|----------|------|-------------|
| `frequency` | `string` | Frequency to regenerate data profiles when the schema is modified. Defaults to monthly. |
| `types` | `array<string>` | The types of schema modifications to consider. Defaults to NEW_COLUMNS. |

### `GooglePrivacyDlpV2SearchConnectionsResponse`

Response message for SearchConnections.

| Property | Type | Description |
|----------|------|-------------|
| `connections` | `array<GooglePrivacyDlpV2Connection>` | List of connections that match the search query. Note that only a subset of the fields will be po... |
| `nextPageToken` | `string` | Token to retrieve the next page of results. An empty value means there are no more results. |

### `GooglePrivacyDlpV2SecretManagerCredential`

A credential consisting of a username and password, where the password is stored in a Secret Manager resource. Note: Secret Manager [charges apply](https://cloud.google.com/secret-manager/pricing).

| Property | Type | Description |
|----------|------|-------------|
| `passwordSecretVersionName` | `string` | Required. The name of the Secret Manager resource that stores the password, in the form `projects... |
| `username` | `string` | Required. The username. |

### `GooglePrivacyDlpV2SecretsDiscoveryTarget`

Discovery target for credentials and secrets in cloud resource metadata. This target does not include any filtering or frequency controls. Cloud DLP will scan cloud resource metadata for secrets daily. No inspect template should be included in the discovery config for a security benchmarks scan. Instead, the built-in list of secrets and credentials infoTypes will be used (see https://cloud.google.com/sensitive-data-protection/docs/infotypes-reference#credentials_and_secrets). Credentials and secrets discovered will be reported as vulnerabilities to Security Command Center.

### `GooglePrivacyDlpV2SelectedInfoTypes`

Apply transformation to the selected info_types.

| Property | Type | Description |
|----------|------|-------------|
| `infoTypes` | `array<GooglePrivacyDlpV2InfoType>` | Required. InfoTypes to apply the transformation to. Required. Provided InfoType must be unique wi... |

### `GooglePrivacyDlpV2SensitivityScore`

Score is calculated from of all elements in the data profile. A higher level means the data is more sensitive.

| Property | Type | Description |
|----------|------|-------------|
| `score` | `string` | The sensitivity score applied to the resource. |

### `GooglePrivacyDlpV2StatisticalTable`

An auxiliary table containing statistical information on the relative frequency of different quasi-identifiers values. It has one or several quasi-identifiers columns, and one column that indicates the relative frequency of each quasi-identifier tuple. If a tuple is present in the data but not in the auxiliary table, the corresponding relative frequency is assumed to be zero (and thus, the tuple is highly reidentifiable).

| Property | Type | Description |
|----------|------|-------------|
| `quasiIds` | `array<GooglePrivacyDlpV2QuasiIdentifierField>` | Required. Quasi-identifier columns. |
| `relativeFrequency` | `GooglePrivacyDlpV2FieldId` | Required. The relative frequency column must contain a floating-point number between 0 and 1 (inc... |
| `table` | `GooglePrivacyDlpV2BigQueryTable` | Required. Auxiliary table location. |

### `GooglePrivacyDlpV2StorageConfig`

Shared message indicating Cloud storage type.

| Property | Type | Description |
|----------|------|-------------|
| `bigQueryOptions` | `GooglePrivacyDlpV2BigQueryOptions` | BigQuery options. |
| `cloudStorageOptions` | `GooglePrivacyDlpV2CloudStorageOptions` | Cloud Storage options. |
| `datastoreOptions` | `GooglePrivacyDlpV2DatastoreOptions` | Google Cloud Datastore options. |
| `hybridOptions` | `GooglePrivacyDlpV2HybridOptions` | Hybrid inspection options. |
| `timespanConfig` | `GooglePrivacyDlpV2TimespanConfig` | Configuration of the timespan of the items to include in scanning. |

### `GooglePrivacyDlpV2StorageMetadataLabel`

Storage metadata label to indicate which metadata entry contains findings.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | Label name. |

### `GooglePrivacyDlpV2StoredInfoType`

StoredInfoType resource message that contains information about the current version and any pending updates.

| Property | Type | Description |
|----------|------|-------------|
| `currentVersion` | `GooglePrivacyDlpV2StoredInfoTypeVersion` | Current version of the stored info type. |
| `name` | `string` | Resource name. |
| `pendingVersions` | `array<GooglePrivacyDlpV2StoredInfoTypeVersion>` | Pending versions of the stored info type. Empty if no versions are pending. |

### `GooglePrivacyDlpV2StoredInfoTypeConfig`

Configuration for stored infoTypes. All fields and subfield are provided by the user. For more information, see https://cloud.google.com/sensitive-data-protection/docs/creating-custom-infotypes.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Description of the StoredInfoType (max 256 characters). |
| `dictionary` | `GooglePrivacyDlpV2Dictionary` | Store dictionary-based CustomInfoType. |
| `displayName` | `string` | Display name of the StoredInfoType (max 256 characters). |
| `largeCustomDictionary` | `GooglePrivacyDlpV2LargeCustomDictionaryConfig` | StoredInfoType where findings are defined by a dictionary of phrases. |
| `regex` | `GooglePrivacyDlpV2Regex` | Store regular expression-based StoredInfoType. |

### `GooglePrivacyDlpV2StoredInfoTypeStats`

Statistics for a StoredInfoType.

| Property | Type | Description |
|----------|------|-------------|
| `largeCustomDictionary` | `GooglePrivacyDlpV2LargeCustomDictionaryStats` | StoredInfoType where findings are defined by a dictionary of phrases. |

### `GooglePrivacyDlpV2StoredInfoTypeVersion`

Version of a StoredInfoType, including the configuration used to build it, create timestamp, and current state.

| Property | Type | Description |
|----------|------|-------------|
| `config` | `GooglePrivacyDlpV2StoredInfoTypeConfig` | StoredInfoType configuration. |
| `createTime` | `string` | Create timestamp of the version. Read-only, determined by the system when the version is created. |
| `errors` | `array<GooglePrivacyDlpV2Error>` | Errors that occurred when creating this storedInfoType version, or anomalies detected in the stor... |
| `state` | `string` | Stored info type version state. Read-only, updated by the system during dictionary creation. |
| `stats` | `GooglePrivacyDlpV2StoredInfoTypeStats` | Statistics about this storedInfoType version. |

### `GooglePrivacyDlpV2StoredType`

A reference to a StoredInfoType to use with scanning.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Timestamp indicating when the version of the `StoredInfoType` used for inspection was created. Ou... |
| `name` | `string` | Resource name of the requested `StoredInfoType`, for example `organizations/433245324/storedInfoT... |

### `GooglePrivacyDlpV2SummaryResult`

A collection that informs the user the number of times a particular `TransformationResultCode` and error details occurred.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | Outcome of the transformation. |
| `count` | `string` | Number of transformations counted by this result. |
| `details` | `string` | A place for warnings or errors to show up if a transformation didn't work as expected. |

### `GooglePrivacyDlpV2SurrogateType`

Message for detecting output from deidentification transformations such as [`CryptoReplaceFfxFpeConfig`](https://cloud.google.com/sensitive-data-protection/docs/reference/rest/v2/organizations.deidentifyTemplates#cryptoreplaceffxfpeconfig). These types of transformations are those that perform pseudonymization, thereby producing a "surrogate" as output. This should be used in conjunction with a field on the transformation such as `surrogate_info_type`. This CustomInfoType does not support the use of `detection_rules`.

### `GooglePrivacyDlpV2Table`

Structured content to inspect. Up to 50,000 `Value`s per request allowed. See https://cloud.google.com/sensitive-data-protection/docs/inspecting-structured-text#inspecting_a_table to learn more.

| Property | Type | Description |
|----------|------|-------------|
| `headers` | `array<GooglePrivacyDlpV2FieldId>` | Headers of the table. |
| `rows` | `array<GooglePrivacyDlpV2Row>` | Rows of the table. |

### `GooglePrivacyDlpV2TableDataProfile`

The profile for a scanned table.

| Property | Type | Description |
|----------|------|-------------|
| `configSnapshot` | `GooglePrivacyDlpV2DataProfileConfigSnapshot` | The snapshot of the configurations used to generate the profile. |
| `createTime` | `string` | The time at which the table was created. |
| `dataRiskLevel` | `GooglePrivacyDlpV2DataRiskLevel` | The data risk level of this table. |
| `dataSourceType` | `GooglePrivacyDlpV2DataSourceType` | The resource type that was profiled. |
| `datasetId` | `string` | If the resource is BigQuery, the dataset ID. |
| `datasetLocation` | `string` | If supported, the location where the dataset's data is stored. See https://cloud.google.com/bigqu... |
| `datasetProjectId` | `string` | The Google Cloud project ID that owns the resource. |
| `domains` | `array<GooglePrivacyDlpV2Domain>` | Domains associated with the profile. |
| `encryptionStatus` | `string` | How the table is encrypted. |
| `expirationTime` | `string` | Optional. The time when this table expires. |
| `failedColumnCount` | `string` | The number of columns skipped in the table because of an error. |
| `fullResource` | `string` | The Cloud Asset Inventory resource that was profiled in order to generate this TableDataProfile. ... |
| `lastModifiedTime` | `string` | The time when this table was last modified |
| `name` | `string` | The name of the profile. |
| `otherInfoTypes` | `array<GooglePrivacyDlpV2OtherInfoTypeSummary>` | Other infoTypes found in this table's data. |
| `predictedInfoTypes` | `array<GooglePrivacyDlpV2InfoTypeSummary>` | The infoTypes predicted from this table's data. |
| `profileLastGenerated` | `string` | The last time the profile was generated. |
| `profileStatus` | `GooglePrivacyDlpV2ProfileStatus` | Success or error status from the most recent profile generation attempt. May be empty if the prof... |
| `projectDataProfile` | `string` | The resource name of the project data profile for this table. |
| `relatedResources` | `array<GooglePrivacyDlpV2RelatedResource>` | Resources related to this profile. |
| `resourceLabels` | `object` | The labels applied to the resource at the time the profile was generated. |
| `resourceVisibility` | `string` | How broadly a resource has been shared. |
| `rowCount` | `string` | Number of rows in the table when the profile was generated. This will not be populated for BigLak... |
| `sampleFindingsTable` | `GooglePrivacyDlpV2BigQueryTable` | The BigQuery table to which the sample findings are written. |
| `scannedColumnCount` | `string` | The number of columns profiled in the table. |
| `sensitivityScore` | `GooglePrivacyDlpV2SensitivityScore` | The sensitivity score of this table. |
| `state` | `string` | State of a profile. This will always be set to DONE when the table data profile is written to ano... |
| `tableId` | `string` | The table ID. |
| `tableSizeBytes` | `string` | The size of the table when the profile was generated. |
| `tags` | `array<GooglePrivacyDlpV2Tag>` | The tags attached to the table, including any tags attached during profiling. Because tags are at... |

### `GooglePrivacyDlpV2TableLocation`

Location of a finding within a table.

| Property | Type | Description |
|----------|------|-------------|
| `rowIndex` | `string` | The zero-based index of the row where the finding is located. Only populated for resources that h... |

### `GooglePrivacyDlpV2TableOptions`

Instructions regarding the table content being inspected.

| Property | Type | Description |
|----------|------|-------------|
| `identifyingFields` | `array<GooglePrivacyDlpV2FieldId>` | The columns that are the primary keys for table objects included in ContentItem. A copy of this c... |

### `GooglePrivacyDlpV2TableReference`

Message defining the location of a BigQuery table with the projectId inferred from the parent project.

| Property | Type | Description |
|----------|------|-------------|
| `datasetId` | `string` | Dataset ID of the table. |
| `projectId` | `string` | The Google Cloud project ID of the project containing the table. If omitted, the project ID is in... |
| `tableId` | `string` | Name of the table. |

### `GooglePrivacyDlpV2Tag`

A tag associated with a resource.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | The key of a tag key-value pair. For Google Cloud resources, this is the resource name of the key... |
| `namespacedTagValue` | `string` | The namespaced name for the tag value to attach to Google Cloud resources. Must be in the format ... |
| `value` | `string` | The value of a tag key-value pair. For Google Cloud resources, this is the resource name of the v... |

### `GooglePrivacyDlpV2TagCondition`

The tag to attach to profiles matching the condition. At most one `TagCondition` can be specified per sensitivity level.

| Property | Type | Description |
|----------|------|-------------|
| `sensitivityScore` | `GooglePrivacyDlpV2SensitivityScore` | Conditions attaching the tag to a resource on its profile having this sensitivity score. |
| `tag` | `GooglePrivacyDlpV2TagValue` | The tag value to attach to resources. |

### `GooglePrivacyDlpV2TagFilter`

A single tag to filter against.

| Property | Type | Description |
|----------|------|-------------|
| `namespacedTagKey` | `string` | The namespaced name for the tag key. Must be in the format `{parent_id}/{tag_key_short_name}`, fo... |
| `namespacedTagValue` | `string` | The namespaced name for the tag value. Must be in the format `{parent_id}/{tag_key_short_name}/{s... |

### `GooglePrivacyDlpV2TagFilters`

Tags to match against for filtering.

| Property | Type | Description |
|----------|------|-------------|
| `tagFilters` | `array<GooglePrivacyDlpV2TagFilter>` | Required. A resource must match ALL of the specified tag filters to be included in the collection. |

### `GooglePrivacyDlpV2TagResources`

If set, attaches the [tags] (https://cloud.google.com/resource-manager/docs/tags/tags-overview) provided to profiled resources. Tags support [access control](https://cloud.google.com/iam/docs/tags-access-control). You can conditionally grant or deny access to a resource based on whether the resource has a specific tag.

| Property | Type | Description |
|----------|------|-------------|
| `lowerDataRiskToLow` | `boolean` | Whether applying a tag to a resource should lower the risk of the profile for that resource. For ... |
| `profileGenerationsToTag` | `array<string>` | The profile generations for which the tag should be attached to resources. If you attach a tag to... |
| `tagConditions` | `array<GooglePrivacyDlpV2TagCondition>` | The tags to associate with different conditions. |

### `GooglePrivacyDlpV2TagValue`

A value of a tag.

| Property | Type | Description |
|----------|------|-------------|
| `namespacedValue` | `string` | The namespaced name for the tag value to attach to resources. Must be in the format `{parent_id}/... |

### `GooglePrivacyDlpV2TaggedField`

A column with a semantic tag attached.

| Property | Type | Description |
|----------|------|-------------|
| `customTag` | `string` | A column can be tagged with a custom tag. In this case, the user must indicate an auxiliary table... |
| `field` | `GooglePrivacyDlpV2FieldId` | Required. Identifies the column. |
| `inferred` | `GoogleProtobufEmpty` | If no semantic tag is indicated, we infer the statistical model from the distribution of values i... |
| `infoType` | `GooglePrivacyDlpV2InfoType` | A column can be tagged with a InfoType to use the relevant public dataset as a statistical model ... |

### `GooglePrivacyDlpV2ThrowError`

Throw an error and fail the request when a transformation error occurs.

### `GooglePrivacyDlpV2TimePartConfig`

For use with `Date`, `Timestamp`, and `TimeOfDay`, extract or preserve a portion of the value.

| Property | Type | Description |
|----------|------|-------------|
| `partToExtract` | `string` | The part of the time to keep. |

### `GooglePrivacyDlpV2TimeZone`

Time zone of the date time object.

| Property | Type | Description |
|----------|------|-------------|
| `offsetMinutes` | `integer` | Set only if the offset can be determined. Positive for time ahead of UTC. E.g. For "UTC-9", this ... |

### `GooglePrivacyDlpV2TimespanConfig`

Configuration of the timespan of the items to include in scanning. Currently only supported when inspecting Cloud Storage and BigQuery.

| Property | Type | Description |
|----------|------|-------------|
| `enableAutoPopulationOfTimespanConfig` | `boolean` | When the job is started by a JobTrigger we will automatically figure out a valid start_time to av... |
| `endTime` | `string` | Exclude files, tables, or rows newer than this value. If not set, no upper time limit is applied. |
| `startTime` | `string` | Exclude files, tables, or rows older than this value. If not set, no lower time limit is applied. |
| `timestampField` | `GooglePrivacyDlpV2FieldId` | Specification of the field containing the timestamp of scanned items. Used for data sources like ... |

### `GooglePrivacyDlpV2TransformationConfig`

User specified templates and configs for how to deidentify structured, unstructures, and image files. User must provide either a unstructured deidentify template or at least one redact image config.

| Property | Type | Description |
|----------|------|-------------|
| `deidentifyTemplate` | `string` | De-identify template. If this template is specified, it will serve as the default de-identify tem... |
| `imageRedactTemplate` | `string` | Image redact template. If this template is specified, it will serve as the de-identify template f... |
| `structuredDeidentifyTemplate` | `string` | Structured de-identify template. If this template is specified, it will serve as the de-identify ... |

### `GooglePrivacyDlpV2TransformationDescription`

A flattened description of a `PrimitiveTransformation` or `RecordSuppression`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `string` | A human-readable string representation of the `RecordCondition` corresponding to this transformat... |
| `description` | `string` | A description of the transformation. This is empty for a RECORD_SUPPRESSION, or is the output of ... |
| `infoType` | `GooglePrivacyDlpV2InfoType` | Set if the transformation was limited to a specific `InfoType`. |
| `type` | `string` | The transformation type. |

### `GooglePrivacyDlpV2TransformationDetails`

Details about a single transformation. This object contains a description of the transformation, information about whether the transformation was successfully applied, and the precise location where the transformation occurred. These details are stored in a user-specified BigQuery table.

| Property | Type | Description |
|----------|------|-------------|
| `containerName` | `string` | The top level name of the container where the transformation is located (this will be the source ... |
| `resourceName` | `string` | The name of the job that completed the transformation. |
| `statusDetails` | `GooglePrivacyDlpV2TransformationResultStatus` | Status of the transformation, if transformation was not successful, this will specify what caused... |
| `transformation` | `array<GooglePrivacyDlpV2TransformationDescription>` | Description of transformation. This would only contain more than one element if there were multip... |
| `transformationLocation` | `GooglePrivacyDlpV2TransformationLocation` | The precise location of the transformed content in the original container. |
| `transformedBytes` | `string` | The number of bytes that were transformed. If transformation was unsuccessful or did not take pla... |

### `GooglePrivacyDlpV2TransformationDetailsStorageConfig`

Config for storing transformation details.

| Property | Type | Description |
|----------|------|-------------|
| `table` | `GooglePrivacyDlpV2BigQueryTable` | The BigQuery table in which to store the output. This may be an existing table or in a new table ... |

### `GooglePrivacyDlpV2TransformationErrorHandling`

How to handle transformation errors during de-identification. A transformation error occurs when the requested transformation is incompatible with the data. For example, trying to de-identify an IP address using a `DateShift` transformation would result in a transformation error, since date info cannot be extracted from an IP address. Information about any incompatible transformations, and how they were handled, is returned in the response as part of the `TransformationOverviews`.

| Property | Type | Description |
|----------|------|-------------|
| `leaveUntransformed` | `GooglePrivacyDlpV2LeaveUntransformed` | Ignore errors |
| `throwError` | `GooglePrivacyDlpV2ThrowError` | Throw an error |

### `GooglePrivacyDlpV2TransformationLocation`

Specifies the location of a transformation.

| Property | Type | Description |
|----------|------|-------------|
| `containerType` | `string` | Information about the functionality of the container where this finding occurred, if available. |
| `findingId` | `string` | For infotype transformations, link to the corresponding findings ID so that location information ... |
| `recordTransformation` | `GooglePrivacyDlpV2RecordTransformation` | For record transformations, provide a field and container information. |

### `GooglePrivacyDlpV2TransformationOverview`

Overview of the modifications that occurred.

| Property | Type | Description |
|----------|------|-------------|
| `transformationSummaries` | `array<GooglePrivacyDlpV2TransformationSummary>` | Transformations applied to the dataset. |
| `transformedBytes` | `string` | Total size in bytes that were transformed in some way. |

### `GooglePrivacyDlpV2TransformationResultStatus`

The outcome of a transformation.

| Property | Type | Description |
|----------|------|-------------|
| `details` | `GoogleRpcStatus` | Detailed error codes and messages |
| `resultStatusType` | `string` | Transformation result status type, this will be either SUCCESS, or it will be the reason for why ... |

### `GooglePrivacyDlpV2TransformationSummary`

Summary of a single transformation. Only one of 'transformation', 'field_transformation', or 'record_suppress' will be set.

| Property | Type | Description |
|----------|------|-------------|
| `field` | `GooglePrivacyDlpV2FieldId` | Set if the transformation was limited to a specific FieldId. |
| `fieldTransformations` | `array<GooglePrivacyDlpV2FieldTransformation>` | The field transformation that was applied. If multiple field transformations are requested for a ... |
| `infoType` | `GooglePrivacyDlpV2InfoType` | Set if the transformation was limited to a specific InfoType. |
| `recordSuppress` | `GooglePrivacyDlpV2RecordSuppression` | The specific suppression option these stats apply to. |
| `results` | `array<GooglePrivacyDlpV2SummaryResult>` | Collection of all transformations that took place or had an error. |
| `transformation` | `GooglePrivacyDlpV2PrimitiveTransformation` | The specific transformation these stats apply to. |
| `transformedBytes` | `string` | Total size in bytes that were transformed in some way. |

### `GooglePrivacyDlpV2TransientCryptoKey`

Use this to have a random data crypto key generated. It will be discarded after the request finishes.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. Name of the key. This is an arbitrary string used to differentiate different keys. A un... |

### `GooglePrivacyDlpV2Trigger`

What event needs to occur for a new job to be started.

| Property | Type | Description |
|----------|------|-------------|
| `manual` | `GooglePrivacyDlpV2Manual` | For use with hybrid jobs. Jobs must be manually created and finished. |
| `schedule` | `GooglePrivacyDlpV2Schedule` | Create a job on a repeating basis based on the elapse of time. |

### `GooglePrivacyDlpV2UnwrappedCryptoKey`

Using raw keys is prone to security risks due to accidentally leaking the key. Choose another type of key if possible.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | Required. A 128/192/256 bit key. |

### `GooglePrivacyDlpV2UpdateConnectionRequest`

Request message for UpdateConnection.

| Property | Type | Description |
|----------|------|-------------|
| `connection` | `GooglePrivacyDlpV2Connection` | Required. The connection with new values for the relevant fields. |
| `updateMask` | `string` | Optional. Mask to control which fields get updated. |

### `GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest`

Request message for UpdateDeidentifyTemplate.

| Property | Type | Description |
|----------|------|-------------|
| `deidentifyTemplate` | `GooglePrivacyDlpV2DeidentifyTemplate` | New DeidentifyTemplate value. |
| `updateMask` | `string` | Mask to control which fields get updated. |

### `GooglePrivacyDlpV2UpdateDiscoveryConfigRequest`

Request message for UpdateDiscoveryConfig.

| Property | Type | Description |
|----------|------|-------------|
| `discoveryConfig` | `GooglePrivacyDlpV2DiscoveryConfig` | Required. New DiscoveryConfig value. |
| `updateMask` | `string` | Mask to control which fields get updated. |

### `GooglePrivacyDlpV2UpdateInspectTemplateRequest`

Request message for UpdateInspectTemplate.

| Property | Type | Description |
|----------|------|-------------|
| `inspectTemplate` | `GooglePrivacyDlpV2InspectTemplate` | New InspectTemplate value. |
| `updateMask` | `string` | Mask to control which fields get updated. |

### `GooglePrivacyDlpV2UpdateJobTriggerRequest`

Request message for UpdateJobTrigger.

| Property | Type | Description |
|----------|------|-------------|
| `jobTrigger` | `GooglePrivacyDlpV2JobTrigger` | New JobTrigger value. |
| `updateMask` | `string` | Mask to control which fields get updated. |

### `GooglePrivacyDlpV2UpdateStoredInfoTypeRequest`

Request message for UpdateStoredInfoType.

| Property | Type | Description |
|----------|------|-------------|
| `config` | `GooglePrivacyDlpV2StoredInfoTypeConfig` | Updated configuration for the storedInfoType. If not provided, a new version of the storedInfoTyp... |
| `updateMask` | `string` | Mask to control which fields get updated. |

### `GooglePrivacyDlpV2Value`

Set of primitive values supported by the system. Note that for the purposes of inspection or transformation, the number of bytes considered to comprise a 'Value' is based on its representation as a UTF-8 encoded string. For example, if 'integer_value' is set to 123456789, the number of bytes would be counted as 9, even though an int64 only holds up to 8 bytes of data.

| Property | Type | Description |
|----------|------|-------------|
| `booleanValue` | `boolean` | boolean |
| `dateValue` | `GoogleTypeDate` | date |
| `dayOfWeekValue` | `string` | day of week |
| `floatValue` | `number` | float |
| `integerValue` | `string` | integer |
| `stringValue` | `string` | string |
| `timeValue` | `GoogleTypeTimeOfDay` | time of day |
| `timestampValue` | `string` | timestamp |

### `GooglePrivacyDlpV2ValueFrequency`

A value of a field, including its frequency.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `string` | How many times the value is contained in the field. |
| `value` | `GooglePrivacyDlpV2Value` | A value contained in the field in question. |

### `GooglePrivacyDlpV2VersionDescription`

Details about each available version for an infotype.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Description of the version. |
| `version` | `string` | Name of the version |

### `GooglePrivacyDlpV2VertexDatasetCollection`

Match dataset resources using regex filters.

| Property | Type | Description |
|----------|------|-------------|
| `vertexDatasetRegexes` | `GooglePrivacyDlpV2VertexDatasetRegexes` | The regex used to filter dataset resources. |

### `GooglePrivacyDlpV2VertexDatasetDiscoveryTarget`

Target used to match against for discovery with Vertex AI datasets.

| Property | Type | Description |
|----------|------|-------------|
| `conditions` | `GooglePrivacyDlpV2DiscoveryVertexDatasetConditions` | In addition to matching the filter, these conditions must be true before a profile is generated. |
| `disabled` | `GooglePrivacyDlpV2Disabled` | Disable profiling for datasets that match this filter. |
| `filter` | `GooglePrivacyDlpV2DiscoveryVertexDatasetFilter` | Required. The datasets the discovery cadence applies to. The first target with a matching filter ... |
| `generationCadence` | `GooglePrivacyDlpV2DiscoveryVertexDatasetGenerationCadence` | How often and when to update profiles. New datasets that match both the filter and conditions are... |

### `GooglePrivacyDlpV2VertexDatasetRegex`

A pattern to match against one or more dataset resources.

| Property | Type | Description |
|----------|------|-------------|
| `projectIdRegex` | `string` | For organizations, if unset, will match all projects. Has no effect for configurations created wi... |

### `GooglePrivacyDlpV2VertexDatasetRegexes`

A collection of regular expressions to determine what datasets to match against.

| Property | Type | Description |
|----------|------|-------------|
| `patterns` | `array<GooglePrivacyDlpV2VertexDatasetRegex>` | Required. The group of regular expression patterns to match against one or more datasets. Maximum... |

### `GooglePrivacyDlpV2VertexDatasetResourceReference`

Identifies a single Vertex AI resource. Only datasets are supported.

| Property | Type | Description |
|----------|------|-------------|
| `datasetResourceName` | `string` | Required. The name of the Vertex AI resource. If set within a project-level configuration, the sp... |

### `GooglePrivacyDlpV2WordList`

Message defining a list of words or phrases to search for in the data.

| Property | Type | Description |
|----------|------|-------------|
| `words` | `array<string>` | Words or phrases defining the dictionary. The dictionary must contain at least one phrase and eve... |

### `GoogleProtobufEmpty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `GoogleRpcStatus`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `GoogleTypeDate`

Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by ... |
| `month` | `integer` | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `year` | `integer` | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

### `GoogleTypeTimeOfDay`

Represents a time of day. The date and time zone are either not significant or are specified elsewhere. An API may choose to allow leap seconds. Related types are google.type.Date and `google.protobuf.Timestamp`.

| Property | Type | Description |
|----------|------|-------------|
| `hours` | `integer` | Hours of a day in 24 hour format. Must be greater than or equal to 0 and typically must be less t... |
| `minutes` | `integer` | Minutes of an hour. Must be greater than or equal to 0 and less than or equal to 59. |
| `nanos` | `integer` | Fractions of seconds, in nanoseconds. Must be greater than or equal to 0 and less than or equal t... |
| `seconds` | `integer` | Seconds of a minute. Must be greater than or equal to 0 and typically must be less than or equal ... |

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

