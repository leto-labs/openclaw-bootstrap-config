# Cloud Dataplex API - API Reference

**Version**: `v1` | **Methods**: 221 | **Schemas**: 252

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `dataplex.organizations.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `dataplex.organizations.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `dataplex.organizations.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `dataplex.organizations.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `dataplex.organizations.locations.encryptionConfigs.delete` | DELETE | `v1/{+name}` | Delete an EncryptionConfig. |
| `dataplex.organizations.locations.encryptionConfigs.list` | GET | `v1/{+parent}/encryptionConfigs` | List EncryptionConfigs. |
| `dataplex.organizations.locations.encryptionConfigs.create` | POST | `v1/{+parent}/encryptionConfigs` | Create an EncryptionConfig. |
| `dataplex.organizations.locations.encryptionConfigs.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `dataplex.organizations.locations.encryptionConfigs.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy.Can return... |
| `dataplex.organizations.locations.encryptionConfigs.get` | GET | `v1/{+name}` | Get an EncryptionConfig. |
| `dataplex.organizations.locations.encryptionConfigs.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `dataplex.organizations.locations.encryptionConfigs.patch` | PATCH | `v1/{+name}` | Update an EncryptionConfig. |
| `dataplex.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `dataplex.projects.locations.lookupEntry` | GET | `v1/{+name}:lookupEntry` | Looks up an entry by name using the permission on the source system. |
| `dataplex.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `dataplex.projects.locations.searchEntries` | POST | `v1/{+name}:searchEntries` | Searches for Entries matching the given query and scope. |
| `dataplex.projects.locations.lookupEntryLinks` | GET | `v1/{+name}:lookupEntryLinks` | Looks up Entry Links referencing the specified Entry. |
| `dataplex.projects.locations.governanceRules.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `dataplex.projects.locations.governanceRules.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy.Can return... |
| `dataplex.projects.locations.governanceRules.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `dataplex.projects.locations.entryGroups.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `dataplex.projects.locations.entryGroups.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy.Can return... |
| `dataplex.projects.locations.entryGroups.create` | POST | `v1/{+parent}/entryGroups` | Creates an EntryGroup. |
| `dataplex.projects.locations.entryGroups.list` | GET | `v1/{+parent}/entryGroups` | Lists EntryGroup resources in a project and location. |
| `dataplex.projects.locations.entryGroups.delete` | DELETE | `v1/{+name}` | Deletes an EntryGroup. |
| `dataplex.projects.locations.entryGroups.get` | GET | `v1/{+name}` | Gets an EntryGroup. |
| `dataplex.projects.locations.entryGroups.patch` | PATCH | `v1/{+name}` | Updates an EntryGroup. |
| `dataplex.projects.locations.entryGroups.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `dataplex.projects.locations.entryGroups.entryLinks.get` | GET | `v1/{+name}` | Gets an Entry Link. |
| `dataplex.projects.locations.entryGroups.entryLinks.delete` | DELETE | `v1/{+name}` | Deletes an Entry Link. |
| `dataplex.projects.locations.entryGroups.entryLinks.create` | POST | `v1/{+parent}/entryLinks` | Creates an Entry Link. |
| `dataplex.projects.locations.entryGroups.entries.create` | POST | `v1/{+parent}/entries` | Creates an Entry. |
| `dataplex.projects.locations.entryGroups.entries.get` | GET | `v1/{+name}` | Gets an Entry. |
| `dataplex.projects.locations.entryGroups.entries.list` | GET | `v1/{+parent}/entries` | Lists Entries within an EntryGroup. |
| `dataplex.projects.locations.entryGroups.entries.patch` | PATCH | `v1/{+name}` | Updates an Entry. |
| `dataplex.projects.locations.entryGroups.entries.delete` | DELETE | `v1/{+name}` | Deletes an Entry. |
| `dataplex.projects.locations.dataProducts.get` | GET | `v1/{+name}` | Gets a data product. |
| `dataplex.projects.locations.dataProducts.list` | GET | `v1/{+parent}/dataProducts` | Lists data products for a given project. |
| `dataplex.projects.locations.dataProducts.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy.Can return... |
| `dataplex.projects.locations.dataProducts.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `dataplex.projects.locations.dataProducts.delete` | DELETE | `v1/{+name}` | Deletes a data product. The deletion will fail if the data product is not empty (i.e. contains at... |
| `dataplex.projects.locations.dataProducts.patch` | PATCH | `v1/{+name}` | Updates a data product. |
| `dataplex.projects.locations.dataProducts.create` | POST | `v1/{+parent}/dataProducts` | Creates a data product. |
| `dataplex.projects.locations.dataProducts.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `dataplex.projects.locations.dataProducts.dataAssets.patch` | PATCH | `v1/{+name}` | Updates a data asset. |
| `dataplex.projects.locations.dataProducts.dataAssets.get` | GET | `v1/{+name}` | Gets a data asset. |
| `dataplex.projects.locations.dataProducts.dataAssets.create` | POST | `v1/{+parent}/dataAssets` | Creates a data asset. |
| `dataplex.projects.locations.dataProducts.dataAssets.list` | GET | `v1/{+parent}/dataAssets` | Lists data assets for a given data product. |
| `dataplex.projects.locations.dataProducts.dataAssets.delete` | DELETE | `v1/{+name}` | Deletes a data asset. |
| `dataplex.projects.locations.policyIntents.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `dataplex.projects.locations.policyIntents.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `dataplex.projects.locations.policyIntents.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy.Can return... |
| `dataplex.projects.locations.metadataJobs.get` | GET | `v1/{+name}` | Gets a metadata job. |
| `dataplex.projects.locations.metadataJobs.list` | GET | `v1/{+parent}/metadataJobs` | Lists metadata jobs. |
| `dataplex.projects.locations.metadataJobs.create` | POST | `v1/{+parent}/metadataJobs` | Creates a metadata job. For example, use a metadata job to import metadata from a third-party sys... |
| `dataplex.projects.locations.metadataJobs.cancel` | POST | `v1/{+name}:cancel` | Cancels a metadata job.If you cancel a metadata import job that is in progress, the changes in th... |
| `dataplex.projects.locations.glossaries.create` | POST | `v1/{+parent}/glossaries` | Creates a new Glossary resource. |
| `dataplex.projects.locations.glossaries.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy.Can return... |
| `dataplex.projects.locations.glossaries.list` | GET | `v1/{+parent}/glossaries` | Lists Glossary resources in a project and location. |
| `dataplex.projects.locations.glossaries.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `dataplex.projects.locations.glossaries.delete` | DELETE | `v1/{+name}` | Deletes a Glossary resource. All the categories and terms within the Glossary must be deleted bef... |
| `dataplex.projects.locations.glossaries.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `dataplex.projects.locations.glossaries.patch` | PATCH | `v1/{+name}` | Updates a Glossary resource. |
| `dataplex.projects.locations.glossaries.get` | GET | `v1/{+name}` | Gets a Glossary resource. |
| `dataplex.projects.locations.glossaries.terms.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `dataplex.projects.locations.glossaries.terms.delete` | DELETE | `v1/{+name}` | Deletes a GlossaryTerm resource. |
| `dataplex.projects.locations.glossaries.terms.patch` | PATCH | `v1/{+name}` | Updates a GlossaryTerm resource. |
| `dataplex.projects.locations.glossaries.terms.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy.Can return... |
| `dataplex.projects.locations.glossaries.terms.list` | GET | `v1/{+parent}/terms` | Lists GlossaryTerm resources in a Glossary. |
| `dataplex.projects.locations.glossaries.terms.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `dataplex.projects.locations.glossaries.terms.get` | GET | `v1/{+name}` | Gets a GlossaryTerm resource. |
| `dataplex.projects.locations.glossaries.terms.create` | POST | `v1/{+parent}/terms` | Creates a new GlossaryTerm resource. |
| `dataplex.projects.locations.glossaries.categories.create` | POST | `v1/{+parent}/categories` | Creates a new GlossaryCategory resource. |
| `dataplex.projects.locations.glossaries.categories.delete` | DELETE | `v1/{+name}` | Deletes a GlossaryCategory resource. All the GlossaryCategories and GlossaryTerms nested directly... |
| `dataplex.projects.locations.glossaries.categories.get` | GET | `v1/{+name}` | Gets a GlossaryCategory resource. |
| `dataplex.projects.locations.glossaries.categories.list` | GET | `v1/{+parent}/categories` | Lists GlossaryCategory resources in a Glossary. |
| `dataplex.projects.locations.glossaries.categories.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `dataplex.projects.locations.glossaries.categories.patch` | PATCH | `v1/{+name}` | Updates a GlossaryCategory resource. |
| `dataplex.projects.locations.glossaries.categories.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy.Can return... |
| `dataplex.projects.locations.glossaries.categories.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `dataplex.projects.locations.dataAttributeBindings.create` | POST | `v1/{+parent}/dataAttributeBindings` | Create a DataAttributeBinding resource. |
| `dataplex.projects.locations.dataAttributeBindings.patch` | PATCH | `v1/{+name}` | Updates a DataAttributeBinding resource. |
| `dataplex.projects.locations.dataAttributeBindings.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `dataplex.projects.locations.dataAttributeBindings.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy.Can return... |
| `dataplex.projects.locations.dataAttributeBindings.delete` | DELETE | `v1/{+name}` | Deletes a DataAttributeBinding resource. All attributes within the DataAttributeBinding must be d... |
| `dataplex.projects.locations.dataAttributeBindings.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `dataplex.projects.locations.dataAttributeBindings.get` | GET | `v1/{+name}` | Retrieves a DataAttributeBinding resource. |
| `dataplex.projects.locations.dataAttributeBindings.list` | GET | `v1/{+parent}/dataAttributeBindings` | Lists DataAttributeBinding resources in a project and location. |
| `dataplex.projects.locations.aspectTypes.get` | GET | `v1/{+name}` | Gets an AspectType. |
| `dataplex.projects.locations.aspectTypes.delete` | DELETE | `v1/{+name}` | Deletes an AspectType. |
| `dataplex.projects.locations.aspectTypes.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `dataplex.projects.locations.aspectTypes.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `dataplex.projects.locations.aspectTypes.create` | POST | `v1/{+parent}/aspectTypes` | Creates an AspectType. |
| `dataplex.projects.locations.aspectTypes.list` | GET | `v1/{+parent}/aspectTypes` | Lists AspectType resources in a project and location. |
| `dataplex.projects.locations.aspectTypes.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy.Can return... |
| `dataplex.projects.locations.aspectTypes.patch` | PATCH | `v1/{+name}` | Updates an AspectType. |
| `dataplex.projects.locations.entryTypes.patch` | PATCH | `v1/{+name}` | Updates an EntryType. |
| `dataplex.projects.locations.entryTypes.create` | POST | `v1/{+parent}/entryTypes` | Creates an EntryType. |
| `dataplex.projects.locations.entryTypes.get` | GET | `v1/{+name}` | Gets an EntryType. |
| `dataplex.projects.locations.entryTypes.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `dataplex.projects.locations.entryTypes.delete` | DELETE | `v1/{+name}` | Deletes an EntryType. |
| `dataplex.projects.locations.entryTypes.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `dataplex.projects.locations.entryTypes.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy.Can return... |
| `dataplex.projects.locations.entryTypes.list` | GET | `v1/{+parent}/entryTypes` | Lists EntryType resources in a project and location. |
| `dataplex.projects.locations.dataTaxonomies.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `dataplex.projects.locations.dataTaxonomies.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `dataplex.projects.locations.dataTaxonomies.get` | GET | `v1/{+name}` | Retrieves a DataTaxonomy resource. |
| `dataplex.projects.locations.dataTaxonomies.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy.Can return... |
| `dataplex.projects.locations.dataTaxonomies.patch` | PATCH | `v1/{+name}` | Updates a DataTaxonomy resource. |
| `dataplex.projects.locations.dataTaxonomies.delete` | DELETE | `v1/{+name}` | Deletes a DataTaxonomy resource. All attributes within the DataTaxonomy must be deleted before th... |
| `dataplex.projects.locations.dataTaxonomies.create` | POST | `v1/{+parent}/dataTaxonomies` | Create a DataTaxonomy resource. |
| `dataplex.projects.locations.dataTaxonomies.list` | GET | `v1/{+parent}/dataTaxonomies` | Lists DataTaxonomy resources in a project and location. |
| `dataplex.projects.locations.dataTaxonomies.attributes.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `dataplex.projects.locations.dataTaxonomies.attributes.patch` | PATCH | `v1/{+name}` | Updates a DataAttribute resource. |
| `dataplex.projects.locations.dataTaxonomies.attributes.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy.Can return... |
| `dataplex.projects.locations.dataTaxonomies.attributes.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `dataplex.projects.locations.dataTaxonomies.attributes.delete` | DELETE | `v1/{+name}` | Deletes a Data Attribute resource. |
| `dataplex.projects.locations.dataTaxonomies.attributes.list` | GET | `v1/{+parent}/attributes` | Lists Data Attribute resources in a DataTaxonomy. |
| `dataplex.projects.locations.dataTaxonomies.attributes.create` | POST | `v1/{+parent}/attributes` | Create a DataAttribute resource. |
| `dataplex.projects.locations.dataTaxonomies.attributes.get` | GET | `v1/{+name}` | Retrieves a Data Attribute resource. |
| `dataplex.projects.locations.entryLinkTypes.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `dataplex.projects.locations.entryLinkTypes.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `dataplex.projects.locations.entryLinkTypes.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy.Can return... |
| `dataplex.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `dataplex.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `dataplex.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `dataplex.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `dataplex.projects.locations.dataScans.list` | GET | `v1/{+parent}/dataScans` | Lists DataScans. |
| `dataplex.projects.locations.dataScans.get` | GET | `v1/{+name}` | Gets a DataScan resource. |
| `dataplex.projects.locations.dataScans.generateDataQualityRules` | POST | `v1/{+name}:generateDataQualityRules` | Generates recommended data quality rules based on the results of a data profiling scan.Use the re... |
| `dataplex.projects.locations.dataScans.patch` | PATCH | `v1/{+name}` | Updates a DataScan resource. |
| `dataplex.projects.locations.dataScans.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `dataplex.projects.locations.dataScans.create` | POST | `v1/{+parent}/dataScans` | Creates a DataScan resource. |
| `dataplex.projects.locations.dataScans.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy.Can return... |
| `dataplex.projects.locations.dataScans.run` | POST | `v1/{+name}:run` | Runs an on-demand execution of a DataScan |
| `dataplex.projects.locations.dataScans.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `dataplex.projects.locations.dataScans.delete` | DELETE | `v1/{+name}` | Deletes a DataScan resource. |
| `dataplex.projects.locations.dataScans.jobs.generateDataQualityRules` | POST | `v1/{+name}:generateDataQualityRules` | Generates recommended data quality rules based on the results of a data profiling scan.Use the re... |
| `dataplex.projects.locations.dataScans.jobs.list` | GET | `v1/{+parent}/jobs` | Lists DataScanJobs under the given DataScan. |
| `dataplex.projects.locations.dataScans.jobs.get` | GET | `v1/{+name}` | Gets a DataScanJob resource. |
| `dataplex.projects.locations.metadataFeeds.get` | GET | `v1/{+name}` | Gets a MetadataFeed. |
| `dataplex.projects.locations.metadataFeeds.patch` | PATCH | `v1/{+name}` | Updates a MetadataFeed. |
| `dataplex.projects.locations.metadataFeeds.delete` | DELETE | `v1/{+name}` | Deletes a MetadataFeed. |
| `dataplex.projects.locations.metadataFeeds.create` | POST | `v1/{+parent}/metadataFeeds` | Creates a MetadataFeed. |
| `dataplex.projects.locations.metadataFeeds.list` | GET | `v1/{+parent}/metadataFeeds` | Retrieve a list of MetadataFeeds. |
| `dataplex.projects.locations.changeRequests.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy.Can return... |
| `dataplex.projects.locations.changeRequests.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `dataplex.projects.locations.changeRequests.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `dataplex.projects.locations.lakes.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `dataplex.projects.locations.lakes.list` | GET | `v1/{+parent}/lakes` | Lists lake resources in a project and location. |
| `dataplex.projects.locations.lakes.patch` | PATCH | `v1/{+name}` | Updates a lake resource. |
| `dataplex.projects.locations.lakes.get` | GET | `v1/{+name}` | Retrieves a lake resource. |
| `dataplex.projects.locations.lakes.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `dataplex.projects.locations.lakes.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy.Can return... |
| `dataplex.projects.locations.lakes.delete` | DELETE | `v1/{+name}` | Deletes a lake resource. All zones within the lake must be deleted before the lake can be deleted. |
| `dataplex.projects.locations.lakes.create` | POST | `v1/{+parent}/lakes` | Creates a lake resource. |
| `dataplex.projects.locations.lakes.environments.get` | GET | `v1/{+name}` | Get environment resource. |
| `dataplex.projects.locations.lakes.environments.patch` | PATCH | `v1/{+name}` | Update the environment resource. |
| `dataplex.projects.locations.lakes.environments.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `dataplex.projects.locations.lakes.environments.list` | GET | `v1/{+parent}/environments` | Lists environments under the given lake. |
| `dataplex.projects.locations.lakes.environments.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `dataplex.projects.locations.lakes.environments.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy.Can return... |
| `dataplex.projects.locations.lakes.environments.create` | POST | `v1/{+parent}/environments` | Create an environment resource. |
| `dataplex.projects.locations.lakes.environments.delete` | DELETE | `v1/{+name}` | Delete the environment resource. All the child resources must have been deleted before environmen... |
| `dataplex.projects.locations.lakes.environments.sessions.list` | GET | `v1/{+parent}/sessions` | Lists session resources in an environment. |
| `dataplex.projects.locations.lakes.contentitems.list` | GET | `v1/{+parent}/contentitems` | List content. |
| `dataplex.projects.locations.lakes.contentitems.delete` | DELETE | `v1/{+name}` | Delete a content. |
| `dataplex.projects.locations.lakes.contentitems.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a contentitem resource. A NOT_FOUND error is returned if the r... |
| `dataplex.projects.locations.lakes.contentitems.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns the caller's permissions on a resource. If the resource does not exist, an empty set of p... |
| `dataplex.projects.locations.lakes.contentitems.patch` | PATCH | `v1/{+name}` | Update a content. Only supports full resource update. |
| `dataplex.projects.locations.lakes.contentitems.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified contentitem resource. Replaces any existing polic... |
| `dataplex.projects.locations.lakes.contentitems.create` | POST | `v1/{+parent}/contentitems` | Create a content. |
| `dataplex.projects.locations.lakes.contentitems.get` | GET | `v1/{+name}` | Get a content resource. |
| `dataplex.projects.locations.lakes.zones.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `dataplex.projects.locations.lakes.zones.patch` | PATCH | `v1/{+name}` | Updates a zone resource. |
| `dataplex.projects.locations.lakes.zones.delete` | DELETE | `v1/{+name}` | Deletes a zone resource. All assets within a zone must be deleted before the zone can be deleted. |
| `dataplex.projects.locations.lakes.zones.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy.Can return... |
| `dataplex.projects.locations.lakes.zones.get` | GET | `v1/{+name}` | Retrieves a zone resource. |
| `dataplex.projects.locations.lakes.zones.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `dataplex.projects.locations.lakes.zones.create` | POST | `v1/{+parent}/zones` | Creates a zone resource within a lake. |
| `dataplex.projects.locations.lakes.zones.list` | GET | `v1/{+parent}/zones` | Lists zone resources in a lake. |
| `dataplex.projects.locations.lakes.zones.actions.list` | GET | `v1/{+parent}/actions` | Lists action resources in a zone. |
| `dataplex.projects.locations.lakes.zones.entities.create` | POST | `v1/{+parent}/entities` | Create a metadata entity. |
| `dataplex.projects.locations.lakes.zones.entities.delete` | DELETE | `v1/{+name}` | Delete a metadata entity. |
| `dataplex.projects.locations.lakes.zones.entities.update` | PUT | `v1/{+name}` | Update a metadata entity. Only supports full resource update. |
| `dataplex.projects.locations.lakes.zones.entities.list` | GET | `v1/{+parent}/entities` | List metadata entities in a zone. |
| `dataplex.projects.locations.lakes.zones.entities.get` | GET | `v1/{+name}` | Get a metadata entity. |
| `dataplex.projects.locations.lakes.zones.entities.partitions.delete` | DELETE | `v1/{+name}` | Delete a metadata partition. |
| `dataplex.projects.locations.lakes.zones.entities.partitions.create` | POST | `v1/{+parent}/partitions` | Create a metadata partition. |
| `dataplex.projects.locations.lakes.zones.entities.partitions.get` | GET | `v1/{+name}` | Get a metadata partition of an entity. |
| `dataplex.projects.locations.lakes.zones.entities.partitions.list` | GET | `v1/{+parent}/partitions` | List metadata partitions of an entity. |
| `dataplex.projects.locations.lakes.zones.assets.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy.Can return... |
| `dataplex.projects.locations.lakes.zones.assets.patch` | PATCH | `v1/{+name}` | Updates an asset resource. |
| `dataplex.projects.locations.lakes.zones.assets.create` | POST | `v1/{+parent}/assets` | Creates an asset resource. |
| `dataplex.projects.locations.lakes.zones.assets.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `dataplex.projects.locations.lakes.zones.assets.get` | GET | `v1/{+name}` | Retrieves an asset resource. |
| `dataplex.projects.locations.lakes.zones.assets.delete` | DELETE | `v1/{+name}` | Deletes an asset resource. The referenced storage resource is detached (default) or deleted based... |
| `dataplex.projects.locations.lakes.zones.assets.list` | GET | `v1/{+parent}/assets` | Lists asset resources in a zone. |
| `dataplex.projects.locations.lakes.zones.assets.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `dataplex.projects.locations.lakes.zones.assets.actions.list` | GET | `v1/{+parent}/actions` | Lists action resources in an asset. |
| `dataplex.projects.locations.lakes.content.patch` | PATCH | `v1/{+name}` | Update a content. Only supports full resource update. |
| `dataplex.projects.locations.lakes.content.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified contentitem resource. Replaces any existing polic... |
| `dataplex.projects.locations.lakes.content.delete` | DELETE | `v1/{+name}` | Delete a content. |
| `dataplex.projects.locations.lakes.content.get` | GET | `v1/{+name}` | Get a content resource. |
| `dataplex.projects.locations.lakes.content.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a contentitem resource. A NOT_FOUND error is returned if the r... |
| `dataplex.projects.locations.lakes.content.create` | POST | `v1/{+parent}/content` | Create a content. |
| `dataplex.projects.locations.lakes.content.list` | GET | `v1/{+parent}/content` | List content. |
| `dataplex.projects.locations.lakes.content.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns the caller's permissions on a resource. If the resource does not exist, an empty set of p... |
| `dataplex.projects.locations.lakes.actions.list` | GET | `v1/{+parent}/actions` | Lists action resources in a lake. |
| `dataplex.projects.locations.lakes.tasks.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `dataplex.projects.locations.lakes.tasks.delete` | DELETE | `v1/{+name}` | Delete the task resource. |
| `dataplex.projects.locations.lakes.tasks.list` | GET | `v1/{+parent}/tasks` | Lists tasks under the given lake. |
| `dataplex.projects.locations.lakes.tasks.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy.Can return... |
| `dataplex.projects.locations.lakes.tasks.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `dataplex.projects.locations.lakes.tasks.get` | GET | `v1/{+name}` | Get task resource. |
| `dataplex.projects.locations.lakes.tasks.patch` | PATCH | `v1/{+name}` | Update the task resource. |
| `dataplex.projects.locations.lakes.tasks.create` | POST | `v1/{+parent}/tasks` | Creates a task resource within a lake. |
| `dataplex.projects.locations.lakes.tasks.run` | POST | `v1/{+name}:run` | Run an on demand execution of a Task. |
| `dataplex.projects.locations.lakes.tasks.jobs.get` | GET | `v1/{+name}` | Get job resource. |
| `dataplex.projects.locations.lakes.tasks.jobs.list` | GET | `v1/{+parent}/jobs` | Lists Jobs under the given task. |
| `dataplex.projects.locations.lakes.tasks.jobs.cancel` | POST | `v1/{+name}:cancel` | Cancel jobs running for the task resource. |

### `dataplex.organizations.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns google.rpc.Code.UNIMPLEMENTED. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to Code.CANCELLED.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `GoogleLongrunningCancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await dataplex.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.organizations.locations.operations.list`

**GET** `v1/{+name}/operations`

Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns UNIMPLEMENTED.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation's parent resource. |
| `filter` | `string` | query | No | The standard list filter. |
| `pageSize` | `integer` | query | No | The standard list page size. |
| `pageToken` | `string` | query | No | The standard list page token. |
| `returnPartialSuccess` | `boolean` | query | No | When set to true, operations that are reachable are returned as normal, and those that are unreachable are returned i... |

**Response**: `GoogleLongrunningListOperationsResponse`

```typescript
const res = await dataplex.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.organizations.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.organizations.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns google.rpc.Code.UNIMPLEMENTED.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await dataplex.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.organizations.locations.encryptionConfigs.delete`

**DELETE** `v1/{+name}`

Delete an EncryptionConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the EncryptionConfig to delete. |
| `etag` | `string` | query | No | Optional. Etag of the EncryptionConfig. This is a strong etag. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.encryptionConfigs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.organizations.locations.encryptionConfigs.list`

**GET** `v1/{+parent}/encryptionConfigs`

List EncryptionConfigs.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The location for which the EncryptionConfig is to be listed. |
| `filter` | `string` | query | No | Optional. Filter the EncryptionConfigs to be returned. Using bare literals: (These values will be matched anywhere it... |
| `orderBy` | `string` | query | No | Optional. Order by fields for the result. |
| `pageSize` | `integer` | query | No | Optional. Maximum number of EncryptionConfigs to return. The service may return fewer than this value. If unspecified... |
| `pageToken` | `string` | query | No | Optional. Page token received from a previous ListEncryptionConfigs call. Provide this to retrieve the subsequent pag... |

**Response**: `GoogleCloudDataplexV1ListEncryptionConfigsResponse`

```typescript
const res = await dataplex.encryptionConfigs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.organizations.locations.encryptionConfigs.create`

**POST** `v1/{+parent}/encryptionConfigs`

Create an EncryptionConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The location at which the EncryptionConfig is to be created. |
| `encryptionConfigId` | `string` | query | No | Required. The ID of the EncryptionConfig to create. Currently, only a value of "default" is supported. |

**Request body**: `GoogleCloudDataplexV1EncryptionConfig`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.encryptionConfigs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.organizations.locations.encryptionConfigs.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/a... |

**Request body**: `GoogleIamV1TestIamPermissionsRequest`

**Response**: `GoogleIamV1TestIamPermissionsResponse`

```typescript
const res = await dataplex.encryptionConfigs.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.organizations.locations.encryptionConfigs.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `GoogleIamV1SetIamPolicyRequest`

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dataplex.encryptionConfigs.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.organizations.locations.encryptionConfigs.get`

**GET** `v1/{+name}`

Get an EncryptionConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the EncryptionConfig to fetch. |

**Response**: `GoogleCloudDataplexV1EncryptionConfig`

```typescript
const res = await dataplex.encryptionConfigs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.organizations.locations.encryptionConfigs.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/des... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy.Valid values are 0, 1, and 3. Requests sp... |

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dataplex.encryptionConfigs.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.organizations.locations.encryptionConfigs.patch`

**PATCH** `v1/{+name}`

Update an EncryptionConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the EncryptionConfig. Format: organizations/{organization}/locations/{location}/encr... |
| `updateMask` | `string` | query | No | Optional. Mask of fields to update. The service treats an omitted field mask as an implied field mask equivalent to a... |

**Request body**: `GoogleCloudDataplexV1EncryptionConfig`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.encryptionConfigs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `GoogleCloudLocationLocation`

```typescript
const res = await dataplex.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lookupEntry`

**GET** `v1/{+name}:lookupEntry`

Looks up an entry by name using the permission on the source system.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The project to which the request should be attributed in the following form: projects/{project}/locations/{... |
| `aspectTypes` | `string` | query | No | Optional. Limits the aspects returned to the provided aspect types. It only works for CUSTOM view. |
| `entry` | `string` | query | No | Required. The resource name of the Entry: projects/{project}/locations/{location}/entryGroups/{entry_group}/entries/{... |
| `paths` | `string` | query | No | Optional. Limits the aspects returned to those associated with the provided paths within the Entry. It only works for... |
| `view` | `string` | query | No | Optional. View to control which parts of an entry the service should return. |

**Response**: `GoogleCloudDataplexV1Entry`

```typescript
const res = await dataplex.locations.lookupEntry({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.list`

**GET** `v1/{+name}/locations`

Lists information about the supported locations for this service. This method can be called in two ways: List all public locations: Use the path GET /v1/locations. List project-visible locations: Use the path GET /v1/projects/{project_id}/locations. This may include public locations as well as private or other locations specifically visible to the project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource that owns the locations collection, if applicable. |
| `extraLocationTypes` | `string` | query | No | Optional. Do not use this field. It is unsupported and is ignored unless explicitly documented otherwise. This is pri... |
| `filter` | `string` | query | No | A filter to narrow down results to a preferred subset. The filtering language accepts strings like "displayName=tokyo... |
| `pageSize` | `integer` | query | No | The maximum number of results to return. If not set, the service selects a default. |
| `pageToken` | `string` | query | No | A page token received from the next_page_token field in the response. Send that page token to receive the subsequent ... |

**Response**: `GoogleCloudLocationListLocationsResponse`

```typescript
const res = await dataplex.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.searchEntries`

**POST** `v1/{+name}:searchEntries`

Searches for Entries matching the given query and scope.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The project to which the request should be attributed in the following form: projects/{project}/locations/g... |
| `orderBy` | `string` | query | No | Optional. Specifies the ordering of results. Supported values are: relevance last_modified_timestamp last_modified_ti... |
| `pageSize` | `integer` | query | No | Optional. Number of results in the search page. If <=0, then defaults to 10. Max limit for page_size is 1000. Throws ... |
| `pageToken` | `string` | query | No | Optional. Page token received from a previous SearchEntries call. Provide this to retrieve the subsequent page. |
| `query` | `string` | query | No | Required. The query against which entries in scope should be matched. The query syntax is defined in Search syntax fo... |
| `scope` | `string` | query | No | Optional. The scope under which the search should be operating. It must either be organizations/ or projects/. If it ... |
| `semanticSearch` | `boolean` | query | No | Optional. Specifies whether the search should understand the meaning and intent behind the query, rather than just ma... |

**Response**: `GoogleCloudDataplexV1SearchEntriesResponse`

```typescript
const res = await dataplex.locations.searchEntries({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lookupEntryLinks`

**GET** `v1/{+name}:lookupEntryLinks`

Looks up Entry Links referencing the specified Entry.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The project to which the request should be attributed to Format: projects/{project_id_or_number}/locations/... |
| `entry` | `string` | query | No | Required. The resource name of the referred Entry. Format: projects/{project_id_or_number}/locations/{location_id}/en... |
| `entryLinkTypes` | `string` | query | No | Entry link types to filter the response by. If empty, all entry link types will be returned. At most 10 entry link ty... |
| `entryMode` | `string` | query | No | Mode of entry reference. |
| `pageSize` | `integer` | query | No | Maximum number of EntryLinks to return. The service may return fewer than this value. If unspecified, at most 10 Entr... |
| `pageToken` | `string` | query | No | Page token received from a previous LookupEntryLinks call. Provide this to retrieve the subsequent page. When paginat... |

**Response**: `GoogleCloudDataplexV1LookupEntryLinksResponse`

```typescript
const res = await dataplex.locations.lookupEntryLinks({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.governanceRules.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/des... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy.Valid values are 0, 1, and 3. Requests sp... |

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dataplex.governanceRules.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.governanceRules.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `GoogleIamV1SetIamPolicyRequest`

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dataplex.governanceRules.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.governanceRules.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/a... |

**Request body**: `GoogleIamV1TestIamPermissionsRequest`

**Response**: `GoogleIamV1TestIamPermissionsResponse`

```typescript
const res = await dataplex.governanceRules.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.entryGroups.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/a... |

**Request body**: `GoogleIamV1TestIamPermissionsRequest`

**Response**: `GoogleIamV1TestIamPermissionsResponse`

```typescript
const res = await dataplex.entryGroups.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.entryGroups.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `GoogleIamV1SetIamPolicyRequest`

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dataplex.entryGroups.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.entryGroups.create`

**POST** `v1/{+parent}/entryGroups`

Creates an EntryGroup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the entryGroup, of the form: projects/{project_number}/locations/{location_id} where l... |
| `entryGroupId` | `string` | query | No | Required. EntryGroup identifier. |
| `validateOnly` | `boolean` | query | No | Optional. The service validates the request without performing any mutations. The default is false. |

**Request body**: `GoogleCloudDataplexV1EntryGroup`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.entryGroups.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.entryGroups.list`

**GET** `v1/{+parent}/entryGroups`

Lists EntryGroup resources in a project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the entryGroup location, of the form: projects/{project_number}/locations/{location_id... |
| `filter` | `string` | query | No | Optional. Filter request. |
| `orderBy` | `string` | query | No | Optional. Order by fields for the result. |
| `pageSize` | `integer` | query | No | Optional. Maximum number of EntryGroups to return. The service may return fewer than this value. If unspecified, the ... |
| `pageToken` | `string` | query | No | Optional. Page token received from a previous ListEntryGroups call. Provide this to retrieve the subsequent page. Whe... |

**Response**: `GoogleCloudDataplexV1ListEntryGroupsResponse`

```typescript
const res = await dataplex.entryGroups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.entryGroups.delete`

**DELETE** `v1/{+name}`

Deletes an EntryGroup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the EntryGroup: projects/{project_number}/locations/{location_id}/entryGroups/{entry_g... |
| `etag` | `string` | query | No | Optional. If the client provided etag value does not match the current etag value, the DeleteEntryGroupRequest method... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.entryGroups.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.entryGroups.get`

**GET** `v1/{+name}`

Gets an EntryGroup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the EntryGroup: projects/{project_number}/locations/{location_id}/entryGroups/{entry_g... |

**Response**: `GoogleCloudDataplexV1EntryGroup`

```typescript
const res = await dataplex.entryGroups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.entryGroups.patch`

**PATCH** `v1/{+name}`

Updates an EntryGroup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The relative resource name of the EntryGroup, in the format projects/{project_id_or_number}/locations/{l... |
| `updateMask` | `string` | query | No | Required. Mask of fields to update. |
| `validateOnly` | `boolean` | query | No | Optional. The service validates the request, without performing any mutations. The default is false. |

**Request body**: `GoogleCloudDataplexV1EntryGroup`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.entryGroups.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.entryGroups.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/des... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy.Valid values are 0, 1, and 3. Requests sp... |

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dataplex.entryGroups.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.entryGroups.entryLinks.get`

**GET** `v1/{+name}`

Gets an Entry Link.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Entry Link: projects/{project_id_or_number}/locations/{location_id}/entryGroups/{e... |

**Response**: `GoogleCloudDataplexV1EntryLink`

```typescript
const res = await dataplex.entryLinks.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.entryGroups.entryLinks.delete`

**DELETE** `v1/{+name}`

Deletes an Entry Link.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Entry Link: projects/{project_id_or_number}/locations/{location_id}/entryGroups/{e... |

**Response**: `GoogleCloudDataplexV1EntryLink`

```typescript
const res = await dataplex.entryLinks.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.entryGroups.entryLinks.create`

**POST** `v1/{+parent}/entryLinks`

Creates an Entry Link.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the parent Entry Group: projects/{project_id_or_number}/locations/{location_id}/entryG... |
| `entryLinkId` | `string` | query | No | Required. Entry Link identifier * Must contain only lowercase letters, numbers and hyphens. * Must start with a lette... |

**Request body**: `GoogleCloudDataplexV1EntryLink`

**Response**: `GoogleCloudDataplexV1EntryLink`

```typescript
const res = await dataplex.entryLinks.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.entryGroups.entries.create`

**POST** `v1/{+parent}/entries`

Creates an Entry.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the parent Entry Group: projects/{project}/locations/{location}/entryGroups/{entry_gro... |
| `entryId` | `string` | query | No | Required. Entry identifier. It has to be unique within an Entry Group.Entries corresponding to Google Cloud resources... |

**Request body**: `GoogleCloudDataplexV1Entry`

**Response**: `GoogleCloudDataplexV1Entry`

```typescript
const res = await dataplex.entries.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.entryGroups.entries.get`

**GET** `v1/{+name}`

Gets an Entry.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Entry: projects/{project}/locations/{location}/entryGroups/{entry_group}/entries/{... |
| `aspectTypes` | `string` | query | No | Optional. Limits the aspects returned to the provided aspect types. It only works for CUSTOM view. |
| `paths` | `string` | query | No | Optional. Limits the aspects returned to those associated with the provided paths within the Entry. It only works for... |
| `view` | `string` | query | No | Optional. View to control which parts of an entry the service should return. |

**Response**: `GoogleCloudDataplexV1Entry`

```typescript
const res = await dataplex.entries.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.entryGroups.entries.list`

**GET** `v1/{+parent}/entries`

Lists Entries within an EntryGroup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the parent Entry Group: projects/{project}/locations/{location}/entryGroups/{entry_gro... |
| `filter` | `string` | query | No | Optional. A filter on the entries to return. Filters are case-sensitive. You can filter the request by the following ... |
| `pageSize` | `integer` | query | No | Optional. Number of items to return per page. If there are remaining results, the service returns a next_page_token. ... |
| `pageToken` | `string` | query | No | Optional. Page token received from a previous ListEntries call. Provide this to retrieve the subsequent page. |

**Response**: `GoogleCloudDataplexV1ListEntriesResponse`

```typescript
const res = await dataplex.entries.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.entryGroups.entries.patch`

**PATCH** `v1/{+name}`

Updates an Entry.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The relative resource name of the entry, in the format projects/{project_id_or_number}/locations/{locatio... |
| `allowMissing` | `boolean` | query | No | Optional. If set to true and the entry doesn't exist, the service will create it. |
| `aspectKeys` | `string` | query | No | Optional. The map keys of the Aspects which the service should modify. It supports the following syntaxes: - matches ... |
| `deleteMissingAspects` | `boolean` | query | No | Optional. If set to true and the aspect_keys specify aspect ranges, the service deletes any existing aspects from tha... |
| `updateMask` | `string` | query | No | Optional. Mask of fields to update. To update Aspects, the update_mask must contain the value "aspects".If the update... |

**Request body**: `GoogleCloudDataplexV1Entry`

**Response**: `GoogleCloudDataplexV1Entry`

```typescript
const res = await dataplex.entries.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.entryGroups.entries.delete`

**DELETE** `v1/{+name}`

Deletes an Entry.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Entry: projects/{project}/locations/{location}/entryGroups/{entry_group}/entries/{... |

**Response**: `GoogleCloudDataplexV1Entry`

```typescript
const res = await dataplex.entries.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataProducts.get`

**GET** `v1/{+name}`

Gets a data product.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the data product to retrieve. Format: projects/{project_id_or_number}/locations/{location_id}/d... |

**Response**: `GoogleCloudDataplexV1DataProduct`

```typescript
const res = await dataplex.dataProducts.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataProducts.list`

**GET** `v1/{+parent}/dataProducts`

Lists data products for a given project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which has this collection of data products.Format: projects/{project_id_or_number}/locations/{l... |
| `filter` | `string` | query | No | Optional. Filter expression that filters data products listed in the response.Example of using this filter is: displa... |
| `orderBy` | `string` | query | No | Optional. Order by expression that orders data products listed in the response.Supported Order by fields are: name or... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of data products to return. The service may return fewer than this value. If unspecified... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous ListDataProducts call. Provide this to retrieve the subsequent page.... |

**Response**: `GoogleCloudDataplexV1ListDataProductsResponse`

```typescript
const res = await dataplex.dataProducts.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataProducts.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `GoogleIamV1SetIamPolicyRequest`

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dataplex.dataProducts.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataProducts.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/a... |

**Request body**: `GoogleIamV1TestIamPermissionsRequest`

**Response**: `GoogleIamV1TestIamPermissionsResponse`

```typescript
const res = await dataplex.dataProducts.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataProducts.delete`

**DELETE** `v1/{+name}`

Deletes a data product. The deletion will fail if the data product is not empty (i.e. contains at least one data asset).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the data product to delete. Format: projects/{project_id_or_number}/locations/{location_id}/dat... |
| `etag` | `string` | query | No | Optional. The etag of the data product.If an etag is provided and does not match the current etag of the data product... |
| `validateOnly` | `boolean` | query | No | Optional. Validates the request without actually deleting the data product. Default: false. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.dataProducts.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataProducts.patch`

**PATCH** `v1/{+name}`

Updates a data product.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Resource name of the data product. Format: projects/{project_id_or_number}/locations/{location_id}/dataPr... |
| `updateMask` | `string` | query | No | Optional. The list of fields to update. If this is empty or not set, then all the fields will be updated. |
| `validateOnly` | `boolean` | query | No | Optional. Validates the request without actually updating the data product. Default: false. |

**Request body**: `GoogleCloudDataplexV1DataProduct`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.dataProducts.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataProducts.create`

**POST** `v1/{+parent}/dataProducts`

Creates a data product.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where this data product will be created. Format: projects/{project_id_or_number}/locati... |
| `dataProductId` | `string` | query | No | Optional. The ID of the data product to create.The ID must conform to RFC-1034 and contain only lower-case letters (a... |
| `validateOnly` | `boolean` | query | No | Optional. Validates the request without actually creating the data product. Default: false. |

**Request body**: `GoogleCloudDataplexV1DataProduct`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.dataProducts.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataProducts.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/des... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy.Valid values are 0, 1, and 3. Requests sp... |

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dataplex.dataProducts.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataProducts.dataAssets.patch`

**PATCH** `v1/{+name}`

Updates a data asset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Resource name of the data asset. Format: projects/{project_id_or_number}/locations/{location_id}/dataProd... |
| `updateMask` | `string` | query | No | Optional. The list of fields to update. If this is empty or not set, then all the fields will be updated. |
| `validateOnly` | `boolean` | query | No | Optional. Validates the request without actually updating the data asset. Defaults to false. |

**Request body**: `GoogleCloudDataplexV1DataAsset`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.dataAssets.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataProducts.dataAssets.get`

**GET** `v1/{+name}`

Gets a data asset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the data asset to retrieve. Format: projects/{project_id_or_number}/locations/{location_id}/dat... |

**Response**: `GoogleCloudDataplexV1DataAsset`

```typescript
const res = await dataplex.dataAssets.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataProducts.dataAssets.create`

**POST** `v1/{+parent}/dataAssets`

Creates a data asset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where this data asset will be created. Format: projects/{project_id_or_number}/location... |
| `dataAssetId` | `string` | query | No | Optional. The ID of the data asset to create.The ID must conform to RFC-1034 and contain only lower-case letters (a-z... |
| `validateOnly` | `boolean` | query | No | Optional. Validates the request without actually creating the data asset. Defaults to false. |

**Request body**: `GoogleCloudDataplexV1DataAsset`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.dataAssets.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataProducts.dataAssets.list`

**GET** `v1/{+parent}/dataAssets`

Lists data assets for a given data product.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which has this collection of data assets. Format: projects/{project_id_or_number}/locations/{lo... |
| `filter` | `string` | query | No | Optional. Filter expression that filters data assets listed in the response. |
| `orderBy` | `string` | query | No | Optional. Order by expression that orders data assets listed in the response.Supported order_by fields are: name or c... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of data assets to return. The service may return fewer than this value. If unspecified, ... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous ListDataAssets call. Provide this to retrieve the subsequent page.Wh... |

**Response**: `GoogleCloudDataplexV1ListDataAssetsResponse`

```typescript
const res = await dataplex.dataAssets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataProducts.dataAssets.delete`

**DELETE** `v1/{+name}`

Deletes a data asset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the data asset to delete. Format: projects/{project_id_or_number}/locations/{location_id}/dataP... |
| `etag` | `string` | query | No | Optional. The etag of the data asset. If this is provided, it must match the server's etag. If the etag is provided a... |
| `validateOnly` | `boolean` | query | No | Optional. Validates the request without actually deleting the data asset. Defaults to false. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.dataAssets.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.policyIntents.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/des... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy.Valid values are 0, 1, and 3. Requests sp... |

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dataplex.policyIntents.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.policyIntents.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/a... |

**Request body**: `GoogleIamV1TestIamPermissionsRequest`

**Response**: `GoogleIamV1TestIamPermissionsResponse`

```typescript
const res = await dataplex.policyIntents.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.policyIntents.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `GoogleIamV1SetIamPolicyRequest`

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dataplex.policyIntents.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.metadataJobs.get`

**GET** `v1/{+name}`

Gets a metadata job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the metadata job, in the format projects/{project_id_or_number}/locations/{location_id... |

**Response**: `GoogleCloudDataplexV1MetadataJob`

```typescript
const res = await dataplex.metadataJobs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.metadataJobs.list`

**GET** `v1/{+parent}/metadataJobs`

Lists metadata jobs.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the parent location, in the format projects/{project_id_or_number}/locations/{location... |
| `filter` | `string` | query | No | Optional. Filter request. Filters are case-sensitive. The service supports the following formats: labels.key1 = "valu... |
| `orderBy` | `string` | query | No | Optional. The field to sort the results by, either name or create_time. If not specified, the ordering is undefined. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of metadata jobs to return. The service might return fewer jobs than this value. If unsp... |
| `pageToken` | `string` | query | No | Optional. The page token received from a previous ListMetadataJobs call. Provide this token to retrieve the subsequen... |

**Response**: `GoogleCloudDataplexV1ListMetadataJobsResponse`

```typescript
const res = await dataplex.metadataJobs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.metadataJobs.create`

**POST** `v1/{+parent}/metadataJobs`

Creates a metadata job. For example, use a metadata job to import metadata from a third-party system into Dataplex Universal Catalog.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the parent location, in the format projects/{project_id_or_number}/locations/{location... |
| `metadataJobId` | `string` | query | No | Optional. The metadata job ID. If not provided, a unique ID is generated with the prefix metadata-job-. |
| `validateOnly` | `boolean` | query | No | Optional. The service validates the request without performing any mutations. The default is false. |

**Request body**: `GoogleCloudDataplexV1MetadataJob`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.metadataJobs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.metadataJobs.cancel`

**POST** `v1/{+name}:cancel`

Cancels a metadata job.If you cancel a metadata import job that is in progress, the changes in the job might be partially applied. We recommend that you reset the state of the entry groups in your project by running another metadata job that reverts the changes from the canceled job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the job, in the format projects/{project_id_or_number}/locations/{location_id}/metadat... |

**Request body**: `GoogleCloudDataplexV1CancelMetadataJobRequest`

**Response**: `Empty`

```typescript
const res = await dataplex.metadataJobs.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.glossaries.create`

**POST** `v1/{+parent}/glossaries`

Creates a new Glossary resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where this Glossary will be created. Format: projects/{project_id_or_number}/locations/... |
| `glossaryId` | `string` | query | No | Required. Glossary ID: Glossary identifier. |
| `validateOnly` | `boolean` | query | No | Optional. Validates the request without actually creating the Glossary. Default: false. |

**Request body**: `GoogleCloudDataplexV1Glossary`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.glossaries.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.glossaries.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `GoogleIamV1SetIamPolicyRequest`

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dataplex.glossaries.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.glossaries.list`

**GET** `v1/{+parent}/glossaries`

Lists Glossary resources in a project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which has this collection of Glossaries. Format: projects/{project_id_or_number}/locations/{loc... |
| `filter` | `string` | query | No | Optional. Filter expression that filters Glossaries listed in the response. Filters on proto fields of Glossary are s... |
| `orderBy` | `string` | query | No | Optional. Order by expression that orders Glossaries listed in the response. Order by fields are: name or create_time... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of Glossaries to return. The service may return fewer than this value. If unspecified, a... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous ListGlossaries call. Provide this to retrieve the subsequent page. W... |

**Response**: `GoogleCloudDataplexV1ListGlossariesResponse`

```typescript
const res = await dataplex.glossaries.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.glossaries.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/des... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy.Valid values are 0, 1, and 3. Requests sp... |

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dataplex.glossaries.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.glossaries.delete`

**DELETE** `v1/{+name}`

Deletes a Glossary resource. All the categories and terms within the Glossary must be deleted before the Glossary can be deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Glossary to delete. Format: projects/{project_id_or_number}/locations/{location_id}/glossar... |
| `etag` | `string` | query | No | Optional. The etag of the Glossary. If this is provided, it must match the server's etag. If the etag is provided and... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.glossaries.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.glossaries.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/a... |

**Request body**: `GoogleIamV1TestIamPermissionsRequest`

**Response**: `GoogleIamV1TestIamPermissionsResponse`

```typescript
const res = await dataplex.glossaries.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.glossaries.patch`

**PATCH** `v1/{+name}`

Updates a Glossary resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Identifier. The resource name of the Glossary. Format: projects/{project_id_or_number}/locations/{locati... |
| `updateMask` | `string` | query | No | Required. The list of fields to update. |
| `validateOnly` | `boolean` | query | No | Optional. Validates the request without actually updating the Glossary. Default: false. |

**Request body**: `GoogleCloudDataplexV1Glossary`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.glossaries.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.glossaries.get`

**GET** `v1/{+name}`

Gets a Glossary resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Glossary to retrieve. Format: projects/{project_id_or_number}/locations/{location_id}/gloss... |

**Response**: `GoogleCloudDataplexV1Glossary`

```typescript
const res = await dataplex.glossaries.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.glossaries.terms.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/a... |

**Request body**: `GoogleIamV1TestIamPermissionsRequest`

**Response**: `GoogleIamV1TestIamPermissionsResponse`

```typescript
const res = await dataplex.terms.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.glossaries.terms.delete`

**DELETE** `v1/{+name}`

Deletes a GlossaryTerm resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the GlossaryTerm to delete. Format: projects/{project_id_or_number}/locations/{location_id}/glo... |

**Response**: `Empty`

```typescript
const res = await dataplex.terms.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.glossaries.terms.patch`

**PATCH** `v1/{+name}`

Updates a GlossaryTerm resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Identifier. The resource name of the GlossaryTerm. Format: projects/{project_id_or_number}/locations/{lo... |
| `updateMask` | `string` | query | No | Required. The list of fields to update. |

**Request body**: `GoogleCloudDataplexV1GlossaryTerm`

**Response**: `GoogleCloudDataplexV1GlossaryTerm`

```typescript
const res = await dataplex.terms.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.glossaries.terms.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `GoogleIamV1SetIamPolicyRequest`

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dataplex.terms.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.glossaries.terms.list`

**GET** `v1/{+parent}/terms`

Lists GlossaryTerm resources in a Glossary.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which has this collection of GlossaryTerms. Format: projects/{project_id_or_number}/locations/{... |
| `filter` | `string` | query | No | Optional. Filter expression that filters GlossaryTerms listed in the response. Filters are supported on the following... |
| `orderBy` | `string` | query | No | Optional. Order by expression that orders GlossaryTerms listed in the response. Order by fields are: name or create_t... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of GlossaryTerms to return. The service may return fewer than this value. If unspecified... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous ListGlossaryTerms call. Provide this to retrieve the subsequent page... |

**Response**: `GoogleCloudDataplexV1ListGlossaryTermsResponse`

```typescript
const res = await dataplex.terms.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.glossaries.terms.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/des... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy.Valid values are 0, 1, and 3. Requests sp... |

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dataplex.terms.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.glossaries.terms.get`

**GET** `v1/{+name}`

Gets a GlossaryTerm resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the GlossaryTerm to retrieve. Format: projects/{project_id_or_number}/locations/{location_id}/g... |

**Response**: `GoogleCloudDataplexV1GlossaryTerm`

```typescript
const res = await dataplex.terms.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.glossaries.terms.create`

**POST** `v1/{+parent}/terms`

Creates a new GlossaryTerm resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where the GlossaryTerm will be created. Format: projects/{project_id_or_number}/locatio... |
| `termId` | `string` | query | No | Required. GlossaryTerm identifier. |

**Request body**: `GoogleCloudDataplexV1GlossaryTerm`

**Response**: `GoogleCloudDataplexV1GlossaryTerm`

```typescript
const res = await dataplex.terms.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.glossaries.categories.create`

**POST** `v1/{+parent}/categories`

Creates a new GlossaryCategory resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where this GlossaryCategory will be created. Format: projects/{project_id_or_number}/lo... |
| `categoryId` | `string` | query | No | Required. GlossaryCategory identifier. |

**Request body**: `GoogleCloudDataplexV1GlossaryCategory`

**Response**: `GoogleCloudDataplexV1GlossaryCategory`

```typescript
const res = await dataplex.categories.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.glossaries.categories.delete`

**DELETE** `v1/{+name}`

Deletes a GlossaryCategory resource. All the GlossaryCategories and GlossaryTerms nested directly under the specified GlossaryCategory will be moved one level up to the parent in the hierarchy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the GlossaryCategory to delete. Format: projects/{project_id_or_number}/locations/{location_id}... |

**Response**: `Empty`

```typescript
const res = await dataplex.categories.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.glossaries.categories.get`

**GET** `v1/{+name}`

Gets a GlossaryCategory resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the GlossaryCategory to retrieve. Format: projects/{project_id_or_number}/locations/{location_i... |

**Response**: `GoogleCloudDataplexV1GlossaryCategory`

```typescript
const res = await dataplex.categories.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.glossaries.categories.list`

**GET** `v1/{+parent}/categories`

Lists GlossaryCategory resources in a Glossary.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which has this collection of GlossaryCategories. Format: projects/{project_id_or_number}/locati... |
| `filter` | `string` | query | No | Optional. Filter expression that filters GlossaryCategories listed in the response. Filters are supported on the foll... |
| `orderBy` | `string` | query | No | Optional. Order by expression that orders GlossaryCategories listed in the response. Order by fields are: name or cre... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of GlossaryCategories to return. The service may return fewer than this value. If unspec... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous ListGlossaryCategories call. Provide this to retrieve the subsequent... |

**Response**: `GoogleCloudDataplexV1ListGlossaryCategoriesResponse`

```typescript
const res = await dataplex.categories.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.glossaries.categories.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/des... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy.Valid values are 0, 1, and 3. Requests sp... |

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dataplex.categories.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.glossaries.categories.patch`

**PATCH** `v1/{+name}`

Updates a GlossaryCategory resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Identifier. The resource name of the GlossaryCategory. Format: projects/{project_id_or_number}/locations... |
| `updateMask` | `string` | query | No | Required. The list of fields to update. |

**Request body**: `GoogleCloudDataplexV1GlossaryCategory`

**Response**: `GoogleCloudDataplexV1GlossaryCategory`

```typescript
const res = await dataplex.categories.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.glossaries.categories.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `GoogleIamV1SetIamPolicyRequest`

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dataplex.categories.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.glossaries.categories.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/a... |

**Request body**: `GoogleIamV1TestIamPermissionsRequest`

**Response**: `GoogleIamV1TestIamPermissionsResponse`

```typescript
const res = await dataplex.categories.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataAttributeBindings.create`

**POST** `v1/{+parent}/dataAttributeBindings`

Create a DataAttributeBinding resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the parent data taxonomy projects/{project_number}/locations/{location_id} |
| `dataAttributeBindingId` | `string` | query | No | Required. DataAttributeBinding identifier. * Must contain only lowercase letters, numbers and hyphens. * Must start w... |
| `validateOnly` | `boolean` | query | No | Optional. Only validate the request, but do not perform mutations. The default is false. |

**Request body**: `GoogleCloudDataplexV1DataAttributeBinding`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.dataAttributeBindings.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataAttributeBindings.patch`

**PATCH** `v1/{+name}`

Updates a DataAttributeBinding resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The relative resource name of the Data Attribute Binding, of the form: projects/{project_number}/locatio... |
| `updateMask` | `string` | query | No | Required. Mask of fields to update. |
| `validateOnly` | `boolean` | query | No | Optional. Only validate the request, but do not perform mutations. The default is false. |

**Request body**: `GoogleCloudDataplexV1DataAttributeBinding`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.dataAttributeBindings.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataAttributeBindings.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/a... |

**Request body**: `GoogleIamV1TestIamPermissionsRequest`

**Response**: `GoogleIamV1TestIamPermissionsResponse`

```typescript
const res = await dataplex.dataAttributeBindings.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataAttributeBindings.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `GoogleIamV1SetIamPolicyRequest`

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dataplex.dataAttributeBindings.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataAttributeBindings.delete`

**DELETE** `v1/{+name}`

Deletes a DataAttributeBinding resource. All attributes within the DataAttributeBinding must be deleted before the DataAttributeBinding can be deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the DataAttributeBinding: projects/{project_number}/locations/{location_id}/dataAttrib... |
| `etag` | `string` | query | No | Required. If the client provided etag value does not match the current etag value, the DeleteDataAttributeBindingRequ... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.dataAttributeBindings.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataAttributeBindings.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/des... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy.Valid values are 0, 1, and 3. Requests sp... |

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dataplex.dataAttributeBindings.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataAttributeBindings.get`

**GET** `v1/{+name}`

Retrieves a DataAttributeBinding resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the DataAttributeBinding: projects/{project_number}/locations/{location_id}/dataAttrib... |

**Response**: `GoogleCloudDataplexV1DataAttributeBinding`

```typescript
const res = await dataplex.dataAttributeBindings.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataAttributeBindings.list`

**GET** `v1/{+parent}/dataAttributeBindings`

Lists DataAttributeBinding resources in a project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the Location: projects/{project_number}/locations/{location_id} |
| `filter` | `string` | query | No | Optional. Filter request. Filter using resource: filter=resource:"resource-name" Filter using attribute: filter=attri... |
| `orderBy` | `string` | query | No | Optional. Order by fields for the result. |
| `pageSize` | `integer` | query | No | Optional. Maximum number of DataAttributeBindings to return. The service may return fewer than this value. If unspeci... |
| `pageToken` | `string` | query | No | Optional. Page token received from a previous ListDataAttributeBindings call. Provide this to retrieve the subsequent... |

**Response**: `GoogleCloudDataplexV1ListDataAttributeBindingsResponse`

```typescript
const res = await dataplex.dataAttributeBindings.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.aspectTypes.get`

**GET** `v1/{+name}`

Gets an AspectType.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the AspectType: projects/{project_number}/locations/{location_id}/aspectTypes/{aspect_... |

**Response**: `GoogleCloudDataplexV1AspectType`

```typescript
const res = await dataplex.aspectTypes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.aspectTypes.delete`

**DELETE** `v1/{+name}`

Deletes an AspectType.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the AspectType: projects/{project_number}/locations/{location_id}/aspectTypes/{aspect_... |
| `etag` | `string` | query | No | Optional. If the client provided etag value does not match the current etag value, the DeleteAspectTypeRequest method... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.aspectTypes.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.aspectTypes.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/a... |

**Request body**: `GoogleIamV1TestIamPermissionsRequest`

**Response**: `GoogleIamV1TestIamPermissionsResponse`

```typescript
const res = await dataplex.aspectTypes.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.aspectTypes.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/des... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy.Valid values are 0, 1, and 3. Requests sp... |

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dataplex.aspectTypes.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.aspectTypes.create`

**POST** `v1/{+parent}/aspectTypes`

Creates an AspectType.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the AspectType, of the form: projects/{project_number}/locations/{location_id} where l... |
| `aspectTypeId` | `string` | query | No | Required. AspectType identifier. |
| `validateOnly` | `boolean` | query | No | Optional. The service validates the request without performing any mutations. The default is false. |

**Request body**: `GoogleCloudDataplexV1AspectType`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.aspectTypes.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.aspectTypes.list`

**GET** `v1/{+parent}/aspectTypes`

Lists AspectType resources in a project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the AspectType location, of the form: projects/{project_number}/locations/{location_id... |
| `filter` | `string` | query | No | Optional. Filter request. Filters are case-sensitive. The service supports the following formats: labels.key1 = "valu... |
| `orderBy` | `string` | query | No | Optional. Orders the result by name or create_time fields. If not specified, the ordering is undefined. |
| `pageSize` | `integer` | query | No | Optional. Maximum number of AspectTypes to return. The service may return fewer than this value. If unspecified, the ... |
| `pageToken` | `string` | query | No | Optional. Page token received from a previous ListAspectTypes call. Provide this to retrieve the subsequent page. Whe... |

**Response**: `GoogleCloudDataplexV1ListAspectTypesResponse`

```typescript
const res = await dataplex.aspectTypes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.aspectTypes.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `GoogleIamV1SetIamPolicyRequest`

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dataplex.aspectTypes.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.aspectTypes.patch`

**PATCH** `v1/{+name}`

Updates an AspectType.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The relative resource name of the AspectType, of the form: projects/{project_number}/locations/{location... |
| `updateMask` | `string` | query | No | Required. Mask of fields to update. |
| `validateOnly` | `boolean` | query | No | Optional. Only validate the request, but do not perform mutations. The default is false. |

**Request body**: `GoogleCloudDataplexV1AspectType`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.aspectTypes.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.entryTypes.patch`

**PATCH** `v1/{+name}`

Updates an EntryType.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The relative resource name of the EntryType, of the form: projects/{project_number}/locations/{location_... |
| `updateMask` | `string` | query | No | Required. Mask of fields to update. |
| `validateOnly` | `boolean` | query | No | Optional. The service validates the request without performing any mutations. The default is false. |

**Request body**: `GoogleCloudDataplexV1EntryType`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.entryTypes.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.entryTypes.create`

**POST** `v1/{+parent}/entryTypes`

Creates an EntryType.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the EntryType, of the form: projects/{project_number}/locations/{location_id} where lo... |
| `entryTypeId` | `string` | query | No | Required. EntryType identifier. |
| `validateOnly` | `boolean` | query | No | Optional. The service validates the request without performing any mutations. The default is false. |

**Request body**: `GoogleCloudDataplexV1EntryType`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.entryTypes.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.entryTypes.get`

**GET** `v1/{+name}`

Gets an EntryType.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the EntryType: projects/{project_number}/locations/{location_id}/entryTypes/{entry_typ... |

**Response**: `GoogleCloudDataplexV1EntryType`

```typescript
const res = await dataplex.entryTypes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.entryTypes.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/des... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy.Valid values are 0, 1, and 3. Requests sp... |

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dataplex.entryTypes.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.entryTypes.delete`

**DELETE** `v1/{+name}`

Deletes an EntryType.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the EntryType: projects/{project_number}/locations/{location_id}/entryTypes/{entry_typ... |
| `etag` | `string` | query | No | Optional. If the client provided etag value does not match the current etag value, the DeleteEntryTypeRequest method ... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.entryTypes.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.entryTypes.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/a... |

**Request body**: `GoogleIamV1TestIamPermissionsRequest`

**Response**: `GoogleIamV1TestIamPermissionsResponse`

```typescript
const res = await dataplex.entryTypes.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.entryTypes.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `GoogleIamV1SetIamPolicyRequest`

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dataplex.entryTypes.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.entryTypes.list`

**GET** `v1/{+parent}/entryTypes`

Lists EntryType resources in a project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the EntryType location, of the form: projects/{project_number}/locations/{location_id}... |
| `filter` | `string` | query | No | Optional. Filter request. Filters are case-sensitive. The service supports the following formats: labels.key1 = "valu... |
| `orderBy` | `string` | query | No | Optional. Orders the result by name or create_time fields. If not specified, the ordering is undefined. |
| `pageSize` | `integer` | query | No | Optional. Maximum number of EntryTypes to return. The service may return fewer than this value. If unspecified, the s... |
| `pageToken` | `string` | query | No | Optional. Page token received from a previous ListEntryTypes call. Provide this to retrieve the subsequent page. When... |

**Response**: `GoogleCloudDataplexV1ListEntryTypesResponse`

```typescript
const res = await dataplex.entryTypes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataTaxonomies.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/des... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy.Valid values are 0, 1, and 3. Requests sp... |

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dataplex.dataTaxonomies.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataTaxonomies.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/a... |

**Request body**: `GoogleIamV1TestIamPermissionsRequest`

**Response**: `GoogleIamV1TestIamPermissionsResponse`

```typescript
const res = await dataplex.dataTaxonomies.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataTaxonomies.get`

**GET** `v1/{+name}`

Retrieves a DataTaxonomy resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Response**: `GoogleCloudDataplexV1DataTaxonomy`

```typescript
const res = await dataplex.dataTaxonomies.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataTaxonomies.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `GoogleIamV1SetIamPolicyRequest`

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dataplex.dataTaxonomies.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataTaxonomies.patch`

**PATCH** `v1/{+name}`

Updates a DataTaxonomy resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The relative resource name of the DataTaxonomy, of the form: projects/{project_number}/locations/{locati... |
| `updateMask` | `string` | query | No | Required. Mask of fields to update. |
| `validateOnly` | `boolean` | query | No | Optional. Only validate the request, but do not perform mutations. The default is false. |

**Request body**: `GoogleCloudDataplexV1DataTaxonomy`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.dataTaxonomies.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataTaxonomies.delete`

**DELETE** `v1/{+name}`

Deletes a DataTaxonomy resource. All attributes within the DataTaxonomy must be deleted before the DataTaxonomy can be deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the DataTaxonomy: projects/{project_number}/locations/{location_id}/dataTaxonomies/{da... |
| `etag` | `string` | query | No | Optional. If the client provided etag value does not match the current etag value,the DeleteDataTaxonomy method retur... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.dataTaxonomies.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataTaxonomies.create`

**POST** `v1/{+parent}/dataTaxonomies`

Create a DataTaxonomy resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |
| `dataTaxonomyId` | `string` | query | No | Required. DataTaxonomy identifier. * Must contain only lowercase letters, numbers and hyphens. * Must start with a le... |
| `validateOnly` | `boolean` | query | No | Optional. Only validate the request, but do not perform mutations. The default is false. |

**Request body**: `GoogleCloudDataplexV1DataTaxonomy`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.dataTaxonomies.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataTaxonomies.list`

**GET** `v1/{+parent}/dataTaxonomies`

Lists DataTaxonomy resources in a project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the DataTaxonomy location, of the form: projects/{project_number}/locations/{location_... |
| `filter` | `string` | query | No | Optional. Filter request. |
| `orderBy` | `string` | query | No | Optional. Order by fields for the result. |
| `pageSize` | `integer` | query | No | Optional. Maximum number of DataTaxonomies to return. The service may return fewer than this value. If unspecified, a... |
| `pageToken` | `string` | query | No | Optional. Page token received from a previous ListDataTaxonomies call. Provide this to retrieve the subsequent page. ... |

**Response**: `GoogleCloudDataplexV1ListDataTaxonomiesResponse`

```typescript
const res = await dataplex.dataTaxonomies.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataTaxonomies.attributes.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/des... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy.Valid values are 0, 1, and 3. Requests sp... |

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dataplex.attributes.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataTaxonomies.attributes.patch`

**PATCH** `v1/{+name}`

Updates a DataAttribute resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The relative resource name of the dataAttribute, of the form: projects/{project_number}/locations/{locat... |
| `updateMask` | `string` | query | No | Required. Mask of fields to update. |
| `validateOnly` | `boolean` | query | No | Optional. Only validate the request, but do not perform mutations. The default is false. |

**Request body**: `GoogleCloudDataplexV1DataAttribute`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.attributes.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataTaxonomies.attributes.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `GoogleIamV1SetIamPolicyRequest`

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dataplex.attributes.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataTaxonomies.attributes.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/a... |

**Request body**: `GoogleIamV1TestIamPermissionsRequest`

**Response**: `GoogleIamV1TestIamPermissionsResponse`

```typescript
const res = await dataplex.attributes.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataTaxonomies.attributes.delete`

**DELETE** `v1/{+name}`

Deletes a Data Attribute resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the DataAttribute: projects/{project_number}/locations/{location_id}/dataTaxonomies/{d... |
| `etag` | `string` | query | No | Optional. If the client provided etag value does not match the current etag value, the DeleteDataAttribute method ret... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.attributes.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataTaxonomies.attributes.list`

**GET** `v1/{+parent}/attributes`

Lists Data Attribute resources in a DataTaxonomy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the DataTaxonomy: projects/{project_number}/locations/{location_id}/dataTaxonomies/{da... |
| `filter` | `string` | query | No | Optional. Filter request. |
| `orderBy` | `string` | query | No | Optional. Order by fields for the result. |
| `pageSize` | `integer` | query | No | Optional. Maximum number of DataAttributes to return. The service may return fewer than this value. If unspecified, a... |
| `pageToken` | `string` | query | No | Optional. Page token received from a previous ListDataAttributes call. Provide this to retrieve the subsequent page. ... |

**Response**: `GoogleCloudDataplexV1ListDataAttributesResponse`

```typescript
const res = await dataplex.attributes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataTaxonomies.attributes.create`

**POST** `v1/{+parent}/attributes`

Create a DataAttribute resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the parent data taxonomy projects/{project_number}/locations/{location_id}/dataTaxonom... |
| `dataAttributeId` | `string` | query | No | Required. DataAttribute identifier. * Must contain only lowercase letters, numbers and hyphens. * Must start with a l... |
| `validateOnly` | `boolean` | query | No | Optional. Only validate the request, but do not perform mutations. The default is false. |

**Request body**: `GoogleCloudDataplexV1DataAttribute`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.attributes.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataTaxonomies.attributes.get`

**GET** `v1/{+name}`

Retrieves a Data Attribute resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the dataAttribute: projects/{project_number}/locations/{location_id}/dataTaxonomies/{d... |

**Response**: `GoogleCloudDataplexV1DataAttribute`

```typescript
const res = await dataplex.attributes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.entryLinkTypes.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/des... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy.Valid values are 0, 1, and 3. Requests sp... |

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dataplex.entryLinkTypes.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.entryLinkTypes.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/a... |

**Request body**: `GoogleIamV1TestIamPermissionsRequest`

**Response**: `GoogleIamV1TestIamPermissionsResponse`

```typescript
const res = await dataplex.entryLinkTypes.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.entryLinkTypes.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `GoogleIamV1SetIamPolicyRequest`

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dataplex.entryLinkTypes.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns google.rpc.Code.UNIMPLEMENTED. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to Code.CANCELLED.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `GoogleLongrunningCancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await dataplex.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns google.rpc.Code.UNIMPLEMENTED.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await dataplex.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.operations.list`

**GET** `v1/{+name}/operations`

Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns UNIMPLEMENTED.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation's parent resource. |
| `filter` | `string` | query | No | The standard list filter. |
| `pageSize` | `integer` | query | No | The standard list page size. |
| `pageToken` | `string` | query | No | The standard list page token. |
| `returnPartialSuccess` | `boolean` | query | No | When set to true, operations that are reachable are returned as normal, and those that are unreachable are returned i... |

**Response**: `GoogleLongrunningListOperationsResponse`

```typescript
const res = await dataplex.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataScans.list`

**GET** `v1/{+parent}/dataScans`

Lists DataScans.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the parent location: projects/{project}/locations/{location_id} where project refers t... |
| `filter` | `string` | query | No | Optional. Filter request. |
| `orderBy` | `string` | query | No | Optional. Order by fields (name or create_time) for the result. If not specified, the ordering is undefined. |
| `pageSize` | `integer` | query | No | Optional. Maximum number of dataScans to return. The service may return fewer than this value. If unspecified, at mos... |
| `pageToken` | `string` | query | No | Optional. Page token received from a previous ListDataScans call. Provide this to retrieve the subsequent page. When ... |

**Response**: `GoogleCloudDataplexV1ListDataScansResponse`

```typescript
const res = await dataplex.dataScans.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataScans.get`

**GET** `v1/{+name}`

Gets a DataScan resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the dataScan: projects/{project}/locations/{location_id}/dataScans/{data_scan_id} wher... |
| `view` | `string` | query | No | Optional. Select the DataScan view to return. Defaults to BASIC. |

**Response**: `GoogleCloudDataplexV1DataScan`

```typescript
const res = await dataplex.dataScans.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataScans.generateDataQualityRules`

**POST** `v1/{+name}:generateDataQualityRules`

Generates recommended data quality rules based on the results of a data profiling scan.Use the recommendations to build rules for a data quality scan.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name must be one of the following: The name of a data scan with at least one successful, completed data... |

**Request body**: `GoogleCloudDataplexV1GenerateDataQualityRulesRequest`

**Response**: `GoogleCloudDataplexV1GenerateDataQualityRulesResponse`

```typescript
const res = await dataplex.dataScans.generateDataQualityRules({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataScans.patch`

**PATCH** `v1/{+name}`

Updates a DataScan resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Identifier. The relative resource name of the scan, of the form: projects/{project}/locations/{location_... |
| `updateMask` | `string` | query | No | Optional. Mask of fields to update. |
| `validateOnly` | `boolean` | query | No | Optional. Only validate the request, but do not perform mutations. The default is false. |

**Request body**: `GoogleCloudDataplexV1DataScan`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.dataScans.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataScans.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/des... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy.Valid values are 0, 1, and 3. Requests sp... |

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dataplex.dataScans.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataScans.create`

**POST** `v1/{+parent}/dataScans`

Creates a DataScan resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the parent location: projects/{project}/locations/{location_id} where project refers t... |
| `dataScanId` | `string` | query | No | Required. DataScan identifier. Must contain only lowercase letters, numbers and hyphens. Must start with a letter. Mu... |
| `validateOnly` | `boolean` | query | No | Optional. Only validate the request, but do not perform mutations. The default is false. |

**Request body**: `GoogleCloudDataplexV1DataScan`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.dataScans.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataScans.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `GoogleIamV1SetIamPolicyRequest`

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dataplex.dataScans.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataScans.run`

**POST** `v1/{+name}:run`

Runs an on-demand execution of a DataScan

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the DataScan: projects/{project}/locations/{location_id}/dataScans/{data_scan_id}. whe... |

**Request body**: `GoogleCloudDataplexV1RunDataScanRequest`

**Response**: `GoogleCloudDataplexV1RunDataScanResponse`

```typescript
const res = await dataplex.dataScans.run({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataScans.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/a... |

**Request body**: `GoogleIamV1TestIamPermissionsRequest`

**Response**: `GoogleIamV1TestIamPermissionsResponse`

```typescript
const res = await dataplex.dataScans.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataScans.delete`

**DELETE** `v1/{+name}`

Deletes a DataScan resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the dataScan: projects/{project}/locations/{location_id}/dataScans/{data_scan_id} wher... |
| `force` | `boolean` | query | No | Optional. If set to true, any child resources of this data scan will also be deleted. (Otherwise, the request will on... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.dataScans.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataScans.jobs.generateDataQualityRules`

**POST** `v1/{+name}:generateDataQualityRules`

Generates recommended data quality rules based on the results of a data profiling scan.Use the recommendations to build rules for a data quality scan.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name must be one of the following: The name of a data scan with at least one successful, completed data... |

**Request body**: `GoogleCloudDataplexV1GenerateDataQualityRulesRequest`

**Response**: `GoogleCloudDataplexV1GenerateDataQualityRulesResponse`

```typescript
const res = await dataplex.jobs.generateDataQualityRules({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataScans.jobs.list`

**GET** `v1/{+parent}/jobs`

Lists DataScanJobs under the given DataScan.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the parent environment: projects/{project}/locations/{location_id}/dataScans/{data_sca... |
| `filter` | `string` | query | No | Optional. An expression for filtering the results of the ListDataScanJobs request.If unspecified, all datascan jobs w... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of DataScanJobs to return. The service may return fewer than this value. If unspecified, at ... |
| `pageToken` | `string` | query | No | Optional. Page token received from a previous ListDataScanJobs call. Provide this to retrieve the subsequent page. Wh... |

**Response**: `GoogleCloudDataplexV1ListDataScanJobsResponse`

```typescript
const res = await dataplex.jobs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.dataScans.jobs.get`

**GET** `v1/{+name}`

Gets a DataScanJob resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the DataScanJob: projects/{project}/locations/{location_id}/dataScans/{data_scan_id}/j... |
| `view` | `string` | query | No | Optional. Select the DataScanJob view to return. Defaults to BASIC. |

**Response**: `GoogleCloudDataplexV1DataScanJob`

```typescript
const res = await dataplex.jobs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.metadataFeeds.get`

**GET** `v1/{+name}`

Gets a MetadataFeed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the metadata feed, in the format projects/{project_id_or_number}/locations/{location_i... |

**Response**: `GoogleCloudDataplexV1MetadataFeed`

```typescript
const res = await dataplex.metadataFeeds.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.metadataFeeds.patch`

**PATCH** `v1/{+name}`

Updates a MetadataFeed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the metadata feed, in the format projects/{project_id_or_number}/locations/{location... |
| `updateMask` | `string` | query | No | Optional. Mask of fields to update. |
| `validateOnly` | `boolean` | query | No | Optional. Only validate the request, but do not perform mutations. The default is false. |

**Request body**: `GoogleCloudDataplexV1MetadataFeed`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.metadataFeeds.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.metadataFeeds.delete`

**DELETE** `v1/{+name}`

Deletes a MetadataFeed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the metadata feed, in the format projects/{project_id_or_number}/locations/{location_i... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.metadataFeeds.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.metadataFeeds.create`

**POST** `v1/{+parent}/metadataFeeds`

Creates a MetadataFeed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the parent location, in the format projects/{project_id_or_number}/locations/{location... |
| `metadataFeedId` | `string` | query | No | Optional. The metadata job ID. If not provided, a unique ID is generated with the prefix metadata-job-. |
| `validateOnly` | `boolean` | query | No | Optional. The service validates the request without performing any mutations. The default is false. |

**Request body**: `GoogleCloudDataplexV1MetadataFeed`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.metadataFeeds.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.metadataFeeds.list`

**GET** `v1/{+parent}/metadataFeeds`

Retrieve a list of MetadataFeeds.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the parent location, in the format projects/{project_id_or_number}/locations/{location... |
| `filter` | `string` | query | No | Optional. Filter request. Filters are case-sensitive. The service supports the following formats: labels.key1 = "valu... |
| `orderBy` | `string` | query | No | Optional. The field to sort the results by, either name or create_time. If not specified, the ordering is undefined. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of metadata feeds to return. The service might return fewer feeds than this value. If un... |
| `pageToken` | `string` | query | No | Optional. The page token received from a previous ListMetadataFeeds call. Provide this token to retrieve the subseque... |

**Response**: `GoogleCloudDataplexV1ListMetadataFeedsResponse`

```typescript
const res = await dataplex.metadataFeeds.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.changeRequests.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `GoogleIamV1SetIamPolicyRequest`

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dataplex.changeRequests.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.changeRequests.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/a... |

**Request body**: `GoogleIamV1TestIamPermissionsRequest`

**Response**: `GoogleIamV1TestIamPermissionsResponse`

```typescript
const res = await dataplex.changeRequests.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.changeRequests.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/des... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy.Valid values are 0, 1, and 3. Requests sp... |

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dataplex.changeRequests.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/des... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy.Valid values are 0, 1, and 3. Requests sp... |

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dataplex.lakes.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.list`

**GET** `v1/{+parent}/lakes`

Lists lake resources in a project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the lake location, of the form: projects/{project_number}/locations/{location_id} wher... |
| `filter` | `string` | query | No | Optional. Filter request. |
| `orderBy` | `string` | query | No | Optional. Order by fields for the result. |
| `pageSize` | `integer` | query | No | Optional. Maximum number of Lakes to return. The service may return fewer than this value. If unspecified, at most 10... |
| `pageToken` | `string` | query | No | Optional. Page token received from a previous ListLakes call. Provide this to retrieve the subsequent page. When pagi... |

**Response**: `GoogleCloudDataplexV1ListLakesResponse`

```typescript
const res = await dataplex.lakes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.patch`

**PATCH** `v1/{+name}`

Updates a lake resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The relative resource name of the lake, of the form: projects/{project_number}/locations/{location_id}/l... |
| `updateMask` | `string` | query | No | Required. Mask of fields to update. |
| `validateOnly` | `boolean` | query | No | Optional. Only validate the request, but do not perform mutations. The default is false. |

**Request body**: `GoogleCloudDataplexV1Lake`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.lakes.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.get`

**GET** `v1/{+name}`

Retrieves a lake resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the lake: projects/{project_number}/locations/{location_id}/lakes/{lake_id}. |

**Response**: `GoogleCloudDataplexV1Lake`

```typescript
const res = await dataplex.lakes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/a... |

**Request body**: `GoogleIamV1TestIamPermissionsRequest`

**Response**: `GoogleIamV1TestIamPermissionsResponse`

```typescript
const res = await dataplex.lakes.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `GoogleIamV1SetIamPolicyRequest`

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dataplex.lakes.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.delete`

**DELETE** `v1/{+name}`

Deletes a lake resource. All zones within the lake must be deleted before the lake can be deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the lake: projects/{project_number}/locations/{location_id}/lakes/{lake_id}. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.lakes.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.create`

**POST** `v1/{+parent}/lakes`

Creates a lake resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the lake location, of the form: projects/{project_number}/locations/{location_id} wher... |
| `lakeId` | `string` | query | No | Required. Lake identifier. This ID will be used to generate names such as database and dataset names when publishing ... |
| `validateOnly` | `boolean` | query | No | Optional. Only validate the request, but do not perform mutations. The default is false. |

**Request body**: `GoogleCloudDataplexV1Lake`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.lakes.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.environments.get`

**GET** `v1/{+name}`

Get environment resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the environment: projects/{project_id}/locations/{location_id}/lakes/{lake_id}/environ... |

**Response**: `GoogleCloudDataplexV1Environment`

```typescript
const res = await dataplex.environments.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.environments.patch`

**PATCH** `v1/{+name}`

Update the environment resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The relative resource name of the environment, of the form: projects/{project_id}/locations/{location_id... |
| `updateMask` | `string` | query | No | Required. Mask of fields to update. |
| `validateOnly` | `boolean` | query | No | Optional. Only validate the request, but do not perform mutations. The default is false. |

**Request body**: `GoogleCloudDataplexV1Environment`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.environments.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.environments.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/des... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy.Valid values are 0, 1, and 3. Requests sp... |

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dataplex.environments.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.environments.list`

**GET** `v1/{+parent}/environments`

Lists environments under the given lake.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the parent lake: projects/{project_id}/locations/{location_id}/lakes/{lake_id}. |
| `filter` | `string` | query | No | Optional. Filter request. |
| `orderBy` | `string` | query | No | Optional. Order by fields for the result. |
| `pageSize` | `integer` | query | No | Optional. Maximum number of environments to return. The service may return fewer than this value. If unspecified, at ... |
| `pageToken` | `string` | query | No | Optional. Page token received from a previous ListEnvironments call. Provide this to retrieve the subsequent page. Wh... |

**Response**: `GoogleCloudDataplexV1ListEnvironmentsResponse`

```typescript
const res = await dataplex.environments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.environments.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/a... |

**Request body**: `GoogleIamV1TestIamPermissionsRequest`

**Response**: `GoogleIamV1TestIamPermissionsResponse`

```typescript
const res = await dataplex.environments.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.environments.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `GoogleIamV1SetIamPolicyRequest`

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dataplex.environments.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.environments.create`

**POST** `v1/{+parent}/environments`

Create an environment resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the parent lake: projects/{project_id}/locations/{location_id}/lakes/{lake_id}. |
| `environmentId` | `string` | query | No | Required. Environment identifier. * Must contain only lowercase letters, numbers and hyphens. * Must start with a let... |
| `validateOnly` | `boolean` | query | No | Optional. Only validate the request, but do not perform mutations. The default is false. |

**Request body**: `GoogleCloudDataplexV1Environment`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.environments.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.environments.delete`

**DELETE** `v1/{+name}`

Delete the environment resource. All the child resources must have been deleted before environment deletion can be initiated.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the environment: projects/{project_id}/locations/{location_id}/lakes/{lake_id}/environ... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.environments.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.environments.sessions.list`

**GET** `v1/{+parent}/sessions`

Lists session resources in an environment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the parent environment: projects/{project_number}/locations/{location_id}/lakes/{lake_... |
| `filter` | `string` | query | No | Optional. Filter request. The following mode filter is supported to return only the sessions belonging to the request... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of sessions to return. The service may return fewer than this value. If unspecified, at most... |
| `pageToken` | `string` | query | No | Optional. Page token received from a previous ListSessions call. Provide this to retrieve the subsequent page. When p... |

**Response**: `GoogleCloudDataplexV1ListSessionsResponse`

```typescript
const res = await dataplex.sessions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.contentitems.list`

**GET** `v1/{+parent}/contentitems`

List content.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the parent lake: projects/{project_id}/locations/{location_id}/lakes/{lake_id} |
| `filter` | `string` | query | No | Optional. Filter request. Filters are case-sensitive. The following formats are supported:labels.key1 = "value1" labe... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of content to return. The service may return fewer than this value. If unspecified, at most ... |
| `pageToken` | `string` | query | No | Optional. Page token received from a previous ListContent call. Provide this to retrieve the subsequent page. When pa... |

**Response**: `GoogleCloudDataplexV1ListContentResponse`

```typescript
const res = await dataplex.contentitems.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.contentitems.delete`

**DELETE** `v1/{+name}`

Delete a content.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the content: projects/{project_id}/locations/{location_id}/lakes/{lake_id}/content/{co... |

**Response**: `Empty`

```typescript
const res = await dataplex.contentitems.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.contentitems.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a contentitem resource. A NOT_FOUND error is returned if the resource does not exist. An empty policy is returned if the resource exists but does not have a policy set on it.Caller must have Google IAM dataplex.content.getIamPolicy permission on the resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/des... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy.Valid values are 0, 1, and 3. Requests sp... |

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dataplex.contentitems.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.contentitems.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns the caller's permissions on a resource. If the resource does not exist, an empty set of permissions is returned (a NOT_FOUND error is not returned).A caller is not required to have Google IAM permission to make this request.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/a... |

**Request body**: `GoogleIamV1TestIamPermissionsRequest`

**Response**: `GoogleIamV1TestIamPermissionsResponse`

```typescript
const res = await dataplex.contentitems.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.contentitems.patch`

**PATCH** `v1/{+name}`

Update a content. Only supports full resource update.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The relative resource name of the content, of the form: projects/{project_id}/locations/{location_id}/la... |
| `updateMask` | `string` | query | No | Required. Mask of fields to update. |
| `validateOnly` | `boolean` | query | No | Optional. Only validate the request, but do not perform mutations. The default is false. |

**Request body**: `GoogleCloudDataplexV1Content`

**Response**: `GoogleCloudDataplexV1Content`

```typescript
const res = await dataplex.contentitems.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.contentitems.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified contentitem resource. Replaces any existing policy.Caller must have Google IAM dataplex.content.setIamPolicy permission on the resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `GoogleIamV1SetIamPolicyRequest`

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dataplex.contentitems.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.contentitems.create`

**POST** `v1/{+parent}/contentitems`

Create a content.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the parent lake: projects/{project_id}/locations/{location_id}/lakes/{lake_id} |
| `validateOnly` | `boolean` | query | No | Optional. Only validate the request, but do not perform mutations. The default is false. |

**Request body**: `GoogleCloudDataplexV1Content`

**Response**: `GoogleCloudDataplexV1Content`

```typescript
const res = await dataplex.contentitems.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.contentitems.get`

**GET** `v1/{+name}`

Get a content resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the content: projects/{project_id}/locations/{location_id}/lakes/{lake_id}/content/{co... |
| `view` | `string` | query | No | Optional. Specify content view to make a partial request. |

**Response**: `GoogleCloudDataplexV1Content`

```typescript
const res = await dataplex.contentitems.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.zones.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/a... |

**Request body**: `GoogleIamV1TestIamPermissionsRequest`

**Response**: `GoogleIamV1TestIamPermissionsResponse`

```typescript
const res = await dataplex.zones.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.zones.patch`

**PATCH** `v1/{+name}`

Updates a zone resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The relative resource name of the zone, of the form: projects/{project_number}/locations/{location_id}/l... |
| `updateMask` | `string` | query | No | Required. Mask of fields to update. |
| `validateOnly` | `boolean` | query | No | Optional. Only validate the request, but do not perform mutations. The default is false. |

**Request body**: `GoogleCloudDataplexV1Zone`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.zones.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.zones.delete`

**DELETE** `v1/{+name}`

Deletes a zone resource. All assets within a zone must be deleted before the zone can be deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the zone: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zon... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.zones.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.zones.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `GoogleIamV1SetIamPolicyRequest`

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dataplex.zones.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.zones.get`

**GET** `v1/{+name}`

Retrieves a zone resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the zone: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zon... |

**Response**: `GoogleCloudDataplexV1Zone`

```typescript
const res = await dataplex.zones.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.zones.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/des... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy.Valid values are 0, 1, and 3. Requests sp... |

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dataplex.zones.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.zones.create`

**POST** `v1/{+parent}/zones`

Creates a zone resource within a lake.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the parent lake: projects/{project_number}/locations/{location_id}/lakes/{lake_id}. |
| `validateOnly` | `boolean` | query | No | Optional. Only validate the request, but do not perform mutations. The default is false. |
| `zoneId` | `string` | query | No | Required. Zone identifier. This ID will be used to generate names such as database and dataset names when publishing ... |

**Request body**: `GoogleCloudDataplexV1Zone`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.zones.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.zones.list`

**GET** `v1/{+parent}/zones`

Lists zone resources in a lake.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the parent lake: projects/{project_number}/locations/{location_id}/lakes/{lake_id}. |
| `filter` | `string` | query | No | Optional. Filter request. |
| `orderBy` | `string` | query | No | Optional. Order by fields for the result. |
| `pageSize` | `integer` | query | No | Optional. Maximum number of zones to return. The service may return fewer than this value. If unspecified, at most 10... |
| `pageToken` | `string` | query | No | Optional. Page token received from a previous ListZones call. Provide this to retrieve the subsequent page. When pagi... |

**Response**: `GoogleCloudDataplexV1ListZonesResponse`

```typescript
const res = await dataplex.zones.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.zones.actions.list`

**GET** `v1/{+parent}/actions`

Lists action resources in a zone.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the parent zone: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zon... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of actions to return. The service may return fewer than this value. If unspecified, at most ... |
| `pageToken` | `string` | query | No | Optional. Page token received from a previous ListZoneActions call. Provide this to retrieve the subsequent page. Whe... |

**Response**: `GoogleCloudDataplexV1ListActionsResponse`

```typescript
const res = await dataplex.actions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.zones.entities.create`

**POST** `v1/{+parent}/entities`

Create a metadata entity.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the parent zone: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zon... |
| `validateOnly` | `boolean` | query | No | Optional. Only validate the request, but do not perform mutations. The default is false. |

**Request body**: `GoogleCloudDataplexV1Entity`

**Response**: `GoogleCloudDataplexV1Entity`

```typescript
const res = await dataplex.entities.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.zones.entities.delete`

**DELETE** `v1/{+name}`

Delete a metadata entity.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the entity: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{z... |
| `etag` | `string` | query | No | Required. The etag associated with the entity, which can be retrieved with a GetEntity request. |

**Response**: `Empty`

```typescript
const res = await dataplex.entities.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.zones.entities.update`

**PUT** `v1/{+name}`

Update a metadata entity. Only supports full resource update.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The resource name of the entity, of the form: projects/{project_number}/locations/{location_id}/lakes/{l... |
| `validateOnly` | `boolean` | query | No | Optional. Only validate the request, but do not perform mutations. The default is false. |

**Request body**: `GoogleCloudDataplexV1Entity`

**Response**: `GoogleCloudDataplexV1Entity`

```typescript
const res = await dataplex.entities.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.zones.entities.list`

**GET** `v1/{+parent}/entities`

List metadata entities in a zone.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the parent zone: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zon... |
| `filter` | `string` | query | No | Optional. The following filter parameters can be added to the URL to limit the entities returned by the API: Entity I... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of entities to return. The service may return fewer than this value. If unspecified, 100 ent... |
| `pageToken` | `string` | query | No | Optional. Page token received from a previous ListEntities call. Provide this to retrieve the subsequent page. When p... |
| `view` | `string` | query | No | Required. Specify the entity view to make a partial list request. |

**Response**: `GoogleCloudDataplexV1ListEntitiesResponse`

```typescript
const res = await dataplex.entities.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.zones.entities.get`

**GET** `v1/{+name}`

Get a metadata entity.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the entity: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{z... |
| `view` | `string` | query | No | Optional. Used to select the subset of entity information to return. Defaults to BASIC. |

**Response**: `GoogleCloudDataplexV1Entity`

```typescript
const res = await dataplex.entities.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.zones.entities.partitions.delete`

**DELETE** `v1/{+name}`

Delete a metadata partition.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the partition. format: projects/{project_number}/locations/{location_id}/lakes/{lake_i... |
| `etag` | `string` | query | No | Optional. The etag associated with the partition. |

**Response**: `Empty`

```typescript
const res = await dataplex.partitions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.zones.entities.partitions.create`

**POST** `v1/{+parent}/partitions`

Create a metadata partition.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the parent zone: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zon... |
| `validateOnly` | `boolean` | query | No | Optional. Only validate the request, but do not perform mutations. The default is false. |

**Request body**: `GoogleCloudDataplexV1Partition`

**Response**: `GoogleCloudDataplexV1Partition`

```typescript
const res = await dataplex.partitions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.zones.entities.partitions.get`

**GET** `v1/{+name}`

Get a metadata partition of an entity.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the partition: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones... |

**Response**: `GoogleCloudDataplexV1Partition`

```typescript
const res = await dataplex.partitions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.zones.entities.partitions.list`

**GET** `v1/{+parent}/partitions`

List metadata partitions of an entity.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the parent entity: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/z... |
| `filter` | `string` | query | No | Optional. Filter the partitions returned to the caller using a key value pair expression. Supported operators and syn... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of partitions to return. The service may return fewer than this value. If unspecified, 100 p... |
| `pageToken` | `string` | query | No | Optional. Page token received from a previous ListPartitions call. Provide this to retrieve the subsequent page. When... |

**Response**: `GoogleCloudDataplexV1ListPartitionsResponse`

```typescript
const res = await dataplex.partitions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.zones.assets.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `GoogleIamV1SetIamPolicyRequest`

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dataplex.assets.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.zones.assets.patch`

**PATCH** `v1/{+name}`

Updates an asset resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The relative resource name of the asset, of the form: projects/{project_number}/locations/{location_id}/... |
| `updateMask` | `string` | query | No | Required. Mask of fields to update. |
| `validateOnly` | `boolean` | query | No | Optional. Only validate the request, but do not perform mutations. The default is false. |

**Request body**: `GoogleCloudDataplexV1Asset`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.assets.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.zones.assets.create`

**POST** `v1/{+parent}/assets`

Creates an asset resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the parent zone: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zon... |
| `assetId` | `string` | query | No | Required. Asset identifier. This ID will be used to generate names such as table names when publishing metadata to Hi... |
| `validateOnly` | `boolean` | query | No | Optional. Only validate the request, but do not perform mutations. The default is false. |

**Request body**: `GoogleCloudDataplexV1Asset`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.assets.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.zones.assets.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/des... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy.Valid values are 0, 1, and 3. Requests sp... |

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dataplex.assets.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.zones.assets.get`

**GET** `v1/{+name}`

Retrieves an asset resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the asset: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zo... |

**Response**: `GoogleCloudDataplexV1Asset`

```typescript
const res = await dataplex.assets.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.zones.assets.delete`

**DELETE** `v1/{+name}`

Deletes an asset resource. The referenced storage resource is detached (default) or deleted based on the associated Lifecycle policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the asset: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zo... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.assets.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.zones.assets.list`

**GET** `v1/{+parent}/assets`

Lists asset resources in a zone.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the parent zone: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zon... |
| `filter` | `string` | query | No | Optional. Filter request. |
| `orderBy` | `string` | query | No | Optional. Order by fields for the result. |
| `pageSize` | `integer` | query | No | Optional. Maximum number of asset to return. The service may return fewer than this value. If unspecified, at most 10... |
| `pageToken` | `string` | query | No | Optional. Page token received from a previous ListAssets call. Provide this to retrieve the subsequent page. When pag... |

**Response**: `GoogleCloudDataplexV1ListAssetsResponse`

```typescript
const res = await dataplex.assets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.zones.assets.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/a... |

**Request body**: `GoogleIamV1TestIamPermissionsRequest`

**Response**: `GoogleIamV1TestIamPermissionsResponse`

```typescript
const res = await dataplex.assets.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.zones.assets.actions.list`

**GET** `v1/{+parent}/actions`

Lists action resources in an asset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the parent asset: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zo... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of actions to return. The service may return fewer than this value. If unspecified, at most ... |
| `pageToken` | `string` | query | No | Optional. Page token received from a previous ListAssetActions call. Provide this to retrieve the subsequent page. Wh... |

**Response**: `GoogleCloudDataplexV1ListActionsResponse`

```typescript
const res = await dataplex.actions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.content.patch`

**PATCH** `v1/{+name}`

Update a content. Only supports full resource update.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The relative resource name of the content, of the form: projects/{project_id}/locations/{location_id}/la... |
| `updateMask` | `string` | query | No | Required. Mask of fields to update. |
| `validateOnly` | `boolean` | query | No | Optional. Only validate the request, but do not perform mutations. The default is false. |

**Request body**: `GoogleCloudDataplexV1Content`

**Response**: `GoogleCloudDataplexV1Content`

```typescript
const res = await dataplex.content.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.content.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified contentitem resource. Replaces any existing policy.Caller must have Google IAM dataplex.content.setIamPolicy permission on the resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `GoogleIamV1SetIamPolicyRequest`

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dataplex.content.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.content.delete`

**DELETE** `v1/{+name}`

Delete a content.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the content: projects/{project_id}/locations/{location_id}/lakes/{lake_id}/content/{co... |

**Response**: `Empty`

```typescript
const res = await dataplex.content.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.content.get`

**GET** `v1/{+name}`

Get a content resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the content: projects/{project_id}/locations/{location_id}/lakes/{lake_id}/content/{co... |
| `view` | `string` | query | No | Optional. Specify content view to make a partial request. |

**Response**: `GoogleCloudDataplexV1Content`

```typescript
const res = await dataplex.content.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.content.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a contentitem resource. A NOT_FOUND error is returned if the resource does not exist. An empty policy is returned if the resource exists but does not have a policy set on it.Caller must have Google IAM dataplex.content.getIamPolicy permission on the resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/des... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy.Valid values are 0, 1, and 3. Requests sp... |

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dataplex.content.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.content.create`

**POST** `v1/{+parent}/content`

Create a content.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the parent lake: projects/{project_id}/locations/{location_id}/lakes/{lake_id} |
| `validateOnly` | `boolean` | query | No | Optional. Only validate the request, but do not perform mutations. The default is false. |

**Request body**: `GoogleCloudDataplexV1Content`

**Response**: `GoogleCloudDataplexV1Content`

```typescript
const res = await dataplex.content.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.content.list`

**GET** `v1/{+parent}/content`

List content.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the parent lake: projects/{project_id}/locations/{location_id}/lakes/{lake_id} |
| `filter` | `string` | query | No | Optional. Filter request. Filters are case-sensitive. The following formats are supported:labels.key1 = "value1" labe... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of content to return. The service may return fewer than this value. If unspecified, at most ... |
| `pageToken` | `string` | query | No | Optional. Page token received from a previous ListContent call. Provide this to retrieve the subsequent page. When pa... |

**Response**: `GoogleCloudDataplexV1ListContentResponse`

```typescript
const res = await dataplex.content.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.content.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns the caller's permissions on a resource. If the resource does not exist, an empty set of permissions is returned (a NOT_FOUND error is not returned).A caller is not required to have Google IAM permission to make this request.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/a... |

**Request body**: `GoogleIamV1TestIamPermissionsRequest`

**Response**: `GoogleIamV1TestIamPermissionsResponse`

```typescript
const res = await dataplex.content.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.actions.list`

**GET** `v1/{+parent}/actions`

Lists action resources in a lake.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the parent lake: projects/{project_number}/locations/{location_id}/lakes/{lake_id}. |
| `pageSize` | `integer` | query | No | Optional. Maximum number of actions to return. The service may return fewer than this value. If unspecified, at most ... |
| `pageToken` | `string` | query | No | Optional. Page token received from a previous ListLakeActions call. Provide this to retrieve the subsequent page. Whe... |

**Response**: `GoogleCloudDataplexV1ListActionsResponse`

```typescript
const res = await dataplex.actions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.tasks.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/a... |

**Request body**: `GoogleIamV1TestIamPermissionsRequest`

**Response**: `GoogleIamV1TestIamPermissionsResponse`

```typescript
const res = await dataplex.tasks.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.tasks.delete`

**DELETE** `v1/{+name}`

Delete the task resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the task: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/task/{task... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.tasks.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.tasks.list`

**GET** `v1/{+parent}/tasks`

Lists tasks under the given lake.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the parent lake: projects/{project_number}/locations/{location_id}/lakes/{lake_id}. |
| `filter` | `string` | query | No | Optional. Filter request. |
| `orderBy` | `string` | query | No | Optional. Order by fields for the result. |
| `pageSize` | `integer` | query | No | Optional. Maximum number of tasks to return. The service may return fewer than this value. If unspecified, at most 10... |
| `pageToken` | `string` | query | No | Optional. Page token received from a previous ListZones call. Provide this to retrieve the subsequent page. When pagi... |

**Response**: `GoogleCloudDataplexV1ListTasksResponse`

```typescript
const res = await dataplex.tasks.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.tasks.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `GoogleIamV1SetIamPolicyRequest`

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dataplex.tasks.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.tasks.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/des... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy.Valid values are 0, 1, and 3. Requests sp... |

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dataplex.tasks.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.tasks.get`

**GET** `v1/{+name}`

Get task resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the task: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/tasks/{tas... |

**Response**: `GoogleCloudDataplexV1Task`

```typescript
const res = await dataplex.tasks.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.tasks.patch`

**PATCH** `v1/{+name}`

Update the task resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The relative resource name of the task, of the form: projects/{project_number}/locations/{location_id}/l... |
| `updateMask` | `string` | query | No | Required. Mask of fields to update. |
| `validateOnly` | `boolean` | query | No | Optional. Only validate the request, but do not perform mutations. The default is false. |

**Request body**: `GoogleCloudDataplexV1Task`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.tasks.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.tasks.create`

**POST** `v1/{+parent}/tasks`

Creates a task resource within a lake.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the parent lake: projects/{project_number}/locations/{location_id}/lakes/{lake_id}. |
| `taskId` | `string` | query | No | Required. Task identifier. |
| `validateOnly` | `boolean` | query | No | Optional. Only validate the request, but do not perform mutations. The default is false. |

**Request body**: `GoogleCloudDataplexV1Task`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await dataplex.tasks.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.tasks.run`

**POST** `v1/{+name}:run`

Run an on demand execution of a Task.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the task: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/tasks/{tas... |

**Request body**: `GoogleCloudDataplexV1RunTaskRequest`

**Response**: `GoogleCloudDataplexV1RunTaskResponse`

```typescript
const res = await dataplex.tasks.run({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.tasks.jobs.get`

**GET** `v1/{+name}`

Get job resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the job: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/tasks/{task... |

**Response**: `GoogleCloudDataplexV1Job`

```typescript
const res = await dataplex.jobs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.tasks.jobs.list`

**GET** `v1/{+parent}/jobs`

Lists Jobs under the given task.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the parent environment: projects/{project_number}/locations/{location_id}/lakes/{lake_... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of jobs to return. The service may return fewer than this value. If unspecified, at most 10 ... |
| `pageToken` | `string` | query | No | Optional. Page token received from a previous ListJobs call. Provide this to retrieve the subsequent page. When pagin... |

**Response**: `GoogleCloudDataplexV1ListJobsResponse`

```typescript
const res = await dataplex.jobs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataplex.projects.locations.lakes.tasks.jobs.cancel`

**POST** `v1/{+name}:cancel`

Cancel jobs running for the task resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the job: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/task/{task_... |

**Request body**: `GoogleCloudDataplexV1CancelJobRequest`

**Response**: `Empty`

```typescript
const res = await dataplex.jobs.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `GoogleCloudDataplexV1Action`

Action represents an issue requiring administrator action for resolution.

| Property | Type | Description |
|----------|------|-------------|
| `asset` | `string` | Output only. The relative resource name of the asset, of the form: projects/{project_number}/loca... |
| `category` | `string` | The category of issue associated with the action. |
| `dataLocations` | `array<string>` | The list of data locations associated with this action. Cloud Storage locations are represented a... |
| `detectTime` | `string` | The time that the issue was detected. |
| `failedSecurityPolicyApply` | `GoogleCloudDataplexV1ActionFailedSecurityPolicyApply` | Details for issues related to applying security policy. |
| `incompatibleDataSchema` | `GoogleCloudDataplexV1ActionIncompatibleDataSchema` | Details for issues related to incompatible schemas detected within data. |
| `invalidDataFormat` | `GoogleCloudDataplexV1ActionInvalidDataFormat` | Details for issues related to invalid or unsupported data formats. |
| `invalidDataOrganization` | `GoogleCloudDataplexV1ActionInvalidDataOrganization` | Details for issues related to invalid data arrangement. |
| `invalidDataPartition` | `GoogleCloudDataplexV1ActionInvalidDataPartition` | Details for issues related to invalid or unsupported data partition structure. |
| `issue` | `string` | Detailed description of the issue requiring action. |
| `lake` | `string` | Output only. The relative resource name of the lake, of the form: projects/{project_number}/locat... |
| `missingData` | `GoogleCloudDataplexV1ActionMissingData` | Details for issues related to absence of data within managed resources. |
| `missingResource` | `GoogleCloudDataplexV1ActionMissingResource` | Details for issues related to absence of a managed resource. |
| `name` | `string` | Output only. The relative resource name of the action, of the form: projects/{project}/locations/... |
| `unauthorizedResource` | `GoogleCloudDataplexV1ActionUnauthorizedResource` | Details for issues related to lack of permissions to access data resources. |
| `zone` | `string` | Output only. The relative resource name of the zone, of the form: projects/{project_number}/locat... |

### `GoogleCloudDataplexV1ActionFailedSecurityPolicyApply`

Failed to apply security policy to the managed resource(s) under a lake, zone or an asset. For a lake or zone resource, one or more underlying assets has a failure applying security policy to the associated managed resource.

| Property | Type | Description |
|----------|------|-------------|
| `asset` | `string` | Resource name of one of the assets with failing security policy application. Populated for a lake... |

### `GoogleCloudDataplexV1ActionIncompatibleDataSchema`

Action details for incompatible schemas detected by discovery.

| Property | Type | Description |
|----------|------|-------------|
| `existingSchema` | `string` | The existing and expected schema of the table. The schema is provided as a JSON formatted structu... |
| `newSchema` | `string` | The new and incompatible schema within the table. The schema is provided as a JSON formatted stru... |
| `sampledDataLocations` | `array<string>` | The list of data locations sampled and used for format/schema inference. |
| `schemaChange` | `string` | Whether the action relates to a schema that is incompatible or modified. |
| `table` | `string` | The name of the table containing invalid data. |

### `GoogleCloudDataplexV1ActionInvalidDataFormat`

Action details for invalid or unsupported data files detected by discovery.

| Property | Type | Description |
|----------|------|-------------|
| `expectedFormat` | `string` | The expected data format of the entity. |
| `newFormat` | `string` | The new unexpected data format within the entity. |
| `sampledDataLocations` | `array<string>` | The list of data locations sampled and used for format/schema inference. |

### `GoogleCloudDataplexV1ActionInvalidDataOrganization`

Action details for invalid data arrangement.

### `GoogleCloudDataplexV1ActionInvalidDataPartition`

Action details for invalid or unsupported partitions detected by discovery.

| Property | Type | Description |
|----------|------|-------------|
| `expectedStructure` | `string` | The issue type of InvalidDataPartition. |

### `GoogleCloudDataplexV1ActionMissingData`

Action details for absence of data detected by discovery.

### `GoogleCloudDataplexV1ActionMissingResource`

Action details for resource references in assets that cannot be located.

### `GoogleCloudDataplexV1ActionUnauthorizedResource`

Action details for unauthorized resource issues raised to indicate that the service account associated with the lake instance is not authorized to access or manage the resource associated with an asset.

### `GoogleCloudDataplexV1Aspect`

An aspect is a single piece of metadata describing an entry.

| Property | Type | Description |
|----------|------|-------------|
| `aspectSource` | `GoogleCloudDataplexV1AspectSource` | Optional. Information related to the source system of the aspect. |
| `aspectType` | `string` | Output only. The resource name of the type used to create this Aspect. |
| `createTime` | `string` | Output only. The time when the Aspect was created. |
| `data` | `object` | Required. The content of the aspect, according to its aspect type schema. The maximum size of the... |
| `path` | `string` | Output only. The path in the entry under which the aspect is attached. |
| `updateTime` | `string` | Output only. The time when the Aspect was last updated. |

### `GoogleCloudDataplexV1AspectSource`

Information related to the source system of the aspect.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | The time the aspect was created in the source system. |
| `dataVersion` | `string` | The version of the data format used to produce this data. This field is used to indicated when th... |
| `updateTime` | `string` | The time the aspect was last updated in the source system. |

### `GoogleCloudDataplexV1AspectType`

AspectType is a template for creating Aspects, and represents the JSON-schema for a given Entry, for example, BigQuery Table Schema.

| Property | Type | Description |
|----------|------|-------------|
| `authorization` | `GoogleCloudDataplexV1AspectTypeAuthorization` | Immutable. Defines the Authorization for this type. |
| `createTime` | `string` | Output only. The time when the AspectType was created. |
| `dataClassification` | `string` | Optional. Immutable. Stores data classification of the aspect. |
| `description` | `string` | Optional. Description of the AspectType. |
| `displayName` | `string` | Optional. User friendly display name. |
| `etag` | `string` | The service computes this checksum. The client may send it on update and delete requests to ensur... |
| `labels` | `object` | Optional. User-defined labels for the AspectType. |
| `metadataTemplate` | `GoogleCloudDataplexV1AspectTypeMetadataTemplate` | Required. MetadataTemplate of the aspect. |
| `name` | `string` | Output only. The relative resource name of the AspectType, of the form: projects/{project_number}... |
| `transferStatus` | `string` | Output only. Denotes the transfer status of the Aspect Type. It is unspecified for Aspect Types c... |
| `uid` | `string` | Output only. System generated globally unique ID for the AspectType. If you delete and recreate t... |
| `updateTime` | `string` | Output only. The time when the AspectType was last updated. |

### `GoogleCloudDataplexV1AspectTypeAuthorization`

Authorization for an AspectType.

| Property | Type | Description |
|----------|------|-------------|
| `alternateUsePermission` | `string` | Immutable. The IAM permission grantable on the EntryGroup to allow access to instantiate Aspects ... |

### `GoogleCloudDataplexV1AspectTypeMetadataTemplate`

MetadataTemplate definition for an AspectType.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `GoogleCloudDataplexV1AspectTypeMetadataTemplateAnnotations` | Optional. Specifies annotations on this field. |
| `arrayItems` | `GoogleCloudDataplexV1AspectTypeMetadataTemplate` | Optional. If the type is array, set array_items. array_items can refer to a primitive field or a ... |
| `constraints` | `GoogleCloudDataplexV1AspectTypeMetadataTemplateConstraints` | Optional. Specifies the constraints on this field. |
| `enumValues` | `array<GoogleCloudDataplexV1AspectTypeMetadataTemplateEnumValue>` | Optional. The list of values for an enum type. You must define it if the type is enum. |
| `index` | `integer` | Optional. Index is used to encode Template messages. The value of index can range between 1 and 2... |
| `mapItems` | `GoogleCloudDataplexV1AspectTypeMetadataTemplate` | Optional. If the type is map, set map_items. map_items can refer to a primitive field or a comple... |
| `name` | `string` | Required. The name of the field. |
| `recordFields` | `array<GoogleCloudDataplexV1AspectTypeMetadataTemplate>` | Optional. Field definition. You must specify it if the type is record. It defines the nested fields. |
| `type` | `string` | Required. The datatype of this field. The following values are supported:Primitive types: string ... |
| `typeId` | `string` | Optional. You can use type id if this definition of the field needs to be reused later. The type ... |
| `typeRef` | `string` | Optional. A reference to another field definition (not an inline definition). The value must be e... |

### `GoogleCloudDataplexV1AspectTypeMetadataTemplateAnnotations`

Definition of the annotations of a field.

| Property | Type | Description |
|----------|------|-------------|
| `deprecated` | `string` | Optional. Marks a field as deprecated. You can include a deprecation message. |
| `description` | `string` | Optional. Description for a field. |
| `displayName` | `string` | Optional. Display name for a field. |
| `displayOrder` | `integer` | Optional. Display order for a field. You can use this to reorder where a field is rendered. |
| `stringType` | `string` | Optional. You can use String Type annotations to specify special meaning to string fields. The fo... |
| `stringValues` | `array<string>` | Optional. Suggested hints for string fields. You can use them to suggest values to users through ... |

### `GoogleCloudDataplexV1AspectTypeMetadataTemplateConstraints`

Definition of the constraints of a field.

| Property | Type | Description |
|----------|------|-------------|
| `required` | `boolean` | Optional. Marks this field as optional or required. |

### `GoogleCloudDataplexV1AspectTypeMetadataTemplateEnumValue`

Definition of Enumvalue, to be used for enum fields.

| Property | Type | Description |
|----------|------|-------------|
| `deprecated` | `string` | Optional. You can set this message if you need to deprecate an enum value. |
| `index` | `integer` | Required. Index for the enum value. It can't be modified. |
| `name` | `string` | Required. Name of the enumvalue. This is the actual value that the aspect can contain. |

### `GoogleCloudDataplexV1Asset`

An asset represents a cloud resource that is being managed within a lake as a member of a zone.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time when the asset was created. |
| `description` | `string` | Optional. Description of the asset. |
| `discoverySpec` | `GoogleCloudDataplexV1AssetDiscoverySpec` | Optional. Specification of the discovery feature applied to data referenced by this asset. When t... |
| `discoveryStatus` | `GoogleCloudDataplexV1AssetDiscoveryStatus` | Output only. Status of the discovery feature applied to data referenced by this asset. |
| `displayName` | `string` | Optional. User friendly display name. |
| `labels` | `object` | Optional. User defined labels for the asset. |
| `name` | `string` | Output only. The relative resource name of the asset, of the form: projects/{project_number}/loca... |
| `resourceSpec` | `GoogleCloudDataplexV1AssetResourceSpec` | Required. Specification of the resource that is referenced by this asset. |
| `resourceStatus` | `GoogleCloudDataplexV1AssetResourceStatus` | Output only. Status of the resource referenced by this asset. |
| `securityStatus` | `GoogleCloudDataplexV1AssetSecurityStatus` | Output only. Status of the security policy applied to resource referenced by this asset. |
| `state` | `string` | Output only. Current state of the asset. |
| `uid` | `string` | Output only. System generated globally unique ID for the asset. This ID will be different if the ... |
| `updateTime` | `string` | Output only. The time when the asset was last updated. |

### `GoogleCloudDataplexV1AssetDiscoverySpec`

Settings to manage the metadata discovery and publishing for an asset.

| Property | Type | Description |
|----------|------|-------------|
| `csvOptions` | `GoogleCloudDataplexV1AssetDiscoverySpecCsvOptions` | Optional. Configuration for CSV data. |
| `enabled` | `boolean` | Optional. Whether discovery is enabled. |
| `excludePatterns` | `array<string>` | Optional. The list of patterns to apply for selecting data to exclude during discovery. For Cloud... |
| `includePatterns` | `array<string>` | Optional. The list of patterns to apply for selecting data to include during discovery if only a ... |
| `jsonOptions` | `GoogleCloudDataplexV1AssetDiscoverySpecJsonOptions` | Optional. Configuration for Json data. |
| `schedule` | `string` | Optional. Cron schedule (https://en.wikipedia.org/wiki/Cron) for running discovery periodically. ... |

### `GoogleCloudDataplexV1AssetDiscoverySpecCsvOptions`

Describe CSV and similar semi-structured data formats.

| Property | Type | Description |
|----------|------|-------------|
| `delimiter` | `string` | Optional. The delimiter being used to separate values. This defaults to ','. |
| `disableTypeInference` | `boolean` | Optional. Whether to disable the inference of data type for CSV data. If true, all columns will b... |
| `encoding` | `string` | Optional. The character encoding of the data. The default is UTF-8. |
| `headerRows` | `integer` | Optional. The number of rows to interpret as header rows that should be skipped when reading data... |

### `GoogleCloudDataplexV1AssetDiscoverySpecJsonOptions`

Describe JSON data format.

| Property | Type | Description |
|----------|------|-------------|
| `disableTypeInference` | `boolean` | Optional. Whether to disable the inference of data type for Json data. If true, all columns will ... |
| `encoding` | `string` | Optional. The character encoding of the data. The default is UTF-8. |

### `GoogleCloudDataplexV1AssetDiscoveryStatus`

Status of discovery for an asset.

| Property | Type | Description |
|----------|------|-------------|
| `lastRunDuration` | `string` | The duration of the last discovery run. |
| `lastRunTime` | `string` | The start time of the last discovery run. |
| `message` | `string` | Additional information about the current state. |
| `state` | `string` | The current status of the discovery feature. |
| `stats` | `GoogleCloudDataplexV1AssetDiscoveryStatusStats` | Data Stats of the asset reported by discovery. |
| `updateTime` | `string` | Last update time of the status. |

### `GoogleCloudDataplexV1AssetDiscoveryStatusStats`

The aggregated data statistics for the asset reported by discovery.

| Property | Type | Description |
|----------|------|-------------|
| `dataItems` | `string` | The count of data items within the referenced resource. |
| `dataSize` | `string` | The number of stored data bytes within the referenced resource. |
| `filesets` | `string` | The count of fileset entities within the referenced resource. |
| `tables` | `string` | The count of table entities within the referenced resource. |

### `GoogleCloudDataplexV1AssetResourceSpec`

Identifies the cloud resource that is referenced by this asset.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Immutable. Relative name of the cloud resource that contains the data that is being managed withi... |
| `readAccessMode` | `string` | Optional. Determines how read permissions are handled for each asset and their associated tables.... |
| `type` | `string` | Required. Immutable. Type of resource. |

### `GoogleCloudDataplexV1AssetResourceStatus`

Status of the resource referenced by an asset.

| Property | Type | Description |
|----------|------|-------------|
| `managedAccessIdentity` | `string` | Output only. Service account associated with the BigQuery Connection. |
| `message` | `string` | Additional information about the current state. |
| `state` | `string` | The current state of the managed resource. |
| `updateTime` | `string` | Last update time of the status. |

### `GoogleCloudDataplexV1AssetSecurityStatus`

Security policy status of the asset. Data security policy, i.e., readers, writers & owners, should be specified in the lake/zone/asset IAM policy.

| Property | Type | Description |
|----------|------|-------------|
| `message` | `string` | Additional information about the current state. |
| `state` | `string` | The current state of the security policy applied to the attached resource. |
| `updateTime` | `string` | Last update time of the status. |

### `GoogleCloudDataplexV1AssetStatus`

Aggregated status of the underlying assets of a lake or zone.

| Property | Type | Description |
|----------|------|-------------|
| `activeAssets` | `integer` | Number of active assets. |
| `securityPolicyApplyingAssets` | `integer` | Number of assets that are in process of updating the security policy on attached resources. |
| `updateTime` | `string` | Last update time of the status. |

### `GoogleCloudDataplexV1BusinessGlossaryEvent`

Payload associated with Business Glossary related log events.

| Property | Type | Description |
|----------|------|-------------|
| `eventType` | `string` | The type of the event. |
| `message` | `string` | The log message. |
| `resource` | `string` | Name of the resource. |

### `GoogleCloudDataplexV1CancelJobRequest`

Cancel task jobs.

### `GoogleCloudDataplexV1CancelMetadataJobRequest`

Cancel metadata job request.

### `GoogleCloudDataplexV1Content`

Content represents a user-visible notebook or a sql script

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Content creation time. |
| `dataText` | `string` | Required. Content data in string format. |
| `description` | `string` | Optional. Description of the content. |
| `labels` | `object` | Optional. User defined labels for the content. |
| `name` | `string` | Output only. The relative resource name of the content, of the form: projects/{project_id}/locati... |
| `notebook` | `GoogleCloudDataplexV1ContentNotebook` | Notebook related configurations. |
| `path` | `string` | Required. The path for the Content file, represented as directory structure. Unique within a lake... |
| `sqlScript` | `GoogleCloudDataplexV1ContentSqlScript` | Sql Script related configurations. |
| `uid` | `string` | Output only. System generated globally unique ID for the content. This ID will be different if th... |
| `updateTime` | `string` | Output only. The time when the content was last updated. |

### `GoogleCloudDataplexV1ContentNotebook`

Configuration for Notebook content.

| Property | Type | Description |
|----------|------|-------------|
| `kernelType` | `string` | Required. Kernel Type of the notebook. |

### `GoogleCloudDataplexV1ContentSqlScript`

Configuration for the Sql Script content.

| Property | Type | Description |
|----------|------|-------------|
| `engine` | `string` | Required. Query Engine to be used for the Sql Query. |

### `GoogleCloudDataplexV1DataAccessSpec`

DataAccessSpec holds the access control configuration to be enforced on data stored within resources (eg: rows, columns in BigQuery Tables). When associated with data, the data is only accessible to principals explicitly granted access through the DataAccessSpec. Principals with access to the containing resource are not implicitly granted access.

| Property | Type | Description |
|----------|------|-------------|
| `readers` | `array<string>` | Optional. The format of strings follows the pattern followed by IAM in the bindings. user:{email}... |

### `GoogleCloudDataplexV1DataAsset`

Represents a data asset resource that can be packaged and shared via a data product.

| Property | Type | Description |
|----------|------|-------------|
| `accessGroupConfigs` | `object` | Optional. Access groups configurations for this data asset.The key is DataProduct.AccessGroup.id ... |
| `createTime` | `string` | Output only. The time at which the data asset was created. |
| `etag` | `string` | Optional. This checksum is computed by the server based on the value of other fields, and may be ... |
| `labels` | `object` | Optional. User-defined labels for the data asset.Example: { "environment": "production", "billing... |
| `name` | `string` | Identifier. Resource name of the data asset. Format: projects/{project_id_or_number}/locations/{l... |
| `resource` | `string` | Required. Immutable. Full resource name of the cloud resource represented by the data asset. This... |
| `uid` | `string` | Output only. System generated globally unique ID for the data asset. This ID will be different if... |
| `updateTime` | `string` | Output only. The time at which the data asset was last updated. |

### `GoogleCloudDataplexV1DataAssetAccessGroupConfig`

Configuration for access group inherited from the parent data product.

| Property | Type | Description |
|----------|------|-------------|
| `iamRoles` | `array<string>` | Optional. IAM roles granted on the resource to this access group. Role name follows https://cloud... |

### `GoogleCloudDataplexV1DataAttribute`

Denotes one dataAttribute in a dataTaxonomy, for example, PII. DataAttribute resources can be defined in a hierarchy. A single dataAttribute resource can contain specs of multiple types PII - ResourceAccessSpec : - readers :foo@bar.com - DataAccessSpec : - readers :bar@foo.com

| Property | Type | Description |
|----------|------|-------------|
| `attributeCount` | `integer` | Output only. The number of child attributes present for this attribute. |
| `createTime` | `string` | Output only. The time when the DataAttribute was created. |
| `dataAccessSpec` | `GoogleCloudDataplexV1DataAccessSpec` | Optional. Specified when applied to data stored on the resource (eg: rows, columns in BigQuery Ta... |
| `description` | `string` | Optional. Description of the DataAttribute. |
| `displayName` | `string` | Optional. User friendly display name. |
| `etag` | `string` | This checksum is computed by the server based on the value of other fields, and may be sent on up... |
| `labels` | `object` | Optional. User-defined labels for the DataAttribute. |
| `name` | `string` | Output only. The relative resource name of the dataAttribute, of the form: projects/{project_numb... |
| `parentId` | `string` | Optional. The ID of the parent DataAttribute resource, should belong to the same data taxonomy. C... |
| `resourceAccessSpec` | `GoogleCloudDataplexV1ResourceAccessSpec` | Optional. Specified when applied to a resource (eg: Cloud Storage bucket, BigQuery dataset, BigQu... |
| `uid` | `string` | Output only. System generated globally unique ID for the DataAttribute. This ID will be different... |
| `updateTime` | `string` | Output only. The time when the DataAttribute was last updated. |

### `GoogleCloudDataplexV1DataAttributeBinding`

DataAttributeBinding represents binding of attributes to resources. Eg: Bind 'CustomerInfo' entity with 'PII' attribute.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `array<string>` | Optional. List of attributes to be associated with the resource, provided in the form: projects/{... |
| `createTime` | `string` | Output only. The time when the DataAttributeBinding was created. |
| `description` | `string` | Optional. Description of the DataAttributeBinding. |
| `displayName` | `string` | Optional. User friendly display name. |
| `etag` | `string` | This checksum is computed by the server based on the value of other fields, and may be sent on up... |
| `labels` | `object` | Optional. User-defined labels for the DataAttributeBinding. |
| `name` | `string` | Output only. The relative resource name of the Data Attribute Binding, of the form: projects/{pro... |
| `paths` | `array<GoogleCloudDataplexV1DataAttributeBindingPath>` | Optional. The list of paths for items within the associated resource (eg. columns and partitions ... |
| `resource` | `string` | Optional. Immutable. The resource name of the resource that is associated to attributes. Presentl... |
| `uid` | `string` | Output only. System generated globally unique ID for the DataAttributeBinding. This ID will be di... |
| `updateTime` | `string` | Output only. The time when the DataAttributeBinding was last updated. |

### `GoogleCloudDataplexV1DataAttributeBindingPath`

Represents a subresource of the given resource, and associated bindings with it. Currently supported subresources are column and partition schema fields within a table.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `array<string>` | Optional. List of attributes to be associated with the path of the resource, provided in the form... |
| `name` | `string` | Required. The name identifier of the path. Nested columns should be of the form: 'address.city'. |

### `GoogleCloudDataplexV1DataDiscoveryResult`

The output of a data discovery scan.

| Property | Type | Description |
|----------|------|-------------|
| `bigqueryPublishing` | `GoogleCloudDataplexV1DataDiscoveryResultBigQueryPublishing` | Output only. Configuration for metadata publishing. |
| `scanStatistics` | `GoogleCloudDataplexV1DataDiscoveryResultScanStatistics` | Output only. Describes result statistics of a data scan discovery job. |

### `GoogleCloudDataplexV1DataDiscoveryResultBigQueryPublishing`

Describes BigQuery publishing configurations.

| Property | Type | Description |
|----------|------|-------------|
| `dataset` | `string` | Output only. The BigQuery dataset the discovered tables are published to. |
| `location` | `string` | Output only. The location of the BigQuery publishing dataset. |

### `GoogleCloudDataplexV1DataDiscoveryResultScanStatistics`

Describes result statistics of a data scan discovery job.

| Property | Type | Description |
|----------|------|-------------|
| `dataProcessedBytes` | `string` | The data processed in bytes. |
| `filesExcluded` | `integer` | The number of files excluded. |
| `filesetsCreated` | `integer` | The number of filesets created. |
| `filesetsDeleted` | `integer` | The number of filesets deleted. |
| `filesetsUpdated` | `integer` | The number of filesets updated. |
| `scannedFileCount` | `integer` | The number of files scanned. |
| `tablesCreated` | `integer` | The number of tables created. |
| `tablesDeleted` | `integer` | The number of tables deleted. |
| `tablesUpdated` | `integer` | The number of tables updated. |

### `GoogleCloudDataplexV1DataDiscoverySpec`

Spec for a data discovery scan.

| Property | Type | Description |
|----------|------|-------------|
| `bigqueryPublishingConfig` | `GoogleCloudDataplexV1DataDiscoverySpecBigQueryPublishingConfig` | Optional. Configuration for metadata publishing. |
| `storageConfig` | `GoogleCloudDataplexV1DataDiscoverySpecStorageConfig` | Cloud Storage related configurations. |

### `GoogleCloudDataplexV1DataDiscoverySpecBigQueryPublishingConfig`

Describes BigQuery publishing configurations.

| Property | Type | Description |
|----------|------|-------------|
| `connection` | `string` | Optional. The BigQuery connection used to create BigLake tables. Must be in the form projects/{pr... |
| `location` | `string` | Optional. The location of the BigQuery dataset to publish BigLake external or non-BigLake externa... |
| `project` | `string` | Optional. The project of the BigQuery dataset to publish BigLake external or non-BigLake external... |
| `tableType` | `string` | Optional. Determines whether to publish discovered tables as BigLake external tables or non-BigLa... |

### `GoogleCloudDataplexV1DataDiscoverySpecStorageConfig`

Configurations related to Cloud Storage as the data source.

| Property | Type | Description |
|----------|------|-------------|
| `csvOptions` | `GoogleCloudDataplexV1DataDiscoverySpecStorageConfigCsvOptions` | Optional. Configuration for CSV data. |
| `excludePatterns` | `array<string>` | Optional. Defines the data to exclude during discovery. Provide a list of patterns that identify ... |
| `includePatterns` | `array<string>` | Optional. Defines the data to include during discovery when only a subset of the data should be c... |
| `jsonOptions` | `GoogleCloudDataplexV1DataDiscoverySpecStorageConfigJsonOptions` | Optional. Configuration for JSON data. |

### `GoogleCloudDataplexV1DataDiscoverySpecStorageConfigCsvOptions`

Describes CSV and similar semi-structured data formats.

| Property | Type | Description |
|----------|------|-------------|
| `delimiter` | `string` | Optional. The delimiter that is used to separate values. The default is , (comma). |
| `encoding` | `string` | Optional. The character encoding of the data. The default is UTF-8. |
| `headerRows` | `integer` | Optional. The number of rows to interpret as header rows that should be skipped when reading data... |
| `quote` | `string` | Optional. The character used to quote column values. Accepts " (double quotation mark) or ' (sing... |
| `typeInferenceDisabled` | `boolean` | Optional. Whether to disable the inference of data types for CSV data. If true, all columns are r... |

### `GoogleCloudDataplexV1DataDiscoverySpecStorageConfigJsonOptions`

Describes JSON data format.

| Property | Type | Description |
|----------|------|-------------|
| `encoding` | `string` | Optional. The character encoding of the data. The default is UTF-8. |
| `typeInferenceDisabled` | `boolean` | Optional. Whether to disable the inference of data types for JSON data. If true, all columns are ... |

### `GoogleCloudDataplexV1DataDocumentationResult`

The output of a DataDocumentation scan.

| Property | Type | Description |
|----------|------|-------------|
| `tableResult` | `GoogleCloudDataplexV1DataDocumentationResultTableResult` | Output only. Table result for insights. |

### `GoogleCloudDataplexV1DataDocumentationResultField`

Column of a table with generated metadata and nested fields.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Output only. Generated description for columns and fields. |
| `fields` | `array<GoogleCloudDataplexV1DataDocumentationResultField>` | Output only. Nested fields. |
| `name` | `string` | Output only. The name of the column. |

### `GoogleCloudDataplexV1DataDocumentationResultQuery`

A sample SQL query in data documentation.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Output only. The description for the query. |
| `sql` | `string` | Output only. The SQL query string which can be executed. |

### `GoogleCloudDataplexV1DataDocumentationResultSchema`

Schema of the table with generated metadata of columns.

| Property | Type | Description |
|----------|------|-------------|
| `fields` | `array<GoogleCloudDataplexV1DataDocumentationResultField>` | Output only. The list of columns. |

### `GoogleCloudDataplexV1DataDocumentationResultTableResult`

Generated metadata about the table.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Output only. The service-qualified full resource name of the cloud resource. Ex: //bigquery.googl... |
| `overview` | `string` | Output only. Generated description of the table. |
| `queries` | `array<GoogleCloudDataplexV1DataDocumentationResultQuery>` | Output only. Sample SQL queries for the table. |
| `schema` | `GoogleCloudDataplexV1DataDocumentationResultSchema` | Output only. Schema of the table with generated metadata of the columns in the schema. |

### `GoogleCloudDataplexV1DataDocumentationSpec`

DataDocumentation scan related spec.

| Property | Type | Description |
|----------|------|-------------|
| `catalogPublishingEnabled` | `boolean` | Optional. Whether to publish result to Dataplex Catalog. |
| `generationScopes` | `array<string>` | Optional. Specifies which components of the data documentation to generate. Any component that is... |

### `GoogleCloudDataplexV1DataProduct`

A data product is a curated collection of data assets, packaged to address specific use cases. It's a way to manage and share data in a more organized, product-like manner.

| Property | Type | Description |
|----------|------|-------------|
| `accessGroups` | `object` | Optional. Data product access groups by access group id as key. If data product is used only for ... |
| `assetCount` | `integer` | Output only. Number of data assets associated with this data product. |
| `createTime` | `string` | Output only. The time at which the data product was created. |
| `description` | `string` | Optional. Description of the data product. |
| `displayName` | `string` | Required. User-friendly display name of the data product. |
| `etag` | `string` | Optional. This checksum is computed by the server based on the value of other fields, and may be ... |
| `icon` | `string` | Optional. Base64 encoded image representing the data product. Max Size: 3.0MiB Expected image dim... |
| `labels` | `object` | Optional. User-defined labels for the data product.Example: { "environment": "production", "billi... |
| `name` | `string` | Identifier. Resource name of the data product. Format: projects/{project_id_or_number}/locations/... |
| `ownerEmails` | `array<string>` | Required. Emails of the data product owners. |
| `uid` | `string` | Output only. System generated unique ID for the data product. This ID will be different if the da... |
| `updateTime` | `string` | Output only. The time at which the data product was last updated. |

### `GoogleCloudDataplexV1DataProductAccessGroup`

Custom user defined access groups at the data product level. These are used for granting different levels of access (IAM roles) on the individual data product's data assets.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the access group. |
| `displayName` | `string` | Required. User friendly display name of the access group. Eg. "Analyst", "Developer", etc. |
| `id` | `string` | Required. Unique identifier of the access group within the data product. User defined. Eg. "analy... |
| `principal` | `GoogleCloudDataplexV1DataProductPrincipal` | Required. The principal entity associated with this access group. |

### `GoogleCloudDataplexV1DataProductPrincipal`

Represents the principal entity associated with an access group, as per https://cloud.google.com/iam/docs/principals-overview.

| Property | Type | Description |
|----------|------|-------------|
| `googleGroup` | `string` | Optional. Email of the Google Group, as per https://cloud.google.com/iam/docs/principals-overview... |

### `GoogleCloudDataplexV1DataProfileResult`

DataProfileResult defines the output of DataProfileScan. Each field of the table will have field type specific profile result.

| Property | Type | Description |
|----------|------|-------------|
| `catalogPublishingStatus` | `GoogleCloudDataplexV1DataScanCatalogPublishingStatus` | Output only. The status of publishing the data scan as Dataplex Universal Catalog metadata. |
| `postScanActionsResult` | `GoogleCloudDataplexV1DataProfileResultPostScanActionsResult` | Output only. The result of post scan actions. |
| `profile` | `GoogleCloudDataplexV1DataProfileResultProfile` | Output only. The profile information per field. |
| `rowCount` | `string` | Output only. The count of rows scanned. |
| `scannedData` | `GoogleCloudDataplexV1ScannedData` | Output only. The data scanned for this result. |

### `GoogleCloudDataplexV1DataProfileResultPostScanActionsResult`

The result of post scan actions of DataProfileScan job.

| Property | Type | Description |
|----------|------|-------------|
| `bigqueryExportResult` | `GoogleCloudDataplexV1DataProfileResultPostScanActionsResultBigQueryExportResult` | Output only. The result of BigQuery export post scan action. |

### `GoogleCloudDataplexV1DataProfileResultPostScanActionsResultBigQueryExportResult`

The result of BigQuery export post scan action.

| Property | Type | Description |
|----------|------|-------------|
| `message` | `string` | Output only. Additional information about the BigQuery exporting. |
| `state` | `string` | Output only. Execution state for the BigQuery exporting. |

### `GoogleCloudDataplexV1DataProfileResultProfile`

Contains name, type, mode and field type specific profile information.

| Property | Type | Description |
|----------|------|-------------|
| `fields` | `array<GoogleCloudDataplexV1DataProfileResultProfileField>` | Output only. List of fields with structural and profile information for each field. |

### `GoogleCloudDataplexV1DataProfileResultProfileField`

A field within a table.

| Property | Type | Description |
|----------|------|-------------|
| `mode` | `string` | Output only. The mode of the field. Possible values include: REQUIRED, if it is a required field.... |
| `name` | `string` | Output only. The name of the field. |
| `profile` | `GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfo` | Output only. Profile information for the corresponding field. |
| `type` | `string` | Output only. The data type retrieved from the schema of the data source. For instance, for a BigQ... |

### `GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfo`

The profile information for each field type.

| Property | Type | Description |
|----------|------|-------------|
| `distinctRatio` | `number` | Output only. Ratio of rows with distinct values against total scanned rows. Not available for com... |
| `doubleProfile` | `GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoDoubleFieldInfo` | Double type field information. |
| `integerProfile` | `GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoIntegerFieldInfo` | Integer type field information. |
| `nullRatio` | `number` | Output only. Ratio of rows with null value against total scanned rows. |
| `stringProfile` | `GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfo` | String type field information. |
| `topNValues` | `array<GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValue>` | Output only. The list of top N non-null values, frequency and ratio with which they occur in the ... |

### `GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoDoubleFieldInfo`

The profile information for a double type field.

| Property | Type | Description |
|----------|------|-------------|
| `average` | `number` | Output only. Average of non-null values in the scanned data. NaN, if the field has a NaN. |
| `max` | `number` | Output only. Maximum of non-null values in the scanned data. NaN, if the field has a NaN. |
| `min` | `number` | Output only. Minimum of non-null values in the scanned data. NaN, if the field has a NaN. |
| `quartiles` | `array<number>` | Output only. A quartile divides the number of data points into four parts, or quarters, of more-o... |
| `standardDeviation` | `number` | Output only. Standard deviation of non-null values in the scanned data. NaN, if the field has a NaN. |

### `GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoIntegerFieldInfo`

The profile information for an integer type field.

| Property | Type | Description |
|----------|------|-------------|
| `average` | `number` | Output only. Average of non-null values in the scanned data. NaN, if the field has a NaN. |
| `max` | `string` | Output only. Maximum of non-null values in the scanned data. NaN, if the field has a NaN. |
| `min` | `string` | Output only. Minimum of non-null values in the scanned data. NaN, if the field has a NaN. |
| `quartiles` | `array<string>` | Output only. A quartile divides the number of data points into four parts, or quarters, of more-o... |
| `standardDeviation` | `number` | Output only. Standard deviation of non-null values in the scanned data. NaN, if the field has a NaN. |

### `GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfo`

The profile information for a string type field.

| Property | Type | Description |
|----------|------|-------------|
| `averageLength` | `number` | Output only. Average length of non-null values in the scanned data. |
| `maxLength` | `string` | Output only. Maximum length of non-null values in the scanned data. |
| `minLength` | `string` | Output only. Minimum length of non-null values in the scanned data. |

### `GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValue`

Top N non-null values in the scanned data.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `string` | Output only. Count of the corresponding value in the scanned data. |
| `ratio` | `number` | Output only. Ratio of the corresponding value in the field against the total number of rows in th... |
| `value` | `string` | Output only. String value of a top N non-null value. |

### `GoogleCloudDataplexV1DataProfileSpec`

DataProfileScan related setting.

| Property | Type | Description |
|----------|------|-------------|
| `catalogPublishingEnabled` | `boolean` | Optional. If set, the latest DataScan job result will be published as Dataplex Universal Catalog ... |
| `excludeFields` | `GoogleCloudDataplexV1DataProfileSpecSelectedFields` | Optional. The fields to exclude from data profile.If specified, the fields will be excluded from ... |
| `includeFields` | `GoogleCloudDataplexV1DataProfileSpecSelectedFields` | Optional. The fields to include in data profile.If not specified, all fields at the time of profi... |
| `postScanActions` | `GoogleCloudDataplexV1DataProfileSpecPostScanActions` | Optional. Actions to take upon job completion.. |
| `rowFilter` | `string` | Optional. A filter applied to all rows in a single DataScan job. The filter needs to be a valid S... |
| `samplingPercent` | `number` | Optional. The percentage of the records to be selected from the dataset for DataScan. Value can r... |

### `GoogleCloudDataplexV1DataProfileSpecPostScanActions`

The configuration of post scan actions of DataProfileScan job.

| Property | Type | Description |
|----------|------|-------------|
| `bigqueryExport` | `GoogleCloudDataplexV1DataProfileSpecPostScanActionsBigQueryExport` | Optional. If set, results will be exported to the provided BigQuery table. |

### `GoogleCloudDataplexV1DataProfileSpecPostScanActionsBigQueryExport`

The configuration of BigQuery export post scan action.

| Property | Type | Description |
|----------|------|-------------|
| `resultsTable` | `string` | Optional. The BigQuery table to export DataProfileScan results to. Format: //bigquery.googleapis.... |

### `GoogleCloudDataplexV1DataProfileSpecSelectedFields`

The specification for fields to include or exclude in data profile scan.

| Property | Type | Description |
|----------|------|-------------|
| `fieldNames` | `array<string>` | Optional. Expected input is a list of fully qualified names of fields as in the schema.Only top-l... |

### `GoogleCloudDataplexV1DataQualityColumnResult`

DataQualityColumnResult provides a more detailed, per-column view of the results.

| Property | Type | Description |
|----------|------|-------------|
| `column` | `string` | Output only. The column specified in the DataQualityRule. |
| `dimensions` | `array<GoogleCloudDataplexV1DataQualityDimensionResult>` | Output only. The dimension-level results for this column. |
| `passed` | `boolean` | Output only. Whether the column passed or failed. |
| `score` | `number` | Output only. The column-level data quality score for this data scan job if and only if the 'colum... |

### `GoogleCloudDataplexV1DataQualityDimension`

A dimension captures data quality intent about a defined subset of the rules specified.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Output only. The dimension name a rule belongs to. Custom dimension name is supported with all up... |

### `GoogleCloudDataplexV1DataQualityDimensionResult`

DataQualityDimensionResult provides a more detailed, per-dimension view of the results.

| Property | Type | Description |
|----------|------|-------------|
| `dimension` | `GoogleCloudDataplexV1DataQualityDimension` | Output only. The dimension config specified in the DataQualitySpec, as is. |
| `passed` | `boolean` | Output only. Whether the dimension passed or failed. |
| `score` | `number` | Output only. The dimension-level data quality score for this data scan job if and only if the 'di... |

### `GoogleCloudDataplexV1DataQualityResult`

The output of a DataQualityScan.

| Property | Type | Description |
|----------|------|-------------|
| `anomalyDetectionGeneratedAssets` | `GoogleCloudDataplexV1DataQualityResultAnomalyDetectionGeneratedAssets` | Output only. The generated assets for anomaly detection. |
| `catalogPublishingStatus` | `GoogleCloudDataplexV1DataScanCatalogPublishingStatus` | Output only. The status of publishing the data scan as Dataplex Universal Catalog metadata. |
| `columns` | `array<GoogleCloudDataplexV1DataQualityColumnResult>` | Output only. A list of results at the column level.A column will have a corresponding DataQuality... |
| `dimensions` | `array<GoogleCloudDataplexV1DataQualityDimensionResult>` | Output only. A list of results at the dimension level.A dimension will have a corresponding DataQ... |
| `passed` | `boolean` | Output only. Overall data quality result -- true if all rules passed. |
| `postScanActionsResult` | `GoogleCloudDataplexV1DataQualityResultPostScanActionsResult` | Output only. The result of post scan actions. |
| `rowCount` | `string` | Output only. The count of rows processed. |
| `rules` | `array<GoogleCloudDataplexV1DataQualityRuleResult>` | Output only. A list of all the rules in a job, and their results. |
| `scannedData` | `GoogleCloudDataplexV1ScannedData` | Output only. The data scanned for this result. |
| `score` | `number` | Output only. The overall data quality score.The score ranges between 0, 100 (up to two decimal po... |

### `GoogleCloudDataplexV1DataQualityResultAnomalyDetectionGeneratedAssets`

The assets generated by Anomaly Detection Data Scan.

| Property | Type | Description |
|----------|------|-------------|
| `dataIntermediateTable` | `string` | Output only. The intermediate table for data anomaly detection. Format: PROJECT_ID.DATASET_ID.TAB... |
| `freshnessIntermediateTable` | `string` | Output only. The intermediate table for freshness anomaly detection. Format: PROJECT_ID.DATASET_I... |
| `resultTable` | `string` | Output only. The result table for anomaly detection. Format: PROJECT_ID.DATASET_ID.TABLE_ID If th... |
| `volumeIntermediateTable` | `string` | Output only. The intermediate table for volume anomaly detection. Format: PROJECT_ID.DATASET_ID.T... |

### `GoogleCloudDataplexV1DataQualityResultPostScanActionsResult`

The result of post scan actions of DataQualityScan job.

| Property | Type | Description |
|----------|------|-------------|
| `bigqueryExportResult` | `GoogleCloudDataplexV1DataQualityResultPostScanActionsResultBigQueryExportResult` | Output only. The result of BigQuery export post scan action. |

### `GoogleCloudDataplexV1DataQualityResultPostScanActionsResultBigQueryExportResult`

The result of BigQuery export post scan action.

| Property | Type | Description |
|----------|------|-------------|
| `message` | `string` | Output only. Additional information about the BigQuery exporting. |
| `state` | `string` | Output only. Execution state for the BigQuery exporting. |

### `GoogleCloudDataplexV1DataQualityRule`

A rule captures data quality intent about a data source.

| Property | Type | Description |
|----------|------|-------------|
| `column` | `string` | Optional. The unnested column which this rule is evaluated against. |
| `debugQueries` | `array<GoogleCloudDataplexV1DataQualityRuleDebugQuery>` | Optional. Specifies the debug queries for this rule. Currently, only one query is supported, but ... |
| `description` | `string` | Optional. Description of the rule. The maximum length is 1,024 characters. |
| `dimension` | `string` | Optional. The dimension a rule belongs to. Results are also aggregated at the dimension level. Cu... |
| `ignoreNull` | `boolean` | Optional. Rows with null values will automatically fail a rule, unless ignore_null is true. In th... |
| `name` | `string` | Optional. A mutable name for the rule. The name must contain only letters (a-z, A-Z), numbers (0-... |
| `nonNullExpectation` | `GoogleCloudDataplexV1DataQualityRuleNonNullExpectation` | Row-level rule which evaluates whether each column value is null. |
| `rangeExpectation` | `GoogleCloudDataplexV1DataQualityRuleRangeExpectation` | Row-level rule which evaluates whether each column value lies between a specified range. |
| `regexExpectation` | `GoogleCloudDataplexV1DataQualityRuleRegexExpectation` | Row-level rule which evaluates whether each column value matches a specified regex. |
| `rowConditionExpectation` | `GoogleCloudDataplexV1DataQualityRuleRowConditionExpectation` | Row-level rule which evaluates whether each row in a table passes the specified condition. |
| `setExpectation` | `GoogleCloudDataplexV1DataQualityRuleSetExpectation` | Row-level rule which evaluates whether each column value is contained by a specified set. |
| `sqlAssertion` | `GoogleCloudDataplexV1DataQualityRuleSqlAssertion` | Aggregate rule which evaluates the number of rows returned for the provided statement. If any row... |
| `statisticRangeExpectation` | `GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation` | Aggregate rule which evaluates whether the column aggregate statistic lies between a specified ra... |
| `suspended` | `boolean` | Optional. Whether the Rule is active or suspended. Default is false. |
| `tableConditionExpectation` | `GoogleCloudDataplexV1DataQualityRuleTableConditionExpectation` | Aggregate rule which evaluates whether the provided expression is true for a table. |
| `threshold` | `number` | Optional. The minimum ratio of passing_rows / total_rows required to pass this rule, with a range... |
| `uniquenessExpectation` | `GoogleCloudDataplexV1DataQualityRuleUniquenessExpectation` | Row-level rule which evaluates whether each column value is unique. |

### `GoogleCloudDataplexV1DataQualityRuleDebugQuery`

Specifies a SQL statement that is evaluated to return up to 10 scalar values that are used to debug rules. If the rule fails, the values can help diagnose the cause of the failure.The SQL statement must use GoogleSQL syntax (https://cloud.google.com/bigquery/docs/reference/standard-sql/query-syntax), and must not contain any semicolons.You can use the data reference parameter ${data()} to reference the source table with all of its precondition filters applied. Examples of precondition filters include row filters, incremental data filters, and sampling. For more information, see Data reference parameter (https://cloud.google.com/dataplex/docs/auto-data-quality-overview#data-reference-parameter).You can also name results with an explicit alias using [AS] alias. For more information, see BigQuery explicit aliases (https://docs.cloud.google.com/bigquery/docs/reference/standard-sql/query-syntax#explicit_alias_syntax).Example: SELECT MIN(col1) AS min_col1, MAX(col1) AS max_col1 FROM ${data()}

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Specifies the description of the debug query. The maximum length is 1,024 characters. |
| `sqlStatement` | `string` | Required. Specifies the SQL statement to be executed. |

### `GoogleCloudDataplexV1DataQualityRuleNonNullExpectation`

Evaluates whether each column value is null.

### `GoogleCloudDataplexV1DataQualityRuleRangeExpectation`

Evaluates whether each column value lies between a specified range.

| Property | Type | Description |
|----------|------|-------------|
| `maxValue` | `string` | Optional. The maximum column value allowed for a row to pass this validation. At least one of min... |
| `minValue` | `string` | Optional. The minimum column value allowed for a row to pass this validation. At least one of min... |
| `strictMaxEnabled` | `boolean` | Optional. Whether each value needs to be strictly lesser than ('<') the maximum, or if equality i... |
| `strictMinEnabled` | `boolean` | Optional. Whether each value needs to be strictly greater than ('>') the minimum, or if equality ... |

### `GoogleCloudDataplexV1DataQualityRuleRegexExpectation`

Evaluates whether each column value matches a specified regex.

| Property | Type | Description |
|----------|------|-------------|
| `regex` | `string` | Optional. A regular expression the column value is expected to match. |

### `GoogleCloudDataplexV1DataQualityRuleResult`

DataQualityRuleResult provides a more detailed, per-rule view of the results.

| Property | Type | Description |
|----------|------|-------------|
| `assertionRowCount` | `string` | Output only. The number of rows returned by the SQL statement in a SQL assertion rule.This field ... |
| `debugQueriesResultSets` | `array<GoogleCloudDataplexV1DataQualityRuleResultDebugQueryResultSet>` | Output only. Contains the results of all debug queries for this rule. The number of result sets w... |
| `evaluatedCount` | `string` | Output only. The number of rows a rule was evaluated against.This field is only valid for row-lev... |
| `failingRowsQuery` | `string` | Output only. The query to find rows that did not pass this rule.This field is only valid for row-... |
| `nullCount` | `string` | Output only. The number of rows with null values in the specified column. |
| `passRatio` | `number` | Output only. The ratio of passed_count / evaluated_count.This field is only valid for row-level t... |
| `passed` | `boolean` | Output only. Whether the rule passed or failed. |
| `passedCount` | `string` | Output only. The number of rows which passed a rule evaluation.This field is only valid for row-l... |
| `rule` | `GoogleCloudDataplexV1DataQualityRule` | Output only. The rule specified in the DataQualitySpec, as is. |

### `GoogleCloudDataplexV1DataQualityRuleResultDebugQueryResult`

Contains a single result from the debug query.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Specifies the name of the result. Available if provided with an explicit alias using [AS] alias. |
| `type` | `string` | Indicates the data type of the result. For more information, see BigQuery data types (https://clo... |
| `value` | `string` | Represents the value of the result as a string. |

### `GoogleCloudDataplexV1DataQualityRuleResultDebugQueryResultSet`

Contains all results from a debug query.

| Property | Type | Description |
|----------|------|-------------|
| `results` | `array<GoogleCloudDataplexV1DataQualityRuleResultDebugQueryResult>` | Output only. Contains all results. Up to 10 results can be returned. |

### `GoogleCloudDataplexV1DataQualityRuleRowConditionExpectation`

Evaluates whether each row passes the specified condition.The SQL expression needs to use GoogleSQL syntax (https://cloud.google.com/bigquery/docs/reference/standard-sql/query-syntax) and should produce a boolean value per row as the result.Example: col1 >= 0 AND col2 < 10

| Property | Type | Description |
|----------|------|-------------|
| `sqlExpression` | `string` | Optional. The SQL expression. |

### `GoogleCloudDataplexV1DataQualityRuleSetExpectation`

Evaluates whether each column value is contained by a specified set.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<string>` | Optional. Expected values for the column value. |

### `GoogleCloudDataplexV1DataQualityRuleSqlAssertion`

A SQL statement that is evaluated to return rows that match an invalid state. If any rows are are returned, this rule fails.The SQL statement must use GoogleSQL syntax (https://cloud.google.com/bigquery/docs/reference/standard-sql/query-syntax), and must not contain any semicolons.You can use the data reference parameter ${data()} to reference the source table with all of its precondition filters applied. Examples of precondition filters include row filters, incremental data filters, and sampling. For more information, see Data reference parameter (https://cloud.google.com/dataplex/docs/auto-data-quality-overview#data-reference-parameter).Example: SELECT * FROM ${data()} WHERE price < 0

| Property | Type | Description |
|----------|------|-------------|
| `sqlStatement` | `string` | Optional. The SQL statement. |

### `GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation`

Evaluates whether the column aggregate statistic lies between a specified range.

| Property | Type | Description |
|----------|------|-------------|
| `maxValue` | `string` | Optional. The maximum column statistic value allowed for a row to pass this validation.At least o... |
| `minValue` | `string` | Optional. The minimum column statistic value allowed for a row to pass this validation.At least o... |
| `statistic` | `string` | Optional. The aggregate metric to evaluate. |
| `strictMaxEnabled` | `boolean` | Optional. Whether column statistic needs to be strictly lesser than ('<') the maximum, or if equa... |
| `strictMinEnabled` | `boolean` | Optional. Whether column statistic needs to be strictly greater than ('>') the minimum, or if equ... |

### `GoogleCloudDataplexV1DataQualityRuleTableConditionExpectation`

Evaluates whether the provided expression is true.The SQL expression needs to use GoogleSQL syntax (https://cloud.google.com/bigquery/docs/reference/standard-sql/query-syntax) and should produce a scalar boolean result.Example: MIN(col1) >= 0

| Property | Type | Description |
|----------|------|-------------|
| `sqlExpression` | `string` | Optional. The SQL expression. |

### `GoogleCloudDataplexV1DataQualityRuleUniquenessExpectation`

Evaluates whether the column has duplicates.

### `GoogleCloudDataplexV1DataQualityScanRuleResult`

Information about the result of a data quality rule for data quality scan. The monitored resource is 'DataScan'.

| Property | Type | Description |
|----------|------|-------------|
| `assertionRowCount` | `string` | The number of rows returned by the SQL statement in a SQL assertion rule. This field is only vali... |
| `column` | `string` | The column which this rule is evaluated against. |
| `dataSource` | `string` | The data source of the data scan (e.g. BigQuery table name). |
| `evaluatedRowCount` | `string` | The number of rows evaluated against the data quality rule. This field is only valid for rules of... |
| `evalutionType` | `string` | The evaluation type of the data quality rule. |
| `jobId` | `string` | Identifier of the specific data scan job this log entry is for. |
| `nullRowCount` | `string` | The number of rows with null values in the specified column. |
| `passedRowCount` | `string` | The number of rows which passed a rule evaluation. This field is only valid for rules of PER_ROW ... |
| `result` | `string` | The result of the data quality rule. |
| `ruleDimension` | `string` | The dimension of the data quality rule. |
| `ruleName` | `string` | The name of the data quality rule. |
| `ruleType` | `string` | The type of the data quality rule. |
| `thresholdPercent` | `number` | The passing threshold (0.0, 100.0) of the data quality rule. |

### `GoogleCloudDataplexV1DataQualitySpec`

DataQualityScan related setting.

| Property | Type | Description |
|----------|------|-------------|
| `catalogPublishingEnabled` | `boolean` | Optional. If set, the latest DataScan job result will be published as Dataplex Universal Catalog ... |
| `postScanActions` | `GoogleCloudDataplexV1DataQualitySpecPostScanActions` | Optional. Actions to take upon job completion. |
| `rowFilter` | `string` | Optional. A filter applied to all rows in a single DataScan job. The filter needs to be a valid S... |
| `rules` | `array<GoogleCloudDataplexV1DataQualityRule>` | Required. The list of rules to evaluate against a data source. At least one rule is required. |
| `samplingPercent` | `number` | Optional. The percentage of the records to be selected from the dataset for DataScan. Value can r... |

### `GoogleCloudDataplexV1DataQualitySpecPostScanActions`

The configuration of post scan actions of DataQualityScan.

| Property | Type | Description |
|----------|------|-------------|
| `bigqueryExport` | `GoogleCloudDataplexV1DataQualitySpecPostScanActionsBigQueryExport` | Optional. If set, results will be exported to the provided BigQuery table. |
| `notificationReport` | `GoogleCloudDataplexV1DataQualitySpecPostScanActionsNotificationReport` | Optional. If set, results will be sent to the provided notification receipts upon triggers. |

### `GoogleCloudDataplexV1DataQualitySpecPostScanActionsBigQueryExport`

The configuration of BigQuery export post scan action.

| Property | Type | Description |
|----------|------|-------------|
| `resultsTable` | `string` | Optional. The BigQuery table to export DataQualityScan results to. Format: //bigquery.googleapis.... |

### `GoogleCloudDataplexV1DataQualitySpecPostScanActionsJobEndTrigger`

This trigger is triggered whenever a scan job run ends, regardless of the result.

### `GoogleCloudDataplexV1DataQualitySpecPostScanActionsJobFailureTrigger`

This trigger is triggered when the scan job itself fails, regardless of the result.

### `GoogleCloudDataplexV1DataQualitySpecPostScanActionsNotificationReport`

The configuration of notification report post scan action.

| Property | Type | Description |
|----------|------|-------------|
| `jobEndTrigger` | `GoogleCloudDataplexV1DataQualitySpecPostScanActionsJobEndTrigger` | Optional. If set, report will be sent when a scan job ends. |
| `jobFailureTrigger` | `GoogleCloudDataplexV1DataQualitySpecPostScanActionsJobFailureTrigger` | Optional. If set, report will be sent when a scan job fails. |
| `recipients` | `GoogleCloudDataplexV1DataQualitySpecPostScanActionsRecipients` | Required. The recipients who will receive the notification report. |
| `scoreThresholdTrigger` | `GoogleCloudDataplexV1DataQualitySpecPostScanActionsScoreThresholdTrigger` | Optional. If set, report will be sent when score threshold is met. |

### `GoogleCloudDataplexV1DataQualitySpecPostScanActionsRecipients`

The individuals or groups who are designated to receive notifications upon triggers.

| Property | Type | Description |
|----------|------|-------------|
| `emails` | `array<string>` | Optional. The email recipients who will receive the DataQualityScan results report. |

### `GoogleCloudDataplexV1DataQualitySpecPostScanActionsScoreThresholdTrigger`

This trigger is triggered when the DQ score in the job result is less than a specified input score.

| Property | Type | Description |
|----------|------|-------------|
| `scoreThreshold` | `number` | Optional. The score range is in 0,100. |

### `GoogleCloudDataplexV1DataScan`

Represents a user-visible job which provides the insights for the related data source.For example: Data quality: generates queries based on the rules and runs against the data to get data quality check results. For more information, see Auto data quality overview (https://cloud.google.com/dataplex/docs/auto-data-quality-overview). Data profile: analyzes the data in tables and generates insights about the structure, content and relationships (such as null percent, cardinality, min/max/mean, etc). For more information, see About data profiling (https://cloud.google.com/dataplex/docs/data-profiling-overview). Data discovery: scans data in Cloud Storage buckets to extract and then catalog metadata. For more information, see Discover and catalog Cloud Storage data (https://cloud.google.com/bigquery/docs/automatic-discovery). Data documentation: analyzes the table details and generates insights including descriptions and sample SQL queries for the table. For more information, see Generate data insights in BigQuery (https://cloud.google.com/bigquery/docs/data-insights).

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time when the scan was created. |
| `data` | `GoogleCloudDataplexV1DataSource` | Required. The data source for DataScan. |
| `dataDiscoveryResult` | `GoogleCloudDataplexV1DataDiscoveryResult` | Output only. The result of a data discovery scan. |
| `dataDiscoverySpec` | `GoogleCloudDataplexV1DataDiscoverySpec` | Settings for a data discovery scan. |
| `dataDocumentationResult` | `GoogleCloudDataplexV1DataDocumentationResult` | Output only. The result of a data documentation scan. |
| `dataDocumentationSpec` | `GoogleCloudDataplexV1DataDocumentationSpec` | Settings for a data documentation scan. |
| `dataProfileResult` | `GoogleCloudDataplexV1DataProfileResult` | Output only. The result of a data profile scan. |
| `dataProfileSpec` | `GoogleCloudDataplexV1DataProfileSpec` | Settings for a data profile scan. |
| `dataQualityResult` | `GoogleCloudDataplexV1DataQualityResult` | Output only. The result of a data quality scan. |
| `dataQualitySpec` | `GoogleCloudDataplexV1DataQualitySpec` | Settings for a data quality scan. |
| `description` | `string` | Optional. Description of the scan. Must be between 1-1024 characters. |
| `displayName` | `string` | Optional. User friendly display name. Must be between 1-256 characters. |
| `executionSpec` | `GoogleCloudDataplexV1DataScanExecutionSpec` | Optional. DataScan execution settings.If not specified, the fields in it will use their default v... |
| `executionStatus` | `GoogleCloudDataplexV1DataScanExecutionStatus` | Output only. Status of the data scan execution. |
| `labels` | `object` | Optional. User-defined labels for the scan. |
| `name` | `string` | Output only. Identifier. The relative resource name of the scan, of the form: projects/{project}/... |
| `state` | `string` | Output only. Current state of the DataScan. |
| `type` | `string` | Output only. The type of DataScan. |
| `uid` | `string` | Output only. System generated globally unique ID for the scan. This ID will be different if the s... |
| `updateTime` | `string` | Output only. The time when the scan was last updated. |

### `GoogleCloudDataplexV1DataScanCatalogPublishingStatus`

The status of publishing the data scan result as Dataplex Universal Catalog metadata. Multiple DataScan log events may exist, each with different publishing information depending on the type of publishing triggered.

| Property | Type | Description |
|----------|------|-------------|
| `state` | `string` | Output only. Execution state for publishing. |

### `GoogleCloudDataplexV1DataScanEvent`

These messages contain information about the execution of a datascan. The monitored resource is 'DataScan'

| Property | Type | Description |
|----------|------|-------------|
| `catalogPublishingStatus` | `GoogleCloudDataplexV1DataScanCatalogPublishingStatus` | The status of publishing the data scan as Dataplex Universal Catalog metadata. |
| `createTime` | `string` | The time when the data scan job was created. |
| `dataProfile` | `GoogleCloudDataplexV1DataScanEventDataProfileResult` | Data profile result for data profile type data scan. |
| `dataProfileConfigs` | `GoogleCloudDataplexV1DataScanEventDataProfileAppliedConfigs` | Applied configs for data profile type data scan. |
| `dataQuality` | `GoogleCloudDataplexV1DataScanEventDataQualityResult` | Data quality result for data quality type data scan. |
| `dataQualityConfigs` | `GoogleCloudDataplexV1DataScanEventDataQualityAppliedConfigs` | Applied configs for data quality type data scan. |
| `dataSource` | `string` | The data source of the data scan |
| `endTime` | `string` | The time when the data scan job finished. |
| `jobId` | `string` | The identifier of the specific data scan job this log entry is for. |
| `message` | `string` | The message describing the data scan job event. |
| `postScanActionsResult` | `GoogleCloudDataplexV1DataScanEventPostScanActionsResult` | The result of post scan actions. |
| `scope` | `string` | The scope of the data scan (e.g. full, incremental). |
| `specVersion` | `string` | A version identifier of the spec which was used to execute this job. |
| `startTime` | `string` | The time when the data scan job started to run. |
| `state` | `string` | The status of the data scan job. |
| `trigger` | `string` | The trigger type of the data scan job. |
| `type` | `string` | The type of the data scan. |

### `GoogleCloudDataplexV1DataScanEventDataProfileAppliedConfigs`

Applied configs for data profile type data scan job.

| Property | Type | Description |
|----------|------|-------------|
| `columnFilterApplied` | `boolean` | Boolean indicating whether a column filter was applied in the DataScan job. |
| `rowFilterApplied` | `boolean` | Boolean indicating whether a row filter was applied in the DataScan job. |
| `samplingPercent` | `number` | The percentage of the records selected from the dataset for DataScan. Value ranges between 0.0 an... |

### `GoogleCloudDataplexV1DataScanEventDataProfileResult`

Data profile result for data scan job.

| Property | Type | Description |
|----------|------|-------------|
| `rowCount` | `string` | The count of rows processed in the data scan job. |

### `GoogleCloudDataplexV1DataScanEventDataQualityAppliedConfigs`

Applied configs for data quality type data scan job.

| Property | Type | Description |
|----------|------|-------------|
| `rowFilterApplied` | `boolean` | Boolean indicating whether a row filter was applied in the DataScan job. |
| `samplingPercent` | `number` | The percentage of the records selected from the dataset for DataScan. Value ranges between 0.0 an... |

### `GoogleCloudDataplexV1DataScanEventDataQualityResult`

Data quality result for data scan job.

| Property | Type | Description |
|----------|------|-------------|
| `columnScore` | `object` | The score of each column scanned in the data scan job. The key of the map is the name of the colu... |
| `dimensionPassed` | `object` | The result of each dimension for data quality result. The key of the map is the name of the dimen... |
| `dimensionScore` | `object` | The score of each dimension for data quality result. The key of the map is the name of the dimens... |
| `passed` | `boolean` | Whether the data quality result was pass or not. |
| `rowCount` | `string` | The count of rows processed in the data scan job. |
| `score` | `number` | The table-level data quality score for the data scan job.The data quality score ranges between 0,... |

### `GoogleCloudDataplexV1DataScanEventPostScanActionsResult`

Post scan actions result for data scan job.

| Property | Type | Description |
|----------|------|-------------|
| `bigqueryExportResult` | `GoogleCloudDataplexV1DataScanEventPostScanActionsResultBigQueryExportResult` | The result of BigQuery export post scan action. |

### `GoogleCloudDataplexV1DataScanEventPostScanActionsResultBigQueryExportResult`

The result of BigQuery export post scan action.

| Property | Type | Description |
|----------|------|-------------|
| `message` | `string` | Additional information about the BigQuery exporting. |
| `state` | `string` | Execution state for the BigQuery exporting. |

### `GoogleCloudDataplexV1DataScanExecutionSpec`

DataScan execution settings.

| Property | Type | Description |
|----------|------|-------------|
| `field` | `string` | Immutable. The unnested field (of type Date or Timestamp) that contains values which monotonicall... |
| `trigger` | `GoogleCloudDataplexV1Trigger` | Optional. Spec related to how often and when a scan should be triggered.If not specified, the def... |

### `GoogleCloudDataplexV1DataScanExecutionStatus`

Status of the data scan execution.

| Property | Type | Description |
|----------|------|-------------|
| `latestJobCreateTime` | `string` | Optional. The time when the DataScanJob execution was created. |
| `latestJobEndTime` | `string` | Optional. The time when the latest DataScanJob ended. |
| `latestJobStartTime` | `string` | Optional. The time when the latest DataScanJob started. |

### `GoogleCloudDataplexV1DataScanJob`

A DataScanJob represents an instance of DataScan execution.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time when the DataScanJob was created. |
| `dataDiscoveryResult` | `GoogleCloudDataplexV1DataDiscoveryResult` | Output only. The result of a data discovery scan. |
| `dataDiscoverySpec` | `GoogleCloudDataplexV1DataDiscoverySpec` | Output only. Settings for a data discovery scan. |
| `dataDocumentationResult` | `GoogleCloudDataplexV1DataDocumentationResult` | Output only. The result of a data documentation scan. |
| `dataDocumentationSpec` | `GoogleCloudDataplexV1DataDocumentationSpec` | Output only. Settings for a data documentation scan. |
| `dataProfileResult` | `GoogleCloudDataplexV1DataProfileResult` | Output only. The result of a data profile scan. |
| `dataProfileSpec` | `GoogleCloudDataplexV1DataProfileSpec` | Output only. Settings for a data profile scan. |
| `dataQualityResult` | `GoogleCloudDataplexV1DataQualityResult` | Output only. The result of a data quality scan. |
| `dataQualitySpec` | `GoogleCloudDataplexV1DataQualitySpec` | Output only. Settings for a data quality scan. |
| `endTime` | `string` | Output only. The time when the DataScanJob ended. |
| `message` | `string` | Output only. Additional information about the current state. |
| `name` | `string` | Output only. Identifier. The relative resource name of the DataScanJob, of the form: projects/{pr... |
| `startTime` | `string` | Output only. The time when the DataScanJob was started. |
| `state` | `string` | Output only. Execution state for the DataScanJob. |
| `type` | `string` | Output only. The type of the parent DataScan. |
| `uid` | `string` | Output only. System generated globally unique ID for the DataScanJob. |

### `GoogleCloudDataplexV1DataSource`

The data source for DataScan.

| Property | Type | Description |
|----------|------|-------------|
| `entity` | `string` | Immutable. The Dataplex Universal Catalog entity that represents the data source (e.g. BigQuery t... |
| `resource` | `string` | Immutable. The service-qualified full resource name of the cloud resource for a DataScan job to s... |

### `GoogleCloudDataplexV1DataTaxonomy`

DataTaxonomy represents a set of hierarchical DataAttributes resources, grouped with a common theme Eg: 'SensitiveDataTaxonomy' can have attributes to manage PII data. It is defined at project level.

| Property | Type | Description |
|----------|------|-------------|
| `attributeCount` | `integer` | Output only. The number of attributes in the DataTaxonomy. |
| `classCount` | `integer` | Output only. The number of classes in the DataTaxonomy. |
| `createTime` | `string` | Output only. The time when the DataTaxonomy was created. |
| `description` | `string` | Optional. Description of the DataTaxonomy. |
| `displayName` | `string` | Optional. User friendly display name. |
| `etag` | `string` | This checksum is computed by the server based on the value of other fields, and may be sent on up... |
| `labels` | `object` | Optional. User-defined labels for the DataTaxonomy. |
| `name` | `string` | Output only. The relative resource name of the DataTaxonomy, of the form: projects/{project_numbe... |
| `uid` | `string` | Output only. System generated globally unique ID for the dataTaxonomy. This ID will be different ... |
| `updateTime` | `string` | Output only. The time when the DataTaxonomy was last updated. |

### `GoogleCloudDataplexV1DiscoveryEvent`

The payload associated with Discovery data processing.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `GoogleCloudDataplexV1DiscoveryEventActionDetails` | Details about the action associated with the event. |
| `assetId` | `string` | The id of the associated asset. |
| `config` | `GoogleCloudDataplexV1DiscoveryEventConfigDetails` | Details about discovery configuration in effect. |
| `dataLocation` | `string` | The data location associated with the event. |
| `datascanId` | `string` | The id of the associated datascan for standalone discovery. |
| `entity` | `GoogleCloudDataplexV1DiscoveryEventEntityDetails` | Details about the entity associated with the event. |
| `lakeId` | `string` | The id of the associated lake. |
| `message` | `string` | The log message. |
| `partition` | `GoogleCloudDataplexV1DiscoveryEventPartitionDetails` | Details about the partition associated with the event. |
| `table` | `GoogleCloudDataplexV1DiscoveryEventTableDetails` | Details about the BigQuery table publishing associated with the event. |
| `type` | `string` | The type of the event being logged. |
| `zoneId` | `string` | The id of the associated zone. |

### `GoogleCloudDataplexV1DiscoveryEventActionDetails`

Details about the action.

| Property | Type | Description |
|----------|------|-------------|
| `issue` | `string` | The human readable issue associated with the action. |
| `type` | `string` | The type of action. Eg. IncompatibleDataSchema, InvalidDataFormat |

### `GoogleCloudDataplexV1DiscoveryEventConfigDetails`

Details about configuration events.

| Property | Type | Description |
|----------|------|-------------|
| `parameters` | `object` | A list of discovery configuration parameters in effect. The keys are the field paths within Disco... |

### `GoogleCloudDataplexV1DiscoveryEventEntityDetails`

Details about the entity.

| Property | Type | Description |
|----------|------|-------------|
| `entity` | `string` | The name of the entity resource. The name is the fully-qualified resource name. |
| `type` | `string` | The type of the entity resource. |

### `GoogleCloudDataplexV1DiscoveryEventPartitionDetails`

Details about the partition.

| Property | Type | Description |
|----------|------|-------------|
| `entity` | `string` | The name to the containing entity resource. The name is the fully-qualified resource name. |
| `partition` | `string` | The name to the partition resource. The name is the fully-qualified resource name. |
| `sampledDataLocations` | `array<string>` | The locations of the data items (e.g., a Cloud Storage objects) sampled for metadata inference. |
| `type` | `string` | The type of the containing entity resource. |

### `GoogleCloudDataplexV1DiscoveryEventTableDetails`

Details about the published table.

| Property | Type | Description |
|----------|------|-------------|
| `table` | `string` | The fully-qualified resource name of the table resource. |
| `type` | `string` | The type of the table resource. |

### `GoogleCloudDataplexV1EncryptionConfig`

A Resource designed to manage encryption configurations for customers to support Customer Managed Encryption Keys (CMEK).

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time when the Encryption configuration was created. |
| `enableMetastoreEncryption` | `boolean` | Optional. Represent the state of CMEK opt-in for metastore. |
| `encryptionState` | `string` | Output only. The state of encryption of the databases. |
| `etag` | `string` | Etag of the EncryptionConfig. This is a strong etag. |
| `failureDetails` | `GoogleCloudDataplexV1EncryptionConfigFailureDetails` | Output only. Details of the failure if anything related to Cmek db fails. |
| `key` | `string` | Optional. If a key is chosen, it means that the customer is using CMEK. If a key is not chosen, i... |
| `name` | `string` | Identifier. The resource name of the EncryptionConfig. Format: organizations/{organization}/locat... |
| `updateTime` | `string` | Output only. The time when the Encryption configuration was last updated. |

### `GoogleCloudDataplexV1EncryptionConfigFailureDetails`

Details of the failure if anything related to Cmek db fails.

| Property | Type | Description |
|----------|------|-------------|
| `errorCode` | `string` | Output only. The error code for the failure. |
| `errorMessage` | `string` | Output only. The error message will be shown to the user. Set only if the error code is REQUIRE_U... |

### `GoogleCloudDataplexV1Entity`

Represents tables and fileset metadata contained within a zone.

| Property | Type | Description |
|----------|------|-------------|
| `access` | `GoogleCloudDataplexV1StorageAccess` | Output only. Identifies the access mechanism to the entity. Not user settable. |
| `asset` | `string` | Required. Immutable. The ID of the asset associated with the storage location containing the enti... |
| `catalogEntry` | `string` | Output only. The name of the associated Data Catalog entry. |
| `compatibility` | `GoogleCloudDataplexV1EntityCompatibilityStatus` | Output only. Metadata stores that the entity is compatible with. |
| `createTime` | `string` | Output only. The time when the entity was created. |
| `dataPath` | `string` | Required. Immutable. The storage path of the entity data. For Cloud Storage data, this is the ful... |
| `dataPathPattern` | `string` | Optional. The set of items within the data path constituting the data in the entity, represented ... |
| `description` | `string` | Optional. User friendly longer description text. Must be shorter than or equal to 1024 characters. |
| `displayName` | `string` | Optional. Display name must be shorter than or equal to 256 characters. |
| `etag` | `string` | Optional. The etag associated with the entity, which can be retrieved with a GetEntity request. R... |
| `format` | `GoogleCloudDataplexV1StorageFormat` | Required. Identifies the storage format of the entity data. It does not apply to entities with da... |
| `id` | `string` | Required. A user-provided entity ID. It is mutable, and will be used as the published table name.... |
| `name` | `string` | Output only. The resource name of the entity, of the form: projects/{project_number}/locations/{l... |
| `schema` | `GoogleCloudDataplexV1Schema` | Required. The description of the data structure and layout. The schema is not included in list re... |
| `system` | `string` | Required. Immutable. Identifies the storage system of the entity data. |
| `type` | `string` | Required. Immutable. The type of entity. |
| `uid` | `string` | Output only. System generated unique ID for the Entity. This ID will be different if the Entity i... |
| `updateTime` | `string` | Output only. The time when the entity was last updated. |

### `GoogleCloudDataplexV1EntityCompatibilityStatus`

Provides compatibility information for various metadata stores.

| Property | Type | Description |
|----------|------|-------------|
| `bigquery` | `GoogleCloudDataplexV1EntityCompatibilityStatusCompatibility` | Output only. Whether this entity is compatible with BigQuery. |
| `hiveMetastore` | `GoogleCloudDataplexV1EntityCompatibilityStatusCompatibility` | Output only. Whether this entity is compatible with Hive Metastore. |

### `GoogleCloudDataplexV1EntityCompatibilityStatusCompatibility`

Provides compatibility information for a specific metadata store.

| Property | Type | Description |
|----------|------|-------------|
| `compatible` | `boolean` | Output only. Whether the entity is compatible and can be represented in the metadata store. |
| `reason` | `string` | Output only. Provides additional detail if the entity is incompatible with the metadata store. |

### `GoogleCloudDataplexV1Entry`

An entry is a representation of a data resource that can be described by various metadata.

| Property | Type | Description |
|----------|------|-------------|
| `aspects` | `object` | Optional. The aspects that are attached to the entry. Depending on how the aspect is attached to ... |
| `createTime` | `string` | Output only. The time when the entry was created in Dataplex Universal Catalog. |
| `entrySource` | `GoogleCloudDataplexV1EntrySource` | Optional. Information related to the source system of the data resource that is represented by th... |
| `entryType` | `string` | Required. Immutable. The relative resource name of the entry type that was used to create this en... |
| `fullyQualifiedName` | `string` | Optional. A name for the entry that can be referenced by an external system. For more information... |
| `name` | `string` | Identifier. The relative resource name of the entry, in the format projects/{project_id_or_number... |
| `parentEntry` | `string` | Optional. Immutable. The resource name of the parent entry, in the format projects/{project_id_or... |
| `updateTime` | `string` | Output only. The time when the entry was last updated in Dataplex Universal Catalog. |

### `GoogleCloudDataplexV1EntryGroup`

An Entry Group represents a logical grouping of one or more Entries.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time when the EntryGroup was created. |
| `description` | `string` | Optional. Description of the EntryGroup. |
| `displayName` | `string` | Optional. User friendly display name. |
| `etag` | `string` | This checksum is computed by the service, and might be sent on update and delete requests to ensu... |
| `labels` | `object` | Optional. User-defined labels for the EntryGroup. |
| `name` | `string` | Output only. The relative resource name of the EntryGroup, in the format projects/{project_id_or_... |
| `transferStatus` | `string` | Output only. Denotes the transfer status of the Entry Group. It is unspecified for Entry Group cr... |
| `uid` | `string` | Output only. System generated globally unique ID for the EntryGroup. If you delete and recreate t... |
| `updateTime` | `string` | Output only. The time when the EntryGroup was last updated. |

### `GoogleCloudDataplexV1EntryLink`

EntryLink represents a link between two Entries.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time when the Entry Link was created. |
| `entryLinkType` | `string` | Required. Immutable. Relative resource name of the Entry Link Type used to create this Entry Link... |
| `entryReferences` | `array<GoogleCloudDataplexV1EntryLinkEntryReference>` | Required. Specifies the Entries referenced in the Entry Link. There should be exactly two entry r... |
| `name` | `string` | Output only. Immutable. Identifier. The relative resource name of the Entry Link, of the form: pr... |
| `updateTime` | `string` | Output only. The time when the Entry Link was last updated. |

### `GoogleCloudDataplexV1EntryLinkEntryReference`

Reference to the Entry that is linked through the Entry Link.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. Immutable. The relative resource name of the referenced Entry, of the form: projects/{p... |
| `path` | `string` | Immutable. The path in the Entry that is referenced in the Entry Link. Empty path denotes that th... |
| `type` | `string` | Required. Immutable. The reference type of the Entry. |

### `GoogleCloudDataplexV1EntryLinkEvent`

Payload associated with Entry related log events.

| Property | Type | Description |
|----------|------|-------------|
| `eventType` | `string` | The type of the event. |
| `message` | `string` | The log message. |
| `resource` | `string` | Name of the resource. |

### `GoogleCloudDataplexV1EntrySource`

Information related to the source system of the data resource that is represented by the entry.

| Property | Type | Description |
|----------|------|-------------|
| `ancestors` | `array<GoogleCloudDataplexV1EntrySourceAncestor>` | Immutable. The entries representing the ancestors of the data resource in the source system. |
| `createTime` | `string` | The time when the resource was created in the source system. |
| `description` | `string` | A description of the data resource. Maximum length is 2,000 characters. |
| `displayName` | `string` | A user-friendly display name. Maximum length is 500 characters. |
| `labels` | `object` | User-defined labels. The maximum size of keys and values is 128 characters each. |
| `location` | `string` | Output only. Location of the resource in the source system. You can search the entry by this loca... |
| `platform` | `string` | The platform containing the source system. Maximum length is 64 characters. |
| `resource` | `string` | The name of the resource in the source system. Maximum length is 4,000 characters. |
| `system` | `string` | The name of the source system. Maximum length is 64 characters. |
| `updateTime` | `string` | The time when the resource was last updated in the source system. If the entry exists in the syst... |

### `GoogleCloudDataplexV1EntrySourceAncestor`

Information about individual items in the hierarchy that is associated with the data resource.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Optional. The name of the ancestor resource. |
| `type` | `string` | Optional. The type of the ancestor resource. |

### `GoogleCloudDataplexV1EntryType`

Entry Type is a template for creating Entries.

| Property | Type | Description |
|----------|------|-------------|
| `authorization` | `GoogleCloudDataplexV1EntryTypeAuthorization` | Immutable. Authorization defined for this type. |
| `createTime` | `string` | Output only. The time when the EntryType was created. |
| `description` | `string` | Optional. Description of the EntryType. |
| `displayName` | `string` | Optional. User friendly display name. |
| `etag` | `string` | Optional. This checksum is computed by the service, and might be sent on update and delete reques... |
| `labels` | `object` | Optional. User-defined labels for the EntryType. |
| `name` | `string` | Output only. The relative resource name of the EntryType, of the form: projects/{project_number}/... |
| `platform` | `string` | Optional. The platform that Entries of this type belongs to. |
| `requiredAspects` | `array<GoogleCloudDataplexV1EntryTypeAspectInfo>` | AspectInfo for the entry type. |
| `system` | `string` | Optional. The system that Entries of this type belongs to. Examples include CloudSQL, MariaDB etc |
| `typeAliases` | `array<string>` | Optional. Indicates the classes this Entry Type belongs to, for example, TABLE, DATABASE, MODEL. |
| `uid` | `string` | Output only. System generated globally unique ID for the EntryType. This ID will be different if ... |
| `updateTime` | `string` | Output only. The time when the EntryType was last updated. |

### `GoogleCloudDataplexV1EntryTypeAspectInfo`

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | Required aspect type for the entry type. |

### `GoogleCloudDataplexV1EntryTypeAuthorization`

Authorization for an Entry Type.

| Property | Type | Description |
|----------|------|-------------|
| `alternateUsePermission` | `string` | Immutable. The IAM permission grantable on the Entry Group to allow access to instantiate Entries... |

### `GoogleCloudDataplexV1Environment`

Environment represents a user-visible compute infrastructure for analytics within a lake.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Environment creation time. |
| `description` | `string` | Optional. Description of the environment. |
| `displayName` | `string` | Optional. User friendly display name. |
| `endpoints` | `GoogleCloudDataplexV1EnvironmentEndpoints` | Output only. URI Endpoints to access sessions associated with the Environment. |
| `infrastructureSpec` | `GoogleCloudDataplexV1EnvironmentInfrastructureSpec` | Required. Infrastructure specification for the Environment. |
| `labels` | `object` | Optional. User defined labels for the environment. |
| `name` | `string` | Output only. The relative resource name of the environment, of the form: projects/{project_id}/lo... |
| `sessionSpec` | `GoogleCloudDataplexV1EnvironmentSessionSpec` | Optional. Configuration for sessions created for this environment. |
| `sessionStatus` | `GoogleCloudDataplexV1EnvironmentSessionStatus` | Output only. Status of sessions created for this environment. |
| `state` | `string` | Output only. Current state of the environment. |
| `uid` | `string` | Output only. System generated globally unique ID for the environment. This ID will be different i... |
| `updateTime` | `string` | Output only. The time when the environment was last updated. |

### `GoogleCloudDataplexV1EnvironmentEndpoints`

URI Endpoints to access sessions associated with the Environment.

| Property | Type | Description |
|----------|------|-------------|
| `notebooks` | `string` | Output only. URI to serve notebook APIs |
| `sql` | `string` | Output only. URI to serve SQL APIs |

### `GoogleCloudDataplexV1EnvironmentInfrastructureSpec`

Configuration for the underlying infrastructure used to run workloads.

| Property | Type | Description |
|----------|------|-------------|
| `compute` | `GoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources` | Optional. Compute resources needed for analyze interactive workloads. |
| `osImage` | `GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime` | Required. Software Runtime Configuration for analyze interactive workloads. |

### `GoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources`

Compute resources associated with the analyze interactive workloads.

| Property | Type | Description |
|----------|------|-------------|
| `diskSizeGb` | `integer` | Optional. Size in GB of the disk. Default is 100 GB. |
| `maxNodeCount` | `integer` | Optional. Max configurable nodes. If max_node_count > node_count, then auto-scaling is enabled. |
| `nodeCount` | `integer` | Optional. Total number of nodes in the sessions created for this environment. |

### `GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime`

Software Runtime Configuration to run Analyze.

| Property | Type | Description |
|----------|------|-------------|
| `imageVersion` | `string` | Required. Dataplex Universal Catalog Image version. |
| `javaLibraries` | `array<string>` | Optional. List of Java jars to be included in the runtime environment. Valid input includes Cloud... |
| `properties` | `object` | Optional. Spark properties to provide configuration for use in sessions created for this environm... |
| `pythonPackages` | `array<string>` | Optional. A list of python packages to be installed. Valid formats include Cloud Storage URI to a... |

### `GoogleCloudDataplexV1EnvironmentSessionSpec`

Configuration for sessions created for this environment.

| Property | Type | Description |
|----------|------|-------------|
| `enableFastStartup` | `boolean` | Optional. If True, this causes sessions to be pre-created and available for faster startup to ena... |
| `maxIdleDuration` | `string` | Optional. The idle time configuration of the session. The session will be auto-terminated at the ... |

### `GoogleCloudDataplexV1EnvironmentSessionStatus`

Status of sessions created for this environment.

| Property | Type | Description |
|----------|------|-------------|
| `active` | `boolean` | Output only. Queries over sessions to mark whether the environment is currently active or not |

### `GoogleCloudDataplexV1GenerateDataQualityRulesRequest`

Request details for generating data quality rule recommendations.

### `GoogleCloudDataplexV1GenerateDataQualityRulesResponse`

Response details for data quality rule recommendations.

| Property | Type | Description |
|----------|------|-------------|
| `rule` | `array<GoogleCloudDataplexV1DataQualityRule>` | The data quality rules that Dataplex Universal Catalog generates based on the results of a data p... |

### `GoogleCloudDataplexV1Glossary`

A Glossary represents a collection of GlossaryCategories and GlossaryTerms defined by the user. Glossary is a top level resource and is the Google Cloud parent resource of all the GlossaryCategories and GlossaryTerms within it.

| Property | Type | Description |
|----------|------|-------------|
| `categoryCount` | `integer` | Output only. The number of GlossaryCategories in the Glossary. |
| `createTime` | `string` | Output only. The time at which the Glossary was created. |
| `description` | `string` | Optional. The user-mutable description of the Glossary. |
| `displayName` | `string` | Optional. User friendly display name of the Glossary. This is user-mutable. This will be same as ... |
| `etag` | `string` | Optional. Needed for resource freshness validation. This checksum is computed by the server based... |
| `labels` | `object` | Optional. User-defined labels for the Glossary. |
| `name` | `string` | Output only. Identifier. The resource name of the Glossary. Format: projects/{project_id_or_numbe... |
| `termCount` | `integer` | Output only. The number of GlossaryTerms in the Glossary. |
| `uid` | `string` | Output only. System generated unique id for the Glossary. This ID will be different if the Glossa... |
| `updateTime` | `string` | Output only. The time at which the Glossary was last updated. |

### `GoogleCloudDataplexV1GlossaryCategory`

A GlossaryCategory represents a collection of GlossaryCategories and GlossaryTerms within a Glossary that are related to each other.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time at which the GlossaryCategory was created. |
| `description` | `string` | Optional. The user-mutable description of the GlossaryCategory. |
| `displayName` | `string` | Optional. User friendly display name of the GlossaryCategory. This is user-mutable. This will be ... |
| `labels` | `object` | Optional. User-defined labels for the GlossaryCategory. |
| `name` | `string` | Output only. Identifier. The resource name of the GlossaryCategory. Format: projects/{project_id_... |
| `parent` | `string` | Required. The immediate parent of the GlossaryCategory in the resource-hierarchy. It can either b... |
| `uid` | `string` | Output only. System generated unique id for the GlossaryCategory. This ID will be different if th... |
| `updateTime` | `string` | Output only. The time at which the GlossaryCategory was last updated. |

### `GoogleCloudDataplexV1GlossaryTerm`

GlossaryTerms are the core of Glossary. A GlossaryTerm holds a rich text description that can be attached to Entries or specific columns to enrich them.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time at which the GlossaryTerm was created. |
| `description` | `string` | Optional. The user-mutable description of the GlossaryTerm. |
| `displayName` | `string` | Optional. User friendly display name of the GlossaryTerm. This is user-mutable. This will be same... |
| `labels` | `object` | Optional. User-defined labels for the GlossaryTerm. |
| `name` | `string` | Output only. Identifier. The resource name of the GlossaryTerm. Format: projects/{project_id_or_n... |
| `parent` | `string` | Required. The immediate parent of the GlossaryTerm in the resource-hierarchy. It can either be a ... |
| `uid` | `string` | Output only. System generated unique id for the GlossaryTerm. This ID will be different if the Gl... |
| `updateTime` | `string` | Output only. The time at which the GlossaryTerm was last updated. |

### `GoogleCloudDataplexV1GovernanceEvent`

Payload associated with Governance related log events.

| Property | Type | Description |
|----------|------|-------------|
| `entity` | `GoogleCloudDataplexV1GovernanceEventEntity` | Entity resource information if the log event is associated with a specific entity. |
| `eventType` | `string` | The type of the event. |
| `message` | `string` | The log message. |

### `GoogleCloudDataplexV1GovernanceEventEntity`

Information about Entity resource that the log event is associated with.

| Property | Type | Description |
|----------|------|-------------|
| `entity` | `string` | The Entity resource the log event is associated with. Format: projects/{project_number}/locations... |
| `entityType` | `string` | Type of entity. |

### `GoogleCloudDataplexV1ImportItem`

An object that describes the values that you want to set for an entry and its attached aspects when you import metadata. Used when you run a metadata import job. See CreateMetadataJob.You provide a collection of import items in a metadata import file. For more information about how to create a metadata import file, see Metadata import file (https://cloud.google.com/dataplex/docs/import-metadata#metadata-import-file).

| Property | Type | Description |
|----------|------|-------------|
| `aspectKeys` | `array<string>` | The aspects to modify. Supports the following syntaxes: {aspect_type_reference}: matches aspects ... |
| `entry` | `GoogleCloudDataplexV1Entry` | Information about an entry and its attached aspects. |
| `entryLink` | `GoogleCloudDataplexV1EntryLink` | Information about the entry link. User should provide either one of the entry or entry_link. Whil... |
| `updateMask` | `string` | The fields to update, in paths that are relative to the Entry resource. Separate each field with ... |

### `GoogleCloudDataplexV1Job`

A job represents an instance of a task.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | Output only. The time when the job ended. |
| `executionSpec` | `GoogleCloudDataplexV1TaskExecutionSpec` | Output only. Spec related to how a task is executed. |
| `labels` | `object` | Output only. User-defined labels for the task. |
| `message` | `string` | Output only. Additional information about the current state. |
| `name` | `string` | Output only. The relative resource name of the job, of the form: projects/{project_number}/locati... |
| `retryCount` | `integer` | Output only. The number of times the job has been retried (excluding the initial attempt). |
| `service` | `string` | Output only. The underlying service running a job. |
| `serviceJob` | `string` | Output only. The full resource name for the job run under a particular service. |
| `startTime` | `string` | Output only. The time when the job was started. |
| `state` | `string` | Output only. Execution state for the job. |
| `trigger` | `string` | Output only. Job execution trigger. |
| `uid` | `string` | Output only. System generated globally unique ID for the job. |

### `GoogleCloudDataplexV1JobEvent`

The payload associated with Job logs that contains events describing jobs that have run within a Lake.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | The time when the job ended running. |
| `executionTrigger` | `string` | Job execution trigger. |
| `jobId` | `string` | The unique id identifying the job. |
| `message` | `string` | The log message. |
| `retries` | `integer` | The number of retries. |
| `service` | `string` | The service used to execute the job. |
| `serviceJob` | `string` | The reference to the job within the service. |
| `startTime` | `string` | The time when the job started running. |
| `state` | `string` | The job state on completion. |
| `type` | `string` | The type of the job. |

### `GoogleCloudDataplexV1Lake`

A lake is a centralized repository for managing enterprise data across the organization distributed across many cloud projects, and stored in a variety of storage services such as Google Cloud Storage and BigQuery. The resources attached to a lake are referred to as managed resources. Data within these managed resources can be structured or unstructured. A lake provides data admins with tools to organize, secure and manage their data at scale, and provides data scientists and data engineers an integrated experience to easily search, discover, analyze and transform data and associated metadata.

| Property | Type | Description |
|----------|------|-------------|
| `assetStatus` | `GoogleCloudDataplexV1AssetStatus` | Output only. Aggregated status of the underlying assets of the lake. |
| `createTime` | `string` | Output only. The time when the lake was created. |
| `description` | `string` | Optional. Description of the lake. |
| `displayName` | `string` | Optional. User friendly display name. |
| `labels` | `object` | Optional. User-defined labels for the lake. |
| `metastore` | `GoogleCloudDataplexV1LakeMetastore` | Optional. Settings to manage lake and Dataproc Metastore service instance association. |
| `metastoreStatus` | `GoogleCloudDataplexV1LakeMetastoreStatus` | Output only. Metastore status of the lake. |
| `name` | `string` | Output only. The relative resource name of the lake, of the form: projects/{project_number}/locat... |
| `serviceAccount` | `string` | Output only. Service account associated with this lake. This service account must be authorized t... |
| `state` | `string` | Output only. Current state of the lake. |
| `uid` | `string` | Output only. System generated globally unique ID for the lake. This ID will be different if the l... |
| `updateTime` | `string` | Output only. The time when the lake was last updated. |

### `GoogleCloudDataplexV1LakeMetastore`

Settings to manage association of Dataproc Metastore with a lake.

| Property | Type | Description |
|----------|------|-------------|
| `service` | `string` | Optional. A relative reference to the Dataproc Metastore (https://cloud.google.com/dataproc-metas... |

### `GoogleCloudDataplexV1LakeMetastoreStatus`

Status of Lake and Dataproc Metastore service instance association.

| Property | Type | Description |
|----------|------|-------------|
| `endpoint` | `string` | The URI of the endpoint used to access the Metastore service. |
| `message` | `string` | Additional information about the current status. |
| `state` | `string` | Current state of association. |
| `updateTime` | `string` | Last update time of the metastore status of the lake. |

### `GoogleCloudDataplexV1ListActionsResponse`

List actions response.

| Property | Type | Description |
|----------|------|-------------|
| `actions` | `array<GoogleCloudDataplexV1Action>` | Actions under the given parent lake/zone/asset. |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |

### `GoogleCloudDataplexV1ListAspectTypesResponse`

List AspectTypes response.

| Property | Type | Description |
|----------|------|-------------|
| `aspectTypes` | `array<GoogleCloudDataplexV1AspectType>` | AspectTypes under the given parent location. |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |
| `unreachableLocations` | `array<string>` | Locations that the service couldn't reach. |

### `GoogleCloudDataplexV1ListAssetsResponse`

List assets response.

| Property | Type | Description |
|----------|------|-------------|
| `assets` | `array<GoogleCloudDataplexV1Asset>` | Asset under the given parent zone. |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |

### `GoogleCloudDataplexV1ListContentResponse`

List content response.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `array<GoogleCloudDataplexV1Content>` | Content under the given parent lake. |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |

### `GoogleCloudDataplexV1ListDataAssetsResponse`

Response message for listing data assets.

| Property | Type | Description |
|----------|------|-------------|
| `dataAssets` | `array<GoogleCloudDataplexV1DataAsset>` | The data assets for the requested filter criteria. |
| `nextPageToken` | `string` | A token, which can be sent as page_token to retrieve the next page. If this field is empty, then ... |

### `GoogleCloudDataplexV1ListDataAttributeBindingsResponse`

List DataAttributeBindings response.

| Property | Type | Description |
|----------|------|-------------|
| `dataAttributeBindings` | `array<GoogleCloudDataplexV1DataAttributeBinding>` | DataAttributeBindings under the given parent Location. |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |
| `unreachableLocations` | `array<string>` | Locations that could not be reached. |

### `GoogleCloudDataplexV1ListDataAttributesResponse`

List DataAttributes response.

| Property | Type | Description |
|----------|------|-------------|
| `dataAttributes` | `array<GoogleCloudDataplexV1DataAttribute>` | DataAttributes under the given parent DataTaxonomy. |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |
| `unreachableLocations` | `array<string>` | Locations that could not be reached. |

### `GoogleCloudDataplexV1ListDataProductsResponse`

Response message for listing data products.

| Property | Type | Description |
|----------|------|-------------|
| `dataProducts` | `array<GoogleCloudDataplexV1DataProduct>` | The data products for the requested filter criteria. |
| `nextPageToken` | `string` | A token, which can be sent as page_token to retrieve the next page. If this field is empty, then ... |
| `unreachable` | `array<string>` | Unordered list. Locations that the service couldn't reach. |

### `GoogleCloudDataplexV1ListDataScanJobsResponse`

List DataScanJobs response.

| Property | Type | Description |
|----------|------|-------------|
| `dataScanJobs` | `array<GoogleCloudDataplexV1DataScanJob>` | DataScanJobs (BASIC view only) under a given dataScan. |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |

### `GoogleCloudDataplexV1ListDataScansResponse`

List dataScans response.

| Property | Type | Description |
|----------|------|-------------|
| `dataScans` | `array<GoogleCloudDataplexV1DataScan>` | DataScans (BASIC view only) under the given parent location. |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `GoogleCloudDataplexV1ListDataTaxonomiesResponse`

List DataTaxonomies response.

| Property | Type | Description |
|----------|------|-------------|
| `dataTaxonomies` | `array<GoogleCloudDataplexV1DataTaxonomy>` | DataTaxonomies under the given parent location. |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |
| `unreachableLocations` | `array<string>` | Locations that could not be reached. |

### `GoogleCloudDataplexV1ListEncryptionConfigsResponse`

List EncryptionConfigs Response

| Property | Type | Description |
|----------|------|-------------|
| `encryptionConfigs` | `array<GoogleCloudDataplexV1EncryptionConfig>` | The list of EncryptionConfigs under the given parent location. |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |
| `unreachableLocations` | `array<string>` | Locations that could not be reached. |

### `GoogleCloudDataplexV1ListEntitiesResponse`

List metadata entities response.

| Property | Type | Description |
|----------|------|-------------|
| `entities` | `array<GoogleCloudDataplexV1Entity>` | Entities in the specified parent zone. |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no remaining results in the list. |

### `GoogleCloudDataplexV1ListEntriesResponse`

List Entries response.

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<GoogleCloudDataplexV1Entry>` | The list of entries under the given parent location. |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |

### `GoogleCloudDataplexV1ListEntryGroupsResponse`

List entry groups response.

| Property | Type | Description |
|----------|------|-------------|
| `entryGroups` | `array<GoogleCloudDataplexV1EntryGroup>` | Entry groups under the given parent location. |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |
| `unreachableLocations` | `array<string>` | Locations that the service couldn't reach. |

### `GoogleCloudDataplexV1ListEntryTypesResponse`

List EntryTypes response.

| Property | Type | Description |
|----------|------|-------------|
| `entryTypes` | `array<GoogleCloudDataplexV1EntryType>` | EntryTypes under the given parent location. |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |
| `unreachableLocations` | `array<string>` | Locations that the service couldn't reach. |

### `GoogleCloudDataplexV1ListEnvironmentsResponse`

List environments response.

| Property | Type | Description |
|----------|------|-------------|
| `environments` | `array<GoogleCloudDataplexV1Environment>` | Environments under the given parent lake. |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |

### `GoogleCloudDataplexV1ListGlossariesResponse`

List Glossaries Response

| Property | Type | Description |
|----------|------|-------------|
| `glossaries` | `array<GoogleCloudDataplexV1Glossary>` | Lists the Glossaries in the specified parent. |
| `nextPageToken` | `string` | A token, which can be sent as page_token to retrieve the next page. If this field is omitted, the... |
| `unreachableLocations` | `array<string>` | Locations that the service couldn't reach. |

### `GoogleCloudDataplexV1ListGlossaryCategoriesResponse`

List GlossaryCategories Response

| Property | Type | Description |
|----------|------|-------------|
| `categories` | `array<GoogleCloudDataplexV1GlossaryCategory>` | Lists the GlossaryCategories in the specified parent. |
| `nextPageToken` | `string` | A token, which can be sent as page_token to retrieve the next page. If this field is omitted, the... |
| `unreachableLocations` | `array<string>` | Locations that the service couldn't reach. |

### `GoogleCloudDataplexV1ListGlossaryTermsResponse`

List GlossaryTerms Response

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as page_token to retrieve the next page. If this field is omitted, the... |
| `terms` | `array<GoogleCloudDataplexV1GlossaryTerm>` | Lists the GlossaryTerms in the specified parent. |
| `unreachableLocations` | `array<string>` | Locations that the service couldn't reach. |

### `GoogleCloudDataplexV1ListJobsResponse`

List jobs response.

| Property | Type | Description |
|----------|------|-------------|
| `jobs` | `array<GoogleCloudDataplexV1Job>` | Jobs under a given task. |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |

### `GoogleCloudDataplexV1ListLakesResponse`

List lakes response.

| Property | Type | Description |
|----------|------|-------------|
| `lakes` | `array<GoogleCloudDataplexV1Lake>` | Lakes under the given parent location. |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |
| `unreachableLocations` | `array<string>` | Locations that could not be reached. |

### `GoogleCloudDataplexV1ListMetadataFeedsResponse`

Response message for ListMetadataFeeds.

| Property | Type | Description |
|----------|------|-------------|
| `metadataFeeds` | `array<GoogleCloudDataplexV1MetadataFeed>` | List of metadata feeds under the specified parent location. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. If there are no more results in the list, the value... |
| `unreachable` | `array<string>` | Unordered list. Locations that the service couldn't reach. |

### `GoogleCloudDataplexV1ListMetadataJobsResponse`

List metadata jobs response.

| Property | Type | Description |
|----------|------|-------------|
| `metadataJobs` | `array<GoogleCloudDataplexV1MetadataJob>` | Metadata jobs under the specified parent location. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. If there are no more results in the list, the value... |
| `unreachableLocations` | `array<string>` | Locations that the service couldn't reach. |

### `GoogleCloudDataplexV1ListPartitionsResponse`

List metadata partitions response.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no remaining results in the list. |
| `partitions` | `array<GoogleCloudDataplexV1Partition>` | Partitions under the specified parent entity. |

### `GoogleCloudDataplexV1ListSessionsResponse`

List sessions response.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |
| `sessions` | `array<GoogleCloudDataplexV1Session>` | Sessions under a given environment. |

### `GoogleCloudDataplexV1ListTasksResponse`

List tasks response.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |
| `tasks` | `array<GoogleCloudDataplexV1Task>` | Tasks under the given parent lake. |
| `unreachableLocations` | `array<string>` | Locations that could not be reached. |

### `GoogleCloudDataplexV1ListZonesResponse`

List zones response.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |
| `zones` | `array<GoogleCloudDataplexV1Zone>` | Zones under the given parent lake. |

### `GoogleCloudDataplexV1LookupEntryLinksResponse`

Response message for LookupEntryLinks.

| Property | Type | Description |
|----------|------|-------------|
| `entryLinks` | `array<GoogleCloudDataplexV1EntryLink>` | List of entry links that reference the specified entry. |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |

### `GoogleCloudDataplexV1MetadataFeed`

MetadataFeed contains information related to the metadata feed.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time when the feed was created. |
| `filters` | `GoogleCloudDataplexV1MetadataFeedFilters` | Optional. The filters of the metadata feed. Only the changes that match the filters are published. |
| `labels` | `object` | Optional. User-defined labels. |
| `name` | `string` | Identifier. The resource name of the metadata feed, in the format projects/{project_id_or_number}... |
| `pubsubTopic` | `string` | Optional. The pubsub topic that you want the metadata feed messages to publish to. Please grant D... |
| `scope` | `GoogleCloudDataplexV1MetadataFeedScope` | Required. The scope of the metadata feed. Only the in scope changes are published. |
| `uid` | `string` | Output only. A system-generated, globally unique ID for the metadata job. If the metadata job is ... |
| `updateTime` | `string` | Output only. The time when the feed was updated. |

### `GoogleCloudDataplexV1MetadataFeedFilters`

Filters defines the type of changes that you want to listen to. You can have multiple entry type filters and multiple aspect type filters. All of the entry type filters are OR'ed together. All of the aspect type filters are OR'ed together. All of the entry type filters and aspect type filters are AND'ed together.

| Property | Type | Description |
|----------|------|-------------|
| `aspectTypes` | `array<string>` | Optional. The aspect types that you want to listen to. Depending on how the aspect is attached to... |
| `changeTypes` | `array<string>` | Optional. The type of change that you want to listen to. If not specified, all changes are publis... |
| `entryTypes` | `array<string>` | Optional. The entry types that you want to listen to, specified as relative resource names in the... |

### `GoogleCloudDataplexV1MetadataFeedScope`

Scope defines the scope of the metadata feed. Scopes are exclusive. Only one of the scopes can be specified.

| Property | Type | Description |
|----------|------|-------------|
| `entryGroups` | `array<string>` | Optional. The entry groups whose entries you want to listen to. Must be in the format: projects/{... |
| `organizationLevel` | `boolean` | Optional. Whether the metadata feed is at the organization-level. If true, all changes happened t... |
| `projects` | `array<string>` | Optional. The projects whose entries you want to listen to. Must be in the same organization as t... |

### `GoogleCloudDataplexV1MetadataJob`

A metadata job resource.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time when the metadata job was created. |
| `exportResult` | `GoogleCloudDataplexV1MetadataJobExportJobResult` | Output only. Export job result. |
| `exportSpec` | `GoogleCloudDataplexV1MetadataJobExportJobSpec` | Export job specification. |
| `importResult` | `GoogleCloudDataplexV1MetadataJobImportJobResult` | Output only. Import job result. |
| `importSpec` | `GoogleCloudDataplexV1MetadataJobImportJobSpec` | Import job specification. |
| `labels` | `object` | Optional. User-defined labels. |
| `name` | `string` | Output only. Identifier. The name of the resource that the configuration is applied to, in the fo... |
| `status` | `GoogleCloudDataplexV1MetadataJobStatus` | Output only. Metadata job status. |
| `type` | `string` | Required. Metadata job type. |
| `uid` | `string` | Output only. A system-generated, globally unique ID for the metadata job. If the metadata job is ... |
| `updateTime` | `string` | Output only. The time when the metadata job was updated. |

### `GoogleCloudDataplexV1MetadataJobExportJobResult`

Summary results from a metadata export job. The results are a snapshot of the metadata at the time when the job was created. The exported entries are saved to a Cloud Storage bucket.

| Property | Type | Description |
|----------|------|-------------|
| `errorMessage` | `string` | Output only. The error message if the metadata export job failed. |
| `exportedEntries` | `string` | Output only. The number of entries that were exported. |

### `GoogleCloudDataplexV1MetadataJobExportJobSpec`

Job specification for a metadata export job.

| Property | Type | Description |
|----------|------|-------------|
| `outputPath` | `string` | Required. The root path of the Cloud Storage bucket to export the metadata to, in the format gs:/... |
| `scope` | `GoogleCloudDataplexV1MetadataJobExportJobSpecExportJobScope` | Required. The scope of the export job. |

### `GoogleCloudDataplexV1MetadataJobExportJobSpecExportJobScope`

The scope of the export job.

| Property | Type | Description |
|----------|------|-------------|
| `aspectTypes` | `array<string>` | The aspect types that are in scope for the export job, specified as relative resource names in th... |
| `entryGroups` | `array<string>` | The entry groups whose metadata you want to export, in the format projects/{project_id_or_number}... |
| `entryTypes` | `array<string>` | The entry types that are in scope for the export job, specified as relative resource names in the... |
| `organizationLevel` | `boolean` | Whether the metadata export job is an organization-level export job. If true, the job exports the... |
| `projects` | `array<string>` | The projects whose metadata you want to export, in the format projects/{project_id_or_number}. On... |

### `GoogleCloudDataplexV1MetadataJobImportJobResult`

Results from a metadata import job.

| Property | Type | Description |
|----------|------|-------------|
| `createdEntries` | `string` | Output only. The total number of entries that were created. |
| `createdEntryLinks` | `string` | Output only. The total number of entry links that were successfully created. |
| `deletedEntries` | `string` | Output only. The total number of entries that were deleted. |
| `deletedEntryLinks` | `string` | Output only. The total number of entry links that were successfully deleted. |
| `recreatedEntries` | `string` | Output only. The total number of entries that were recreated. |
| `unchangedEntries` | `string` | Output only. The total number of entries that were unchanged. |
| `unchangedEntryLinks` | `string` | Output only. The total number of entry links that were left unchanged. |
| `updateTime` | `string` | Output only. The time when the status was updated. |
| `updatedEntries` | `string` | Output only. The total number of entries that were updated. |

### `GoogleCloudDataplexV1MetadataJobImportJobSpec`

Job specification for a metadata import job.You can run the following kinds of metadata import jobs: Full sync of entries with incremental import of their aspects. Supported for custom entries. Incremental import of aspects only. Supported for aspects that belong to custom entries and system entries. For custom entries, you can modify both optional aspects and required aspects. For system entries, you can modify optional aspects.

| Property | Type | Description |
|----------|------|-------------|
| `aspectSyncMode` | `string` | Required. The sync mode for aspects. |
| `entrySyncMode` | `string` | Required. The sync mode for entries. |
| `logLevel` | `string` | Optional. The level of logs to write to Cloud Logging for this job.Debug-level logs provide highl... |
| `scope` | `GoogleCloudDataplexV1MetadataJobImportJobSpecImportJobScope` | Required. A boundary on the scope of impact that the metadata import job can have. |
| `sourceCreateTime` | `string` | Optional. The time when the process that created the metadata import files began. |
| `sourceStorageUri` | `string` | Optional. The URI of a Cloud Storage bucket or folder (beginning with gs:// and ending with /) th... |

### `GoogleCloudDataplexV1MetadataJobImportJobSpecImportJobScope`

A boundary on the scope of impact that the metadata import job can have.

| Property | Type | Description |
|----------|------|-------------|
| `aspectTypes` | `array<string>` | Optional. The aspect types that are in scope for the import job, specified as relative resource n... |
| `entryGroups` | `array<string>` | Required. The entry groups that are in scope for the import job, specified as relative resource n... |
| `entryLinkTypes` | `array<string>` | Optional. The entry link types that are in scope for the import job, specified as relative resour... |
| `entryTypes` | `array<string>` | Required. The entry types that are in scope for the import job, specified as relative resource na... |
| `glossaries` | `array<string>` | Optional. The glossaries that are in scope for the import job, specified as relative resource nam... |
| `referencedEntryScopes` | `array<string>` | Optional. Defines the scope of entries that can be referenced in the entry links.Currently, proje... |

### `GoogleCloudDataplexV1MetadataJobStatus`

Metadata job status.

| Property | Type | Description |
|----------|------|-------------|
| `completionPercent` | `integer` | Output only. Progress tracking. |
| `message` | `string` | Output only. Message relating to the progression of a metadata job. |
| `state` | `string` | Output only. State of the metadata job. |
| `updateTime` | `string` | Output only. The time when the status was updated. |

### `GoogleCloudDataplexV1OperationMetadata`

Represents the metadata of a long-running operation.

| Property | Type | Description |
|----------|------|-------------|
| `apiVersion` | `string` | Output only. API version used to start the operation. |
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `requestedCancellation` | `boolean` | Output only. Identifies whether the user has requested cancellation of the operation. Operations ... |
| `statusMessage` | `string` | Output only. Human-readable status of the operation, if any. |
| `target` | `string` | Output only. Server-defined resource path for the target of the operation. |
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

### `GoogleCloudDataplexV1Partition`

Represents partition metadata contained within entity instances.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Optional. The etag for this partition. |
| `location` | `string` | Required. Immutable. The location of the entity data within the partition, for example, gs://buck... |
| `name` | `string` | Output only. Partition values used in the HTTP URL must be double encoded. For example, url_encod... |
| `values` | `array<string>` | Required. Immutable. The set of values representing the partition, which correspond to the partit... |

### `GoogleCloudDataplexV1ResourceAccessSpec`

ResourceAccessSpec holds the access control configuration to be enforced on the resources, for example, Cloud Storage bucket, BigQuery dataset, BigQuery table.

| Property | Type | Description |
|----------|------|-------------|
| `owners` | `array<string>` | Optional. The set of principals to be granted owner role on the resource. |
| `readers` | `array<string>` | Optional. The format of strings follows the pattern followed by IAM in the bindings. user:{email}... |
| `writers` | `array<string>` | Optional. The set of principals to be granted writer role on the resource. |

### `GoogleCloudDataplexV1RunDataScanRequest`

Run DataScan Request

### `GoogleCloudDataplexV1RunDataScanResponse`

Run DataScan Response.

| Property | Type | Description |
|----------|------|-------------|
| `job` | `GoogleCloudDataplexV1DataScanJob` | DataScanJob created by RunDataScan request. |

### `GoogleCloudDataplexV1RunTaskRequest`

| Property | Type | Description |
|----------|------|-------------|
| `args` | `object` | Optional. Execution spec arguments. If the map is left empty, the task will run with existing exe... |
| `labels` | `object` | Optional. User-defined labels for the task. If the map is left empty, the task will run with exis... |

### `GoogleCloudDataplexV1RunTaskResponse`

| Property | Type | Description |
|----------|------|-------------|
| `job` | `GoogleCloudDataplexV1Job` | Jobs created by RunTask API. |

### `GoogleCloudDataplexV1ScannedData`

The data scanned during processing (e.g. in incremental DataScan)

| Property | Type | Description |
|----------|------|-------------|
| `incrementalField` | `GoogleCloudDataplexV1ScannedDataIncrementalField` | The range denoted by values of an incremental field |

### `GoogleCloudDataplexV1ScannedDataIncrementalField`

A data range denoted by a pair of start/end values of a field.

| Property | Type | Description |
|----------|------|-------------|
| `end` | `string` | Output only. Value that marks the end of the range. |
| `field` | `string` | Output only. The field that contains values which monotonically increases over time (e.g. a times... |
| `start` | `string` | Output only. Value that marks the start of the range. |

### `GoogleCloudDataplexV1Schema`

Schema information describing the structure and layout of the data.

| Property | Type | Description |
|----------|------|-------------|
| `fields` | `array<GoogleCloudDataplexV1SchemaSchemaField>` | Optional. The sequence of fields describing data in table entities. Note: BigQuery SchemaFields a... |
| `partitionFields` | `array<GoogleCloudDataplexV1SchemaPartitionField>` | Optional. The sequence of fields describing the partition structure in entities. If this field is... |
| `partitionStyle` | `string` | Optional. The structure of paths containing partition data within the entity. |
| `userManaged` | `boolean` | Required. Set to true if user-managed or false if managed by Dataplex Universal Catalog. The defa... |

### `GoogleCloudDataplexV1SchemaPartitionField`

Represents a key field within the entity's partition structure. You could have up to 20 partition fields, but only the first 10 partitions have the filtering ability due to performance consideration. Note: Partition fields are immutable.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. Partition field name must consist of letters, numbers, and underscores only, with a max... |
| `type` | `string` | Required. Immutable. The type of field. |

### `GoogleCloudDataplexV1SchemaSchemaField`

Represents a column field within a table schema.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. User friendly field description. Must be less than or equal to 1024 characters. |
| `fields` | `array<GoogleCloudDataplexV1SchemaSchemaField>` | Optional. Any nested field for complex types. |
| `mode` | `string` | Required. Additional field semantics. |
| `name` | `string` | Required. The name of the field. Must contain only letters, numbers and underscores, with a maxim... |
| `type` | `string` | Required. The type of field. |

### `GoogleCloudDataplexV1SearchEntriesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |
| `results` | `array<GoogleCloudDataplexV1SearchEntriesResult>` | The results matching the search query. |
| `totalSize` | `integer` | The estimated total number of matching entries. This number isn't guaranteed to be accurate. |
| `unreachable` | `array<string>` | Locations that the service couldn't reach. Search results don't include data from these locations. |

### `GoogleCloudDataplexV1SearchEntriesResult`

A single result of a SearchEntries request.

| Property | Type | Description |
|----------|------|-------------|
| `dataplexEntry` | `GoogleCloudDataplexV1Entry` |  |
| `linkedResource` | `string` | Linked resource name. |
| `snippets` | `GoogleCloudDataplexV1SearchEntriesResultSnippets` | Snippets. |

### `GoogleCloudDataplexV1SearchEntriesResultSnippets`

Snippets for the entry, contains HTML-style highlighting for matched tokens, will be used in UI.

| Property | Type | Description |
|----------|------|-------------|
| `dataplexEntry` | `GoogleCloudDataplexV1Entry` | Entry |

### `GoogleCloudDataplexV1Session`

Represents an active analyze session running for a user.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Session start time. |
| `name` | `string` | Output only. The relative resource name of the content, of the form: projects/{project_id}/locati... |
| `state` | `string` | Output only. State of Session |
| `userId` | `string` | Output only. Email of user running the session. |

### `GoogleCloudDataplexV1SessionEvent`

These messages contain information about sessions within an environment. The monitored resource is 'Environment'.

| Property | Type | Description |
|----------|------|-------------|
| `eventSucceeded` | `boolean` | The status of the event. |
| `fastStartupEnabled` | `boolean` | If the session is associated with an environment with fast startup enabled, and was created befor... |
| `message` | `string` | The log message. |
| `query` | `GoogleCloudDataplexV1SessionEventQueryDetail` | The execution details of the query. |
| `sessionId` | `string` | Unique identifier for the session. |
| `type` | `string` | The type of the event. |
| `unassignedDuration` | `string` | The idle duration of a warm pooled session before it is assigned to user. |
| `userId` | `string` | The information about the user that created the session. It will be the email address of the user. |

### `GoogleCloudDataplexV1SessionEventQueryDetail`

Execution details of the query.

| Property | Type | Description |
|----------|------|-------------|
| `dataProcessedBytes` | `string` | The data processed by the query. |
| `duration` | `string` | Time taken for execution of the query. |
| `engine` | `string` | Query Execution engine. |
| `queryId` | `string` | The unique Query id identifying the query. |
| `queryText` | `string` | The query text executed. |
| `resultSizeBytes` | `string` | The size of results the query produced. |

### `GoogleCloudDataplexV1StorageAccess`

Describes the access mechanism of the data within its storage location.

| Property | Type | Description |
|----------|------|-------------|
| `read` | `string` | Output only. Describes the read access mechanism of the data. Not user settable. |

### `GoogleCloudDataplexV1StorageFormat`

Describes the format of the data within its storage location.

| Property | Type | Description |
|----------|------|-------------|
| `compressionFormat` | `string` | Optional. The compression type associated with the stored data. If unspecified, the data is uncom... |
| `csv` | `GoogleCloudDataplexV1StorageFormatCsvOptions` | Optional. Additional information about CSV formatted data. |
| `format` | `string` | Output only. The data format associated with the stored data, which represents content type value... |
| `iceberg` | `GoogleCloudDataplexV1StorageFormatIcebergOptions` | Optional. Additional information about iceberg tables. |
| `json` | `GoogleCloudDataplexV1StorageFormatJsonOptions` | Optional. Additional information about CSV formatted data. |
| `mimeType` | `string` | Required. The mime type descriptor for the data. Must match the pattern {type}/{subtype}. Support... |

### `GoogleCloudDataplexV1StorageFormatCsvOptions`

Describes CSV and similar semi-structured data formats.

| Property | Type | Description |
|----------|------|-------------|
| `delimiter` | `string` | Optional. The delimiter used to separate values. Defaults to ','. |
| `encoding` | `string` | Optional. The character encoding of the data. Accepts "US-ASCII", "UTF-8", and "ISO-8859-1". Defa... |
| `headerRows` | `integer` | Optional. The number of rows to interpret as header rows that should be skipped when reading data... |
| `quote` | `string` | Optional. The character used to quote column values. Accepts '"' (double quotation mark) or ''' (... |

### `GoogleCloudDataplexV1StorageFormatIcebergOptions`

Describes Iceberg data format.

| Property | Type | Description |
|----------|------|-------------|
| `metadataLocation` | `string` | Optional. The location of where the iceberg metadata is present, must be within the table path |

### `GoogleCloudDataplexV1StorageFormatJsonOptions`

Describes JSON data format.

| Property | Type | Description |
|----------|------|-------------|
| `encoding` | `string` | Optional. The character encoding of the data. Accepts "US-ASCII", "UTF-8" and "ISO-8859-1". Defau... |

### `GoogleCloudDataplexV1Task`

A task represents a user-visible job.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time when the task was created. |
| `description` | `string` | Optional. Description of the task. |
| `displayName` | `string` | Optional. User friendly display name. |
| `executionSpec` | `GoogleCloudDataplexV1TaskExecutionSpec` | Required. Spec related to how a task is executed. |
| `executionStatus` | `GoogleCloudDataplexV1TaskExecutionStatus` | Output only. Status of the latest task executions. |
| `labels` | `object` | Optional. User-defined labels for the task. |
| `name` | `string` | Output only. The relative resource name of the task, of the form: projects/{project_number}/locat... |
| `notebook` | `GoogleCloudDataplexV1TaskNotebookTaskConfig` | Config related to running scheduled Notebooks. |
| `spark` | `GoogleCloudDataplexV1TaskSparkTaskConfig` | Config related to running custom Spark tasks. |
| `state` | `string` | Output only. Current state of the task. |
| `triggerSpec` | `GoogleCloudDataplexV1TaskTriggerSpec` | Required. Spec related to how often and when a task should be triggered. |
| `uid` | `string` | Output only. System generated globally unique ID for the task. This ID will be different if the t... |
| `updateTime` | `string` | Output only. The time when the task was last updated. |

### `GoogleCloudDataplexV1TaskExecutionSpec`

Execution related settings, like retry and service_account.

| Property | Type | Description |
|----------|------|-------------|
| `args` | `object` | Optional. The arguments to pass to the task. The args can use placeholders of the format ${placeh... |
| `kmsKey` | `string` | Optional. The Cloud KMS key to use for encryption, of the form: projects/{project_number}/locatio... |
| `maxJobExecutionLifetime` | `string` | Optional. The maximum duration after which the job execution is expired. |
| `project` | `string` | Optional. The project in which jobs are run. By default, the project containing the Lake is used.... |
| `serviceAccount` | `string` | Required. Service account to use to execute a task. If not provided, the default Compute service ... |

### `GoogleCloudDataplexV1TaskExecutionStatus`

Status of the task execution (e.g. Jobs).

| Property | Type | Description |
|----------|------|-------------|
| `latestJob` | `GoogleCloudDataplexV1Job` | Output only. latest job execution |
| `updateTime` | `string` | Output only. Last update time of the status. |

### `GoogleCloudDataplexV1TaskInfrastructureSpec`

Configuration for the underlying infrastructure used to run workloads.

| Property | Type | Description |
|----------|------|-------------|
| `batch` | `GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources` | Compute resources needed for a Task when using Dataproc Serverless. |
| `containerImage` | `GoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime` | Container Image Runtime Configuration. |
| `vpcNetwork` | `GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork` | Vpc network. |

### `GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources`

Batch compute resources associated with the task.

| Property | Type | Description |
|----------|------|-------------|
| `executorsCount` | `integer` | Optional. Total number of job executors. Executor Count should be between 2 and 100. Default=2 |
| `maxExecutorsCount` | `integer` | Optional. Max configurable executors. If max_executors_count > executors_count, then auto-scaling... |

### `GoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime`

Container Image Runtime Configuration used with Batch execution.

| Property | Type | Description |
|----------|------|-------------|
| `image` | `string` | Optional. Container image to use. |
| `javaJars` | `array<string>` | Optional. A list of Java JARS to add to the classpath. Valid input includes Cloud Storage URIs to... |
| `properties` | `object` | Optional. Override to common configuration of open source components installed on the Dataproc cl... |
| `pythonPackages` | `array<string>` | Optional. A list of python packages to be installed. Valid formats include Cloud Storage URI to a... |

### `GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork`

Cloud VPC Network used to run the infrastructure.

| Property | Type | Description |
|----------|------|-------------|
| `network` | `string` | Optional. The Cloud VPC network in which the job is run. By default, the Cloud VPC network named ... |
| `networkTags` | `array<string>` | Optional. List of network tags to apply to the job. |
| `subNetwork` | `string` | Optional. The Cloud VPC sub-network in which the job is run. |

### `GoogleCloudDataplexV1TaskNotebookTaskConfig`

Config for running scheduled notebooks.

| Property | Type | Description |
|----------|------|-------------|
| `archiveUris` | `array<string>` | Optional. Cloud Storage URIs of archives to be extracted into the working directory of each execu... |
| `fileUris` | `array<string>` | Optional. Cloud Storage URIs of files to be placed in the working directory of each executor. |
| `infrastructureSpec` | `GoogleCloudDataplexV1TaskInfrastructureSpec` | Optional. Infrastructure specification for the execution. |
| `notebook` | `string` | Required. Path to input notebook. This can be the Cloud Storage URI of the notebook file or the p... |

### `GoogleCloudDataplexV1TaskSparkTaskConfig`

User-specified config for running a Spark task.

| Property | Type | Description |
|----------|------|-------------|
| `archiveUris` | `array<string>` | Optional. Cloud Storage URIs of archives to be extracted into the working directory of each execu... |
| `fileUris` | `array<string>` | Optional. Cloud Storage URIs of files to be placed in the working directory of each executor. |
| `infrastructureSpec` | `GoogleCloudDataplexV1TaskInfrastructureSpec` | Optional. Infrastructure specification for the execution. |
| `mainClass` | `string` | The name of the driver's main class. The jar file that contains the class must be in the default ... |
| `mainJarFileUri` | `string` | The Cloud Storage URI of the jar file that contains the main class. The execution args are passed... |
| `pythonScriptFile` | `string` | The Gcloud Storage URI of the main Python file to use as the driver. Must be a .py file. The exec... |
| `sqlScript` | `string` | The query text. The execution args are used to declare a set of script variables (set key="value";). |
| `sqlScriptFile` | `string` | A reference to a query file. This should be the Cloud Storage URI of the query file. The executio... |

### `GoogleCloudDataplexV1TaskTriggerSpec`

Task scheduling and trigger settings.

| Property | Type | Description |
|----------|------|-------------|
| `disabled` | `boolean` | Optional. Prevent the task from executing. This does not cancel already running tasks. It is inte... |
| `maxRetries` | `integer` | Optional. Number of retry attempts before aborting. Set to zero to never attempt to retry a faile... |
| `schedule` | `string` | Optional. Cron schedule (https://en.wikipedia.org/wiki/Cron) for running tasks periodically. To e... |
| `startTime` | `string` | Optional. The first run of the task will be after this time. If not specified, the task will run ... |
| `type` | `string` | Required. Immutable. Trigger type of the user-specified Task. |

### `GoogleCloudDataplexV1Trigger`

DataScan scheduling and trigger settings.

| Property | Type | Description |
|----------|------|-------------|
| `onDemand` | `GoogleCloudDataplexV1TriggerOnDemand` | The scan runs once via RunDataScan API. |
| `oneTime` | `GoogleCloudDataplexV1TriggerOneTime` | The scan runs once, and does not create an associated ScanJob child resource. |
| `schedule` | `GoogleCloudDataplexV1TriggerSchedule` | The scan is scheduled to run periodically. |

### `GoogleCloudDataplexV1TriggerOnDemand`

The scan runs once via RunDataScan API.

### `GoogleCloudDataplexV1TriggerOneTime`

The scan runs once using create API.

| Property | Type | Description |
|----------|------|-------------|
| `ttlAfterScanCompletion` | `string` | Optional. Time to live for OneTime scans. default value is 24 hours, minimum value is 0 seconds, ... |

### `GoogleCloudDataplexV1TriggerSchedule`

The scan is scheduled to run periodically.

| Property | Type | Description |
|----------|------|-------------|
| `cron` | `string` | Required. Cron (https://en.wikipedia.org/wiki/Cron) schedule for running scans periodically.To ex... |

### `GoogleCloudDataplexV1Zone`

A zone represents a logical group of related assets within a lake. A zone can be used to map to organizational structure or represent stages of data readiness from raw to curated. It provides managing behavior that is shared or inherited by all contained assets.

| Property | Type | Description |
|----------|------|-------------|
| `assetStatus` | `GoogleCloudDataplexV1AssetStatus` | Output only. Aggregated status of the underlying assets of the zone. |
| `createTime` | `string` | Output only. The time when the zone was created. |
| `description` | `string` | Optional. Description of the zone. |
| `discoverySpec` | `GoogleCloudDataplexV1ZoneDiscoverySpec` | Optional. Specification of the discovery feature applied to data in this zone. |
| `displayName` | `string` | Optional. User friendly display name. |
| `labels` | `object` | Optional. User defined labels for the zone. |
| `name` | `string` | Output only. The relative resource name of the zone, of the form: projects/{project_number}/locat... |
| `resourceSpec` | `GoogleCloudDataplexV1ZoneResourceSpec` | Required. Specification of the resources that are referenced by the assets within this zone. |
| `state` | `string` | Output only. Current state of the zone. |
| `type` | `string` | Required. Immutable. The type of the zone. |
| `uid` | `string` | Output only. System generated globally unique ID for the zone. This ID will be different if the z... |
| `updateTime` | `string` | Output only. The time when the zone was last updated. |

### `GoogleCloudDataplexV1ZoneDiscoverySpec`

Settings to manage the metadata discovery and publishing in a zone.

| Property | Type | Description |
|----------|------|-------------|
| `csvOptions` | `GoogleCloudDataplexV1ZoneDiscoverySpecCsvOptions` | Optional. Configuration for CSV data. |
| `enabled` | `boolean` | Required. Whether discovery is enabled. |
| `excludePatterns` | `array<string>` | Optional. The list of patterns to apply for selecting data to exclude during discovery. For Cloud... |
| `includePatterns` | `array<string>` | Optional. The list of patterns to apply for selecting data to include during discovery if only a ... |
| `jsonOptions` | `GoogleCloudDataplexV1ZoneDiscoverySpecJsonOptions` | Optional. Configuration for Json data. |
| `schedule` | `string` | Optional. Cron schedule (https://en.wikipedia.org/wiki/Cron) for running discovery periodically. ... |

### `GoogleCloudDataplexV1ZoneDiscoverySpecCsvOptions`

Describe CSV and similar semi-structured data formats.

| Property | Type | Description |
|----------|------|-------------|
| `delimiter` | `string` | Optional. The delimiter being used to separate values. This defaults to ','. |
| `disableTypeInference` | `boolean` | Optional. Whether to disable the inference of data type for CSV data. If true, all columns will b... |
| `encoding` | `string` | Optional. The character encoding of the data. The default is UTF-8. |
| `headerRows` | `integer` | Optional. The number of rows to interpret as header rows that should be skipped when reading data... |

### `GoogleCloudDataplexV1ZoneDiscoverySpecJsonOptions`

Describe JSON data format.

| Property | Type | Description |
|----------|------|-------------|
| `disableTypeInference` | `boolean` | Optional. Whether to disable the inference of data type for Json data. If true, all columns will ... |
| `encoding` | `string` | Optional. The character encoding of the data. The default is UTF-8. |

### `GoogleCloudDataplexV1ZoneResourceSpec`

Settings for resources attached as assets within a zone.

| Property | Type | Description |
|----------|------|-------------|
| `locationType` | `string` | Required. Immutable. The location type of the resources that are allowed to be attached to the as... |

### `GoogleCloudLocationListLocationsResponse`

The response message for Locations.ListLocations.

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<GoogleCloudLocationLocation>` | A list of locations that matches the specified filter in the request. |
| `nextPageToken` | `string` | The standard List next-page token. |

### `GoogleCloudLocationLocation`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: "us-east1". |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: "projects/ex... |

### `GoogleIamV1AuditConfig`

Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs.If there are AuditConfigs for both allServices and a specific service, the union of the two AuditConfigs is used for that service: the log_types specified in each AuditConfig are enabled, and the exempted_members in each AuditLogConfig are exempted.Example Policy with multiple AuditConfigs: { "audit_configs": [ { "service": "allServices", "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" }, { "log_type": "ADMIN_READ" } ] }, { "service": "sampleservice.googleapis.com", "audit_log_configs": [ { "log_type": "DATA_READ" }, { "log_type": "DATA_WRITE", "exempted_members": [ "user:aliya@example.com" ] } ] } ] } For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts jose@example.com from DATA_READ logging, and aliya@example.com from DATA_WRITE logging.

| Property | Type | Description |
|----------|------|-------------|
| `auditLogConfigs` | `array<GoogleIamV1AuditLogConfig>` | The configuration for logging of each type of permission. |
| `service` | `string` | Specifies a service that will be enabled for audit logging. For example, storage.googleapis.com, ... |

### `GoogleIamV1AuditLogConfig`

Provides the configuration for logging a type of permissions. Example: { "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.

| Property | Type | Description |
|----------|------|-------------|
| `exemptedMembers` | `array<string>` | Specifies the identities that do not cause logging for this type of permission. Follows the same ... |
| `logType` | `string` | The log type that this config enables. |

### `GoogleIamV1Binding`

Associates members, or principals, with a role.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `GoogleTypeExpr` | The condition that is associated with this binding.If the condition evaluates to true, then this ... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. members can have the foll... |
| `role` | `string` | Role that is assigned to the list of members, or principals. For example, roles/viewer, roles/edi... |

### `GoogleIamV1Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources.A Policy is a collection of bindings. A binding binds one or more members, or principals, to a single role. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A role is a named list of permissions; each role can be an IAM predefined role or a user-created custom role.For some types of Google Cloud resources, a binding can also specify a condition, which is a logical expression that allows access to a resource only if the expression evaluates to true. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the IAM documentation (https://cloud.google.com/iam/help/conditions/resource-policies).JSON example: { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } YAML example: bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For a description of IAM and its features, see the IAM documentation (https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `auditConfigs` | `array<GoogleIamV1AuditConfig>` | Specifies cloud audit logging configuration for this policy. |
| `bindings` | `array<GoogleIamV1Binding>` | Associates a list of members, or principals, with a role. Optionally, may specify a condition tha... |
| `etag` | `string` | etag is used for optimistic concurrency control as a way to help prevent simultaneous updates of ... |
| `version` | `integer` | Specifies the format of the policy.Valid values are 0, 1, and 3. Requests that specify an invalid... |

### `GoogleIamV1SetIamPolicyRequest`

Request message for SetIamPolicy method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `GoogleIamV1Policy` | REQUIRED: The complete policy to be applied to the resource. The size of the policy is limited to... |
| `updateMask` | `string` | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mas... |

### `GoogleIamV1TestIamPermissionsRequest`

Request message for TestIamPermissions method.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | The set of permissions to check for the resource. Permissions with wildcards (such as * or storag... |

### `GoogleIamV1TestIamPermissionsResponse`

Response message for TestIamPermissions method.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | A subset of TestPermissionsRequest.permissions that the caller is allowed. |

### `GoogleLongrunningCancelOperationRequest`

The request message for Operations.CancelOperation.

### `GoogleLongrunningListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<GoogleLongrunningOperation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets ListOperationsRequest.retu... |

### `GoogleLongrunningOperation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is false, it means the operation is still in progress. If true, the operation is com... |
| `error` | `GoogleRpcStatus` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `GoogleRpcStatus`

The Status type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by gRPC (https://github.com/grpc). Each Status message contains three pieces of data: error code, error message, and error details.You can find out more about this error model and how to work with it in the API Design Guide (https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `GoogleTypeExpr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec.Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

