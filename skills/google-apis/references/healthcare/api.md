# Cloud Healthcare API - API Reference

**Version**: `v1` | **Methods**: 154 | **Schemas**: 177

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `healthcare.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `healthcare.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `healthcare.projects.locations.datasets.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `healthcare.projects.locations.datasets.create` | POST | `v1/{+parent}/datasets` | Creates a new health dataset. Results are returned through the Operation interface which returns ... |
| `healthcare.projects.locations.datasets.deidentify` | POST | `v1/{+sourceDataset}:deidentify` | Creates a new dataset containing de-identified data from the source dataset. The metadata field t... |
| `healthcare.projects.locations.datasets.list` | GET | `v1/{+parent}/datasets` | Lists the health datasets in the current project. |
| `healthcare.projects.locations.datasets.delete` | DELETE | `v1/{+name}` | Deletes the specified health dataset and all data contained in the dataset. Deleting a dataset do... |
| `healthcare.projects.locations.datasets.get` | GET | `v1/{+name}` | Gets any metadata associated with a dataset. |
| `healthcare.projects.locations.datasets.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `healthcare.projects.locations.datasets.patch` | PATCH | `v1/{+name}` | Updates dataset metadata. |
| `healthcare.projects.locations.datasets.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `healthcare.projects.locations.datasets.hl7V2Stores.export` | POST | `v1/{+name}:export` | Exports the messages to a destination. To filter messages to be exported, define a filter using t... |
| `healthcare.projects.locations.datasets.hl7V2Stores.get` | GET | `v1/{+name}` | Gets the specified HL7v2 store. |
| `healthcare.projects.locations.datasets.hl7V2Stores.create` | POST | `v1/{+parent}/hl7V2Stores` | Creates a new HL7v2 store within the parent dataset. |
| `healthcare.projects.locations.datasets.hl7V2Stores.list` | GET | `v1/{+parent}/hl7V2Stores` | Lists the HL7v2 stores in the given dataset. |
| `healthcare.projects.locations.datasets.hl7V2Stores.import` | POST | `v1/{+name}:import` | Import messages to the HL7v2 store by loading data from the specified sources. This method is opt... |
| `healthcare.projects.locations.datasets.hl7V2Stores.rollback` | POST | `v1/{+name}:rollback` | Rolls back messages from the HL7v2 store to the specified time. This method returns an Operation ... |
| `healthcare.projects.locations.datasets.hl7V2Stores.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `healthcare.projects.locations.datasets.hl7V2Stores.patch` | PATCH | `v1/{+name}` | Updates the HL7v2 store. |
| `healthcare.projects.locations.datasets.hl7V2Stores.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `healthcare.projects.locations.datasets.hl7V2Stores.getHL7v2StoreMetrics` | GET | `v1/{+name}:getHL7v2StoreMetrics` | Gets metrics associated with the HL7v2 store. |
| `healthcare.projects.locations.datasets.hl7V2Stores.delete` | DELETE | `v1/{+name}` | Deletes the specified HL7v2 store and removes all messages that it contains. |
| `healthcare.projects.locations.datasets.hl7V2Stores.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `healthcare.projects.locations.datasets.hl7V2Stores.messages.get` | GET | `v1/{+name}` | Gets an HL7v2 message. |
| `healthcare.projects.locations.datasets.hl7V2Stores.messages.delete` | DELETE | `v1/{+name}` | Deletes an HL7v2 message. |
| `healthcare.projects.locations.datasets.hl7V2Stores.messages.list` | GET | `v1/{+parent}/messages` | Lists all the messages in the given HL7v2 store with support for filtering. Note: HL7v2 messages ... |
| `healthcare.projects.locations.datasets.hl7V2Stores.messages.create` | POST | `v1/{+parent}/messages` | Parses and stores an HL7v2 message. This method triggers an asynchronous notification to any Pub/... |
| `healthcare.projects.locations.datasets.hl7V2Stores.messages.patch` | PATCH | `v1/{+name}` | Update the message. The contents of the message in Message.data and data extracted from the conte... |
| `healthcare.projects.locations.datasets.hl7V2Stores.messages.ingest` | POST | `v1/{+parent}/messages:ingest` | Parses and stores an HL7v2 message. This method triggers an asynchronous notification to any Pub/... |
| `healthcare.projects.locations.datasets.consentStores.queryAccessibleData` | POST | `v1/{+consentStore}:queryAccessibleData` | Queries all data_ids that are consented for a specified use in the given consent store and writes... |
| `healthcare.projects.locations.datasets.consentStores.delete` | DELETE | `v1/{+name}` | Deletes the specified consent store and removes all the consent store's data. |
| `healthcare.projects.locations.datasets.consentStores.list` | GET | `v1/{+parent}/consentStores` | Lists the consent stores in the specified dataset. |
| `healthcare.projects.locations.datasets.consentStores.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `healthcare.projects.locations.datasets.consentStores.patch` | PATCH | `v1/{+name}` | Updates the specified consent store. |
| `healthcare.projects.locations.datasets.consentStores.evaluateUserConsents` | POST | `v1/{+consentStore}:evaluateUserConsents` | Evaluates the user's Consents for all matching User data mappings. Note: User data mappings are i... |
| `healthcare.projects.locations.datasets.consentStores.get` | GET | `v1/{+name}` | Gets the specified consent store. |
| `healthcare.projects.locations.datasets.consentStores.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `healthcare.projects.locations.datasets.consentStores.checkDataAccess` | POST | `v1/{+consentStore}:checkDataAccess` | Checks if a particular data_id of a User data mapping in the specified consent store is consented... |
| `healthcare.projects.locations.datasets.consentStores.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `healthcare.projects.locations.datasets.consentStores.create` | POST | `v1/{+parent}/consentStores` | Creates a new consent store in the parent dataset. Attempting to create a consent store with the ... |
| `healthcare.projects.locations.datasets.consentStores.attributeDefinitions.list` | GET | `v1/{+parent}/attributeDefinitions` | Lists the Attribute definitions in the specified consent store. |
| `healthcare.projects.locations.datasets.consentStores.attributeDefinitions.delete` | DELETE | `v1/{+name}` | Deletes the specified Attribute definition. Fails if the Attribute definition is referenced by an... |
| `healthcare.projects.locations.datasets.consentStores.attributeDefinitions.patch` | PATCH | `v1/{+name}` | Updates the specified Attribute definition. |
| `healthcare.projects.locations.datasets.consentStores.attributeDefinitions.create` | POST | `v1/{+parent}/attributeDefinitions` | Creates a new Attribute definition in the parent consent store. |
| `healthcare.projects.locations.datasets.consentStores.attributeDefinitions.get` | GET | `v1/{+name}` | Gets the specified Attribute definition. |
| `healthcare.projects.locations.datasets.consentStores.userDataMappings.delete` | DELETE | `v1/{+name}` | Deletes the specified User data mapping. |
| `healthcare.projects.locations.datasets.consentStores.userDataMappings.list` | GET | `v1/{+parent}/userDataMappings` | Lists the User data mappings in the specified consent store. |
| `healthcare.projects.locations.datasets.consentStores.userDataMappings.archive` | POST | `v1/{+name}:archive` | Archives the specified User data mapping. |
| `healthcare.projects.locations.datasets.consentStores.userDataMappings.patch` | PATCH | `v1/{+name}` | Updates the specified User data mapping. |
| `healthcare.projects.locations.datasets.consentStores.userDataMappings.create` | POST | `v1/{+parent}/userDataMappings` | Creates a new User data mapping in the parent consent store. |
| `healthcare.projects.locations.datasets.consentStores.userDataMappings.get` | GET | `v1/{+name}` | Gets the specified User data mapping. |
| `healthcare.projects.locations.datasets.consentStores.consents.deleteRevision` | DELETE | `v1/{+name}:deleteRevision` | Deletes the specified revision of a Consent. An INVALID_ARGUMENT error occurs if the specified re... |
| `healthcare.projects.locations.datasets.consentStores.consents.get` | GET | `v1/{+name}` | Gets the specified revision of a Consent, or the latest revision if `revision_id` is not specifie... |
| `healthcare.projects.locations.datasets.consentStores.consents.list` | GET | `v1/{+parent}/consents` | Lists the Consent in the given consent store, returning each Consent's latest revision. |
| `healthcare.projects.locations.datasets.consentStores.consents.reject` | POST | `v1/{+name}:reject` | Rejects the latest revision of the specified Consent by committing a new revision with `state` up... |
| `healthcare.projects.locations.datasets.consentStores.consents.create` | POST | `v1/{+parent}/consents` | Creates a new Consent in the parent consent store. |
| `healthcare.projects.locations.datasets.consentStores.consents.delete` | DELETE | `v1/{+name}` | Deletes the Consent and its revisions. To keep a record of the Consent but mark it inactive, see ... |
| `healthcare.projects.locations.datasets.consentStores.consents.patch` | PATCH | `v1/{+name}` | Updates the latest revision of the specified Consent by committing a new revision with the change... |
| `healthcare.projects.locations.datasets.consentStores.consents.activate` | POST | `v1/{+name}:activate` | Activates the latest revision of the specified Consent by committing a new revision with `state` ... |
| `healthcare.projects.locations.datasets.consentStores.consents.revoke` | POST | `v1/{+name}:revoke` | Revokes the latest revision of the specified Consent by committing a new revision with `state` up... |
| `healthcare.projects.locations.datasets.consentStores.consents.listRevisions` | GET | `v1/{+name}:listRevisions` | Lists the revisions of the specified Consent in reverse chronological order. |
| `healthcare.projects.locations.datasets.consentStores.consentArtifacts.delete` | DELETE | `v1/{+name}` | Deletes the specified Consent artifact. Fails if the artifact is referenced by the latest revisio... |
| `healthcare.projects.locations.datasets.consentStores.consentArtifacts.get` | GET | `v1/{+name}` | Gets the specified Consent artifact. |
| `healthcare.projects.locations.datasets.consentStores.consentArtifacts.list` | GET | `v1/{+parent}/consentArtifacts` | Lists the Consent artifacts in the specified consent store. |
| `healthcare.projects.locations.datasets.consentStores.consentArtifacts.create` | POST | `v1/{+parent}/consentArtifacts` | Creates a new Consent artifact in the parent consent store. |
| `healthcare.projects.locations.datasets.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `healthcare.projects.locations.datasets.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `healthcare.projects.locations.datasets.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `healthcare.projects.locations.datasets.fhirStores.import` | POST | `v1/{+name}:import` | Imports resources to the FHIR store by loading data from the specified sources. This method is op... |
| `healthcare.projects.locations.datasets.fhirStores.explainDataAccess` | GET | `v1/{+name}:explainDataAccess` | Explains all the permitted/denied actor, purpose and environment for a given resource. FHIR Conse... |
| `healthcare.projects.locations.datasets.fhirStores.export` | POST | `v1/{+name}:export` | Export resources from the FHIR store to the specified destination. This method returns an Operati... |
| `healthcare.projects.locations.datasets.fhirStores.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `healthcare.projects.locations.datasets.fhirStores.create` | POST | `v1/{+parent}/fhirStores` | Creates a new FHIR store within the parent dataset. |
| `healthcare.projects.locations.datasets.fhirStores.list` | GET | `v1/{+parent}/fhirStores` | Lists the FHIR stores in the given dataset. |
| `healthcare.projects.locations.datasets.fhirStores.applyAdminConsents` | POST | `v1/{+name}:applyAdminConsents` | Applies the admin Consent resources for the FHIR store and reindexes the underlying resources in ... |
| `healthcare.projects.locations.datasets.fhirStores.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `healthcare.projects.locations.datasets.fhirStores.delete` | DELETE | `v1/{+name}` | Deletes the specified FHIR store and removes all resources within it. |
| `healthcare.projects.locations.datasets.fhirStores.applyConsents` | POST | `v1/{+name}:applyConsents` | Apply the Consent resources for the FHIR store and reindex the underlying resources in the FHIR s... |
| `healthcare.projects.locations.datasets.fhirStores.deidentify` | POST | `v1/{+sourceStore}:deidentify` | De-identifies data from the source store and writes it to the destination store. The metadata fie... |
| `healthcare.projects.locations.datasets.fhirStores.bulk-export-group` | GET | `v1/{+name}/$export` | Bulk exports a Group resource and resources in the member field, including related resources for ... |
| `healthcare.projects.locations.datasets.fhirStores.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `healthcare.projects.locations.datasets.fhirStores.getFHIRStoreMetrics` | GET | `v1/{+name}:getFHIRStoreMetrics` | Gets metrics associated with the FHIR store. |
| `healthcare.projects.locations.datasets.fhirStores.patch` | PATCH | `v1/{+name}` | Updates the configuration of the specified FHIR store. |
| `healthcare.projects.locations.datasets.fhirStores.bulkDelete` | POST | `v1/{+name}:bulkDelete` | Bulk deletes the FHIR resources from the given FHIR store. This method returns an Operation that ... |
| `healthcare.projects.locations.datasets.fhirStores.get` | GET | `v1/{+name}` | Gets the configuration of the specified FHIR store. |
| `healthcare.projects.locations.datasets.fhirStores.rollback` | POST | `v1/{+name}:rollback` | Rolls back resources from the FHIR store to the specified time. This method returns an Operation ... |
| `healthcare.projects.locations.datasets.fhirStores.operations.delete-fhir-operation` | DELETE | `v1/{+name}` | Deletes operations as defined in the FHIR specification. Implements the FHIR implementation guide... |
| `healthcare.projects.locations.datasets.fhirStores.operations.get-fhir-operation-status` | GET | `v1/{+name}` | Gets the status of operations as defined in the FHIR specification. Implements the FHIR implement... |
| `healthcare.projects.locations.datasets.fhirStores.fhir.Binary-read` | GET | `v1/{+name}` | Gets the contents of a FHIR Binary resource. This method can be used to retrieve a Binary resourc... |
| `healthcare.projects.locations.datasets.fhirStores.fhir.search-type` | POST | `v1/{+parent}/fhir/{resourceType}/_search` | Searches for resources in the given FHIR store according to criteria specified as query parameter... |
| `healthcare.projects.locations.datasets.fhirStores.fhir.Patient-consent-enforcement-status` | GET | `v1/{+name}/$consent-enforcement-status` | Returns the consent enforcement status of all consent resources for a patient. On success, the re... |
| `healthcare.projects.locations.datasets.fhirStores.fhir.Binary-update` | PUT | `v1/{+name}` | Updates the entire contents of a Binary resource. If the specified resource does not exist and th... |
| `healthcare.projects.locations.datasets.fhirStores.fhir.patch` | PATCH | `v1/{+name}` | Updates part of an existing resource by applying the operations specified in a [JSON Patch](http:... |
| `healthcare.projects.locations.datasets.fhirStores.fhir.search` | POST | `v1/{+parent}/fhir/_search` | Searches for resources in the given FHIR store according to criteria specified as query parameter... |
| `healthcare.projects.locations.datasets.fhirStores.fhir.conditionalDelete` | DELETE | `v1/{+parent}/fhir/{+type}` | Deletes a FHIR resource that match an identifier search query. Implements the FHIR standard condi... |
| `healthcare.projects.locations.datasets.fhirStores.fhir.create` | POST | `v1/{+parent}/fhir/{+type}` | Creates a FHIR resource. Implements the FHIR standard create interaction ([DSTU2](https://hl7.org... |
| `healthcare.projects.locations.datasets.fhirStores.fhir.capabilities` | GET | `v1/{+name}/fhir/metadata` | Gets the FHIR capability statement ([STU3](https://hl7.org/fhir/STU3/capabilitystatement.html), [... |
| `healthcare.projects.locations.datasets.fhirStores.fhir.conditionalPatch` | PATCH | `v1/{+parent}/fhir/{+type}` | If a resource is found with the identifier specified in the query parameters, updates part of tha... |
| `healthcare.projects.locations.datasets.fhirStores.fhir.update` | PUT | `v1/{+name}` | Updates the entire contents of a resource. Implements the FHIR standard update interaction ([DSTU... |
| `healthcare.projects.locations.datasets.fhirStores.fhir.Resource-purge` | DELETE | `v1/{+name}/$purge` | Deletes all the historical versions of a resource (excluding the current version) from the FHIR s... |
| `healthcare.projects.locations.datasets.fhirStores.fhir.vread` | GET | `v1/{+name}` | Gets the contents of a version (current or historical) of a FHIR resource by version ID. Implemen... |
| `healthcare.projects.locations.datasets.fhirStores.fhir.executeBundle` | POST | `v1/{+parent}/fhir` | Executes all the requests in the given Bundle. Implements the FHIR standard batch/transaction int... |
| `healthcare.projects.locations.datasets.fhirStores.fhir.Patient-everything` | GET | `v1/{+name}/$everything` | Retrieves a Patient resource and resources related to that patient. Implements the FHIR extended ... |
| `healthcare.projects.locations.datasets.fhirStores.fhir.bulk-export` | GET | `v1/{+name}/fhir/$export` | Bulk exports all resources from the FHIR store to the specified destination. Implements the FHIR ... |
| `healthcare.projects.locations.datasets.fhirStores.fhir.read` | GET | `v1/{+name}` | Gets the contents of a FHIR resource. Implements the FHIR standard read interaction ([DSTU2](http... |
| `healthcare.projects.locations.datasets.fhirStores.fhir.Consent-enforcement-status` | GET | `v1/{+name}/$consent-enforcement-status` | Returns the consent enforcement status of a single consent resource. On success, the response bod... |
| `healthcare.projects.locations.datasets.fhirStores.fhir.history` | GET | `v1/{+name}/_history` | Lists all the versions of a resource (including the current version and deleted versions) from th... |
| `healthcare.projects.locations.datasets.fhirStores.fhir.delete` | DELETE | `v1/{+name}` | Deletes a FHIR resource. Implements the FHIR standard delete interaction ([DSTU2](https://hl7.org... |
| `healthcare.projects.locations.datasets.fhirStores.fhir.Binary-vread` | GET | `v1/{+name}` | Gets the contents of a version (current or historical) of a FHIR Binary resource by version ID. T... |
| `healthcare.projects.locations.datasets.fhirStores.fhir.Binary-create` | POST | `v1/{+parent}/fhir/Binary` | Creates a FHIR Binary resource. This method can be used to create a Binary resource either by usi... |
| `healthcare.projects.locations.datasets.fhirStores.fhir.Resource-validate` | POST | `v1/{+parent}/fhir/{+type}/$validate` | Validates an input FHIR resource's conformance to its profiles and the profiles configured on the... |
| `healthcare.projects.locations.datasets.fhirStores.fhir.conditionalUpdate` | PUT | `v1/{+parent}/fhir/{+type}` | If a resource is found with the identifier specified in the query parameters, updates the entire ... |
| `healthcare.projects.locations.datasets.dataMapperWorkspaces.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `healthcare.projects.locations.datasets.dataMapperWorkspaces.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `healthcare.projects.locations.datasets.dataMapperWorkspaces.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `healthcare.projects.locations.datasets.dicomStores.patch` | PATCH | `v1/{+name}` | Updates the specified DICOM store. |
| `healthcare.projects.locations.datasets.dicomStores.export` | POST | `v1/{+name}:export` | Exports data to the specified destination by copying it from the DICOM store. Errors are also log... |
| `healthcare.projects.locations.datasets.dicomStores.storeInstances` | POST | `v1/{+parent}/dicomWeb/{+dicomWebPath}` | StoreInstances stores DICOM instances associated with study instance unique identifiers (SUID). S... |
| `healthcare.projects.locations.datasets.dicomStores.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `healthcare.projects.locations.datasets.dicomStores.create` | POST | `v1/{+parent}/dicomStores` | Creates a new DICOM store within the parent dataset. |
| `healthcare.projects.locations.datasets.dicomStores.get` | GET | `v1/{+name}` | Gets the specified DICOM store. |
| `healthcare.projects.locations.datasets.dicomStores.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `healthcare.projects.locations.datasets.dicomStores.setBlobStorageSettings` | POST | `v1/{+resource}:setBlobStorageSettings` | SetBlobStorageSettings sets the blob storage settings of the specified resources. |
| `healthcare.projects.locations.datasets.dicomStores.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `healthcare.projects.locations.datasets.dicomStores.deidentify` | POST | `v1/{+sourceStore}:deidentify` | De-identifies data from the source store and writes it to the destination store. The metadata fie... |
| `healthcare.projects.locations.datasets.dicomStores.searchForStudies` | GET | `v1/{+parent}/dicomWeb/{+dicomWebPath}` | SearchForStudies returns a list of matching studies. See [Search Transaction] (https://dicom.nema... |
| `healthcare.projects.locations.datasets.dicomStores.getDICOMStoreMetrics` | GET | `v1/{+name}:getDICOMStoreMetrics` | Gets metrics associated with the DICOM store. |
| `healthcare.projects.locations.datasets.dicomStores.import` | POST | `v1/{+name}:import` | Imports data into the DICOM store by copying it from the specified source. Errors are logged to C... |
| `healthcare.projects.locations.datasets.dicomStores.searchForInstances` | GET | `v1/{+parent}/dicomWeb/{+dicomWebPath}` | SearchForInstances returns a list of matching instances. See [Search Transaction] (https://dicom.... |
| `healthcare.projects.locations.datasets.dicomStores.list` | GET | `v1/{+parent}/dicomStores` | Lists the DICOM stores in the given dataset. |
| `healthcare.projects.locations.datasets.dicomStores.delete` | DELETE | `v1/{+name}` | Deletes the specified DICOM store and removes all images that are contained within it. |
| `healthcare.projects.locations.datasets.dicomStores.searchForSeries` | GET | `v1/{+parent}/dicomWeb/{+dicomWebPath}` | SearchForSeries returns a list of matching series. See [Search Transaction] (https://dicom.nema.o... |
| `healthcare.projects.locations.datasets.dicomStores.dicomWeb.studies.setBlobStorageSettings` | POST | `v1/{+resource}:setBlobStorageSettings` | SetBlobStorageSettings sets the blob storage settings of the specified resources. |
| `healthcare.projects.locations.datasets.dicomStores.dicomWeb.studies.getStudyMetrics` | GET | `v1/{+study}:getStudyMetrics` | GetStudyMetrics returns metrics for a study. |
| `healthcare.projects.locations.datasets.dicomStores.dicomWeb.studies.series.getSeriesMetrics` | GET | `v1/{+series}:getSeriesMetrics` | GetSeriesMetrics returns metrics for a series. |
| `healthcare.projects.locations.datasets.dicomStores.dicomWeb.studies.series.instances.getStorageInfo` | GET | `v1/{+resource}:getStorageInfo` | GetStorageInfo returns the storage info of the specified resource. |
| `healthcare.projects.locations.datasets.dicomStores.studies.searchForInstances` | GET | `v1/{+parent}/dicomWeb/{+dicomWebPath}` | SearchForInstances returns a list of matching instances. See [Search Transaction] (https://dicom.... |
| `healthcare.projects.locations.datasets.dicomStores.studies.retrieveMetadata` | GET | `v1/{+parent}/dicomWeb/{+dicomWebPath}` | RetrieveStudyMetadata returns instance associated with the given study presented as metadata. See... |
| `healthcare.projects.locations.datasets.dicomStores.studies.retrieveStudy` | GET | `v1/{+parent}/dicomWeb/{+dicomWebPath}` | RetrieveStudy returns all instances within the given study. See [RetrieveTransaction] (https://di... |
| `healthcare.projects.locations.datasets.dicomStores.studies.delete` | DELETE | `v1/{+parent}/dicomWeb/{+dicomWebPath}` | DeleteStudy deletes all instances within the given study. Delete requests are equivalent to the G... |
| `healthcare.projects.locations.datasets.dicomStores.studies.searchForSeries` | GET | `v1/{+parent}/dicomWeb/{+dicomWebPath}` | SearchForSeries returns a list of matching series. See [Search Transaction] (https://dicom.nema.o... |
| `healthcare.projects.locations.datasets.dicomStores.studies.storeInstances` | POST | `v1/{+parent}/dicomWeb/{+dicomWebPath}` | StoreInstances stores DICOM instances associated with study instance unique identifiers (SUID). S... |
| `healthcare.projects.locations.datasets.dicomStores.studies.series.delete` | DELETE | `v1/{+parent}/dicomWeb/{+dicomWebPath}` | DeleteSeries deletes all instances within the given study and series. Delete requests are equival... |
| `healthcare.projects.locations.datasets.dicomStores.studies.series.retrieveSeries` | GET | `v1/{+parent}/dicomWeb/{+dicomWebPath}` | RetrieveSeries returns all instances within the given study and series. See [RetrieveTransaction]... |
| `healthcare.projects.locations.datasets.dicomStores.studies.series.retrieveMetadata` | GET | `v1/{+parent}/dicomWeb/{+dicomWebPath}` | RetrieveSeriesMetadata returns instance associated with the given study and series, presented as ... |
| `healthcare.projects.locations.datasets.dicomStores.studies.series.searchForInstances` | GET | `v1/{+parent}/dicomWeb/{+dicomWebPath}` | SearchForInstances returns a list of matching instances. See [Search Transaction] (https://dicom.... |
| `healthcare.projects.locations.datasets.dicomStores.studies.series.instances.retrieveMetadata` | GET | `v1/{+parent}/dicomWeb/{+dicomWebPath}` | RetrieveInstanceMetadata returns instance associated with the given study, series, and SOP Instan... |
| `healthcare.projects.locations.datasets.dicomStores.studies.series.instances.retrieveRendered` | GET | `v1/{+parent}/dicomWeb/{+dicomWebPath}` | RetrieveRenderedInstance returns instance associated with the given study, series, and SOP Instan... |
| `healthcare.projects.locations.datasets.dicomStores.studies.series.instances.delete` | DELETE | `v1/{+parent}/dicomWeb/{+dicomWebPath}` | DeleteInstance deletes an instance associated with the given study, series, and SOP Instance UID.... |
| `healthcare.projects.locations.datasets.dicomStores.studies.series.instances.retrieveInstance` | GET | `v1/{+parent}/dicomWeb/{+dicomWebPath}` | RetrieveInstance returns instance associated with the given study, series, and SOP Instance UID. ... |
| `healthcare.projects.locations.datasets.dicomStores.studies.series.instances.frames.retrieveRendered` | GET | `v1/{+parent}/dicomWeb/{+dicomWebPath}` | RetrieveRenderedFrames returns instances associated with the given study, series, SOP Instance UI... |
| `healthcare.projects.locations.datasets.dicomStores.studies.series.instances.frames.retrieveFrames` | GET | `v1/{+parent}/dicomWeb/{+dicomWebPath}` | RetrieveFrames returns instances associated with the given study, series, SOP Instance UID and fr... |
| `healthcare.projects.locations.datasets.dicomStores.studies.series.instances.bulkdata.retrieveBulkdata` | GET | `v1/{+parent}/dicomWeb/{+dicomWebPath}` | Returns uncompressed, unencoded bytes representing the referenced bulkdata tag from an instance. ... |
| `healthcare.projects.locations.services.nlp.analyzeEntities` | POST | `v1/{+nlpService}:analyzeEntities` | Analyze heathcare entity in a document. Its response includes the recognized entity mentions and ... |

### `healthcare.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await healthcare.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.list`

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
const res = await healthcare.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await healthcare.datasets.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.create`

**POST** `v1/{+parent}/datasets`

Creates a new health dataset. Results are returned through the Operation interface which returns either an `Operation.response` which contains a Dataset or `Operation.error`. The metadata field type is OperationMetadata.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project where the server creates the dataset. For example, `projects/{project_id}/locations... |
| `datasetId` | `string` | query | No | Required. The ID of the dataset that is being created. The string must match the following regex: `[\p{L}\p{N}_\-\.]{... |

**Request body**: `Dataset`

**Response**: `Operation`

```typescript
const res = await healthcare.datasets.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.deidentify`

**POST** `v1/{+sourceDataset}:deidentify`

Creates a new dataset containing de-identified data from the source dataset. The metadata field type is OperationMetadata. If the request is successful, the response field type is DeidentifySummary. If errors occur, error is set. The LRO result may still be successful if de-identification fails for some DICOM instances. The new de-identified dataset will not contain these failed resources. Failed resource totals are tracked in Operation.metadata. Error details are also logged to Cloud Logging. For more information, see [Viewing error logs in Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `sourceDataset` | `string` | path | Yes | Required. Source dataset resource name. For example, `projects/{project_id}/locations/{location_id}/datasets/{dataset... |

**Request body**: `DeidentifyDatasetRequest`

**Response**: `Operation`

```typescript
const res = await healthcare.datasets.deidentify({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.list`

**GET** `v1/{+parent}/datasets`

Lists the health datasets in the current project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project whose datasets should be listed. For example, `projects/{project_id}/locations/{loc... |
| `pageSize` | `integer` | query | No | The maximum number of items to return. If not specified, 100 is used. May not be larger than 1000. |
| `pageToken` | `string` | query | No | The next_page_token value returned from a previous List request, if any. |

**Response**: `ListDatasetsResponse`

```typescript
const res = await healthcare.datasets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.delete`

**DELETE** `v1/{+name}`

Deletes the specified health dataset and all data contained in the dataset. Deleting a dataset does not affect the sources from which the dataset was imported (if any).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the dataset to delete. For example, `projects/{project_id}/locations/{location_id}/datasets/{da... |

**Response**: `Empty`

```typescript
const res = await healthcare.datasets.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.get`

**GET** `v1/{+name}`

Gets any metadata associated with a dataset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the dataset to read. For example, `projects/{project_id}/locations/{location_id}/datasets/{data... |

**Response**: `Dataset`

```typescript
const res = await healthcare.datasets.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await healthcare.datasets.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.patch`

**PATCH** `v1/{+name}`

Updates dataset metadata.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Resource name of the dataset, of the form `projects/{project_id}/locations/{location_id}/datasets/{datase... |
| `updateMask` | `string` | query | No | Required. The update mask applies to the resource. For the `FieldMask` definition, see https://developers.google.com/... |

**Request body**: `Dataset`

**Response**: `Dataset`

```typescript
const res = await healthcare.datasets.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await healthcare.datasets.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.hl7V2Stores.export`

**POST** `v1/{+name}:export`

Exports the messages to a destination. To filter messages to be exported, define a filter using the start and end time, relative to the message generation time (MSH.7). This API returns an Operation that can be used to track the status of the job by calling GetOperation. Immediate fatal errors appear in the error field. Otherwise, when the operation finishes, a detailed response of type ExportMessagesResponse is returned in the response field. The metadata field type for this operation is OperationMetadata.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the source HL7v2 store, in the format `projects/{project_id}/locations/{location_id}/datasets/{... |

**Request body**: `ExportMessagesRequest`

**Response**: `Operation`

```typescript
const res = await healthcare.hl7V2Stores.export({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.hl7V2Stores.get`

**GET** `v1/{+name}`

Gets the specified HL7v2 store.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the HL7v2 store to get. |

**Response**: `Hl7V2Store`

```typescript
const res = await healthcare.hl7V2Stores.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.hl7V2Stores.create`

**POST** `v1/{+parent}/hl7V2Stores`

Creates a new HL7v2 store within the parent dataset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the dataset this HL7v2 store belongs to. |
| `hl7V2StoreId` | `string` | query | No | Required. The ID of the HL7v2 store that is being created. The string must match the following regex: `[\p{L}\p{N}_\-... |

**Request body**: `Hl7V2Store`

**Response**: `Hl7V2Store`

```typescript
const res = await healthcare.hl7V2Stores.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.hl7V2Stores.list`

**GET** `v1/{+parent}/hl7V2Stores`

Lists the HL7v2 stores in the given dataset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the dataset. |
| `filter` | `string` | query | No | Restricts stores returned to those matching a filter. The following syntax is available: * A string field value can b... |
| `pageSize` | `integer` | query | No | Limit on the number of HL7v2 stores to return in a single response. If not specified, 100 is used. May not be larger ... |
| `pageToken` | `string` | query | No | The next_page_token value returned from the previous List request, if any. |

**Response**: `ListHl7V2StoresResponse`

```typescript
const res = await healthcare.hl7V2Stores.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.hl7V2Stores.import`

**POST** `v1/{+name}:import`

Import messages to the HL7v2 store by loading data from the specified sources. This method is optimized to load large quantities of data using import semantics that ignore some HL7v2 store configuration options and are not suitable for all use cases. It is primarily intended to load data into an empty HL7v2 store that is not being used by other clients. An existing message will be overwritten if a duplicate message is imported. A duplicate message is a message with the same raw bytes as a message that already exists in this HL7v2 store. When a message is overwritten, its labels will also be overwritten. The import operation is idempotent unless the input data contains multiple valid messages with the same raw bytes but different labels. In that case, after the import completes, the store contains exactly one message with those raw bytes but there is no ordering guarantee on which version of the labels it has. The operation result counters do not count duplicated raw bytes as an error and count one success for each message in the input, which might result in a success count larger than the number of messages in the HL7v2 store. If some messages fail to import, for example due to parsing errors, successfully imported messages are not rolled back. This method returns an Operation that can be used to track the status of the import by calling GetOperation. Immediate fatal errors appear in the error field, errors are also logged to Cloud Logging (see [Viewing error logs in Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging)). Otherwise, when the operation finishes, a response of type ImportMessagesResponse is returned in the response field. The metadata field type for this operation is OperationMetadata.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the target HL7v2 store, in the format `projects/{project_id}/locations/{location_id}/datasets/{... |

**Request body**: `ImportMessagesRequest`

**Response**: `Operation`

```typescript
const res = await healthcare.hl7V2Stores.import({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.hl7V2Stores.rollback`

**POST** `v1/{+name}:rollback`

Rolls back messages from the HL7v2 store to the specified time. This method returns an Operation that can be used to track the status of the rollback by calling GetOperation. Immediate fatal errors appear in the error field, errors are also logged to Cloud Logging (see [Viewing error logs in Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging)). Otherwise, when the operation finishes, a detailed response of type RollbackHl7V2MessagesResponse is returned in the response field. The metadata field type for this operation is OperationMetadata.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the HL7v2 store to rollback, in the format of "projects/{project_id}/locations/{location_id}/da... |

**Request body**: `RollbackHl7V2MessagesRequest`

**Response**: `Operation`

```typescript
const res = await healthcare.hl7V2Stores.rollback({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.hl7V2Stores.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await healthcare.hl7V2Stores.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.hl7V2Stores.patch`

**PATCH** `v1/{+name}`

Updates the HL7v2 store.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Resource name of the HL7v2 store, of the form `projects/{project_id}/locations/{location_id}/datasets/{da... |
| `updateMask` | `string` | query | No | Required. The update mask applies to the resource. For the `FieldMask` definition, see https://developers.google.com/... |

**Request body**: `Hl7V2Store`

**Response**: `Hl7V2Store`

```typescript
const res = await healthcare.hl7V2Stores.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.hl7V2Stores.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await healthcare.hl7V2Stores.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.hl7V2Stores.getHL7v2StoreMetrics`

**GET** `v1/{+name}:getHL7v2StoreMetrics`

Gets metrics associated with the HL7v2 store.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the HL7v2 store to get metrics for, in the format `projects/{project_id}/locations/{lo... |

**Response**: `Hl7V2StoreMetrics`

```typescript
const res = await healthcare.hl7V2Stores.getHL7v2StoreMetrics({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.hl7V2Stores.delete`

**DELETE** `v1/{+name}`

Deletes the specified HL7v2 store and removes all messages that it contains.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the HL7v2 store to delete. |

**Response**: `Empty`

```typescript
const res = await healthcare.hl7V2Stores.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.hl7V2Stores.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await healthcare.hl7V2Stores.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.hl7V2Stores.messages.get`

**GET** `v1/{+name}`

Gets an HL7v2 message.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the HL7v2 message to retrieve. |
| `view` | `string` | query | No | Specifies which parts of the Message resource to return in the response. When unspecified, equivalent to FULL. |

**Response**: `Message`

```typescript
const res = await healthcare.messages.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.hl7V2Stores.messages.delete`

**DELETE** `v1/{+name}`

Deletes an HL7v2 message.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the HL7v2 message to delete. |

**Response**: `Empty`

```typescript
const res = await healthcare.messages.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.hl7V2Stores.messages.list`

**GET** `v1/{+parent}/messages`

Lists all the messages in the given HL7v2 store with support for filtering. Note: HL7v2 messages are indexed asynchronously, so there might be a slight delay between the time a message is created and when it can be found through a filter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the HL7v2 store to retrieve messages from. |
| `filter` | `string` | query | No | Restricts messages returned to those matching a filter. The following syntax is available: * A string field value can... |
| `orderBy` | `string` | query | No | Orders messages returned by the specified order_by clause. Syntax: https://cloud.google.com/apis/design/design_patter... |
| `pageSize` | `integer` | query | No | Limit on the number of messages to return in a single response. If not specified, 100 is used. May not be larger than... |
| `pageToken` | `string` | query | No | The next_page_token value returned from the previous List request, if any. |
| `view` | `string` | query | No | Specifies the parts of the Message to return in the response. When unspecified, equivalent to BASIC. Setting this to ... |

**Response**: `ListMessagesResponse`

```typescript
const res = await healthcare.messages.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.hl7V2Stores.messages.create`

**POST** `v1/{+parent}/messages`

Parses and stores an HL7v2 message. This method triggers an asynchronous notification to any Pub/Sub topic configured in Hl7V2Store.Hl7V2NotificationConfig, if the filtering matches the message. If an MLLP adapter is configured to listen to a Pub/Sub topic, the adapter transmits the message when a notification is received.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the HL7v2 store this message belongs to. |

**Request body**: `CreateMessageRequest`

**Response**: `Message`

```typescript
const res = await healthcare.messages.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.hl7V2Stores.messages.patch`

**PATCH** `v1/{+name}`

Update the message. The contents of the message in Message.data and data extracted from the contents such as Message.create_time cannot be altered. Only the Message.labels field is allowed to be updated. The labels in the request are merged with the existing set of labels. Existing labels with the same keys are updated.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Resource name of the Message, of the form `projects/{project_id}/locations/{location_id}/datasets/{datas... |
| `updateMask` | `string` | query | No | Required. The update mask applies to the resource. For the `FieldMask` definition, see https://developers.google.com/... |

**Request body**: `Message`

**Response**: `Message`

```typescript
const res = await healthcare.messages.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.hl7V2Stores.messages.ingest`

**POST** `v1/{+parent}/messages:ingest`

Parses and stores an HL7v2 message. This method triggers an asynchronous notification to any Pub/Sub topic configured in Hl7V2Store.Hl7V2NotificationConfig, if the filtering matches the message. If an MLLP adapter is configured to listen to a Pub/Sub topic, the adapter transmits the message when a notification is received. If the method is successful, it generates a response containing an HL7v2 acknowledgment (`ACK`) message. If the method encounters an error, it returns a negative acknowledgment (`NACK`) message. This behavior is suitable for replying to HL7v2 interface systems that expect these acknowledgments.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the HL7v2 store this message belongs to. |

**Request body**: `IngestMessageRequest`

**Response**: `IngestMessageResponse`

```typescript
const res = await healthcare.messages.ingest({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.consentStores.queryAccessibleData`

**POST** `v1/{+consentStore}:queryAccessibleData`

Queries all data_ids that are consented for a specified use in the given consent store and writes them to a specified destination. The returned Operation includes a progress counter for the number of User data mappings processed. If the request is successful, a detailed response is returned of type QueryAccessibleDataResponse, contained in the response field when the operation finishes. The metadata field type is OperationMetadata. Errors are logged to Cloud Logging (see [Viewing error logs in Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging)). For example, the following sample log entry shows a `failed to evaluate consent policy` error that occurred during a QueryAccessibleData call to consent store `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}`. ```json jsonPayload: { @type: "type.googleapis.com/google.cloud.healthcare.logging.QueryAccessibleDataLogEntry" error: { code: 9 message: "failed to evaluate consent policy" } resourceName: "projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consents/{consent_id}" } logName: "projects/{project_id}/logs/healthcare.googleapis.com%2Fquery_accessible_data" operation: { id: "projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/operations/{operation_id}" producer: "healthcare.googleapis.com/QueryAccessibleData" } receiveTimestamp: "TIMESTAMP" resource: { labels: { consent_store_id: "{consent_store_id}" dataset_id: "{dataset_id}" location: "{location_id}" project_id: "{project_id}" } type: "healthcare_consent_store" } severity: "ERROR" timestamp: "TIMESTAMP" ```

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `consentStore` | `string` | path | Yes | Required. Name of the consent store to retrieve User data mappings from. |

**Request body**: `QueryAccessibleDataRequest`

**Response**: `Operation`

```typescript
const res = await healthcare.consentStores.queryAccessibleData({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.consentStores.delete`

**DELETE** `v1/{+name}`

Deletes the specified consent store and removes all the consent store's data.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the consent store to delete. |

**Response**: `Empty`

```typescript
const res = await healthcare.consentStores.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.consentStores.list`

**GET** `v1/{+parent}/consentStores`

Lists the consent stores in the specified dataset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the dataset. |
| `filter` | `string` | query | No | Optional. Restricts the stores returned to those matching a filter. Only filtering on labels is supported. For exampl... |
| `pageSize` | `integer` | query | No | Optional. Limit on the number of consent stores to return in a single response. If not specified, 100 is used. May no... |
| `pageToken` | `string` | query | No | Optional. Token to retrieve the next page of results, or empty to get the first page. |

**Response**: `ListConsentStoresResponse`

```typescript
const res = await healthcare.consentStores.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.consentStores.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await healthcare.consentStores.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.consentStores.patch`

**PATCH** `v1/{+name}`

Updates the specified consent store.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Resource name of the consent store, of the form `projects/{project_id}/locations/{location_id}/datasets/{... |
| `updateMask` | `string` | query | No | Required. The update mask that applies to the resource. For the `FieldMask` definition, see https://developers.google... |

**Request body**: `ConsentStore`

**Response**: `ConsentStore`

```typescript
const res = await healthcare.consentStores.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.consentStores.evaluateUserConsents`

**POST** `v1/{+consentStore}:evaluateUserConsents`

Evaluates the user's Consents for all matching User data mappings. Note: User data mappings are indexed asynchronously, which can cause a slight delay between the time mappings are created or updated and when they are included in EvaluateUserConsents results.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `consentStore` | `string` | path | Yes | Required. Name of the consent store to retrieve User data mappings from. |

**Request body**: `EvaluateUserConsentsRequest`

**Response**: `EvaluateUserConsentsResponse`

```typescript
const res = await healthcare.consentStores.evaluateUserConsents({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.consentStores.get`

**GET** `v1/{+name}`

Gets the specified consent store.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the consent store to get. |

**Response**: `ConsentStore`

```typescript
const res = await healthcare.consentStores.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.consentStores.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await healthcare.consentStores.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.consentStores.checkDataAccess`

**POST** `v1/{+consentStore}:checkDataAccess`

Checks if a particular data_id of a User data mapping in the specified consent store is consented for the specified use.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `consentStore` | `string` | path | Yes | Required. Name of the consent store where the requested data_id is stored, of the form `projects/{project_id}/locatio... |

**Request body**: `CheckDataAccessRequest`

**Response**: `CheckDataAccessResponse`

```typescript
const res = await healthcare.consentStores.checkDataAccess({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.consentStores.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await healthcare.consentStores.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.consentStores.create`

**POST** `v1/{+parent}/consentStores`

Creates a new consent store in the parent dataset. Attempting to create a consent store with the same ID as an existing store fails with an ALREADY_EXISTS error.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the dataset this consent store belongs to. |
| `consentStoreId` | `string` | query | No | Required. The ID of the consent store to create. The string must match the following regex: `[\p{L}\p{N}_\-\.]{1,256}... |

**Request body**: `ConsentStore`

**Response**: `ConsentStore`

```typescript
const res = await healthcare.consentStores.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.consentStores.attributeDefinitions.list`

**GET** `v1/{+parent}/attributeDefinitions`

Lists the Attribute definitions in the specified consent store.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the consent store to retrieve Attribute definitions from. |
| `filter` | `string` | query | No | Optional. Restricts the attributes returned to those matching a filter. The only field available for filtering is `ca... |
| `pageSize` | `integer` | query | No | Optional. Limit on the number of Attribute definitions to return in a single response. If not specified, 100 is used.... |
| `pageToken` | `string` | query | No | Optional. Token to retrieve the next page of results or empty to get the first page. |

**Response**: `ListAttributeDefinitionsResponse`

```typescript
const res = await healthcare.attributeDefinitions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.consentStores.attributeDefinitions.delete`

**DELETE** `v1/{+name}`

Deletes the specified Attribute definition. Fails if the Attribute definition is referenced by any User data mapping, or the latest revision of any Consent.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Attribute definition to delete. To preserve referential integrity, Attribute defin... |

**Response**: `Empty`

```typescript
const res = await healthcare.attributeDefinitions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.consentStores.attributeDefinitions.patch`

**PATCH** `v1/{+name}`

Updates the specified Attribute definition.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Resource name of the Attribute definition, of the form `projects/{project_id}/locations/{location_id}/dat... |
| `updateMask` | `string` | query | No | Required. The update mask that applies to the resource. For the `FieldMask` definition, see https://developers.google... |

**Request body**: `AttributeDefinition`

**Response**: `AttributeDefinition`

```typescript
const res = await healthcare.attributeDefinitions.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.consentStores.attributeDefinitions.create`

**POST** `v1/{+parent}/attributeDefinitions`

Creates a new Attribute definition in the parent consent store.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the consent store that this Attribute definition belongs to. |
| `attributeDefinitionId` | `string` | query | No | Required. The ID of the Attribute definition to create. The string must match the following regex: `_a-zA-Z{0,255}` a... |

**Request body**: `AttributeDefinition`

**Response**: `AttributeDefinition`

```typescript
const res = await healthcare.attributeDefinitions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.consentStores.attributeDefinitions.get`

**GET** `v1/{+name}`

Gets the specified Attribute definition.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Attribute definition to get. |

**Response**: `AttributeDefinition`

```typescript
const res = await healthcare.attributeDefinitions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.consentStores.userDataMappings.delete`

**DELETE** `v1/{+name}`

Deletes the specified User data mapping.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the User data mapping to delete. |

**Response**: `Empty`

```typescript
const res = await healthcare.userDataMappings.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.consentStores.userDataMappings.list`

**GET** `v1/{+parent}/userDataMappings`

Lists the User data mappings in the specified consent store.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the consent store to retrieve User data mappings from. |
| `filter` | `string` | query | No | Optional. Restricts the User data mappings returned to those matching a filter. The following syntax is available: * ... |
| `pageSize` | `integer` | query | No | Optional. Limit on the number of User data mappings to return in a single response. If not specified, 100 is used. Ma... |
| `pageToken` | `string` | query | No | Optional. Token to retrieve the next page of results, or empty to get the first page. |

**Response**: `ListUserDataMappingsResponse`

```typescript
const res = await healthcare.userDataMappings.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.consentStores.userDataMappings.archive`

**POST** `v1/{+name}:archive`

Archives the specified User data mapping.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the User data mapping to archive. |

**Request body**: `ArchiveUserDataMappingRequest`

**Response**: `ArchiveUserDataMappingResponse`

```typescript
const res = await healthcare.userDataMappings.archive({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.consentStores.userDataMappings.patch`

**PATCH** `v1/{+name}`

Updates the specified User data mapping.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name of the User data mapping, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_... |
| `updateMask` | `string` | query | No | Required. The update mask that applies to the resource. For the `FieldMask` definition, see https://developers.google... |

**Request body**: `UserDataMapping`

**Response**: `UserDataMapping`

```typescript
const res = await healthcare.userDataMappings.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.consentStores.userDataMappings.create`

**POST** `v1/{+parent}/userDataMappings`

Creates a new User data mapping in the parent consent store.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the consent store. |

**Request body**: `UserDataMapping`

**Response**: `UserDataMapping`

```typescript
const res = await healthcare.userDataMappings.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.consentStores.userDataMappings.get`

**GET** `v1/{+name}`

Gets the specified User data mapping.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the User data mapping to retrieve. |

**Response**: `UserDataMapping`

```typescript
const res = await healthcare.userDataMappings.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.consentStores.consents.deleteRevision`

**DELETE** `v1/{+name}:deleteRevision`

Deletes the specified revision of a Consent. An INVALID_ARGUMENT error occurs if the specified revision is the latest revision.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Consent revision to delete, of the form `projects/{project_id}/locations/{location... |

**Response**: `Empty`

```typescript
const res = await healthcare.consents.deleteRevision({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.consentStores.consents.get`

**GET** `v1/{+name}`

Gets the specified revision of a Consent, or the latest revision if `revision_id` is not specified in the resource name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Consent to retrieve, of the form `projects/{project_id}/locations/{location_id}/da... |

**Response**: `Consent`

```typescript
const res = await healthcare.consents.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.consentStores.consents.list`

**GET** `v1/{+parent}/consents`

Lists the Consent in the given consent store, returning each Consent's latest revision.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the consent store to retrieve Consents from. |
| `filter` | `string` | query | No | Optional. Restricts the Consents returned to those matching a filter. The following syntax is available: * A string f... |
| `pageSize` | `integer` | query | No | Optional. Limit on the number of Consents to return in a single response. If not specified, 100 is used. May not be l... |
| `pageToken` | `string` | query | No | Optional. The next_page_token value returned from the previous List request, if any. |

**Response**: `ListConsentsResponse`

```typescript
const res = await healthcare.consents.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.consentStores.consents.reject`

**POST** `v1/{+name}:reject`

Rejects the latest revision of the specified Consent by committing a new revision with `state` updated to `REJECTED`. If the latest revision of the specified Consent is in the `REJECTED` state, no new revision is committed. A FAILED_PRECONDITION error occurs if the latest revision of the specified Consent is in the `ACTIVE` or `REVOKED` state.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Consent to reject, of the form `projects/{project_id}/locations/{location_id}/data... |

**Request body**: `RejectConsentRequest`

**Response**: `Consent`

```typescript
const res = await healthcare.consents.reject({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.consentStores.consents.create`

**POST** `v1/{+parent}/consents`

Creates a new Consent in the parent consent store.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the consent store. |

**Request body**: `Consent`

**Response**: `Consent`

```typescript
const res = await healthcare.consents.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.consentStores.consents.delete`

**DELETE** `v1/{+name}`

Deletes the Consent and its revisions. To keep a record of the Consent but mark it inactive, see [RevokeConsent]. To delete a revision of a Consent, see [DeleteConsentRevision]. This operation does not delete the related Consent artifact.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Consent to delete, of the form `projects/{project_id}/locations/{location_id}/data... |

**Response**: `Empty`

```typescript
const res = await healthcare.consents.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.consentStores.consents.patch`

**PATCH** `v1/{+name}`

Updates the latest revision of the specified Consent by committing a new revision with the changes. A FAILED_PRECONDITION error occurs if the latest revision of the specified Consent is in the `REJECTED` or `REVOKED` state.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Resource name of the Consent, of the form `projects/{project_id}/locations/{location_id}/datasets/{datase... |
| `updateMask` | `string` | query | No | Required. The update mask to apply to the resource. For the `FieldMask` definition, see https://developers.google.com... |

**Request body**: `Consent`

**Response**: `Consent`

```typescript
const res = await healthcare.consents.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.consentStores.consents.activate`

**POST** `v1/{+name}:activate`

Activates the latest revision of the specified Consent by committing a new revision with `state` updated to `ACTIVE`. If the latest revision of the specified Consent is in the `ACTIVE` state, no new revision is committed. A FAILED_PRECONDITION error occurs if the latest revision of the specified Consent is in the `REJECTED` or `REVOKED` state.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Consent to activate, of the form `projects/{project_id}/locations/{location_id}/da... |

**Request body**: `ActivateConsentRequest`

**Response**: `Consent`

```typescript
const res = await healthcare.consents.activate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.consentStores.consents.revoke`

**POST** `v1/{+name}:revoke`

Revokes the latest revision of the specified Consent by committing a new revision with `state` updated to `REVOKED`. If the latest revision of the specified Consent is in the `REVOKED` state, no new revision is committed. A FAILED_PRECONDITION error occurs if the latest revision of the given consent is in `DRAFT` or `REJECTED` state.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Consent to revoke, of the form `projects/{project_id}/locations/{location_id}/data... |

**Request body**: `RevokeConsentRequest`

**Response**: `Consent`

```typescript
const res = await healthcare.consents.revoke({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.consentStores.consents.listRevisions`

**GET** `v1/{+name}:listRevisions`

Lists the revisions of the specified Consent in reverse chronological order.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Consent to retrieve revisions for. |
| `filter` | `string` | query | No | Optional. Restricts the revisions returned to those matching a filter. The following syntax is available: * A string ... |
| `pageSize` | `integer` | query | No | Optional. Limit on the number of revisions to return in a single response. If not specified, 100 is used. May not be ... |
| `pageToken` | `string` | query | No | Optional. Token to retrieve the next page of results or empty if there are no more results in the list. |

**Response**: `ListConsentRevisionsResponse`

```typescript
const res = await healthcare.consents.listRevisions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.consentStores.consentArtifacts.delete`

**DELETE** `v1/{+name}`

Deletes the specified Consent artifact. Fails if the artifact is referenced by the latest revision of any Consent.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Consent artifact to delete. To preserve referential integrity, Consent artifacts r... |

**Response**: `Empty`

```typescript
const res = await healthcare.consentArtifacts.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.consentStores.consentArtifacts.get`

**GET** `v1/{+name}`

Gets the specified Consent artifact.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Consent artifact to retrieve. |

**Response**: `ConsentArtifact`

```typescript
const res = await healthcare.consentArtifacts.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.consentStores.consentArtifacts.list`

**GET** `v1/{+parent}/consentArtifacts`

Lists the Consent artifacts in the specified consent store.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the consent store to retrieve consent artifacts from. |
| `filter` | `string` | query | No | Optional. Restricts the artifacts returned to those matching a filter. The following syntax is available: * A string ... |
| `pageSize` | `integer` | query | No | Optional. Limit on the number of consent artifacts to return in a single response. If not specified, 100 is used. May... |
| `pageToken` | `string` | query | No | Optional. The next_page_token value returned from the previous List request, if any. |

**Response**: `ListConsentArtifactsResponse`

```typescript
const res = await healthcare.consentArtifacts.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.consentStores.consentArtifacts.create`

**POST** `v1/{+parent}/consentArtifacts`

Creates a new Consent artifact in the parent consent store.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the consent store this Consent artifact belongs to. |

**Request body**: `ConsentArtifact`

**Response**: `ConsentArtifact`

```typescript
const res = await healthcare.consentArtifacts.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await healthcare.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.operations.list`

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
const res = await healthcare.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await healthcare.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.fhirStores.import`

**POST** `v1/{+name}:import`

Imports resources to the FHIR store by loading data from the specified sources. This method is optimized to load large quantities of data using import semantics that ignore some FHIR store configuration options and are not suitable for all use cases. It is primarily intended to load data into an empty FHIR store that is not being used by other clients. In cases where this method is not appropriate, consider using ExecuteBundle to load data. Every resource in the input must contain a client-supplied ID. Each resource is stored using the supplied ID regardless of the enable_update_create setting on the FHIR store. It is strongly advised not to include or encode any sensitive data such as patient identifiers in client-specified resource IDs. Those IDs are part of the FHIR resource path recorded in Cloud Audit Logs and Cloud Pub/Sub notifications. Those IDs can also be contained in reference fields within other resources. The import process does not enforce referential integrity, regardless of the disable_referential_integrity setting on the FHIR store. This allows the import of resources with arbitrary interdependencies without considering grouping or ordering, but if the input data contains invalid references or if some resources fail to be imported, the FHIR store might be left in a state that violates referential integrity. The import process does not trigger Pub/Sub notification or BigQuery streaming update, regardless of how those are configured on the FHIR store. If a resource with the specified ID already exists, the most recent version of the resource is overwritten without creating a new historical version, regardless of the disable_resource_versioning setting on the FHIR store. If transient failures occur during the import, it's possible that successfully imported resources will be overwritten more than once. The import operation is idempotent unless the input data contains multiple valid resources with the same ID but different contents. In that case, after the import completes, the store contains exactly one resource with that ID but there is no ordering guarantee on which version of the contents it will have. The operation result counters do not count duplicate IDs as an error and count one success for each resource in the input, which might result in a success count larger than the number of resources in the FHIR store. This often occurs when importing data organized in bundles produced by Patient-everything where each bundle contains its own copy of a resource such as Practitioner that might be referred to by many patients. If some resources fail to import, for example due to parsing errors, successfully imported resources are not rolled back. The location and format of the input data is specified by the parameters in ImportResourcesRequest. Note that if no format is specified, this method assumes the `BUNDLE` format. When using the `BUNDLE` format this method ignores the `Bundle.type` field, except that `history` bundles are rejected, and does not apply any of the bundle processing semantics for batch or transaction bundles. Unlike in ExecuteBundle, transaction bundles are not executed as a single transaction and bundle-internal references are not rewritten. The bundle is treated as a collection of resources to be written as provided in `Bundle.entry.resource`, ignoring `Bundle.entry.request`. As an example, this allows the import of `searchset` bundles produced by a FHIR search or Patient-everything operation. This method returns an Operation that can be used to track the status of the import by calling GetOperation. Immediate fatal errors appear in the error field, errors are also logged to Cloud Logging (see [Viewing error logs in Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging)). Otherwise, when the operation finishes, a detailed response of type ImportResourcesResponse is returned in the response field. The metadata field type for this operation is OperationMetadata.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the FHIR store to import FHIR resources to, in the format of `projects/{project_id}/locations/{... |

**Request body**: `ImportResourcesRequest`

**Response**: `Operation`

```typescript
const res = await healthcare.fhirStores.import({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.fhirStores.explainDataAccess`

**GET** `v1/{+name}:explainDataAccess`

Explains all the permitted/denied actor, purpose and environment for a given resource. FHIR Consent is not supported in DSTU2 or R5.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the FHIR store to enforce, in the format `projects/{project_id}/locations/{location_id}/dataset... |
| `resourceId` | `string` | query | No | Required. The ID (`{resourceType}/{id}`) of the resource to explain data access on. |

**Response**: `ExplainDataAccessResponse`

```typescript
const res = await healthcare.fhirStores.explainDataAccess({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.fhirStores.export`

**POST** `v1/{+name}:export`

Export resources from the FHIR store to the specified destination. This method returns an Operation that can be used to track the status of the export by calling GetOperation. To improve performance, it is recommended to make the `type` filter as specific as possible, including only the resource types that are absolutely needed. This minimizes the size of the initial dataset to be processed and is the most effective way to improve performance. While post-filters like `_since` are useful for refining results, they do not speed up the initial data retrieval phase, which is primarily governed by the `type` filter. Immediate fatal errors appear in the error field, errors are also logged to Cloud Logging (see [Viewing error logs in Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging)). Otherwise, when the operation finishes, a detailed response of type ExportResourcesResponse is returned in the response field. The metadata field type for this operation is OperationMetadata.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the FHIR store to export resource from, in the format of `projects/{project_id}/locations/{loca... |

**Request body**: `ExportResourcesRequest`

**Response**: `Operation`

```typescript
const res = await healthcare.fhirStores.export({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.fhirStores.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await healthcare.fhirStores.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.fhirStores.create`

**POST** `v1/{+parent}/fhirStores`

Creates a new FHIR store within the parent dataset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the dataset this FHIR store belongs to. |
| `fhirStoreId` | `string` | query | No | Required. The ID of the FHIR store that is being created. The string must match the following regex: `[\p{L}\p{N}_\-\... |

**Request body**: `FhirStore`

**Response**: `FhirStore`

```typescript
const res = await healthcare.fhirStores.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.fhirStores.list`

**GET** `v1/{+parent}/fhirStores`

Lists the FHIR stores in the given dataset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the dataset. |
| `filter` | `string` | query | No | Restricts stores returned to those matching a filter. The following syntax is available: * A string field value can b... |
| `pageSize` | `integer` | query | No | Limit on the number of FHIR stores to return in a single response. If not specified, 100 is used. May not be larger t... |
| `pageToken` | `string` | query | No | The next_page_token value returned from the previous List request, if any. |

**Response**: `ListFhirStoresResponse`

```typescript
const res = await healthcare.fhirStores.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.fhirStores.applyAdminConsents`

**POST** `v1/{+name}:applyAdminConsents`

Applies the admin Consent resources for the FHIR store and reindexes the underlying resources in the FHIR store according to the aggregate consents. This method also updates the `consent_config.enforced_admin_consents` field of the FhirStore unless `validate_only=true` in ApplyAdminConsentsRequest. Any admin Consent resource change after this operation execution (including deletion) requires you to call ApplyAdminConsents again for the change to take effect. This method returns an Operation that can be used to track the progress of the resources that were reindexed, by calling GetOperation. Upon completion, the ApplyAdminConsentsResponse additionally contains the number of resources that were reindexed. If at least one Consent resource contains an error or fails be be enforced for any reason, the method returns an error instead of an Operation. No resources will be reindexed and the `consent_config.enforced_admin_consents` field will be unchanged. To enforce a consent check for data access, `consent_config.access_enforced` must be set to true for the FhirStore. FHIR Consent is not supported in DSTU2 or R5.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the FHIR store to enforce, in the format `projects/{project_id}/locations/{location_id}/dataset... |

**Request body**: `ApplyAdminConsentsRequest`

**Response**: `Operation`

```typescript
const res = await healthcare.fhirStores.applyAdminConsents({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.fhirStores.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await healthcare.fhirStores.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.fhirStores.delete`

**DELETE** `v1/{+name}`

Deletes the specified FHIR store and removes all resources within it.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the FHIR store to delete. |

**Response**: `Empty`

```typescript
const res = await healthcare.fhirStores.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.fhirStores.applyConsents`

**POST** `v1/{+name}:applyConsents`

Apply the Consent resources for the FHIR store and reindex the underlying resources in the FHIR store according to the aggregate consent. The aggregate consent of the patient in scope in this request replaces any previous call of this method. Any Consent resource change after this operation execution (including deletion) requires you to call ApplyConsents again to have effect. This method returns an Operation that can be used to track the progress of the consent resources that were processed by calling GetOperation. Upon completion, the ApplyConsentsResponse additionally contains the number of resources that was reindexed. Errors are logged to Cloud Logging (see [Viewing error logs in Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging)). To enforce consent check for data access, `consent_config.access_enforced` must be set to true for the FhirStore. FHIR Consent is not supported in DSTU2 or R5.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the FHIR store to enforce, in the format `projects/{project_id}/locations/{location_id}/dataset... |

**Request body**: `ApplyConsentsRequest`

**Response**: `Operation`

```typescript
const res = await healthcare.fhirStores.applyConsents({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.fhirStores.deidentify`

**POST** `v1/{+sourceStore}:deidentify`

De-identifies data from the source store and writes it to the destination store. The metadata field type is OperationMetadata. If the request is successful, the response field type is DeidentifyFhirStoreSummary. If errors occur, error is set. Error details are also logged to Cloud Logging (see [Viewing error logs in Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging)).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `sourceStore` | `string` | path | Yes | Required. Source FHIR store resource name. For example, `projects/{project_id}/locations/{location_id}/datasets/{data... |

**Request body**: `DeidentifyFhirStoreRequest`

**Response**: `Operation`

```typescript
const res = await healthcare.fhirStores.deidentify({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.fhirStores.bulk-export-group`

**GET** `v1/{+name}/$export`

Bulk exports a Group resource and resources in the member field, including related resources for each Patient member. The export for each Patient is identical to a GetPatientEverything request. Implements the FHIR implementation guide [$export group of patients](https://build.fhir.org/ig/HL7/bulk-data/export.html#endpoint---group-of-patients). The following headers must be set in the request: * `Accept`: specifies the format of the `OperationOutcome` response. Only `application/fhir+json` is supported. * `Prefer`: specifies whether the response is immediate or asynchronous. Must be to `respond-async` because only asynchronous responses are supported. Specify the destination for the server to write result files by setting the Cloud Storage location bulk_export_gcs_destination on the FHIR store. URI of an existing Cloud Storage directory where the server writes result files, in the format gs://{bucket-id}/{path/to/destination/dir}. If there is no trailing slash, the service appends one when composing the object path. The user is responsible for creating the Cloud Storage bucket referenced. Supports the following query parameters: * `_type`: string of comma-delimited FHIR resource types. If provided, only resources of the specified type(s) are exported. * `_since`: if provided, only resources updated after the specified time are exported. * `_outputFormat`: optional, specify ndjson to export data in NDJSON format. Exported file names use the format: {export_id}_{resource_type}.ndjson. * `organizeOutputBy`: resource type to organize the output by. Required and must be set to `Patient`. When specified, output files are organized by instances of the specified resource type, including the resource, referenced resources, and resources that contain references to that resource. On success, the `Content-Location` header of response is set to a URL that you can use to query the status of the export. The URL is in the format `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}/operations/{export_id}`. See get-fhir-operation-status for more information. Errors generated by the FHIR store contain a JSON-encoded `OperationOutcome` resource describing the reason for the error.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the Group resource that is exported, in format `projects/{project_id}/locations/{location_id}/datas... |
| `_since` | `string` | query | No | Optional. If provided, only resources updated after this time are exported. The time uses the format YYYY-MM-DDThh:mm... |
| `_type` | `string` | query | No | Optional. String of comma-delimited FHIR resource types. If provided, only resources of the specified resource type(s... |
| `organizeOutputBy` | `string` | query | No | Required. The FHIR resource type used to organize exported resources. Only supports "Patient". When organized by Pati... |
| `outputFormat` | `string` | query | No | Optional. Output format of the export. This field is optional and only `application/fhir+ndjson` is supported. |

**Response**: `HttpBody`

```typescript
const res = await healthcare.fhirStores.bulk-export-group({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.fhirStores.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await healthcare.fhirStores.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.fhirStores.getFHIRStoreMetrics`

**GET** `v1/{+name}:getFHIRStoreMetrics`

Gets metrics associated with the FHIR store.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the FHIR store to get metrics for. |

**Response**: `FhirStoreMetrics`

```typescript
const res = await healthcare.fhirStores.getFHIRStoreMetrics({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.fhirStores.patch`

**PATCH** `v1/{+name}`

Updates the configuration of the specified FHIR store.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Identifier. Resource name of the FHIR store, of the form `projects/{project_id}/locations/{location}/dat... |
| `updateMask` | `string` | query | No | Required. The update mask applies to the resource. For the `FieldMask` definition, see https://developers.google.com/... |

**Request body**: `FhirStore`

**Response**: `FhirStore`

```typescript
const res = await healthcare.fhirStores.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.fhirStores.bulkDelete`

**POST** `v1/{+name}:bulkDelete`

Bulk deletes the FHIR resources from the given FHIR store. This method returns an Operation that can be used to track the progress of the deletion by calling GetOperation. The success and secondary_success counters correspond to the deleted current version and historical versions, respectively.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the FHIR store to bulk delete resources from, in the format of `projects/{project_id}/locations... |

**Request body**: `BulkDeleteResourcesRequest`

**Response**: `Operation`

```typescript
const res = await healthcare.fhirStores.bulkDelete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.fhirStores.get`

**GET** `v1/{+name}`

Gets the configuration of the specified FHIR store.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the FHIR store to get. |

**Response**: `FhirStore`

```typescript
const res = await healthcare.fhirStores.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.fhirStores.rollback`

**POST** `v1/{+name}:rollback`

Rolls back resources from the FHIR store to the specified time. This method returns an Operation that can be used to track the status of the rollback by calling GetOperation. Immediate fatal errors appear in the error field, errors are also logged to Cloud Logging (see [Viewing error logs in Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging)). Otherwise, when the operation finishes, a detailed response of type RollbackFhirResourcesResponse is returned in the response field. The metadata field type for this operation is OperationMetadata.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the FHIR store to rollback, in the format of "projects/{project_id}/locations/{location_id}/dat... |

**Request body**: `RollbackFhirResourcesRequest`

**Response**: `Operation`

```typescript
const res = await healthcare.fhirStores.rollback({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.fhirStores.operations.delete-fhir-operation`

**DELETE** `v1/{+name}`

Deletes operations as defined in the FHIR specification. Implements the FHIR implementation guide [bulk data delete request](https://build.fhir.org/ig/HL7/bulk-data/export.html#bulk-data-delete-request). Returns success if the operation was successfully cancelled. If the operation is complete, or has already been cancelled, returns an error response.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the operation to be deleted, in the format `projects/{project_id}/locations/{location_id}/datasets/... |

**Response**: `HttpBody`

```typescript
const res = await healthcare.operations.delete-fhir-operation({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.fhirStores.operations.get-fhir-operation-status`

**GET** `v1/{+name}`

Gets the status of operations as defined in the FHIR specification. Implements the FHIR implementation guide [bulk data status request](https://build.fhir.org/ig/HL7/bulk-data/export.html#bulk-data-status-request). Operations can have one of these states: * in-progress: response status code is `202` and `X-Progress` header is set to `in progress`. * complete: response status code is `200` and the body is a JSON-encoded operation response as defined by the spec. For a bulk export, this response is defined in https://build.fhir.org/ig/HL7/bulk-data/export.html#response---complete-status. * error: response status code is `5XX`, and the body is a JSON-encoded `OperationOutcome` resource describing the reason for the error.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the operation to query, in the format `projects/{project_id}/locations/{location_id}/datasets/{data... |

**Response**: `HttpBody`

```typescript
const res = await healthcare.operations.get-fhir-operation-status({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.fhirStores.fhir.Binary-read`

**GET** `v1/{+name}`

Gets the contents of a FHIR Binary resource. This method can be used to retrieve a Binary resource either by using the FHIR JSON mimetype as the value for the Accept header, or as a raw data stream. If the FHIR Accept type is used this method will return a Binary resource with the data base64-encoded, regardless of how the resource was created. The resource data can be retrieved in base64-decoded form if the Accept type of the request matches the value of the resource's `contentType` field. The definition of the Binary REST API can be found at https://hl7.org/fhir/binary.html#rest.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Binary resource to retrieve. |

**Response**: `HttpBody`

```typescript
const res = await healthcare.fhir.Binary-read({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.fhirStores.fhir.search-type`

**POST** `v1/{+parent}/fhir/{resourceType}/_search`

Searches for resources in the given FHIR store according to criteria specified as query parameters. Implements the FHIR standard search interaction ([DSTU2](https://hl7.org/fhir/DSTU2/http.html#search), [STU3](https://hl7.org/fhir/STU3/http.html#search), [R4](https://hl7.org/fhir/R4/http.html#search), [R5](https://hl7.org/fhir/R5/http.html#search)) using the search semantics described in the FHIR Search specification ([DSTU2](https://hl7.org/fhir/DSTU2/search.html), [STU3](https://hl7.org/fhir/STU3/search.html), [R4](https://hl7.org/fhir/R4/search.html), [R5](https://hl7.org/fhir/R5/search.html)). Supports four methods of search defined by the specification: * `GET [base]?[parameters]` to search across all resources. * `GET [base]/[type]?[parameters]` to search resources of a specified type. * `POST [base]/_search?[parameters]` as an alternate form having the same semantics as the `GET` method across all resources. * `POST [base]/[type]/_search?[parameters]` as an alternate form having the same semantics as the `GET` method for the specified type. The `GET` and `POST` methods do not support compartment searches. The `POST` method does not support `application/x-www-form-urlencoded` search parameters. On success, the response body contains a JSON-encoded representation of a `Bundle` resource of type `searchset`, containing the results of the search. Errors generated by the FHIR store contain a JSON-encoded `OperationOutcome` resource describing the reason for the error. If the request cannot be mapped to a valid API method on a FHIR store, a generic GCP error might be returned instead. The server's capability statement, retrieved through capabilities, indicates what search parameters are supported on each FHIR resource. A list of all search parameters defined by the specification can be found in the FHIR Search Parameter Registry ([STU3](https://hl7.org/fhir/STU3/searchparameter-registry.html), [R4](https://hl7.org/fhir/R4/searchparameter-registry.html), [R5](https://hl7.org/fhir/R5/searchparameter-registry.html)). FHIR search parameters for DSTU2 can be found on each resource's definition page. Supported search modifiers: `:missing`, `:exact`, `:contains`, `:text`, `:in`, `:not-in`, `:above`, `:below`, `:[type]`, `:not`, and `recurse` (DSTU2 and STU3) or `:iterate` (R4 and R5). Supported search result parameters: `_sort`, `_count`, `_include`, `_revinclude`, `_summary=text`, `_summary=data`, and `_elements`. The maximum number of search results returned defaults to 100, which can be overridden by the `_count` parameter up to a maximum limit of 1000. The server might return fewer resources than requested to prevent excessively large responses. If there are additional results, the returned `Bundle` contains a link of `relation` "next", which has a `_page_token` parameter for an opaque pagination token that can be used to retrieve the next page. Resources with a total size larger than 5MB or a field count larger than 50,000 might not be fully searchable as the server might trim its generated search index in those cases. Note: FHIR resources are indexed asynchronously, so there might be a slight delay between the time a resource is created or changed, and the time when the change reflects in search results. The only exception is resource identifier data, which is indexed synchronously as a special index. As a result, searching using resource identifier is not subject to indexing delay. To use the special synchronous index, the search term for identifier should be in the pattern `identifier=[system]|[value]` or `identifier=[value]`, and any of the following search result parameters can be used: * `_count` * `_include` * `_revinclude` * `_summary` * `_elements` If your query contains any other search parameters, the standard asynchronous index will be used instead. Note that searching against the special index is optimized for resolving a small number of matches. The search isn't optimized if your identifier search criteria matches a large number (i.e. more than 2,000) of resources. For a search query that will match a large number of resources, you can avoiding using the special synchronous index by including an additional `_sort` parameter in your query. Use `_sort=-_lastUpdated` if you want to keep the default sorting order. For samples and detailed information, see [Searching for FHIR resources](https://cloud.google.com/healthcare/docs/how-tos/fhir-search) and [Advanced FHIR search features](https://cloud.google.com/healthcare/docs/how-tos/fhir-advanced-search).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the FHIR store to retrieve resources from. |
| `resourceType` | `string` | path | Yes | Optional. The FHIR resource type to search, such as Patient or Observation. For a complete list, see the FHIR Resourc... |

**Request body**: `HttpBody`

**Response**: `HttpBody`

```typescript
const res = await healthcare.fhir.search-type({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.fhirStores.fhir.Patient-consent-enforcement-status`

**GET** `v1/{+name}/$consent-enforcement-status`

Returns the consent enforcement status of all consent resources for a patient. On success, the response body contains a JSON-encoded representation of a bundle of `Parameters` (http://hl7.org/fhir/parameters.html) FHIR resources, containing the current enforcement status for each consent resource of the patient. Does not support DSTU2.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the patient to find enforcement statuses, in the format `projects/{project_id}/locations/{locat... |
| `_count` | `integer` | query | No | Optional. The maximum number of results on a page. If not specified, 100 is used. May not be larger than 1000. |
| `_page_token` | `string` | query | No | Optional. Used to retrieve the first, previous, next, or last page of consent enforcement statuses when using paginat... |

**Response**: `HttpBody`

```typescript
const res = await healthcare.fhir.Patient-consent-enforcement-status({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.fhirStores.fhir.Binary-update`

**PUT** `v1/{+name}`

Updates the entire contents of a Binary resource. If the specified resource does not exist and the FHIR store has enable_update_create set, creates the resource with the client-specified ID. It is strongly advised not to include or encode any sensitive data such as patient identifiers in client-specified resource IDs. Those IDs are part of the FHIR resource path recorded in Cloud Audit Logs and Pub/Sub notifications. Those IDs can also be contained in reference fields within other resources. This method can be used to update a Binary resource either by using one of the accepted FHIR JSON content types, or as a raw data stream. If a resource is updated with this method using the FHIR content type this method's behavior is the same as `update`. If a resource type other than Binary is used in the request it will be treated in the same way as non-FHIR data. When a non-FHIR content type is used in the request, a Binary resource will be generated using the ID from the resource path, and the uploaded data will be stored in the `content` field (`DSTU2` and `STU3`), or the `data` field (`R4` and `R5`). The Binary resource's `contentType` will be filled in using the value of the `Content-Type` header, and the `securityContext` field (not present in `DSTU2`) will be populated from the `X-Security-Context` header if it exists. At this time `securityContext` has no special behavior in the Cloud Healthcare API. Note: the limit on data ingested through this method is 2 GB. For best performance, use a non-FHIR data type instead of wrapping the data in a Binary resource. Some of the Healthcare API features, such as [exporting to BigQuery](https://cloud.google.com/healthcare-api/docs/how-tos/fhir-export-bigquery) or [Pub/Sub notifications](https://cloud.google.com/healthcare-api/docs/fhir-pubsub#behavior_when_a_fhir_resource_is_too_large_or_traffic_is_high) with full resource content, do not support Binary resources that are larger than 10 MB. In these cases the resource's `data` field will be omitted. Instead, the "http://hl7.org/fhir/StructureDefinition/data-absent-reason" extension will be present to indicate that including the data is `unsupported`. On success, an empty 200 OK response will be returned, or a 201 Created if the resource did not exit. The resource's ID and version are returned in the Location header. Using `Prefer: representation=resource` is not allowed for this method. The definition of the Binary REST API can be found at https://hl7.org/fhir/binary.html#rest.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the resource to update. |

**Request body**: `HttpBody`

**Response**: `HttpBody`

```typescript
const res = await healthcare.fhir.Binary-update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.fhirStores.fhir.patch`

**PATCH** `v1/{+name}`

Updates part of an existing resource by applying the operations specified in a [JSON Patch](http://jsonpatch.com/) document. Implements the FHIR standard patch interaction ([STU3](https://hl7.org/fhir/STU3/http.html#patch), [R4](https://hl7.org/fhir/R4/http.html#patch), [R5](https://hl7.org/fhir/R5/http.html#patch)). DSTU2 doesn't define a patch method, but the server supports it in the same way it supports STU3. The request body must contain a JSON Patch document, and the request headers must contain `Content-Type: application/json-patch+json`. On success, the response body contains a JSON-encoded representation of the updated resource, including the server-assigned version ID. Errors generated by the FHIR store contain a JSON-encoded `OperationOutcome` resource describing the reason for the error. If the request cannot be mapped to a valid API method on a FHIR store, a generic GCP error might be returned instead. For samples that show how to call `patch`, see [Patching a FHIR resource](https://cloud.google.com/healthcare/docs/how-tos/fhir-resources#patching_a_fhir_resource).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the resource to update. |

**Request body**: `HttpBody`

**Response**: `HttpBody`

```typescript
const res = await healthcare.fhir.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.fhirStores.fhir.search`

**POST** `v1/{+parent}/fhir/_search`

Searches for resources in the given FHIR store according to criteria specified as query parameters. Implements the FHIR standard search interaction ([DSTU2](https://hl7.org/fhir/DSTU2/http.html#search), [STU3](https://hl7.org/fhir/STU3/http.html#search), [R4](https://hl7.org/fhir/R4/http.html#search), [R5](https://hl7.org/fhir/R5/http.html#search)) using the search semantics described in the FHIR Search specification ([DSTU2](https://hl7.org/fhir/DSTU2/search.html), [STU3](https://hl7.org/fhir/STU3/search.html), [R4](https://hl7.org/fhir/R4/search.html), [R5](https://hl7.org/fhir/R5/search.html)). Supports four methods of search defined by the specification: * `GET [base]?[parameters]` to search across all resources. * `GET [base]/[type]?[parameters]` to search resources of a specified type. * `POST [base]/_search?[parameters]` as an alternate form having the same semantics as the `GET` method across all resources. * `POST [base]/[type]/_search?[parameters]` as an alternate form having the same semantics as the `GET` method for the specified type. The `GET` and `POST` methods do not support compartment searches. The `POST` method does not support `application/x-www-form-urlencoded` search parameters. On success, the response body contains a JSON-encoded representation of a `Bundle` resource of type `searchset`, containing the results of the search. Errors generated by the FHIR store contain a JSON-encoded `OperationOutcome` resource describing the reason for the error. If the request cannot be mapped to a valid API method on a FHIR store, a generic GCP error might be returned instead. The server's capability statement, retrieved through capabilities, indicates what search parameters are supported on each FHIR resource. A list of all search parameters defined by the specification can be found in the FHIR Search Parameter Registry ([STU3](https://hl7.org/fhir/STU3/searchparameter-registry.html), [R4](https://hl7.org/fhir/R4/searchparameter-registry.html), [R5](https://hl7.org/fhir/R5/searchparameter-registry.html)). FHIR search parameters for DSTU2 can be found on each resource's definition page. Supported search modifiers: `:missing`, `:exact`, `:contains`, `:text`, `:in`, `:not-in`, `:above`, `:below`, `:[type]`, `:not`, and `recurse` (DSTU2 and STU3) or `:iterate` (R4 and R5). Supported search result parameters: `_sort`, `_count`, `_include`, `_revinclude`, `_summary=text`, `_summary=data`, and `_elements`. The maximum number of search results returned defaults to 100, which can be overridden by the `_count` parameter up to a maximum limit of 1000. The server might return fewer resources than requested to prevent excessively large responses. If there are additional results, the returned `Bundle` contains a link of `relation` "next", which has a `_page_token` parameter for an opaque pagination token that can be used to retrieve the next page. Resources with a total size larger than 5MB or a field count larger than 50,000 might not be fully searchable as the server might trim its generated search index in those cases. Note: FHIR resources are indexed asynchronously, so there might be a slight delay between the time a resource is created or changed, and the time when the change reflects in search results. The only exception is resource identifier data, which is indexed synchronously as a special index. As a result, searching using resource identifier is not subject to indexing delay. To use the special synchronous index, the search term for identifier should be in the pattern `identifier=[system]|[value]` or `identifier=[value]`, and any of the following search result parameters can be used: * `_count` * `_include` * `_revinclude` * `_summary` * `_elements` If your query contains any other search parameters, the standard asynchronous index will be used instead. Note that searching against the special index is optimized for resolving a small number of matches. The search isn't optimized if your identifier search criteria matches a large number (i.e. more than 2,000) of resources. For a search query that will match a large number of resources, you can avoiding using the special synchronous index by including an additional `_sort` parameter in your query. Use `_sort=-_lastUpdated` if you want to keep the default sorting order. For samples and detailed information, see [Searching for FHIR resources](https://cloud.google.com/healthcare/docs/how-tos/fhir-search) and [Advanced FHIR search features](https://cloud.google.com/healthcare/docs/how-tos/fhir-advanced-search).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the FHIR store to retrieve resources from. |
| `resourceType` | `string` | query | No | Optional. The FHIR resource type to search, such as Patient or Observation. For a complete list, see the FHIR Resourc... |

**Request body**: `HttpBody`

**Response**: `HttpBody`

```typescript
const res = await healthcare.fhir.search({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.fhirStores.fhir.conditionalDelete`

**DELETE** `v1/{+parent}/fhir/{+type}`

Deletes a FHIR resource that match an identifier search query. Implements the FHIR standard conditional delete interaction, limited to searching by resource identifier. If multiple resources match, 412 Precondition Failed error will be returned. Search term for identifier should be in the pattern `identifier=system|value` or `identifier=value` - similar to the `search` method on resources with a specific identifier. Note: Unless resource versioning is disabled by setting the disable_resource_versioning flag on the FHIR store, the deleted resource is moved to a history repository that can still be retrieved through vread and related methods, unless they are removed by the purge method. For samples that show how to call `conditionalDelete`, see [Conditionally deleting a FHIR resource](https://cloud.google.com/healthcare/docs/how-tos/fhir-resources#conditionally_deleting_a_fhir_resource).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the FHIR store this resource belongs to. |
| `type` | `string` | path | Yes | Required. The FHIR resource type to delete, such as Patient or Observation. For a complete list, see the FHIR Resourc... |

**Response**: `Empty`

```typescript
const res = await healthcare.fhir.conditionalDelete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.fhirStores.fhir.create`

**POST** `v1/{+parent}/fhir/{+type}`

Creates a FHIR resource. Implements the FHIR standard create interaction ([DSTU2](https://hl7.org/fhir/DSTU2/http.html#create), [STU3](https://hl7.org/fhir/STU3/http.html#create), [R4](https://hl7.org/fhir/R4/http.html#create), [R5](https://hl7.org/fhir/R5/http.html#create)), which creates a new resource with a server-assigned resource ID. Also supports the FHIR standard conditional create interaction ([DSTU2](https://hl7.org/fhir/DSTU2/http.html#ccreate), [STU3](https://hl7.org/fhir/STU3/http.html#ccreate), [R4](https://hl7.org/fhir/R4/http.html#ccreate), [R5](https://hl7.org/fhir/R5/http.html#ccreate)), specified by supplying an `If-None-Exist` header containing a FHIR search query, limited to searching by resource identifier. If no resources match this search query, the server processes the create operation as normal. When using conditional create, the search term for identifier should be in the pattern `identifier=system|value` or `identifier=value` - similar to the `search` method on resources with a specific identifier. The request body must contain a JSON-encoded FHIR resource, and the request headers must contain `Content-Type: application/fhir+json`. On success, the response body contains a JSON-encoded representation of the resource as it was created on the server, including the server-assigned resource ID and version ID. Errors generated by the FHIR store contain a JSON-encoded `OperationOutcome` resource describing the reason for the error. If the request cannot be mapped to a valid API method on a FHIR store, a generic GCP error might be returned instead. For samples that show how to call `create`, see [Creating a FHIR resource](https://cloud.google.com/healthcare/docs/how-tos/fhir-resources#creating_a_fhir_resource).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the FHIR store this resource belongs to. |
| `type` | `string` | path | Yes | Required. The FHIR resource type to create, such as Patient or Observation. For a complete list, see the FHIR Resourc... |

**Request body**: `HttpBody`

**Response**: `HttpBody`

```typescript
const res = await healthcare.fhir.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.fhirStores.fhir.capabilities`

**GET** `v1/{+name}/fhir/metadata`

Gets the FHIR capability statement ([STU3](https://hl7.org/fhir/STU3/capabilitystatement.html), [R4](https://hl7.org/fhir/R4/capabilitystatement.html), [R5](https://hl7.org/fhir/R5/capabilitystatement.html)), or the [conformance statement](https://hl7.org/fhir/DSTU2/conformance.html) in the DSTU2 case for the store, which contains a description of functionality supported by the server. Implements the FHIR standard capabilities interaction ([STU3](https://hl7.org/fhir/STU3/http.html#capabilities), [R4](https://hl7.org/fhir/R4/http.html#capabilities), [R5](https://hl7.org/fhir/R5/http.html#capabilities)), or the [conformance interaction](https://hl7.org/fhir/DSTU2/http.html#conformance) in the DSTU2 case. On success, the response body contains a JSON-encoded representation of a `CapabilityStatement` resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the FHIR store to retrieve the capabilities for. |

**Response**: `HttpBody`

```typescript
const res = await healthcare.fhir.capabilities({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.fhirStores.fhir.conditionalPatch`

**PATCH** `v1/{+parent}/fhir/{+type}`

If a resource is found with the identifier specified in the query parameters, updates part of that resource by applying the operations specified in a [JSON Patch](http://jsonpatch.com/) document. Implements the FHIR standard conditional patch interaction, limited to searching by resource identifier. DSTU2 doesn't define a conditional patch method, but the server supports it in the same way it supports STU3. Search term for identifier should be in the pattern `identifier=system|value` or `identifier=value` - similar to the `search` method on resources with a specific identifier. If the search criteria identify more than one match, the request returns a `412 Precondition Failed` error. If the search criteria doesn't identify any matches, the request returns a `404 Not Found` error. The request body must contain a JSON Patch document, and the request headers must contain `Content-Type: application/json-patch+json`. On success, the response body contains a JSON-encoded representation of the updated resource, including the server-assigned version ID. Errors generated by the FHIR store contain a JSON-encoded `OperationOutcome` resource describing the reason for the error. If the request cannot be mapped to a valid API method on a FHIR store, a generic GCP error might be returned instead. For samples that show how to call `conditionalPatch`, see [Conditionally patching a FHIR resource](https://cloud.google.com/healthcare/docs/how-tos/fhir-resources#conditionally_patching_a_fhir_resource).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the FHIR store this resource belongs to. |
| `type` | `string` | path | Yes | Required. The FHIR resource type to update, such as Patient or Observation. For a complete list, see the FHIR Resourc... |

**Request body**: `HttpBody`

**Response**: `HttpBody`

```typescript
const res = await healthcare.fhir.conditionalPatch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.fhirStores.fhir.update`

**PUT** `v1/{+name}`

Updates the entire contents of a resource. Implements the FHIR standard update interaction ([DSTU2](https://hl7.org/fhir/DSTU2/http.html#update), [STU3](https://hl7.org/fhir/STU3/http.html#update), [R4](https://hl7.org/fhir/R4/http.html#update), [R5](https://hl7.org/fhir/R5/http.html#update)). If the specified resource does not exist and the FHIR store has enable_update_create set, creates the resource with the client-specified ID. It is strongly advised not to include or encode any sensitive data such as patient identifiers in client-specified resource IDs. Those IDs are part of the FHIR resource path recorded in Cloud Audit Logs and Pub/Sub notifications. Those IDs can also be contained in reference fields within other resources. The request body must contain a JSON-encoded FHIR resource, and the request headers must contain `Content-Type: application/fhir+json`. The resource must contain an `id` element having an identical value to the ID in the REST path of the request. On success, the response body contains a JSON-encoded representation of the updated resource, including the server-assigned version ID. Errors generated by the FHIR store contain a JSON-encoded `OperationOutcome` resource describing the reason for the error. If the request cannot be mapped to a valid API method on a FHIR store, a generic GCP error might be returned instead. The conditional update interaction If-None-Match is supported, including the wildcard behaviour, as defined by the R5 spec. This functionality is supported in R4 and R5. For samples that show how to call `update`, see [Updating a FHIR resource](https://cloud.google.com/healthcare/docs/how-tos/fhir-resources#updating_a_fhir_resource).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the resource to update. |

**Request body**: `HttpBody`

**Response**: `HttpBody`

```typescript
const res = await healthcare.fhir.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.fhirStores.fhir.Resource-purge`

**DELETE** `v1/{+name}/$purge`

Deletes all the historical versions of a resource (excluding the current version) from the FHIR store. To remove all versions of a resource, first delete the current version and then call this method. This is not a FHIR standard operation. For samples that show how to call `Resource-purge`, see [Deleting historical versions of a FHIR resource](https://cloud.google.com/healthcare/docs/how-tos/fhir-resources#deleting_historical_versions_of_a_fhir_resource).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the resource to purge. |

**Response**: `Empty`

```typescript
const res = await healthcare.fhir.Resource-purge({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.fhirStores.fhir.vread`

**GET** `v1/{+name}`

Gets the contents of a version (current or historical) of a FHIR resource by version ID. Implements the FHIR standard vread interaction ([DSTU2](https://hl7.org/fhir/DSTU2/http.html#vread), [STU3](https://hl7.org/fhir/STU3/http.html#vread), [R4](https://hl7.org/fhir/R4/http.html#vread), [R5](https://hl7.org/fhir/R5/http.html#vread)). On success, the response body contains a JSON-encoded representation of the resource. Errors generated by the FHIR store contain a JSON-encoded `OperationOutcome` resource describing the reason for the error. If the request cannot be mapped to a valid API method on a FHIR store, a generic GCP error might be returned instead. For samples that show how to call `vread`, see [Retrieving a FHIR resource version](https://cloud.google.com/healthcare/docs/how-tos/fhir-resources#retrieving_a_fhir_resource_version).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the resource version to retrieve. |

**Response**: `HttpBody`

```typescript
const res = await healthcare.fhir.vread({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.fhirStores.fhir.executeBundle`

**POST** `v1/{+parent}/fhir`

Executes all the requests in the given Bundle. Implements the FHIR standard batch/transaction interaction ([DSTU2](https://hl7.org/fhir/DSTU2/http.html#transaction), [STU3](https://hl7.org/fhir/STU3/http.html#transaction), [R4](https://hl7.org/fhir/R4/http.html#transaction), [R5](https://hl7.org/fhir/R5/http.html#transaction)). Supports all interactions within a bundle, except search. This method accepts Bundles of type `batch` and `transaction`, processing them according to the batch processing rules ([DSTU2](https://hl7.org/fhir/DSTU2/http.html#2.1.0.16.1), [STU3](https://hl7.org/fhir/STU3/http.html#2.21.0.17.1), [R4](https://hl7.org/fhir/R4/http.html#brules), [R5](https://hl7.org/fhir/R5/http.html#brules)) and transaction processing rules ([DSTU2](https://hl7.org/fhir/DSTU2/http.html#2.1.0.16.2), [STU3](https://hl7.org/fhir/STU3/http.html#2.21.0.17.2), [R4](https://hl7.org/fhir/R4/http.html#trules), [R5](https://hl7.org/fhir/R5/http.html#trules)). The request body must contain a JSON-encoded FHIR `Bundle` resource, and the request headers must contain `Content-Type: application/fhir+json`. For a batch bundle or a successful transaction, the response body contains a JSON-encoded representation of a `Bundle` resource of type `batch-response` or `transaction-response` containing one entry for each entry in the request, with the outcome of processing the entry. In the case of an error for a transaction bundle, the response body contains a JSON-encoded `OperationOutcome` resource describing the reason for the error. If the request cannot be mapped to a valid API method on a FHIR store, a generic GCP error might be returned instead. This method checks permissions for each request in the bundle. The `executeBundle` permission is required to call this method, but you must also grant sufficient permissions to execute the individual requests in the bundle. For example, if the bundle contains a request to create a FHIR resource, the caller must also have been granted the `healthcare.fhirResources.create` permission. You can use audit logs to view the permissions for `executeBundle` and each request in the bundle. For more information, see [Viewing Cloud Audit logs](https://cloud.google.com/healthcare-api/docs/how-tos/audit-logging). For samples that show how to call `executeBundle`, see [Managing FHIR resources using FHIR bundles](https://cloud.google.com/healthcare/docs/how-tos/fhir-bundles).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the FHIR store in which this bundle will be executed. |

**Request body**: `HttpBody`

**Response**: `HttpBody`

```typescript
const res = await healthcare.fhir.executeBundle({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.fhirStores.fhir.Patient-everything`

**GET** `v1/{+name}/$everything`

Retrieves a Patient resource and resources related to that patient. Implements the FHIR extended operation Patient-everything ([DSTU2](https://hl7.org/fhir/DSTU2/patient-operations.html#everything), [STU3](https://hl7.org/fhir/STU3/patient-operations.html#everything), [R4](https://hl7.org/fhir/R4/patient-operation-everything.html), [R5](https://hl7.org/fhir/R5/patient-operation-everything.html)). On success, the response body contains a JSON-encoded representation of a `Bundle` resource of type `searchset`, containing the results of the operation. Errors generated by the FHIR store contain a JSON-encoded `OperationOutcome` resource describing the reason for the error. If the request cannot be mapped to a valid API method on a FHIR store, a generic GCP error might be returned instead. The resources in scope for the response are: * The patient resource itself. * All the resources directly referenced by the patient resource. * Resources directly referencing the patient resource that meet the inclusion criteria. The inclusion criteria are based on the membership rules in the patient compartment definition ([DSTU2](http://hl7.org/fhir/DSTU2/compartment-patient.html), [STU3](http://www.hl7.org/fhir/stu3/compartmentdefinition-patient.html), [R4](http://hl7.org/fhir/R4/compartmentdefinition-patient.html), [R5](http://hl7.org/fhir/R5/compartmentdefinition-patient.html)), which details the eligible resource types and referencing search parameters. For samples that show how to call `Patient-everything`, see [Getting all patient compartment resources](https://cloud.google.com/healthcare/docs/how-tos/fhir-resources#getting_all_patient_compartment_resources).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the `Patient` resource for which the information is required. |
| `_count` | `integer` | query | No | Optional. Maximum number of resources in a page. If not specified, 100 is used. May not be larger than 1000. |
| `_page_token` | `string` | query | No | Used to retrieve the next or previous page of results when using pagination. Set `_page_token` to the value of _page_... |
| `_since` | `string` | query | No | Optional. If provided, only resources updated after this time are returned. The time uses the format YYYY-MM-DDThh:mm... |
| `_type` | `string` | query | No | Optional. String of comma-delimited FHIR resource types. If provided, only resources of the specified resource type(s... |
| `end` | `string` | query | No | Optional. The response includes records prior to the end date. The date uses the format YYYY-MM-DD. If no end date is... |
| `start` | `string` | query | No | Optional. The response includes records subsequent to the start date. The date uses the format YYYY-MM-DD. If no star... |

**Response**: `HttpBody`

```typescript
const res = await healthcare.fhir.Patient-everything({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.fhirStores.fhir.bulk-export`

**GET** `v1/{+name}/fhir/$export`

Bulk exports all resources from the FHIR store to the specified destination. Implements the FHIR implementation guide [system level $export](https://build.fhir.org/ig/HL7/bulk-data/export.html#endpoint---system-level-export). The following headers must be set in the request: * `Accept`: specifies the format of the `OperationOutcome` response. Only `application/fhir+json` is supported. * `Prefer`: specifies whether the response is immediate or asynchronous. Must be to `respond-async` because only asynchronous responses are supported. Specify the destination for the server to write result files by setting the Cloud Storage location bulk_export_gcs_destination on the FHIR store. URI of an existing Cloud Storage directory where the server writes result files, in the format gs://{bucket-id}/{path/to/destination/dir}. If there is no trailing slash, the service appends one when composing the object path. The user is responsible for creating the Cloud Storage bucket referenced. Supports the following query parameters: * `_type`: string of comma-delimited FHIR resource types. If provided, only the resources of the specified type(s) are exported. * `_since`: if provided, only the resources that are updated after the specified time are exported. * `_outputFormat`: optional, specify ndjson to export data in NDJSON format. Exported file names use the format: {export_id}_{resource_type}.ndjson. On success, the `Content-Location` header of the response is set to a URL that the user can use to query the status of the export. The URL is in the format: `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}/operations/{export_id}`. See get-fhir-operation-status for more information. Errors generated by the FHIR store contain a JSON-encoded `OperationOutcome` resource describing the reason for the error.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the FHIR store to export resources from, in the format `projects/{project_id}/locations/{locati... |
| `_since` | `string` | query | No | Optional. If provided, only resources updated after this time are exported. The time uses the format YYYY-MM-DDThh:mm... |
| `_type` | `string` | query | No | Optional. String of comma-delimited FHIR resource types. If provided, only resources of the specified resource type(s... |
| `outputFormat` | `string` | query | No | Optional. Output format of the export. This field is optional and only `application/fhir+ndjson` is supported. |

**Response**: `HttpBody`

```typescript
const res = await healthcare.fhir.bulk-export({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.fhirStores.fhir.read`

**GET** `v1/{+name}`

Gets the contents of a FHIR resource. Implements the FHIR standard read interaction ([DSTU2](https://hl7.org/fhir/DSTU2/http.html#read), [STU3](https://hl7.org/fhir/STU3/http.html#read), [R4](https://hl7.org/fhir/R4/http.html#read), [R5](https://hl7.org/fhir/R5/http.html#read)). Also supports the FHIR standard conditional read interaction ([DSTU2](https://hl7.org/fhir/DSTU2/http.html#cread), [STU3](https://hl7.org/fhir/STU3/http.html#cread), [R4](https://hl7.org/fhir/R4/http.html#cread), [R5](https://hl7.org/fhir/R5/http.html#cread)) specified by supplying an `If-Modified-Since` header with a date/time value or an `If-None-Match` header with an ETag value. On success, the response body contains a JSON-encoded representation of the resource. Errors generated by the FHIR store contain a JSON-encoded `OperationOutcome` resource describing the reason for the error. If the request cannot be mapped to a valid API method on a FHIR store, a generic GCP error might be returned instead. For samples that show how to call `read`, see [Getting a FHIR resource](https://cloud.google.com/healthcare/docs/how-tos/fhir-resources#getting_a_fhir_resource).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the resource to retrieve. |

**Response**: `HttpBody`

```typescript
const res = await healthcare.fhir.read({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.fhirStores.fhir.Consent-enforcement-status`

**GET** `v1/{+name}/$consent-enforcement-status`

Returns the consent enforcement status of a single consent resource. On success, the response body contains a JSON-encoded representation of a `Parameters` (http://hl7.org/fhir/parameters.html) FHIR resource, containing the current enforcement status. Does not support DSTU2.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the consent resource to find enforcement status, in the format `projects/{project_id}/locations... |

**Response**: `HttpBody`

```typescript
const res = await healthcare.fhir.Consent-enforcement-status({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.fhirStores.fhir.history`

**GET** `v1/{+name}/_history`

Lists all the versions of a resource (including the current version and deleted versions) from the FHIR store. Implements the per-resource form of the FHIR standard history interaction ([DSTU2](https://hl7.org/fhir/DSTU2/http.html#history), [STU3](https://hl7.org/fhir/STU3/http.html#history), [R4](https://hl7.org/fhir/R4/http.html#history), [R5](https://hl7.org/fhir/R5/http.html#history)). On success, the response body contains a JSON-encoded representation of a `Bundle` resource of type `history`, containing the version history sorted from most recent to oldest versions. Errors generated by the FHIR store contain a JSON-encoded `OperationOutcome` resource describing the reason for the error. If the request cannot be mapped to a valid API method on a FHIR store, a generic GCP error might be returned instead. For samples that show how to call `history`, see [Listing FHIR resource versions](https://cloud.google.com/healthcare/docs/how-tos/fhir-resources#listing_fhir_resource_versions).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the resource to retrieve. |
| `_at` | `string` | query | No | Only include resource versions that were current at some point during the time period specified in the date time valu... |
| `_count` | `integer` | query | No | The maximum number of search results on a page. If not specified, 100 is used. May not be larger than 1000. |
| `_page_token` | `string` | query | No | Used to retrieve the first, previous, next, or last page of resource versions when using pagination. Value should be ... |
| `_since` | `string` | query | No | Only include resource versions that were created at or after the given instant in time. The instant in time uses the ... |

**Response**: `HttpBody`

```typescript
const res = await healthcare.fhir.history({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.fhirStores.fhir.delete`

**DELETE** `v1/{+name}`

Deletes a FHIR resource. Implements the FHIR standard delete interaction ([DSTU2](https://hl7.org/fhir/DSTU2/http.html#delete), [STU3](https://hl7.org/fhir/STU3/http.html#delete), [R4](https://hl7.org/fhir/R4/http.html#delete), [R5](https://hl7.org/fhir/R5/http.html#delete)). Note: Unless resource versioning is disabled by setting the disable_resource_versioning flag on the FHIR store, the deleted resources will be moved to a history repository that can still be retrieved through vread and related methods, unless they are removed by the purge method. For samples that show how to call `delete`, see [Deleting a FHIR resource](https://cloud.google.com/healthcare/docs/how-tos/fhir-resources#deleting_a_fhir_resource).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the resource to delete. |

**Response**: `HttpBody`

```typescript
const res = await healthcare.fhir.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.fhirStores.fhir.Binary-vread`

**GET** `v1/{+name}`

Gets the contents of a version (current or historical) of a FHIR Binary resource by version ID. This method can be used to retrieve a Binary resource version either by using the FHIR JSON mimetype as the value for the Accept header, or as a raw data stream. If the FHIR Accept type is used this method will return a Binary resource with the data base64-encoded, regardless of how the resource version was created. The resource data can be retrieved in base64-decoded form if the Accept type of the request matches the value of the resource version's `contentType` field. The definition of the Binary REST API can be found at https://hl7.org/fhir/binary.html#rest.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Binary resource version to retrieve. |

**Response**: `HttpBody`

```typescript
const res = await healthcare.fhir.Binary-vread({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.fhirStores.fhir.Binary-create`

**POST** `v1/{+parent}/fhir/Binary`

Creates a FHIR Binary resource. This method can be used to create a Binary resource either by using one of the accepted FHIR JSON content types, or as a raw data stream. If a resource is created with this method using the FHIR content type this method's behavior is the same as [`fhir.create`](https://cloud.google.com/healthcare-api/docs/reference/rest/v1/projects.locations.datasets.fhirStores.fhir/create). If a resource type other than Binary is used in the request it's treated in the same way as non-FHIR data (e.g., images, zip archives, pdf files, documents). When a non-FHIR content type is used in the request, a Binary resource will be generated, and the uploaded data will be stored in the `content` field (`DSTU2` and `STU3`), or the `data` field (`R4` and `R5`). The Binary resource's `contentType` will be filled in using the value of the `Content-Type` header, and the `securityContext` field (not present in `DSTU2`) will be populated from the `X-Security-Context` header if it exists. At this time `securityContext` has no special behavior in the Cloud Healthcare API. Note: the limit on data ingested through this method is 1 GB. For best performance, use a non-FHIR data type instead of wrapping the data in a Binary resource. Some of the Healthcare API features, such as [exporting to BigQuery](https://cloud.google.com/healthcare-api/docs/how-tos/fhir-export-bigquery) or [Pub/Sub notifications](https://cloud.google.com/healthcare-api/docs/fhir-pubsub#behavior_when_a_fhir_resource_is_too_large_or_traffic_is_high) with full resource content, do not support Binary resources that are larger than 10 MB. In these cases the resource's `data` field will be omitted. Instead, the "http://hl7.org/fhir/StructureDefinition/data-absent-reason" extension will be present to indicate that including the data is `unsupported`. On success, an empty `201 Created` response is returned. The newly created resource's ID and version are returned in the Location header. Using `Prefer: representation=resource` is not allowed for this method. The definition of the Binary REST API can be found at https://hl7.org/fhir/binary.html#rest.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the FHIR store this resource belongs to. |

**Request body**: `HttpBody`

**Response**: `HttpBody`

```typescript
const res = await healthcare.fhir.Binary-create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.fhirStores.fhir.Resource-validate`

**POST** `v1/{+parent}/fhir/{+type}/$validate`

Validates an input FHIR resource's conformance to its profiles and the profiles configured on the FHIR store. Implements the FHIR extended operation $validate ([DSTU2](https://hl7.org/fhir/DSTU2/resource-operations.html#validate), [STU3](https://hl7.org/fhir/STU3/resource-operations.html#validate), [R4](https://hl7.org/fhir/R4/resource-operation-validate.html). or [R5](https://hl7.org/fhir/R5/resource-operation-validate.html)). The request body must contain a JSON-encoded FHIR resource, and the request headers must contain `Content-Type: application/fhir+json`. The `Parameters` input syntax is not supported. The `profile` query parameter can be used to request that the resource only be validated against a specific profile. If a profile with the given URL cannot be found in the FHIR store then an error is returned. Errors generated by validation contain a JSON-encoded `OperationOutcome` resource describing the reason for the error. If the request cannot be mapped to a valid API method on a FHIR store, a generic GCP error might be returned instead.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the FHIR store that holds the profiles being used for validation. |
| `type` | `string` | path | Yes | Required. The FHIR resource type of the resource being validated. For a complete list, see the FHIR Resource Index ([... |
| `profile` | `string` | query | No | Optional. The canonical URL of a profile that this resource should be validated against. For example, to validate a P... |

**Request body**: `HttpBody`

**Response**: `HttpBody`

```typescript
const res = await healthcare.fhir.Resource-validate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.fhirStores.fhir.conditionalUpdate`

**PUT** `v1/{+parent}/fhir/{+type}`

If a resource is found with the identifier specified in the query parameters, updates the entire contents of that resource. Implements the FHIR standard conditional update interaction, limited to searching by resource identifier. Search term for identifier should be in the pattern `identifier=system|value` or `identifier=value` - similar to the `search` method on resources with a specific identifier. If the search criteria identify more than one match, the request returns a `412 Precondition Failed` error. If the search criteria identify zero matches, and the supplied resource body contains an `id`, and the FHIR store has enable_update_create set, creates the resource with the client-specified ID. It is strongly advised not to include or encode any sensitive data such as patient identifiers in client-specified resource IDs. Those IDs are part of the FHIR resource path recorded in Cloud Audit Logs and Pub/Sub notifications. Those IDs can also be contained in reference fields within other resources. If the search criteria identify zero matches, and the supplied resource body does not contain an `id`, the resource is created with a server-assigned ID as per the create method. The request body must contain a JSON-encoded FHIR resource, and the request headers must contain `Content-Type: application/fhir+json`. On success, the response body contains a JSON-encoded representation of the updated resource, including the server-assigned version ID. Errors generated by the FHIR store contain a JSON-encoded `OperationOutcome` resource describing the reason for the error. If the request cannot be mapped to a valid API method on a FHIR store, a generic GCP error might be returned instead. For samples that show how to call `conditionalUpdate`, see [Conditionally updating a FHIR resource](https://cloud.google.com/healthcare/docs/how-tos/fhir-resources#conditionally_updating_a_fhir_resource).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the FHIR store this resource belongs to. |
| `type` | `string` | path | Yes | Required. The FHIR resource type to update, such as Patient or Observation. For a complete list, see the FHIR Resourc... |

**Request body**: `HttpBody`

**Response**: `HttpBody`

```typescript
const res = await healthcare.fhir.conditionalUpdate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.dataMapperWorkspaces.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await healthcare.dataMapperWorkspaces.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.dataMapperWorkspaces.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await healthcare.dataMapperWorkspaces.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.dataMapperWorkspaces.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await healthcare.dataMapperWorkspaces.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.dicomStores.patch`

**PATCH** `v1/{+name}`

Updates the specified DICOM store.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Resource name of the DICOM store, of the form `projects/{project_id}/locations/{location_id}/datasets/{da... |
| `updateMask` | `string` | query | No | Required. The update mask applies to the resource. For the `FieldMask` definition, see https://developers.google.com/... |

**Request body**: `DicomStore`

**Response**: `DicomStore`

```typescript
const res = await healthcare.dicomStores.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.dicomStores.export`

**POST** `v1/{+name}:export`

Exports data to the specified destination by copying it from the DICOM store. Errors are also logged to Cloud Logging. For more information, see [Viewing error logs in Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging). The metadata field type is OperationMetadata.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The DICOM store resource name from which to export the data. For example, `projects/{project_id}/locations/... |

**Request body**: `ExportDicomDataRequest`

**Response**: `Operation`

```typescript
const res = await healthcare.dicomStores.export({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.dicomStores.storeInstances`

**POST** `v1/{+parent}/dicomWeb/{+dicomWebPath}`

StoreInstances stores DICOM instances associated with study instance unique identifiers (SUID). See [Store Transaction] (https://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.5). For details on the implementation of StoreInstances, see [Store transaction](https://cloud.google.com/healthcare/docs/dicom#store_transaction) in the Cloud Healthcare API conformance statement. For samples that show how to call StoreInstances, see [Store DICOM data](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#store-dicom).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the DICOM store that is being accessed. For example, `projects/{project_id}/locations/{location... |
| `dicomWebPath` | `string` | path | Yes | Required. The path of the StoreInstances DICOMweb request. For example, `studies/[{study_uid}]`. Note that the `study... |

**Request body**: `HttpBody`

**Response**: `HttpBody`

```typescript
const res = await healthcare.dicomStores.storeInstances({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.dicomStores.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await healthcare.dicomStores.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.dicomStores.create`

**POST** `v1/{+parent}/dicomStores`

Creates a new DICOM store within the parent dataset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the dataset this DICOM store belongs to. |
| `dicomStoreId` | `string` | query | No | Required. The ID of the DICOM store that is being created. Any string value up to 256 characters in length. |

**Request body**: `DicomStore`

**Response**: `DicomStore`

```typescript
const res = await healthcare.dicomStores.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.dicomStores.get`

**GET** `v1/{+name}`

Gets the specified DICOM store.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the DICOM store to get. |

**Response**: `DicomStore`

```typescript
const res = await healthcare.dicomStores.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.dicomStores.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await healthcare.dicomStores.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.dicomStores.setBlobStorageSettings`

**POST** `v1/{+resource}:setBlobStorageSettings`

SetBlobStorageSettings sets the blob storage settings of the specified resources.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | Required. The path of the resource to update the blob storage settings in the format of `projects/{projectID}/locatio... |

**Request body**: `SetBlobStorageSettingsRequest`

**Response**: `Operation`

```typescript
const res = await healthcare.dicomStores.setBlobStorageSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.dicomStores.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await healthcare.dicomStores.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.dicomStores.deidentify`

**POST** `v1/{+sourceStore}:deidentify`

De-identifies data from the source store and writes it to the destination store. The metadata field type is OperationMetadata. If the request is successful, the response field type is DeidentifyDicomStoreSummary. If errors occur, error is set. The LRO result may still be successful if de-identification fails for some DICOM instances. The output DICOM store will not contain these failed resources. Failed resource totals are tracked in Operation.metadata. Error details are also logged to Cloud Logging (see [Viewing error logs in Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging)).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `sourceStore` | `string` | path | Yes | Required. Source DICOM store resource name. For example, `projects/{project_id}/locations/{location_id}/datasets/{dat... |

**Request body**: `DeidentifyDicomStoreRequest`

**Response**: `Operation`

```typescript
const res = await healthcare.dicomStores.deidentify({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.dicomStores.searchForStudies`

**GET** `v1/{+parent}/dicomWeb/{+dicomWebPath}`

SearchForStudies returns a list of matching studies. See [Search Transaction] (https://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.6). For details on the implementation of SearchForStudies, see [Search transaction](https://cloud.google.com/healthcare/docs/dicom#search_transaction) in the Cloud Healthcare API conformance statement. For samples that show how to call SearchForStudies, see [Search for DICOM data](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#search-dicom).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the DICOM store that is being accessed. For example, `projects/{project_id}/locations/{location... |
| `dicomWebPath` | `string` | path | Yes | Required. The path of the SearchForStudies DICOMweb request. For example, `studies`. |

**Response**: `HttpBody`

```typescript
const res = await healthcare.dicomStores.searchForStudies({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.dicomStores.getDICOMStoreMetrics`

**GET** `v1/{+name}:getDICOMStoreMetrics`

Gets metrics associated with the DICOM store.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the DICOM store to get metrics for. |

**Response**: `DicomStoreMetrics`

```typescript
const res = await healthcare.dicomStores.getDICOMStoreMetrics({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.dicomStores.import`

**POST** `v1/{+name}:import`

Imports data into the DICOM store by copying it from the specified source. Errors are logged to Cloud Logging. For more information, see [Viewing error logs in Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging). The metadata field type is OperationMetadata.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the DICOM store resource into which the data is imported. For example, `projects/{project_id}/l... |

**Request body**: `ImportDicomDataRequest`

**Response**: `Operation`

```typescript
const res = await healthcare.dicomStores.import({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.dicomStores.searchForInstances`

**GET** `v1/{+parent}/dicomWeb/{+dicomWebPath}`

SearchForInstances returns a list of matching instances. See [Search Transaction] (https://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.6). For details on the implementation of SearchForInstances, see [Search transaction](https://cloud.google.com/healthcare/docs/dicom#search_transaction) in the Cloud Healthcare API conformance statement. For samples that show how to call SearchForInstances, see [Search for DICOM data](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#search-dicom).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the DICOM store that is being accessed. For example, `projects/{project_id}/locations/{location... |
| `dicomWebPath` | `string` | path | Yes | Required. The path of the SearchForInstancesRequest DICOMweb request. For example, `instances`, `studies/{study_uid}/... |

**Response**: `HttpBody`

```typescript
const res = await healthcare.dicomStores.searchForInstances({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.dicomStores.list`

**GET** `v1/{+parent}/dicomStores`

Lists the DICOM stores in the given dataset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the dataset. |
| `filter` | `string` | query | No | Restricts stores returned to those matching a filter. The following syntax is available: * A string field value can b... |
| `pageSize` | `integer` | query | No | Limit on the number of DICOM stores to return in a single response. If not specified, 100 is used. May not be larger ... |
| `pageToken` | `string` | query | No | The next_page_token value returned from the previous List request, if any. |

**Response**: `ListDicomStoresResponse`

```typescript
const res = await healthcare.dicomStores.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.dicomStores.delete`

**DELETE** `v1/{+name}`

Deletes the specified DICOM store and removes all images that are contained within it.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the DICOM store to delete. |

**Response**: `Empty`

```typescript
const res = await healthcare.dicomStores.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.dicomStores.searchForSeries`

**GET** `v1/{+parent}/dicomWeb/{+dicomWebPath}`

SearchForSeries returns a list of matching series. See [Search Transaction] (https://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.6). For details on the implementation of SearchForSeries, see [Search transaction](https://cloud.google.com/healthcare/docs/dicom#search_transaction) in the Cloud Healthcare API conformance statement. For samples that show how to call SearchForSeries, see [Search for DICOM data](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#search-dicom).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the DICOM store that is being accessed. For example, `projects/{project_id}/locations/{location... |
| `dicomWebPath` | `string` | path | Yes | Required. The path of the SearchForSeries DICOMweb request. For example, `series` or `studies/{study_uid}/series`. |

**Response**: `HttpBody`

```typescript
const res = await healthcare.dicomStores.searchForSeries({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.dicomStores.dicomWeb.studies.setBlobStorageSettings`

**POST** `v1/{+resource}:setBlobStorageSettings`

SetBlobStorageSettings sets the blob storage settings of the specified resources.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | Required. The path of the resource to update the blob storage settings in the format of `projects/{projectID}/locatio... |

**Request body**: `SetBlobStorageSettingsRequest`

**Response**: `Operation`

```typescript
const res = await healthcare.studies.setBlobStorageSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.dicomStores.dicomWeb.studies.getStudyMetrics`

**GET** `v1/{+study}:getStudyMetrics`

GetStudyMetrics returns metrics for a study.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `study` | `string` | path | Yes | Required. The study resource path. For example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/... |

**Response**: `StudyMetrics`

```typescript
const res = await healthcare.studies.getStudyMetrics({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.dicomStores.dicomWeb.studies.series.getSeriesMetrics`

**GET** `v1/{+series}:getSeriesMetrics`

GetSeriesMetrics returns metrics for a series.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `series` | `string` | path | Yes | Required. The series resource path. For example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}... |

**Response**: `SeriesMetrics`

```typescript
const res = await healthcare.series.getSeriesMetrics({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.dicomStores.dicomWeb.studies.series.instances.getStorageInfo`

**GET** `v1/{+resource}:getStorageInfo`

GetStorageInfo returns the storage info of the specified resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | Required. The path of the instance to return storage info for, in the form: `projects/{projectID}/locations/{location... |

**Response**: `StorageInfo`

```typescript
const res = await healthcare.instances.getStorageInfo({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.dicomStores.studies.searchForInstances`

**GET** `v1/{+parent}/dicomWeb/{+dicomWebPath}`

SearchForInstances returns a list of matching instances. See [Search Transaction] (https://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.6). For details on the implementation of SearchForInstances, see [Search transaction](https://cloud.google.com/healthcare/docs/dicom#search_transaction) in the Cloud Healthcare API conformance statement. For samples that show how to call SearchForInstances, see [Search for DICOM data](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#search-dicom).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the DICOM store that is being accessed. For example, `projects/{project_id}/locations/{location... |
| `dicomWebPath` | `string` | path | Yes | Required. The path of the SearchForInstancesRequest DICOMweb request. For example, `instances`, `studies/{study_uid}/... |

**Response**: `HttpBody`

```typescript
const res = await healthcare.studies.searchForInstances({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.dicomStores.studies.retrieveMetadata`

**GET** `v1/{+parent}/dicomWeb/{+dicomWebPath}`

RetrieveStudyMetadata returns instance associated with the given study presented as metadata. See [RetrieveTransaction] (https://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4). For details on the implementation of RetrieveStudyMetadata, see [Metadata resources](https://cloud.google.com/healthcare/docs/dicom#metadata_resources) in the Cloud Healthcare API conformance statement. For samples that show how to call RetrieveStudyMetadata, see [Retrieve metadata](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#retrieve-metadata).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the DICOM store that is being accessed. For example, `projects/{project_id}/locations/{location... |
| `dicomWebPath` | `string` | path | Yes | Required. The path of the RetrieveStudyMetadata DICOMweb request. For example, `studies/{study_uid}/metadata`. |

**Response**: `HttpBody`

```typescript
const res = await healthcare.studies.retrieveMetadata({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.dicomStores.studies.retrieveStudy`

**GET** `v1/{+parent}/dicomWeb/{+dicomWebPath}`

RetrieveStudy returns all instances within the given study. See [RetrieveTransaction] (https://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4). For details on the implementation of RetrieveStudy, see [DICOM study/series/instances](https://cloud.google.com/healthcare/docs/dicom#dicom_studyseriesinstances) in the Cloud Healthcare API conformance statement. For samples that show how to call RetrieveStudy, see [Retrieve DICOM data](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#retrieve-dicom).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the DICOM store that is being accessed. For example, `projects/{project_id}/locations/{location... |
| `dicomWebPath` | `string` | path | Yes | Required. The path of the RetrieveStudy DICOMweb request. For example, `studies/{study_uid}`. |

**Response**: `HttpBody`

```typescript
const res = await healthcare.studies.retrieveStudy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.dicomStores.studies.delete`

**DELETE** `v1/{+parent}/dicomWeb/{+dicomWebPath}`

DeleteStudy deletes all instances within the given study. Delete requests are equivalent to the GET requests specified in the Retrieve transaction. The method returns an Operation which will be marked successful when the deletion is complete. Warning: Instances cannot be inserted into a study that is being deleted by an operation until the operation completes. For samples that show how to call DeleteStudy, see [Delete a study, series, or instance](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#delete-dicom).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |
| `dicomWebPath` | `string` | path | Yes | Required. The path of the DeleteStudy request. For example, `studies/{study_uid}`. |

**Response**: `Operation`

```typescript
const res = await healthcare.studies.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.dicomStores.studies.searchForSeries`

**GET** `v1/{+parent}/dicomWeb/{+dicomWebPath}`

SearchForSeries returns a list of matching series. See [Search Transaction] (https://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.6). For details on the implementation of SearchForSeries, see [Search transaction](https://cloud.google.com/healthcare/docs/dicom#search_transaction) in the Cloud Healthcare API conformance statement. For samples that show how to call SearchForSeries, see [Search for DICOM data](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#search-dicom).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the DICOM store that is being accessed. For example, `projects/{project_id}/locations/{location... |
| `dicomWebPath` | `string` | path | Yes | Required. The path of the SearchForSeries DICOMweb request. For example, `series` or `studies/{study_uid}/series`. |

**Response**: `HttpBody`

```typescript
const res = await healthcare.studies.searchForSeries({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.dicomStores.studies.storeInstances`

**POST** `v1/{+parent}/dicomWeb/{+dicomWebPath}`

StoreInstances stores DICOM instances associated with study instance unique identifiers (SUID). See [Store Transaction] (https://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.5). For details on the implementation of StoreInstances, see [Store transaction](https://cloud.google.com/healthcare/docs/dicom#store_transaction) in the Cloud Healthcare API conformance statement. For samples that show how to call StoreInstances, see [Store DICOM data](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#store-dicom).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the DICOM store that is being accessed. For example, `projects/{project_id}/locations/{location... |
| `dicomWebPath` | `string` | path | Yes | Required. The path of the StoreInstances DICOMweb request. For example, `studies/[{study_uid}]`. Note that the `study... |

**Request body**: `HttpBody`

**Response**: `HttpBody`

```typescript
const res = await healthcare.studies.storeInstances({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.dicomStores.studies.series.delete`

**DELETE** `v1/{+parent}/dicomWeb/{+dicomWebPath}`

DeleteSeries deletes all instances within the given study and series. Delete requests are equivalent to the GET requests specified in the Retrieve transaction. The method returns an Operation which will be marked successful when the deletion is complete. Warning: Instances cannot be inserted into a series that is being deleted by an operation until the operation completes. For samples that show how to call DeleteSeries, see [Delete a study, series, or instance](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#delete-dicom).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the DICOM store that is being accessed. For example, `projects/{project_id}/locations/{location... |
| `dicomWebPath` | `string` | path | Yes | Required. The path of the DeleteSeries request. For example, `studies/{study_uid}/series/{series_uid}`. |

**Response**: `Operation`

```typescript
const res = await healthcare.series.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.dicomStores.studies.series.retrieveSeries`

**GET** `v1/{+parent}/dicomWeb/{+dicomWebPath}`

RetrieveSeries returns all instances within the given study and series. See [RetrieveTransaction] (https://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4). For details on the implementation of RetrieveSeries, see [DICOM study/series/instances](https://cloud.google.com/healthcare/docs/dicom#dicom_studyseriesinstances) in the Cloud Healthcare API conformance statement. For samples that show how to call RetrieveSeries, see [Retrieve DICOM data](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#retrieve-dicom).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the DICOM store that is being accessed. For example, `projects/{project_id}/locations/{location... |
| `dicomWebPath` | `string` | path | Yes | Required. The path of the RetrieveSeries DICOMweb request. For example, `studies/{study_uid}/series/{series_uid}`. |

**Response**: `HttpBody`

```typescript
const res = await healthcare.series.retrieveSeries({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.dicomStores.studies.series.retrieveMetadata`

**GET** `v1/{+parent}/dicomWeb/{+dicomWebPath}`

RetrieveSeriesMetadata returns instance associated with the given study and series, presented as metadata. See [RetrieveTransaction] (https://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4). For details on the implementation of RetrieveSeriesMetadata, see [Metadata resources](https://cloud.google.com/healthcare/docs/dicom#metadata_resources) in the Cloud Healthcare API conformance statement. For samples that show how to call RetrieveSeriesMetadata, see [Retrieve metadata](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#retrieve-metadata).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the DICOM store that is being accessed. For example, `projects/{project_id}/locations/{location... |
| `dicomWebPath` | `string` | path | Yes | Required. The path of the RetrieveSeriesMetadata DICOMweb request. For example, `studies/{study_uid}/series/{series_u... |

**Response**: `HttpBody`

```typescript
const res = await healthcare.series.retrieveMetadata({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.dicomStores.studies.series.searchForInstances`

**GET** `v1/{+parent}/dicomWeb/{+dicomWebPath}`

SearchForInstances returns a list of matching instances. See [Search Transaction] (https://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.6). For details on the implementation of SearchForInstances, see [Search transaction](https://cloud.google.com/healthcare/docs/dicom#search_transaction) in the Cloud Healthcare API conformance statement. For samples that show how to call SearchForInstances, see [Search for DICOM data](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#search-dicom).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the DICOM store that is being accessed. For example, `projects/{project_id}/locations/{location... |
| `dicomWebPath` | `string` | path | Yes | Required. The path of the SearchForInstancesRequest DICOMweb request. For example, `instances`, `studies/{study_uid}/... |

**Response**: `HttpBody`

```typescript
const res = await healthcare.series.searchForInstances({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.dicomStores.studies.series.instances.retrieveMetadata`

**GET** `v1/{+parent}/dicomWeb/{+dicomWebPath}`

RetrieveInstanceMetadata returns instance associated with the given study, series, and SOP Instance UID presented as metadata. See [RetrieveTransaction] (https://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4). For details on the implementation of RetrieveInstanceMetadata, see [Metadata resources](https://cloud.google.com/healthcare/docs/dicom#metadata_resources) in the Cloud Healthcare API conformance statement. For samples that show how to call RetrieveInstanceMetadata, see [Retrieve metadata](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#retrieve-metadata).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the DICOM store that is being accessed. For example, `projects/{project_id}/locations/{location... |
| `dicomWebPath` | `string` | path | Yes | Required. The path of the RetrieveInstanceMetadata DICOMweb request. For example, `studies/{study_uid}/series/{series... |

**Response**: `HttpBody`

```typescript
const res = await healthcare.instances.retrieveMetadata({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.dicomStores.studies.series.instances.retrieveRendered`

**GET** `v1/{+parent}/dicomWeb/{+dicomWebPath}`

RetrieveRenderedInstance returns instance associated with the given study, series, and SOP Instance UID in an acceptable Rendered Media Type. See [RetrieveTransaction] (https://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4). For details on the implementation of RetrieveRenderedInstance, see [Rendered resources](https://cloud.google.com/healthcare/docs/dicom#rendered_resources) in the Cloud Healthcare API conformance statement. For samples that show how to call RetrieveRenderedInstance, see [Retrieve consumer image formats](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#retrieve-consumer).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the DICOM store that is being accessed. For example, `projects/{project_id}/locations/{location... |
| `dicomWebPath` | `string` | path | Yes | Required. The path of the RetrieveRenderedInstance DICOMweb request. For example, `studies/{study_uid}/series/{series... |
| `viewport` | `string` | query | No | Optional. The viewport setting to use as specified in https://dicom.nema.org/medical/dicom/current/output/chtml/part1... |

**Response**: `HttpBody`

```typescript
const res = await healthcare.instances.retrieveRendered({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.dicomStores.studies.series.instances.delete`

**DELETE** `v1/{+parent}/dicomWeb/{+dicomWebPath}`

DeleteInstance deletes an instance associated with the given study, series, and SOP Instance UID. Delete requests are equivalent to the GET requests specified in the Retrieve transaction. Study and series search results can take a few seconds to be updated after an instance is deleted using DeleteInstance. For samples that show how to call DeleteInstance, see [Delete a study, series, or instance](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#delete-dicom).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the DICOM store that is being accessed. For example, `projects/{project_id}/locations/{location... |
| `dicomWebPath` | `string` | path | Yes | Required. The path of the DeleteInstance request. For example, `studies/{study_uid}/series/{series_uid}/instances/{in... |

**Response**: `Empty`

```typescript
const res = await healthcare.instances.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.dicomStores.studies.series.instances.retrieveInstance`

**GET** `v1/{+parent}/dicomWeb/{+dicomWebPath}`

RetrieveInstance returns instance associated with the given study, series, and SOP Instance UID. See [RetrieveTransaction] (https://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4). For details on the implementation of RetrieveInstance, see [DICOM study/series/instances](https://cloud.google.com/healthcare/docs/dicom#dicom_studyseriesinstances) and [DICOM instances](https://cloud.google.com/healthcare/docs/dicom#dicom_instances) in the Cloud Healthcare API conformance statement. For samples that show how to call RetrieveInstance, see [Retrieve an instance](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#retrieve-instance).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the DICOM store that is being accessed. For example, `projects/{project_id}/locations/{location... |
| `dicomWebPath` | `string` | path | Yes | Required. The path of the RetrieveInstance DICOMweb request. For example, `studies/{study_uid}/series/{series_uid}/in... |

**Response**: `HttpBody`

```typescript
const res = await healthcare.instances.retrieveInstance({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.dicomStores.studies.series.instances.frames.retrieveRendered`

**GET** `v1/{+parent}/dicomWeb/{+dicomWebPath}`

RetrieveRenderedFrames returns instances associated with the given study, series, SOP Instance UID and frame numbers in an acceptable Rendered Media Type. See [RetrieveTransaction] (https://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4). For details on the implementation of RetrieveRenderedFrames, see [Rendered resources](https://cloud.google.com/healthcare/docs/dicom#rendered_resources) in the Cloud Healthcare API conformance statement. For samples that show how to call RetrieveRenderedFrames, see [Retrieve consumer image formats](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#retrieve-consumer).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the DICOM store that is being accessed. For example, `projects/{project_id}/locations/{location... |
| `dicomWebPath` | `string` | path | Yes | Required. The path of the RetrieveRenderedFrames DICOMweb request. For example, `studies/{study_uid}/series/{series_u... |
| `viewport` | `string` | query | No | Optional. The viewport setting to use as specified in https://dicom.nema.org/medical/dicom/current/output/chtml/part1... |

**Response**: `HttpBody`

```typescript
const res = await healthcare.frames.retrieveRendered({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.dicomStores.studies.series.instances.frames.retrieveFrames`

**GET** `v1/{+parent}/dicomWeb/{+dicomWebPath}`

RetrieveFrames returns instances associated with the given study, series, SOP Instance UID and frame numbers. See [RetrieveTransaction] (https://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4}. For details on the implementation of RetrieveFrames, see [DICOM frames](https://cloud.google.com/healthcare/docs/dicom#dicom_frames) in the Cloud Healthcare API conformance statement. For samples that show how to call RetrieveFrames, see [Retrieve DICOM data](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#retrieve-dicom).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the DICOM store that is being accessed. For example, `projects/{project_id}/locations/{location... |
| `dicomWebPath` | `string` | path | Yes | Required. The path of the RetrieveFrames DICOMweb request. For example, `studies/{study_uid}/series/{series_uid}/inst... |

**Response**: `HttpBody`

```typescript
const res = await healthcare.frames.retrieveFrames({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.datasets.dicomStores.studies.series.instances.bulkdata.retrieveBulkdata`

**GET** `v1/{+parent}/dicomWeb/{+dicomWebPath}`

Returns uncompressed, unencoded bytes representing the referenced bulkdata tag from an instance. See [Retrieve Transaction](https://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4). For details on the implementation of RetrieveBulkdata, see [Bulkdata resources](https://cloud.google.com/healthcare/docs/dicom#bulkdata-resources) in the Cloud Healthcare API conformance statement. For samples that show how to call RetrieveBulkdata, see [Retrieve bulkdata](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#retrieve-bulkdata).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the DICOM store that is being accessed. For example, `projects/{project_id}/locations/{location... |
| `dicomWebPath` | `string` | path | Yes | Required. The path for the `RetrieveBulkdata` DICOMweb request. For example, `studies/{study_uid}/series/{series_uid}... |

**Response**: `HttpBody`

```typescript
const res = await healthcare.bulkdata.retrieveBulkdata({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `healthcare.projects.locations.services.nlp.analyzeEntities`

**POST** `v1/{+nlpService}:analyzeEntities`

Analyze heathcare entity in a document. Its response includes the recognized entity mentions and the relationships between them. AnalyzeEntities uses context aware models to detect entities.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `nlpService` | `string` | path | Yes | The resource name of the service of the form: "projects/{project_id}/locations/{location_id}/services/nlp". |

**Request body**: `AnalyzeEntitiesRequest`

**Response**: `AnalyzeEntitiesResponse`

```typescript
const res = await healthcare.nlp.analyzeEntities({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-healthcare`
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AccessDeterminationLogConfig`

Configures consent audit log config for FHIR create, read, update, and delete (CRUD) operations. Cloud audit log for healthcare API must be [enabled](https://cloud.google.com/logging/docs/audit/configure-data-access#config-console-enable). The consent-related logs are included as part of `protoPayload.metadata`.

| Property | Type | Description |
|----------|------|-------------|
| `logLevel` | `string` | Optional. Controls the amount of detail to include as part of the audit logs. |

### `ActivateConsentRequest`

Activates the latest revision of the specified Consent by committing a new revision with `state` updated to `ACTIVE`. If the latest revision of the given Consent is in the `ACTIVE` state, no new revision is committed. A FAILED_PRECONDITION error occurs if the latest revision of the given consent is in the `REJECTED` or `REVOKED` state.

| Property | Type | Description |
|----------|------|-------------|
| `consentArtifact` | `string` | Required. The resource name of the Consent artifact that contains documentation of the user's con... |
| `expireTime` | `string` | Timestamp in UTC of when this Consent is considered expired. |
| `ttl` | `string` | The time to live for this Consent from when it is marked as active. |

### `AdminConsents`

List of admin Consent resources to be applied.

| Property | Type | Description |
|----------|------|-------------|
| `names` | `array<string>` | Optional. The versioned names of the admin Consent resource(s), in the format `projects/{project_... |

### `AnalyzeEntitiesRequest`

The request to analyze healthcare entities in a document.

| Property | Type | Description |
|----------|------|-------------|
| `alternativeOutputFormat` | `string` | Optional. Alternative output format to be generated based on the results of analysis. |
| `documentContent` | `string` | document_content is a document to be annotated. |
| `licensedVocabularies` | `array<string>` | A list of licensed vocabularies to use in the request, in addition to the default unlicensed voca... |

### `AnalyzeEntitiesResponse`

Includes recognized entity mentions and relationships between them.

| Property | Type | Description |
|----------|------|-------------|
| `entities` | `array<Entity>` | The union of all the candidate entities that the entity_mentions in this response could link to. ... |
| `entityMentions` | `array<EntityMention>` | The `entity_mentions` field contains all the annotated medical entities that were mentioned in th... |
| `fhirBundle` | `string` | The FHIR bundle ([`R4`](http://hl7.org/fhir/R4/bundle.html)) that includes all the entities, the ... |
| `relationships` | `array<EntityMentionRelationship>` | relationships contains all the binary relationships that were identified between entity mentions ... |

### `ApplyAdminConsentsErrorDetail`

Contains the error details of the unsupported admin Consent resources for when the ApplyAdminConsents method fails to apply one or more Consent resources.

| Property | Type | Description |
|----------|------|-------------|
| `consentErrors` | `array<ConsentErrors>` | The list of Consent resources that are unsupported or cannot be applied and the error associated ... |
| `existingOperationId` | `string` | The currently in progress non-validate-only ApplyAdminConsents operation ID if exist. |

### `ApplyAdminConsentsRequest`

Request to apply the admin Consent resources for the specified FHIR store.

| Property | Type | Description |
|----------|------|-------------|
| `newConsentsList` | `AdminConsents` | A new list of admin Consent resources to be applied. Any existing enforced Consents, which are sp... |
| `validateOnly` | `boolean` | Optional. If true, the method only validates Consent resources to make sure they are supported. O... |

### `ApplyAdminConsentsResponse`

Response when all admin Consent resources in scope were processed and all affected resources were reindexed successfully. This structure will be included in the response when the operation finishes successfully.

| Property | Type | Description |
|----------|------|-------------|
| `affectedResources` | `string` | The number of resources (including the Consent resources) that may have consent access change. |
| `consentApplySuccess` | `string` | If `validate_only=false` in ApplyAdminConsentsRequest, this counter contains the number of Consen... |
| `failedResources` | `string` | The number of resources (including the Consent resources) that ApplyAdminConsents failed to re-in... |

### `ApplyConsentsRequest`

Request to apply the Consent resources for the specified FHIR store.

| Property | Type | Description |
|----------|------|-------------|
| `patientScope` | `PatientScope` | Optional. Scope down to a list of patients. |
| `timeRange` | `TimeRange` | Optional. Scope down to patients whose most recent consent changes are in the time range. Can onl... |
| `validateOnly` | `boolean` | Optional. If true, the method only validates Consent resources to make sure they are supported. W... |

### `ApplyConsentsResponse`

Response when all Consent resources in scope were processed and all affected resources were reindexed successfully. This structure is included in the response when the operation finishes successfully.

| Property | Type | Description |
|----------|------|-------------|
| `affectedResources` | `string` | The number of resources (including the Consent resources) that may have consensual access change. |
| `consentApplyFailure` | `string` | If `validate_only = false` in ApplyConsentsRequest, this counter is the number of Consent resourc... |
| `consentApplySuccess` | `string` | If `validate_only = false` in ApplyConsentsRequest, this counter is the number of Consent resourc... |
| `failedResources` | `string` | The number of resources (including the Consent resources) that ApplyConsents failed to re-index. |

### `ArchiveUserDataMappingRequest`

Archives the specified User data mapping.

### `ArchiveUserDataMappingResponse`

Archives the specified User data mapping.

### `Attribute`

An attribute value for a Consent or User data mapping. Each Attribute must have a corresponding AttributeDefinition in the consent store that defines the default and allowed values.

| Property | Type | Description |
|----------|------|-------------|
| `attributeDefinitionId` | `string` | Indicates the name of an attribute defined in the consent store. |
| `values` | `array<string>` | Required. The value of the attribute. Must be an acceptable value as defined in the consent store... |

### `AttributeDefinition`

A client-defined consent attribute.

| Property | Type | Description |
|----------|------|-------------|
| `allowedValues` | `array<string>` | Required. Possible values for the attribute. The number of allowed values must not exceed 500. An... |
| `category` | `string` | Required. The category of the attribute. The value of this field cannot be changed after creation. |
| `consentDefaultValues` | `array<string>` | Optional. Default values of the attribute in Consents. If no default values are specified, it def... |
| `dataMappingDefaultValue` | `string` | Optional. Default value of the attribute in User data mappings. If no default value is specified,... |
| `description` | `string` | Optional. A description of the attribute. |
| `name` | `string` | Identifier. Resource name of the Attribute definition, of the form `projects/{project_id}/locatio... |

### `AuditConfig`

Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both `allServices` and a specific service, the union of the two AuditConfigs is used for that service: the log_types specified in each AuditConfig are enabled, and the exempted_members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { "audit_configs": [ { "service": "allServices", "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" }, { "log_type": "ADMIN_READ" } ] }, { "service": "sampleservice.googleapis.com", "audit_log_configs": [ { "log_type": "DATA_READ" }, { "log_type": "DATA_WRITE", "exempted_members": [ "user:aliya@example.com" ] } ] } ] } For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com` from DATA_WRITE logging.

| Property | Type | Description |
|----------|------|-------------|
| `auditLogConfigs` | `array<AuditLogConfig>` | The configuration for logging of each type of permission. |
| `service` | `string` | Specifies a service that will be enabled for audit logging. For example, `storage.googleapis.com`... |

### `AuditLogConfig`

Provides the configuration for logging a type of permissions. Example: { "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.

| Property | Type | Description |
|----------|------|-------------|
| `exemptedMembers` | `array<string>` | Specifies the identities that do not cause logging for this type of permission. Follows the same ... |
| `logType` | `string` | The log type that this config enables. |

### `Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `BlobStorageInfo`

BlobStorageInfo contains details about the data stored in Blob Storage for the referenced resource. Note: Storage class is only valid for DICOM and hence will only be populated for DICOM resources.

| Property | Type | Description |
|----------|------|-------------|
| `sizeBytes` | `string` | Size in bytes of data stored in Blob Storage. |
| `storageClass` | `string` | The storage class in which the Blob data is stored. |
| `storageClassUpdateTime` | `string` | The time at which the storage class was updated. This is used to compute early deletion fees of t... |

### `BlobStorageSettings`

Settings for data stored in Blob storage.

| Property | Type | Description |
|----------|------|-------------|
| `blobStorageClass` | `string` | The Storage class in which the Blob data is stored. |

### `BulkDeleteResourcesRequest`

Request to bulk delete FHIR resources.

| Property | Type | Description |
|----------|------|-------------|
| `gcsDestination` | `GoogleCloudHealthcareV1FhirGcsDestination` | Optional. The Cloud Storage output destination. The Healthcare Service Agent account requires the... |
| `type` | `string` | Optional. String of comma-delimited FHIR resource types. If provided, only resources of the speci... |
| `until` | `string` | Optional. If provided, only resources updated before or atthis time are deleted. The time uses th... |
| `versionConfig` | `string` | Optional. Specifies which version of the resources to delete. |

### `BulkExportGcsDestination`

The configuration for exporting to Cloud Storage using the bulk export API.

| Property | Type | Description |
|----------|------|-------------|
| `uriPrefix` | `string` | Optional. URI for a Cloud Storage directory where the server writes result files, in the format `... |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `CharacterMaskConfig`

Mask a string by replacing its characters with a fixed character.

| Property | Type | Description |
|----------|------|-------------|
| `maskingCharacter` | `string` | Optional. Character to mask the sensitive values. If not supplied, defaults to "*". |

### `CheckDataAccessRequest`

Checks if a particular data_id of a User data mapping in the given consent store is consented for a given use.

| Property | Type | Description |
|----------|------|-------------|
| `consentList` | `ConsentList` | Optional. Specific Consents to evaluate the access request against. These Consents must have the ... |
| `dataId` | `string` | Required. The unique identifier of the resource to check access for. This identifier must corresp... |
| `requestAttributes` | `object` | The values of request attributes associated with this access request. |
| `responseView` | `string` | Optional. The view for CheckDataAccessResponse. If unspecified, defaults to `BASIC` and returns `... |

### `CheckDataAccessResponse`

Checks if a particular data_id of a User data mapping in the given consent store is consented for a given use.

| Property | Type | Description |
|----------|------|-------------|
| `consentDetails` | `object` | The resource names of all evaluated Consents mapped to their evaluation. |
| `consented` | `boolean` | Whether the requested resource is consented for the given use. |

### `Consent`

Represents a user's consent.

| Property | Type | Description |
|----------|------|-------------|
| `consentArtifact` | `string` | Required. The resource name of the Consent artifact that contains proof of the end user's consent... |
| `expireTime` | `string` | Timestamp in UTC of when this Consent is considered expired. |
| `metadata` | `object` | Optional. User-supplied key-value pairs used to organize Consent resources. Metadata keys must: -... |
| `name` | `string` | Identifier. Resource name of the Consent, of the form `projects/{project_id}/locations/{location_... |
| `policies` | `array<GoogleCloudHealthcareV1ConsentPolicy>` | Optional. Represents a user's consent in terms of the resources that can be accessed and under wh... |
| `revisionCreateTime` | `string` | Output only. The timestamp that the revision was created. |
| `revisionId` | `string` | Output only. The revision ID of the Consent. The format is an 8-character hexadecimal string. Ref... |
| `state` | `string` | Required. Indicates the current state of this Consent. |
| `ttl` | `string` | Input only. The time to live for this Consent from when it is created. |
| `userId` | `string` | Required. User's UUID provided by the client. |

### `ConsentAccessorScope`

The accessor scope that describes who can access, for what purpose, in which environment.

| Property | Type | Description |
|----------|------|-------------|
| `actor` | `string` | An individual, group, or access role that identifies the accessor or a characteristic of the acce... |
| `environment` | `string` | An abstract identifier that describes the environment or conditions under which the accessor is a... |
| `purpose` | `string` | The intent of data use. If it's not specified, it applies to all purposes. |

### `ConsentArtifact`

Documentation of a user's consent.

| Property | Type | Description |
|----------|------|-------------|
| `consentContentScreenshots` | `array<Image>` | Optional. Screenshots, PDFs, or other binary information documenting the user's consent. |
| `consentContentVersion` | `string` | Optional. An string indicating the version of the consent information shown to the user. |
| `guardianSignature` | `Signature` | Optional. A signature from a guardian. |
| `metadata` | `object` | Optional. Metadata associated with the Consent artifact. For example, the consent locale or user ... |
| `name` | `string` | Identifier. Resource name of the Consent artifact, of the form `projects/{project_id}/locations/{... |
| `userId` | `string` | Required. User's UUID provided by the client. |
| `userSignature` | `Signature` | Optional. User's signature. |
| `witnessSignature` | `Signature` | Optional. A signature from a witness. |

### `ConsentConfig`

Configures whether to enforce consent for the FHIR store and which consent enforcement version is being used.

| Property | Type | Description |
|----------|------|-------------|
| `accessDeterminationLogConfig` | `AccessDeterminationLogConfig` | Optional. Specifies how the server logs the consent-aware requests. If not specified, the `Access... |
| `accessEnforced` | `boolean` | Optional. The default value is false. If set to true, when accessing FHIR resources, the consent ... |
| `consentHeaderHandling` | `ConsentHeaderHandling` | Optional. Different options to configure the behaviour of the server when handling the `X-Consent... |
| `enforcedAdminConsents` | `array<string>` | Output only. The versioned names of the enforced admin Consent resource(s), in the format `projec... |
| `version` | `string` | Required. Specifies which consent enforcement version is being used for this FHIR store. This fie... |

### `ConsentErrors`

The Consent resource name and error.

| Property | Type | Description |
|----------|------|-------------|
| `error` | `Status` | The error code and message. |
| `name` | `string` | The versioned name of the admin Consent resource, in the format `projects/{project_id}/locations/... |

### `ConsentEvaluation`

The detailed evaluation of a particular Consent.

| Property | Type | Description |
|----------|------|-------------|
| `evaluationResult` | `string` | The evaluation result. |

### `ConsentHeaderHandling`

How the server handles the consent header.

| Property | Type | Description |
|----------|------|-------------|
| `profile` | `string` | Optional. Specifies the default server behavior when the header is empty. If not specified, the `... |

### `ConsentList`

List of resource names of Consent resources.

| Property | Type | Description |
|----------|------|-------------|
| `consents` | `array<string>` | The resource names of the Consents to evaluate against, of the form `projects/{project_id}/locati... |

### `ConsentStore`

Represents a consent store.

| Property | Type | Description |
|----------|------|-------------|
| `defaultConsentTtl` | `string` | Optional. Default time to live for Consents created in this store. Must be at least 24 hours. Upd... |
| `enableConsentCreateOnUpdate` | `boolean` | Optional. If `true`, UpdateConsent creates the Consent if it does not already exist. If unspecifi... |
| `labels` | `object` | Optional. User-supplied key-value pairs used to organize consent stores. Label keys must be betwe... |
| `name` | `string` | Identifier. Resource name of the consent store, of the form `projects/{project_id}/locations/{loc... |

### `CreateMessageRequest`

Creates a new message.

| Property | Type | Description |
|----------|------|-------------|
| `message` | `Message` | Required. HL7v2 message. |

### `CryptoHashConfig`

Pseudonymization method that generates surrogates via cryptographic hashing. Uses SHA-256. Outputs a base64-encoded representation of the hashed output (for example, `L7k0BHmF1ha5U3NfGykjro4xWi1MPVQPjhMAZbSV9mM=`).

| Property | Type | Description |
|----------|------|-------------|
| `cryptoKey` | `string` | An AES 128/192/256 bit key. Causes the hash to be computed based on this key. A default key is ge... |
| `kmsWrapped` | `KmsWrappedCryptoKey` | KMS wrapped key. Must not be set if `crypto_key` is set. |

### `Dataset`

A message representing a health dataset. A health dataset represents a collection of healthcare data pertaining to one or more patients. This may include multiple modalities of healthcare data, such as electronic medical records or medical imaging data.

| Property | Type | Description |
|----------|------|-------------|
| `encryptionSpec` | `EncryptionSpec` | Optional. Customer-managed encryption key spec for a Dataset. If set, this Dataset and all of its... |
| `name` | `string` | Identifier. Resource name of the dataset, of the form `projects/{project_id}/locations/{location_... |
| `satisfiesPzi` | `boolean` | Output only. Whether the dataset satisfies zone isolation. |
| `satisfiesPzs` | `boolean` | Output only. Whether the dataset satisfies zone separation. |
| `timeZone` | `string` | Optional. The default timezone used by this dataset. Must be a either a valid IANA time zone name... |

### `DateShiftConfig`

Shift a date forward or backward in time by a random amount which is consistent for a given patient and crypto key combination.

| Property | Type | Description |
|----------|------|-------------|
| `cryptoKey` | `string` | An AES 128/192/256 bit key. The date shift is computed based on this key and the patient ID. If t... |
| `kmsWrapped` | `KmsWrappedCryptoKey` | KMS wrapped key. If `kms_wrapped` is not set, then `crypto_key` is used to calculate the date shi... |

### `DeidentifiedStoreDestination`

Contains configuration for streaming de-identified FHIR export.

| Property | Type | Description |
|----------|------|-------------|
| `config` | `DeidentifyConfig` | Optional. The configuration to use when de-identifying resources that are added to this store. |
| `store` | `string` | Optional. The full resource name of a Cloud Healthcare FHIR store, for example, `projects/{projec... |

### `DeidentifyConfig`

Configures de-id options specific to different types of content. Each submessage customizes the handling of an https://tools.ietf.org/html/rfc6838 media type or subtype. Configs are applied in a nested manner at runtime.

| Property | Type | Description |
|----------|------|-------------|
| `dicom` | `DicomConfig` | Optional. Configures de-id of application/DICOM content. |
| `fhir` | `FhirConfig` | Optional. Configures de-id of application/FHIR content. |
| `image` | `ImageConfig` | Optional. Configures de-identification of image pixels wherever they are found in the source_data... |
| `text` | `TextConfig` | Optional. Configures de-identification of text wherever it is found in the source_dataset. |
| `useRegionalDataProcessing` | `boolean` | Optional. Ensures in-flight data remains in the region of origin during de-identification. The de... |

### `DeidentifyDatasetRequest`

Redacts identifying information from the specified dataset.

| Property | Type | Description |
|----------|------|-------------|
| `config` | `DeidentifyConfig` | Deidentify configuration. Only one of `config` and `gcs_config_uri` can be specified. |
| `destinationDataset` | `string` | Required. The name of the dataset resource to create and write the redacted data to. * The destin... |
| `gcsConfigUri` | `string` | Cloud Storage location to read the JSON cloud.healthcare.deidentify.DeidentifyConfig from, overri... |

### `DeidentifyDicomStoreRequest`

Creates a new DICOM store with sensitive information de-identified.

| Property | Type | Description |
|----------|------|-------------|
| `config` | `DeidentifyConfig` | Deidentify configuration. Only one of `config` and `gcs_config_uri` can be specified. |
| `destinationStore` | `string` | Required. The name of the DICOM store to write the redacted data to. For example, `projects/{proj... |
| `filterConfig` | `DicomFilterConfig` | Filter configuration. |
| `gcsConfigUri` | `string` | Cloud Storage location to read the JSON cloud.healthcare.deidentify.DeidentifyConfig from, overri... |

### `DeidentifyFhirStoreRequest`

Creates a new FHIR store with sensitive information de-identified.

| Property | Type | Description |
|----------|------|-------------|
| `config` | `DeidentifyConfig` | Deidentify configuration. Only one of `config` and `gcs_config_uri` can be specified. |
| `destinationStore` | `string` | Required. The name of the FHIR store to write the redacted data to. For example, `projects/{proje... |
| `gcsConfigUri` | `string` | Cloud Storage location to read the JSON cloud.healthcare.deidentify.DeidentifyConfig from, overri... |
| `resourceFilter` | `FhirFilter` | A filter specifying the resources to include in the output. If not specified, all resources are i... |
| `skipModifiedResources` | `boolean` | If true, skips resources that are created or modified after the de-identify operation is created. |

### `DeidentifySummary`

Contains a summary of the Deidentify operation.

### `DicomConfig`

Specifies the parameters needed for de-identification of DICOM stores.

| Property | Type | Description |
|----------|------|-------------|
| `filterProfile` | `string` | Tag filtering profile that determines which tags to keep/remove. |
| `keepList` | `TagFilterList` | List of tags to keep. Remove all other tags. |
| `removeList` | `TagFilterList` | List of tags to remove. Keep all other tags. |
| `skipIdRedaction` | `boolean` | Optional. If true, skip replacing StudyInstanceUID, SeriesInstanceUID, SOPInstanceUID, and MediaS... |

### `DicomFilterConfig`

Specifies the filter configuration for DICOM resources.

| Property | Type | Description |
|----------|------|-------------|
| `resourcePathsGcsUri` | `string` | The Cloud Storage location of the filter configuration file. The `gcs_uri` must be in the format ... |

### `DicomNotificationConfig`

Contains the configuration for DICOM notifications.

| Property | Type | Description |
|----------|------|-------------|
| `pubsubTopic` | `string` | Required. The [Pub/Sub](https://cloud.google.com/pubsub/docs/) topic that notifications of change... |

### `DicomStore`

Represents a DICOM store.

| Property | Type | Description |
|----------|------|-------------|
| `labels` | `object` | User-supplied key-value pairs used to organize DICOM stores. Label keys must be between 1 and 63 ... |
| `name` | `string` | Identifier. Resource name of the DICOM store, of the form `projects/{project_id}/locations/{locat... |
| `notificationConfig` | `NotificationConfig` | Optional. Notification destination for new DICOM instances. Supplied by the client. |
| `notificationConfigs` | `array<DicomNotificationConfig>` | Optional. Specifies where and whether to send notifications upon changes to a DICOM store. |
| `streamConfigs` | `array<GoogleCloudHealthcareV1DicomStreamConfig>` | Optional. A list of streaming configs used to configure the destination of streaming exports for ... |

### `DicomStoreMetrics`

DicomStoreMetrics contains metrics describing a DICOM store.

| Property | Type | Description |
|----------|------|-------------|
| `blobStorageSizeBytes` | `string` | Total blob storage bytes for all instances in the store. |
| `instanceCount` | `string` | Number of instances in the store. |
| `name` | `string` | Resource name of the DICOM store, of the form `projects/{project_id}/locations/{location_id}/data... |
| `seriesCount` | `string` | Number of series in the store. |
| `structuredStorageSizeBytes` | `string` | Total structured storage bytes for all instances in the store. |
| `studyCount` | `string` | Number of studies in the store. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `EncryptionSpec`

Represents a customer-managed encryption key spec that can be applied to a resource.

| Property | Type | Description |
|----------|------|-------------|
| `kmsKeyName` | `string` | Required. The resource name of customer-managed encryption key that is used to secure a resource ... |

### `Entity`

The candidate entities that an entity mention could link to.

| Property | Type | Description |
|----------|------|-------------|
| `entityId` | `string` | entity_id is a first class field entity_id uniquely identifies this concept and its meta-vocabula... |
| `preferredTerm` | `string` | preferred_term is the preferred term for this concept. For example, "Acetaminophen". For ad hoc e... |
| `vocabularyCodes` | `array<string>` | Vocabulary codes are first-class fields and differentiated from the concept unique identifier (en... |

### `EntityMention`

An entity mention in the document.

| Property | Type | Description |
|----------|------|-------------|
| `certaintyAssessment` | `Feature` | The certainty assessment of the entity mention. Its value is one of: LIKELY, SOMEWHAT_LIKELY, UNC... |
| `confidence` | `number` | The model's confidence in this entity mention annotation. A number between 0 and 1. |
| `linkedEntities` | `array<LinkedEntity>` | linked_entities are candidate ontological concepts that this entity mention may refer to. They ar... |
| `mentionId` | `string` | mention_id uniquely identifies each entity mention in a single response. |
| `subject` | `Feature` | The subject this entity mention relates to. Its value is one of: PATIENT, FAMILY_MEMBER, OTHER |
| `temporalAssessment` | `Feature` | How this entity mention relates to the subject temporally. Its value is one of: CURRENT, CLINICAL... |
| `text` | `TextSpan` | text is the location of the entity mention in the document. |
| `type` | `string` | The semantic type of the entity: UNKNOWN_ENTITY_TYPE, ALONE, ANATOMICAL_STRUCTURE, ASSISTED_LIVIN... |

### `EntityMentionRelationship`

Defines directed relationship from one entity mention to another.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | The model's confidence in this annotation. A number between 0 and 1. |
| `objectId` | `string` | object_id is the id of the object entity mention. |
| `subjectId` | `string` | subject_id is the id of the subject entity mention. |

### `EvaluateUserConsentsRequest`

Evaluate a user's Consents for all matching User data mappings. Note: User data mappings are indexed asynchronously, causing slight delays between the time mappings are created or updated and when they are included in EvaluateUserConsents results.

| Property | Type | Description |
|----------|------|-------------|
| `consentList` | `ConsentList` | Optional. Specific Consents to evaluate the access request against. These Consents must have the ... |
| `pageSize` | `integer` | Optional. Limit on the number of User data mappings to return in a single response. If not specif... |
| `pageToken` | `string` | Optional. Token to retrieve the next page of results, or empty to get the first page. |
| `requestAttributes` | `object` | Required. The values of request attributes associated with this access request. |
| `resourceAttributes` | `object` | Optional. The values of resource attributes associated with the resources being requested. If no ... |
| `responseView` | `string` | Optional. The view for EvaluateUserConsentsResponse. If unspecified, defaults to `BASIC` and retu... |
| `userId` | `string` | Required. User ID to evaluate consents for. |

### `EvaluateUserConsentsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. Th... |
| `results` | `array<Result>` | The consent evaluation result for each `data_id`. |

### `ExplainDataAccessConsentInfo`

The enforcing consent's metadata.

| Property | Type | Description |
|----------|------|-------------|
| `cascadeOrigins` | `array<string>` | The compartment base resources that matched a cascading policy. Each resource has the following f... |
| `consentResource` | `string` | The resource name of this consent resource, in the format: `projects/{project_id}/locations/{loca... |
| `enforcementTime` | `string` | Last enforcement timestamp of this consent resource. |
| `matchingAccessorScopes` | `array<ConsentAccessorScope>` | A list of all the matching accessor scopes of this consent policy that enforced ExplainDataAccess... |
| `patientConsentOwner` | `string` | The patient owning the consent (only applicable for patient consents), in the format: `projects/{... |
| `type` | `string` | The policy type of consent resource (e.g. PATIENT, ADMIN). |
| `variants` | `array<string>` | The consent's variant combinations. A single consent may have multiple variants. |

### `ExplainDataAccessConsentScope`

A single consent scope that provides info on who has access to the requested resource scope for a particular purpose and environment, enforced by which consent.

| Property | Type | Description |
|----------|------|-------------|
| `accessorScope` | `ConsentAccessorScope` | The accessor scope that describes who can access, for what purpose, and in which environment. |
| `decision` | `string` | Whether the current consent scope is permitted or denied access on the requested resource. |
| `enforcingConsents` | `array<ExplainDataAccessConsentInfo>` | Metadata of the consent resources that enforce the consent scope's access. |
| `exceptions` | `array<ExplainDataAccessConsentScope>` | Other consent scopes that created exceptions within this scope. |

### `ExplainDataAccessResponse`

List of consent scopes that are applicable to the explained access on a given resource.

| Property | Type | Description |
|----------|------|-------------|
| `consentScopes` | `array<ExplainDataAccessConsentScope>` | List of applicable consent scopes. Sorted in order of actor such that scopes belonging to the sam... |
| `warning` | `string` | Warnings associated with this response. It inform user with exceeded scope limit errors. |

### `ExportDicomDataRequest`

Exports data from the specified DICOM store. If a given resource, such as a DICOM object with the same SOPInstance UID, already exists in the output, it is overwritten with the version in the source dataset. Exported DICOM data persists when the DICOM store from which it was exported is deleted.

| Property | Type | Description |
|----------|------|-------------|
| `bigqueryDestination` | `GoogleCloudHealthcareV1DicomBigQueryDestination` | The BigQuery output destination. You can only export to a BigQuery dataset that's in the same pro... |
| `gcsDestination` | `GoogleCloudHealthcareV1DicomGcsDestination` | The Cloud Storage output destination. The Cloud Healthcare Service Agent requires the `roles/stor... |

### `ExportDicomDataResponse`

Returns additional information in regards to a completed DICOM store export.

### `ExportMessagesRequest`

Request to schedule an export.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | The end of the range in `send_time` (MSH.7, https://www.hl7.org/documentcenter/public_temp_2E58C1... |
| `filter` | `string` | Restricts messages exported to those matching a filter, only applicable to PubsubDestination and ... |
| `gcsDestination` | `GcsDestination` | Export to a Cloud Storage destination. |
| `pubsubDestination` | `PubsubDestination` | Export messages to a Pub/Sub topic. |
| `startTime` | `string` | The start of the range in `send_time` (MSH.7, https://www.hl7.org/documentcenter/public_temp_2E58... |

### `ExportMessagesResponse`

Final response for the export operation. This structure is included in the response to describe the detailed outcome.

### `ExportResourcesRequest`

Request to export resources.

| Property | Type | Description |
|----------|------|-------------|
| `_since` | `string` | If provided, only resources updated after this time are exported. The time uses the format YYYY-M... |
| `_type` | `string` | String of comma-delimited FHIR resource types. If provided, only resources of the specified resou... |
| `bigqueryDestination` | `GoogleCloudHealthcareV1FhirBigQueryDestination` | The BigQuery output destination. The Cloud Healthcare Service Agent requires two IAM roles on the... |
| `gcsDestination` | `GoogleCloudHealthcareV1FhirGcsDestination` | The Cloud Storage output destination. The Healthcare Service Agent account requires the `roles/st... |

### `ExportResourcesResponse`

Response when all resources export successfully. This structure is included in the response to describe the detailed outcome after the operation finishes successfully.

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `Feature`

A feature of an entity mention.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | The model's confidence in this feature annotation. A number between 0 and 1. |
| `value` | `string` | The value of this feature annotation. Its range depends on the type of the feature. |

### `FhirConfig`

Specifies how to handle de-identification of a FHIR store.

| Property | Type | Description |
|----------|------|-------------|
| `defaultKeepExtensions` | `boolean` | Optional. The behaviour for handling FHIR extensions that aren't otherwise specified for de-ident... |
| `fieldMetadataList` | `array<FieldMetadata>` | Optional. Specifies FHIR paths to match and how to transform them. Any field that is not matched ... |

### `FhirFilter`

Filter configuration.

| Property | Type | Description |
|----------|------|-------------|
| `resources` | `Resources` | List of resources to include in the output. If this list is empty or not specified, all resources... |

### `FhirNotificationConfig`

Contains the configuration for FHIR notifications.

| Property | Type | Description |
|----------|------|-------------|
| `pubsubTopic` | `string` | Optional. The [Pub/Sub](https://cloud.google.com/pubsub/docs/) topic that notifications of change... |
| `sendFullResource` | `boolean` | Optional. Whether to send full FHIR resource to this Pub/Sub topic. The default value is false. |
| `sendPreviousResourceOnDelete` | `boolean` | Optional. Whether to send full FHIR resource to this Pub/Sub topic for deleting FHIR resource. Th... |

### `FhirStore`

Represents a FHIR store.

| Property | Type | Description |
|----------|------|-------------|
| `bulkExportGcsDestination` | `BulkExportGcsDestination` | Optional. FHIR bulk export exports resources to the specified Cloud Storage destination. A Cloud ... |
| `complexDataTypeReferenceParsing` | `string` | Optional. Enable parsing of references within complex FHIR data types such as Extensions. If this... |
| `consentConfig` | `ConsentConfig` | Optional. Specifies whether this store has consent enforcement. Not available for DSTU2 FHIR vers... |
| `defaultSearchHandlingStrict` | `boolean` | Optional. If true, overrides the default search behavior for this FHIR store to `handling=strict`... |
| `disableReferentialIntegrity` | `boolean` | Immutable. Whether to disable referential integrity in this FHIR store. This field is immutable a... |
| `disableResourceVersioning` | `boolean` | Immutable. Whether to disable resource versioning for this FHIR store. This field can not be chan... |
| `enableUpdateCreate` | `boolean` | Optional. Whether this FHIR store has the [updateCreate capability](https://www.hl7.org/fhir/capa... |
| `labels` | `object` | User-supplied key-value pairs used to organize FHIR stores. Label keys must be between 1 and 63 c... |
| `name` | `string` | Output only. Identifier. Resource name of the FHIR store, of the form `projects/{project_id}/loca... |
| `notificationConfig` | `NotificationConfig` | Deprecated. Use `notification_configs` instead. If non-empty, publish all resource modifications ... |
| `notificationConfigs` | `array<FhirNotificationConfig>` | Optional. Specifies where and whether to send notifications upon changes to a FHIR store. |
| `streamConfigs` | `array<StreamConfig>` | Optional. A list of streaming configs that configure the destinations of streaming export for eve... |
| `validationConfig` | `ValidationConfig` | Optional. Configuration for how to validate incoming FHIR resources against configured profiles. |
| `version` | `string` | Required. Immutable. The FHIR specification version that this FHIR store supports natively. This ... |

### `FhirStoreMetric`

Count of resources and total storage size by type for a given FHIR store.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `string` | The total count of FHIR resources in the store of this resource type. |
| `resourceType` | `string` | The FHIR resource type this metric applies to. |
| `structuredStorageSizeBytes` | `string` | The total amount of structured storage used by FHIR resources of this resource type in the store. |
| `versionedStorageSizeBytes` | `string` | The total amount of versioned storage used by versioned FHIR resources of this resource type in t... |

### `FhirStoreMetrics`

List of metrics for a given FHIR store.

| Property | Type | Description |
|----------|------|-------------|
| `metrics` | `array<FhirStoreMetric>` | List of FhirStoreMetric by resource type. |
| `name` | `string` | The resource name of the FHIR store to get metrics for, in the format `projects/{project_id}/data... |

### `Field`

A (sub) field of a type.

| Property | Type | Description |
|----------|------|-------------|
| `maxOccurs` | `integer` | The maximum number of times this field can be repeated. 0 or -1 means unbounded. |
| `minOccurs` | `integer` | The minimum number of times this field must be present/repeated. |
| `name` | `string` | The name of the field. For example, "PID-1" or just "1". |
| `table` | `string` | The HL7v2 table this field refers to. For example, PID-15 (Patient's Primary Language) usually re... |
| `type` | `string` | The type of this field. A Type with this name must be defined in an Hl7TypesConfig. |

### `FieldMetadata`

Specifies FHIR paths to match, and how to handle de-identification of matching fields.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` | Optional. Deidentify action for one field. |
| `paths` | `array<string>` | Optional. List of paths to FHIR fields to be redacted. Each path is a period-separated list where... |

### `GcsDestination`

The Cloud Storage output destination. The Cloud Healthcare Service Agent requires the `roles/storage.objectAdmin` Cloud IAM roles on the Cloud Storage location.

| Property | Type | Description |
|----------|------|-------------|
| `contentStructure` | `string` | The format of the exported HL7v2 message files. |
| `messageView` | `string` | Specifies the parts of the Message resource to include in the export. If not specified, FULL is u... |
| `uriPrefix` | `string` | URI of an existing Cloud Storage directory where the server writes result files, in the format `g... |

### `GcsSource`

Specifies the configuration for importing data from Cloud Storage.

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` | Points to a Cloud Storage URI containing file(s) to import. The URI must be in the following form... |

### `GoogleCloudHealthcareV1ConsentGcsDestination`

The Cloud Storage location for export.

| Property | Type | Description |
|----------|------|-------------|
| `uriPrefix` | `string` | URI for a Cloud Storage directory where the server writes result files, in the format `gs://{buck... |

### `GoogleCloudHealthcareV1ConsentPolicy`

Represents a user's consent in terms of the resources that can be accessed and under what conditions.

| Property | Type | Description |
|----------|------|-------------|
| `authorizationRule` | `Expr` | Required. The request conditions to meet to grant access. In addition to any supported comparison... |
| `resourceAttributes` | `array<Attribute>` | The resources that this policy applies to. A resource is a match if it matches all the attributes... |

### `GoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary`

Contains a summary of the DeidentifyDicomStore operation.

### `GoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary`

Contains a summary of the DeidentifyFhirStore operation.

### `GoogleCloudHealthcareV1DicomBigQueryDestination`

The BigQuery table where the server writes the output.

| Property | Type | Description |
|----------|------|-------------|
| `force` | `boolean` | Optional. Use `write_disposition` instead. If `write_disposition` is specified, this parameter is... |
| `includeSourceStore` | `boolean` | Optional. If true, the source store name will be included as a column in the BigQuery schema. |
| `schemaFlattened` | `SchemaFlattened` | Optional. Setting this field will use flattened DICOM instances schema for the BigQuery table. Th... |
| `schemaJson` | `SchemaJSON` | Optional. Setting this field will store all the DICOM tags as a JSON type in a single column. |
| `tableUri` | `string` | Optional. BigQuery URI to a table, up to 2000 characters long, in the format `bq://projectId.bqDa... |
| `writeDisposition` | `string` | Optional. Determines whether the existing table in the destination is to be overwritten or append... |

### `GoogleCloudHealthcareV1DicomGcsDestination`

The Cloud Storage location where the server writes the output and the export configuration.

| Property | Type | Description |
|----------|------|-------------|
| `mimeType` | `string` | MIME types supported by DICOM spec. Each file is written in the following format: `.../{study_id}... |
| `uriPrefix` | `string` | The Cloud Storage destination to export to. URI for a Cloud Storage directory where the server wr... |

### `GoogleCloudHealthcareV1DicomGcsSource`

Specifies the configuration for importing data from Cloud Storage.

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` | Points to a Cloud Storage URI containing file(s) with content only. The URI must be in the follow... |

### `GoogleCloudHealthcareV1DicomStreamConfig`

StreamConfig specifies configuration for a streaming DICOM export.

| Property | Type | Description |
|----------|------|-------------|
| `bigqueryDestination` | `GoogleCloudHealthcareV1DicomBigQueryDestination` | Results are appended to this table. The server creates a new table in the given BigQuery dataset ... |

### `GoogleCloudHealthcareV1FhirBigQueryDestination`

The configuration for exporting to BigQuery.

| Property | Type | Description |
|----------|------|-------------|
| `datasetUri` | `string` | Optional. BigQuery URI to an existing dataset, up to 2000 characters long, in the format `bq://pr... |
| `force` | `boolean` | Optional. The default value is false. If this flag is `TRUE`, all tables are deleted from the dat... |
| `schemaConfig` | `SchemaConfig` | Optional. The configuration for the exported BigQuery schema. |
| `writeDisposition` | `string` | Optional. Determines if existing data in the destination dataset is overwritten, appended to, or ... |

### `GoogleCloudHealthcareV1FhirGcsDestination`

The configuration for exporting to Cloud Storage.

| Property | Type | Description |
|----------|------|-------------|
| `uriPrefix` | `string` | URI for a Cloud Storage directory where result files should be written, in the format of `gs://{b... |

### `GoogleCloudHealthcareV1FhirGcsSource`

Specifies the configuration for importing data from Cloud Storage.

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` | Points to a Cloud Storage URI containing file(s) to import. The URI must be in the following form... |

### `GroupOrSegment`

Construct representing a logical group or a segment.

| Property | Type | Description |
|----------|------|-------------|
| `group` | `SchemaGroup` |  |
| `segment` | `SchemaSegment` |  |

### `Hl7SchemaConfig`

Root config message for HL7v2 schema. This contains a schema structure of groups and segments, and filters that determine which messages to apply the schema structure to.

| Property | Type | Description |
|----------|------|-------------|
| `messageSchemaConfigs` | `object` | Map from each HL7v2 message type and trigger event pair, such as ADT_A04, to its schema configura... |
| `version` | `array<VersionSource>` | Each VersionSource is tested and only if they all match is the schema used for the message. |

### `Hl7TypesConfig`

Root config for HL7v2 datatype definitions for a specific HL7v2 version.

| Property | Type | Description |
|----------|------|-------------|
| `type` | `array<Type>` | The HL7v2 type definitions. |
| `version` | `array<VersionSource>` | The version selectors that this config applies to. A message must match ALL version sources to ap... |

### `Hl7V2NotificationConfig`

Specifies where and whether to send notifications upon changes to a data store.

| Property | Type | Description |
|----------|------|-------------|
| `filter` | `string` | Optional. Restricts notifications sent for messages matching a filter. If this is empty, all mess... |
| `pubsubTopic` | `string` | The [Pub/Sub](https://cloud.google.com/pubsub/docs/) topic that notifications of changes are publ... |

### `Hl7V2Store`

Represents an HL7v2 store.

| Property | Type | Description |
|----------|------|-------------|
| `labels` | `object` | User-supplied key-value pairs used to organize HL7v2 stores. Label keys must be between 1 and 63 ... |
| `name` | `string` | Identifier. Resource name of the HL7v2 store, of the form `projects/{project_id}/locations/{locat... |
| `notificationConfigs` | `array<Hl7V2NotificationConfig>` | Optional. A list of notification configs. Each configuration uses a filter to determine whether t... |
| `parserConfig` | `ParserConfig` | Optional. The configuration for the parser. It determines how the server parses the messages. |
| `rejectDuplicateMessage` | `boolean` | Optional. Determines whether to reject duplicate messages. A duplicate message is a message with ... |

### `Hl7V2StoreMetric`

Count of messages and total storage size by type for a given HL7 store.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `string` | The total count of HL7v2 messages in the store for the given message type. |
| `messageType` | `string` | The Hl7v2 message type this metric applies to, such as `ADT` or `ORU`. |
| `structuredStorageSizeBytes` | `string` | The total amount of structured storage used by HL7v2 messages of this message type in the store. |

### `Hl7V2StoreMetrics`

List of metrics for a given HL7v2 store.

| Property | Type | Description |
|----------|------|-------------|
| `metrics` | `array<Hl7V2StoreMetric>` | List of HL7v2 store metrics by message type. |
| `name` | `string` | The resource name of the HL7v2 store to get metrics for, in the format `projects/{project_id}/dat... |

### `HttpBody`

Message that represents an arbitrary HTTP body. It should only be used for payload formats that can't be represented as JSON, such as raw binary or an HTML page. This message can be used both in streaming and non-streaming API methods in the request as well as the response. It can be used as a top-level request field, which is convenient if one wants to extract parameters from either the URL or HTTP template into the request fields and also want access to the raw HTTP body. Example: message GetResourceRequest { // A unique request id. string request_id = 1; // The raw HTTP body is bound to this field. google.api.HttpBody http_body = 2; } service ResourceService { rpc GetResource(GetResourceRequest) returns (google.api.HttpBody); rpc UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty); } Example with streaming methods: service CaldavService { rpc GetCalendar(stream google.api.HttpBody) returns (stream google.api.HttpBody); rpc UpdateCalendar(stream google.api.HttpBody) returns (stream google.api.HttpBody); } Use of this type only changes how the request and response bodies are handled, all other features will continue to work unchanged.

| Property | Type | Description |
|----------|------|-------------|
| `contentType` | `string` | The HTTP Content-Type header value specifying the content type of the body. |
| `data` | `string` | The HTTP request/response body as raw binary. |
| `extensions` | `array<object>` | Application specific response metadata. Must be set in the first response for streaming APIs. |

### `Image`

Raw bytes representing consent artifact content.

| Property | Type | Description |
|----------|------|-------------|
| `gcsUri` | `string` | Input only. Points to a Cloud Storage URI containing the consent artifact content. The URI must b... |
| `rawBytes` | `string` | Consent artifact content represented as a stream of bytes. This field is populated when returned ... |

### `ImageConfig`

Specifies how to handle de-identification of image pixels.

| Property | Type | Description |
|----------|------|-------------|
| `textRedactionMode` | `string` | Optional. Determines how to redact text from image. |

### `ImportDicomDataRequest`

Imports data into the specified DICOM store. Returns an error if any of the files to import are not DICOM files. This API accepts duplicate DICOM instances by ignoring the newly-pushed instance. It does not overwrite.

| Property | Type | Description |
|----------|------|-------------|
| `blobStorageSettings` | `BlobStorageSettings` | Optional. The blob storage settings for the data imported by this operation. |
| `gcsSource` | `GoogleCloudHealthcareV1DicomGcsSource` | Cloud Storage source data location and import configuration. The Cloud Healthcare Service Agent r... |

### `ImportDicomDataResponse`

Returns additional information in regards to a completed DICOM store import.

### `ImportMessagesRequest`

Request to import messages.

| Property | Type | Description |
|----------|------|-------------|
| `gcsSource` | `GcsSource` | Cloud Storage source data location and import configuration. The Cloud Healthcare Service Agent r... |

### `ImportMessagesResponse`

Final response of importing messages. This structure is included in the response to describe the detailed outcome. It is only included when the operation finishes successfully.

### `ImportResourcesRequest`

Request to import resources.

| Property | Type | Description |
|----------|------|-------------|
| `contentStructure` | `string` | The content structure in the source location. If not specified, the server treats the input sourc... |
| `gcsSource` | `GoogleCloudHealthcareV1FhirGcsSource` | Cloud Storage source data location and import configuration. The Healthcare Service Agent account... |

### `ImportResourcesResponse`

Final response of importing resources. This structure is included in the response to describe the detailed outcome after the operation finishes successfully.

### `InfoTypeTransformation`

A transformation to apply to text that is identified as a specific info_type.

| Property | Type | Description |
|----------|------|-------------|
| `characterMaskConfig` | `CharacterMaskConfig` | Config for character mask. |
| `cryptoHashConfig` | `CryptoHashConfig` | Config for crypto hash. |
| `dateShiftConfig` | `DateShiftConfig` | Config for date shift. |
| `infoTypes` | `array<string>` | Optional. InfoTypes to apply this transformation to. If this is not specified, the transformation... |
| `redactConfig` | `RedactConfig` | Config for text redaction. |
| `replaceWithInfoTypeConfig` | `ReplaceWithInfoTypeConfig` | Config for replace with InfoType. |

### `IngestMessageRequest`

Ingests a message into the specified HL7v2 store.

| Property | Type | Description |
|----------|------|-------------|
| `message` | `Message` | Required. HL7v2 message to ingest. |

### `IngestMessageResponse`

Acknowledges that a message has been ingested into the specified HL7v2 store.

| Property | Type | Description |
|----------|------|-------------|
| `hl7Ack` | `string` | HL7v2 ACK message. |
| `message` | `Message` | Created message resource. |

### `KmsWrappedCryptoKey`

Include to use an existing data crypto key wrapped by KMS. The wrapped key must be a 128-, 192-, or 256-bit key. The key must grant the Cloud IAM permission `cloudkms.cryptoKeyVersions.useToDecrypt` to the project's Cloud Healthcare Service Agent service account. For more information, see [Creating a wrapped key] (https://cloud.google.com/dlp/docs/create-wrapped-key).

| Property | Type | Description |
|----------|------|-------------|
| `cryptoKey` | `string` | Required. The resource name of the KMS CryptoKey to use for unwrapping. For example, `projects/{p... |
| `wrappedKey` | `string` | Required. The wrapped data crypto key. |

### `LinkedEntity`

EntityMentions can be linked to multiple entities using a LinkedEntity message lets us add other fields, e.g. confidence.

| Property | Type | Description |
|----------|------|-------------|
| `entityId` | `string` | entity_id is a concept unique identifier. These are prefixed by a string that identifies the enti... |

### `ListAttributeDefinitionsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `attributeDefinitions` | `array<AttributeDefinition>` | The returned Attribute definitions. The maximum number of attributes returned is determined by th... |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |

### `ListConsentArtifactsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `consentArtifacts` | `array<ConsentArtifact>` | The returned Consent artifacts. The maximum number of artifacts returned is determined by the val... |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |

### `ListConsentRevisionsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `consents` | `array<Consent>` | The returned Consent revisions. The maximum number of revisions returned is determined by the val... |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |

### `ListConsentStoresResponse`

| Property | Type | Description |
|----------|------|-------------|
| `consentStores` | `array<ConsentStore>` | The returned consent stores. The maximum number of stores returned is determined by the value of ... |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |

### `ListConsentsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `consents` | `array<Consent>` | The returned Consents. The maximum number of Consents returned is determined by the value of page... |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |

### `ListDatasetsResponse`

Lists the available datasets.

| Property | Type | Description |
|----------|------|-------------|
| `datasets` | `array<Dataset>` | The first page of datasets. |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |

### `ListDicomStoresResponse`

Lists the DICOM stores in the given dataset.

| Property | Type | Description |
|----------|------|-------------|
| `dicomStores` | `array<DicomStore>` | The returned DICOM stores. Won't be more DICOM stores than the value of page_size in the request. |
| `nextPageToken` | `string` | Token to retrieve the next page of results or empty if there are no more results in the list. |

### `ListFhirStoresResponse`

Lists the FHIR stores in the given dataset.

| Property | Type | Description |
|----------|------|-------------|
| `fhirStores` | `array<FhirStore>` | The returned FHIR stores. Won't be more FHIR stores than the value of page_size in the request. |
| `nextPageToken` | `string` | Token to retrieve the next page of results or empty if there are no more results in the list. |

### `ListHl7V2StoresResponse`

Lists the HL7v2 stores in the given dataset.

| Property | Type | Description |
|----------|------|-------------|
| `hl7V2Stores` | `array<Hl7V2Store>` | The returned HL7v2 stores. Won't be more HL7v2 stores than the value of page_size in the request. |
| `nextPageToken` | `string` | Token to retrieve the next page of results or empty if there are no more results in the list. |

### `ListLocationsResponse`

The response message for Locations.ListLocations.

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<Location>` | A list of locations that matches the specified filter in the request. |
| `nextPageToken` | `string` | The standard List next-page token. |

### `ListMessagesResponse`

Lists the messages in the specified HL7v2 store.

| Property | Type | Description |
|----------|------|-------------|
| `hl7V2Messages` | `array<Message>` | The returned Messages. Won't be more Messages than the value of page_size in the request. See vie... |
| `nextPageToken` | `string` | Token to retrieve the next page of results or empty if there are no more results in the list. |

### `ListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<Operation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `ListUserDataMappingsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |
| `userDataMappings` | `array<UserDataMapping>` | The returned User data mappings. The maximum number of User data mappings returned is determined ... |

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

### `Message`

A complete HL7v2 message. See [Introduction to HL7 Standards] (https://www.hl7.org/implement/standards/index.cfm?ref=common) for details on the standard.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The datetime when the message was created. Set by the server. |
| `data` | `string` | Required. Raw message bytes. |
| `labels` | `object` | User-supplied key-value pairs used to organize HL7v2 stores. Label keys must be between 1 and 63 ... |
| `messageType` | `string` | Output only. The message type for this message. MSH-9.1. |
| `name` | `string` | Output only. Resource name of the Message, of the form `projects/{project_id}/locations/{location... |
| `parsedData` | `ParsedData` | Output only. The parsed version of the raw message data. |
| `patientIds` | `array<PatientId>` | Output only. All patient IDs listed in the PID-2, PID-3, and PID-4 segments of this message. |
| `schematizedData` | `SchematizedData` | Output only. The parsed version of the raw message data schematized according to this store's sch... |
| `sendFacility` | `string` | Output only. The hospital that this message came from. MSH-4. |
| `sendTime` | `string` | Output only. The datetime the sending application sent this message. MSH-7. |

### `NotificationConfig`

Specifies where to send notifications upon changes to a data store.

| Property | Type | Description |
|----------|------|-------------|
| `pubsubTopic` | `string` | The [Pub/Sub](https://cloud.google.com/pubsub/docs/) topic that notifications of changes are publ... |
| `sendForBulkImport` | `boolean` | Indicates whether or not to send Pub/Sub notifications on bulk import. Only supported for DICOM i... |

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

OperationMetadata provides information about the operation execution. Returned in the long-running operation's metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `apiMethodName` | `string` | The name of the API method that initiated the operation. |
| `cancelRequested` | `boolean` | Specifies if cancellation was requested for the operation. |
| `counter` | `ProgressCounter` |  |
| `createTime` | `string` | The time at which the operation was created by the API. |
| `endTime` | `string` | The time at which execution was completed. |
| `logsUrl` | `string` | A link to audit and error logs in the log viewer. Error logs are generated only by some operation... |

### `ParsedData`

The content of a HL7v2 message in a structured format.

| Property | Type | Description |
|----------|------|-------------|
| `segments` | `array<Segment>` |  |

### `ParserConfig`

The configuration for the parser. It determines how the server parses the messages.

| Property | Type | Description |
|----------|------|-------------|
| `allowNullHeader` | `boolean` | Optional. Determines whether messages with no header are allowed. |
| `schema` | `SchemaPackage` | Optional. Schemas used to parse messages in this store, if schematized parsing is desired. |
| `segmentTerminator` | `string` | Optional. Byte(s) to use as the segment terminator. If this is unset, '\r' is used as segment ter... |
| `version` | `string` | Immutable. Determines the version of both the default parser to be used when `schema` is not give... |

### `PatientId`

A patient identifier and associated type.

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | ID type. For example, MRN or NHS. |
| `value` | `string` | The patient's unique identifier. |

### `PatientScope`

Apply consents given by a list of patients.

| Property | Type | Description |
|----------|------|-------------|
| `patientIds` | `array<string>` | Optional. The list of patient IDs whose Consent resources will be enforced. At most 10,000 patien... |

### `Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `auditConfigs` | `array<AuditConfig>` | Specifies cloud audit logging configuration for this policy. |
| `bindings` | `array<Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `ProgressCounter`

ProgressCounter provides counters to describe an operation's progress.

| Property | Type | Description |
|----------|------|-------------|
| `failure` | `string` | The number of units that failed in the operation. |
| `pending` | `string` | The number of units that are pending in the operation. |
| `secondaryFailure` | `string` | The number of secondary units that failed in the operation. |
| `secondarySuccess` | `string` | The number of secondary units that succeeded in the operation. |
| `success` | `string` | The number of units that succeeded in the operation. |

### `PubsubDestination`

The Pub/Sub output destination. The Cloud Healthcare Service Agent requires the `roles/pubsub.publisher` Cloud IAM role on the Pub/Sub topic.

| Property | Type | Description |
|----------|------|-------------|
| `pubsubTopic` | `string` | The [Pub/Sub](https://cloud.google.com/pubsub/docs/) topic that Pub/Sub messages are published on... |

### `QueryAccessibleDataRequest`

Queries all data_ids that are consented for a given use in the given consent store and writes them to a specified destination. The returned Operation includes a progress counter for the number of User data mappings processed. Errors are logged to Cloud Logging (see [Viewing error logs in Cloud Logging] (https://cloud.google.com/healthcare/docs/how-tos/logging) and [QueryAccessibleData] for a sample log entry).

| Property | Type | Description |
|----------|------|-------------|
| `gcsDestination` | `GoogleCloudHealthcareV1ConsentGcsDestination` | The Cloud Storage destination. The Cloud Healthcare API service account must have the `roles/stor... |
| `requestAttributes` | `object` | The values of request attributes associated with this access request. |
| `resourceAttributes` | `object` | Optional. The values of resource attributes associated with the type of resources being requested... |

### `QueryAccessibleDataResponse`

Response for successful QueryAccessibleData operations. This structure is included in the response upon operation completion.

| Property | Type | Description |
|----------|------|-------------|
| `gcsUris` | `array<string>` | List of files, each of which contains a list of data_id(s) that are consented for a specified use... |

### `RedactConfig`

Define how to redact sensitive values. Default behaviour is erase. For example, "My name is Jane." becomes "My name is ."

### `RejectConsentRequest`

Rejects the latest revision of the specified Consent by committing a new revision with `state` updated to `REJECTED`. If the latest revision of the given Consent is in the `REJECTED` state, no new revision is committed.

| Property | Type | Description |
|----------|------|-------------|
| `consentArtifact` | `string` | Optional. The resource name of the Consent artifact that contains documentation of the user's rej... |

### `ReplaceWithInfoTypeConfig`

When using the INSPECT_AND_TRANSFORM action, each match is replaced with the name of the info_type. For example, "My name is Jane" becomes "My name is [PERSON_NAME]." The TRANSFORM action is equivalent to redacting.

### `Resources`

A list of FHIR resources.

| Property | Type | Description |
|----------|------|-------------|
| `resources` | `array<string>` | List of resources IDs. For example, "Patient/1234". |

### `Result`

The consent evaluation result for a single `data_id`.

| Property | Type | Description |
|----------|------|-------------|
| `consentDetails` | `object` | The resource names of all evaluated Consents mapped to their evaluation. |
| `consented` | `boolean` | Whether the resource is consented for the given use. |
| `dataId` | `string` | The unique identifier of the evaluated resource. |

### `RevokeConsentRequest`

Revokes the latest revision of the specified Consent by committing a new revision with `state` updated to `REVOKED`. If the latest revision of the given Consent is in the `REVOKED` state, no new revision is committed.

| Property | Type | Description |
|----------|------|-------------|
| `consentArtifact` | `string` | Optional. The resource name of the Consent artifact that contains proof of the user's revocation ... |

### `RollbackFhirResourceFilteringFields`

| Property | Type | Description |
|----------|------|-------------|
| `metadataFilter` | `string` | Optional. A filter expression that matches data in the `Resource.meta` element. Supports all filt... |
| `operationIds` | `array<string>` | Optional. A list of operation IDs to roll back. |

### `RollbackFhirResourcesRequest`

| Property | Type | Description |
|----------|------|-------------|
| `changeType` | `string` | Optional. CREATE/UPDATE/DELETE/ALL for reverting all txns of a certain type. |
| `excludeRollbacks` | `boolean` | Optional. Specifies whether to exclude earlier rollbacks. |
| `filteringFields` | `RollbackFhirResourceFilteringFields` | Optional. Parameters for filtering resources |
| `force` | `boolean` | Optional. When enabled, changes will be reverted without explicit confirmation |
| `inputGcsObject` | `string` | Optional. Cloud Storage object containing list of {resourceType}/{resourceId} lines, identifying ... |
| `resultGcsBucket` | `string` | Required. Bucket to deposit result |
| `rollbackTime` | `string` | Required. Time point to rollback to. |
| `type` | `array<string>` | Optional. If specified, revert only resources of these types |

### `RollbackFhirResourcesResponse`

Final response of rollback FIHR resources request.

| Property | Type | Description |
|----------|------|-------------|
| `fhirStore` | `string` | The name of the FHIR store to rollback, in the format of "projects/{project_id}/locations/{locati... |

### `RollbackHL7MessagesFilteringFields`

Filtering fields for an HL7v2 rollback. Currently only supports a list of operation ids to roll back.

| Property | Type | Description |
|----------|------|-------------|
| `operationIds` | `array<string>` | Optional. A list of operation IDs to roll back. |

### `RollbackHl7V2MessagesRequest`

Point in time recovery rollback request.

| Property | Type | Description |
|----------|------|-------------|
| `changeType` | `string` | Optional. CREATE/UPDATE/DELETE/ALL for reverting all txns of a certain type. |
| `excludeRollbacks` | `boolean` | Optional. Specifies whether to exclude earlier rollbacks. |
| `filteringFields` | `RollbackHL7MessagesFilteringFields` | Optional. Parameters for filtering. |
| `force` | `boolean` | Optional. When enabled, changes will be reverted without explicit confirmation. |
| `inputGcsObject` | `string` | Optional. Cloud storage object containing list of {resourceId} lines, identifying resources to be... |
| `resultGcsBucket` | `string` | Required. Bucket to deposit result |
| `rollbackTime` | `string` | Required. Times point to rollback to. |

### `RollbackHl7V2MessagesResponse`

Final response of rollback HL7v2 messages request.

| Property | Type | Description |
|----------|------|-------------|
| `hl7v2Store` | `string` | The name of the HL7v2 store to rollback, in the format of "projects/{project_id}/locations/{locat... |

### `SchemaConfig`

Configuration for the FHIR BigQuery schema. Determines how the server generates the schema.

| Property | Type | Description |
|----------|------|-------------|
| `lastUpdatedPartitionConfig` | `TimePartitioning` | The configuration for exported BigQuery tables to be partitioned by FHIR resource's last updated ... |
| `recursiveStructureDepth` | `string` | The depth for all recursive structures in the output analytics schema. For example, `concept` in ... |
| `schemaType` | `string` | Specifies the output schema type. Schema type is required. |

### `SchemaFlattened`

Using this field will flatten the DICOM instances into a BigQuery table. The table will have one column for each DICOM tag. The column name will be the DICOM tag's textual representation.

### `SchemaGroup`

An HL7v2 logical group construct.

| Property | Type | Description |
|----------|------|-------------|
| `choice` | `boolean` | True indicates that this is a choice group, meaning that only one of its segments can exist in a ... |
| `maxOccurs` | `integer` | The maximum number of times this group can be repeated. 0 or -1 means unbounded. |
| `members` | `array<GroupOrSegment>` | Nested groups and/or segments. |
| `minOccurs` | `integer` | The minimum number of times this group must be present/repeated. |
| `name` | `string` | The name of this group. For example, "ORDER_DETAIL". |

### `SchemaJSON`

Using this field will set the schema such that all DICOM tags will be included in the BigQuery table as a single JSON type column. The BigQuery table schema will include the following columns: * `StudyInstanceUID` (Type: STRING): DICOM Tag 0020000D. * `SeriesInstanceUID` (Type: STRING): DICOM Tag 0020000E. * `SOPInstanceUID` (Type: STRING): DICOM Tag 00080018. * `SourceDicomStore` (Type: STRING): The name of the source DICOM store. This field is only included if the `include_source_store` option is set to true. * `Metadata` (Type: JSON): All DICOM tags for the instance, stored in a single JSON object. * `StructuredStorageSize` (Type: INTEGER): Size of the structured storage in bytes. * `DroppedTags` (Type: STRING, Repeated: Yes): List of tags that were dropped during the conversion. * `StorageClass` (Type: STRING): The storage class of the instance. * `LastUpdated` (Type: TIMESTAMP): Timestamp of the last update to the instance. * `BlobStorageSize` (Type: INTEGER): Size of the blob storage in bytes. * `Type` (Type: STRING): Indicates the type of operation (e.g., INSERT, DELETE).

### `SchemaPackage`

A schema package contains a set of schemas and type definitions.

| Property | Type | Description |
|----------|------|-------------|
| `ignoreMinOccurs` | `boolean` | Optional. Flag to ignore all min_occurs restrictions in the schema. This means that incoming mess... |
| `schemas` | `array<Hl7SchemaConfig>` | Optional. Schema configs that are layered based on their VersionSources that match the incoming m... |
| `schematizedParsingType` | `string` | Optional. Determines how messages that fail to parse are handled. |
| `types` | `array<Hl7TypesConfig>` | Optional. Schema type definitions that are layered based on their VersionSources that match the i... |
| `unexpectedSegmentHandling` | `string` | Optional. Determines how unexpected segments (segments not matched to the schema) are handled. |

### `SchemaSegment`

An HL7v2 Segment.

| Property | Type | Description |
|----------|------|-------------|
| `maxOccurs` | `integer` | The maximum number of times this segment can be present in this group. 0 or -1 means unbounded. |
| `minOccurs` | `integer` | The minimum number of times this segment can be present in this group. |
| `type` | `string` | The Segment type. For example, "PID". |

### `SchematizedData`

The content of an HL7v2 message in a structured format as specified by a schema.

| Property | Type | Description |
|----------|------|-------------|
| `data` | `string` | JSON output of the parser. |
| `error` | `string` | The error output of the parser. |

### `Segment`

A segment in a structured format.

| Property | Type | Description |
|----------|------|-------------|
| `fields` | `object` | A mapping from the positional location to the value. The key string uses zero-based indexes separ... |
| `segmentId` | `string` | A string that indicates the type of segment. For example, EVN or PID. |
| `setId` | `string` | Set ID for segments that can be in a set. This can be empty if it's missing or isn't applicable. |

### `SeriesMetrics`

SeriesMetrics contains metrics describing a DICOM series.

| Property | Type | Description |
|----------|------|-------------|
| `blobStorageSizeBytes` | `string` | Total blob storage bytes for all instances in the series. |
| `instanceCount` | `string` | Number of instances in the series. |
| `series` | `string` | The series resource path. For example, `projects/{project_id}/locations/{location_id}/datasets/{d... |
| `structuredStorageSizeBytes` | `string` | Total structured storage bytes for all instances in the series. |

### `SetBlobStorageSettingsRequest`

Request message for `SetBlobStorageSettings` method.

| Property | Type | Description |
|----------|------|-------------|
| `blobStorageSettings` | `BlobStorageSettings` | The blob storage settings to update for the specified resources. Only fields listed in `update_ma... |
| `filterConfig` | `DicomFilterConfig` | Optional. A filter configuration. If `filter_config` is specified, set the value of `resource` to... |

### `SetBlobStorageSettingsResponse`

Returns additional info in regards to a completed set blob storage settings API.

### `SetIamPolicyRequest`

Request message for `SetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `Policy` | REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited ... |
| `updateMask` | `string` | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mas... |

### `Signature`

User signature.

| Property | Type | Description |
|----------|------|-------------|
| `image` | `Image` | Optional. An image of the user's signature. |
| `metadata` | `object` | Optional. Metadata associated with the user's signature. For example, the user's name or the user... |
| `signatureTime` | `string` | Optional. Timestamp of the signature. |
| `userId` | `string` | Required. User's UUID provided by the client. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `StorageInfo`

StorageInfo encapsulates all the storage info of a resource.

| Property | Type | Description |
|----------|------|-------------|
| `blobStorageInfo` | `BlobStorageInfo` | Info about the data stored in blob storage for the resource. |
| `referencedResource` | `string` | The resource whose storage info is returned. For example: `projects/{projectID}/locations/{locati... |
| `structuredStorageInfo` | `StructuredStorageInfo` | Info about the data stored in structured storage for the resource. |

### `StreamConfig`

Contains configuration for streaming FHIR export.

| Property | Type | Description |
|----------|------|-------------|
| `bigqueryDestination` | `GoogleCloudHealthcareV1FhirBigQueryDestination` | Optional. The destination BigQuery structure that contains both the dataset location and correspo... |
| `deidentifiedStoreDestination` | `DeidentifiedStoreDestination` | The destination FHIR store for de-identified resources. After this field is added, all subsequent... |
| `resourceTypes` | `array<string>` | Optional. Supply a FHIR resource type (such as "Patient" or "Observation"). See https://www.hl7.o... |

### `StructuredStorageInfo`

StructuredStorageInfo contains details about the data stored in Structured Storage for the referenced resource.

| Property | Type | Description |
|----------|------|-------------|
| `sizeBytes` | `string` | Size in bytes of data stored in structured storage. |

### `StudyMetrics`

StudyMetrics contains metrics describing a DICOM study.

| Property | Type | Description |
|----------|------|-------------|
| `blobStorageSizeBytes` | `string` | Total blob storage bytes for all instances in the study. |
| `instanceCount` | `string` | Number of instances in the study. |
| `seriesCount` | `string` | Number of series in the study. |
| `structuredStorageSizeBytes` | `string` | Total structured storage bytes for all instances in the study. |
| `study` | `string` | The study resource path. For example, `projects/{project_id}/locations/{location_id}/datasets/{da... |

### `TagFilterList`

List of tags to be filtered.

| Property | Type | Description |
|----------|------|-------------|
| `tags` | `array<string>` | Optional. Tags to be filtered. Tags must be DICOM Data Elements, File Meta Elements, or Directory... |

### `TestIamPermissionsRequest`

Request message for `TestIamPermissions` method.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | The set of permissions to check for the `resource`. Permissions with wildcards (such as `*` or `s... |

### `TestIamPermissionsResponse`

Response message for `TestIamPermissions` method.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | A subset of `TestPermissionsRequest.permissions` that the caller is allowed. |

### `TextConfig`

| Property | Type | Description |
|----------|------|-------------|
| `additionalTransformations` | `array<InfoTypeTransformation>` | Optional. Transformations to apply to the detected data, overridden by `exclude_info_types`. |
| `excludeInfoTypes` | `array<string>` | Optional. InfoTypes to skip transforming, overriding `additional_transformations`. |
| `transformations` | `array<InfoTypeTransformation>` | Optional. The transformations to apply to the detected data. Deprecated. Use `additional_transfor... |

### `TextSpan`

A span of text in the provided document.

| Property | Type | Description |
|----------|------|-------------|
| `beginOffset` | `integer` | The unicode codepoint index of the beginning of this span. |
| `content` | `string` | The original text contained in this span. |

### `TimePartitioning`

Configuration for FHIR BigQuery time-partitioned tables.

| Property | Type | Description |
|----------|------|-------------|
| `expirationMs` | `string` | Number of milliseconds for which to keep the storage for a partition. |
| `type` | `string` | Type of partitioning. |

### `TimeRange`

Apply consents given by patients whose most recent consent changes are in the time range. Note that after identifying these patients, the server applies all Consent resources given by those patients, not just the Consent resources within the timestamp in the range.

| Property | Type | Description |
|----------|------|-------------|
| `end` | `string` | Optional. The latest consent change time, in format YYYY-MM-DDThh:mm:ss.sss+zz:zz If not specifie... |
| `start` | `string` | Optional. The earliest consent change time, in format YYYY-MM-DDThh:mm:ss.sss+zz:zz If not specif... |

### `Type`

A type definition for some HL7v2 type (incl. Segments and Datatypes).

| Property | Type | Description |
|----------|------|-------------|
| `fields` | `array<Field>` | The (sub) fields this type has (if not primitive). |
| `name` | `string` | The name of this type. This would be the segment or datatype name. For example, "PID" or "XPN". |
| `primitive` | `string` | If this is a primitive type then this field is the type of the primitive For example, STRING. Lea... |

### `UserDataMapping`

Maps a resource to the associated user and Attributes.

| Property | Type | Description |
|----------|------|-------------|
| `archiveTime` | `string` | Output only. Indicates the time when this mapping was archived. |
| `archived` | `boolean` | Output only. Indicates whether this mapping is archived. |
| `dataId` | `string` | Required. A unique identifier for the mapped resource. |
| `name` | `string` | Resource name of the User data mapping, of the form `projects/{project_id}/locations/{location_id... |
| `resourceAttributes` | `array<Attribute>` | Attributes of the resource. Only explicitly set attributes are displayed here. Attribute definiti... |
| `userId` | `string` | Required. User's UUID provided by the client. |

### `ValidationConfig`

Contains the configuration for FHIR profiles and validation.

| Property | Type | Description |
|----------|------|-------------|
| `disableFhirpathValidation` | `boolean` | Optional. Whether to disable FHIRPath validation for incoming resources. The default value is fal... |
| `disableProfileValidation` | `boolean` | Optional. Whether to disable profile validation for this FHIR store. The default value is false. ... |
| `disableReferenceTypeValidation` | `boolean` | Optional. Whether to disable reference type validation for incoming resources. The default value ... |
| `disableRequiredFieldValidation` | `boolean` | Optional. Whether to disable required fields validation for incoming resources. The default value... |
| `enableFhirpathProfileValidation` | `boolean` | Optional. Whether to enable FHIRPath validation for incoming resource types that have profiles co... |
| `enabledImplementationGuides` | `array<string>` | Optional. A list of implementation guide URLs in this FHIR store that are used to configure the p... |

### `VersionSource`

Describes a selector for extracting and matching an MSH field to a value.

| Property | Type | Description |
|----------|------|-------------|
| `mshField` | `string` | The field to extract from the MSH segment. For example, "3.1" or "18[1].1". |
| `value` | `string` | The value to match with the field. For example, "My Application Name" or "2.3". |

