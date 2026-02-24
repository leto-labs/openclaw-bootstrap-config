# Apigee API - API Reference

**Version**: `v1` | **Methods**: 373 | **Schemas**: 344

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `apigee.organizations.setSyncAuthorization` | POST | `v1/{+name}:setSyncAuthorization` | Sets the permissions required to allow the Synchronizer to download environment data from the con... |
| `apigee.organizations.update` | PUT | `v1/{+name}` | Updates the properties for an Apigee organization. No other fields in the organization profile wi... |
| `apigee.organizations.updateSecuritySettings` | PATCH | `v1/{+name}` | UpdateSecuritySettings updates the current security settings for API Security. |
| `apigee.organizations.list` | GET | `v1/{+parent}` | Lists the Apigee organizations and associated Google Cloud projects that you have permission to a... |
| `apigee.organizations.delete` | DELETE | `v1/{+name}` | Delete an Apigee organization. For organizations with BillingType EVALUATION, an immediate deleti... |
| `apigee.organizations.getControlPlaneAccess` | GET | `v1/{+name}` | Lists the service accounts allowed to access Apigee control plane directly for limited functional... |
| `apigee.organizations.setAddons` | POST | `v1/{+org}:setAddons` | Configures the add-ons for the Apigee organization. The existing add-on configuration will be ful... |
| `apigee.organizations.updateControlPlaneAccess` | PATCH | `v1/{+name}` | Updates the permissions required to allow Apigee runtime-plane components access to the control p... |
| `apigee.organizations.getSecuritySettings` | GET | `v1/{+name}` | GetSecuritySettings gets the security settings for API Security. |
| `apigee.organizations.getDeployedIngressConfig` | GET | `v1/{+name}` | Gets the deployed ingress configuration for an organization. |
| `apigee.organizations.get` | GET | `v1/{+name}` | Gets the profile for an Apigee organization. See [Understanding organizations](https://cloud.goog... |
| `apigee.organizations.create` | POST | `v1/organizations` | Creates an Apigee organization. See [Create an Apigee organization](https://cloud.google.com/apig... |
| `apigee.organizations.getProjectMapping` | GET | `v1/{+name}:getProjectMapping` | Gets the project ID and region for an Apigee organization. |
| `apigee.organizations.getSyncAuthorization` | POST | `v1/{+name}:getSyncAuthorization` | Lists the service accounts with the permissions required to allow the Synchronizer to download en... |
| `apigee.organizations.getRuntimeConfig` | GET | `v1/{+name}` | Get runtime config for an organization. |
| `apigee.organizations.deployments.list` | GET | `v1/{+parent}/deployments` | Lists all deployments of API proxies or shared flows. |
| `apigee.organizations.instances.delete` | DELETE | `v1/{+name}` | Deletes an Apigee runtime instance. The instance stops serving requests and the runtime data is d... |
| `apigee.organizations.instances.list` | GET | `v1/{+parent}/instances` | Lists all Apigee runtime instances for the organization. **Note:** Not supported for Apigee hybrid. |
| `apigee.organizations.instances.create` | POST | `v1/{+parent}/instances` | Creates an Apigee runtime instance. The instance is accessible from the authorized network config... |
| `apigee.organizations.instances.get` | GET | `v1/{+name}` | Gets the details for an Apigee runtime instance. **Note:** Not supported for Apigee hybrid. |
| `apigee.organizations.instances.patch` | PATCH | `v1/{+name}` | Updates an Apigee runtime instance. You can update the fields described in NodeConfig. No other f... |
| `apigee.organizations.instances.reportStatus` | POST | `v1/{+instance}:reportStatus` | Reports the latest status for a runtime instance. |
| `apigee.organizations.instances.canaryevaluations.create` | POST | `v1/{+parent}/canaryevaluations` | Creates a new canary evaluation for an organization. |
| `apigee.organizations.instances.canaryevaluations.get` | GET | `v1/{+name}` | Gets a CanaryEvaluation for an organization. |
| `apigee.organizations.instances.natAddresses.list` | GET | `v1/{+parent}/natAddresses` | Lists the NAT addresses for an Apigee instance. **Note:** Not supported for Apigee hybrid. |
| `apigee.organizations.instances.natAddresses.activate` | POST | `v1/{+name}:activate` | Activates the NAT address. The Apigee instance can now use this for Internet egress traffic. **No... |
| `apigee.organizations.instances.natAddresses.delete` | DELETE | `v1/{+name}` | Deletes the NAT address. Connections that are actively using the address are drained before it is... |
| `apigee.organizations.instances.natAddresses.get` | GET | `v1/{+name}` | Gets the details of a NAT address. **Note:** Not supported for Apigee hybrid. |
| `apigee.organizations.instances.natAddresses.create` | POST | `v1/{+parent}/natAddresses` | Creates a NAT address. The address is created in the RESERVED state and a static external IP addr... |
| `apigee.organizations.instances.attachments.create` | POST | `v1/{+parent}/attachments` | Creates a new attachment of an environment to an instance. **Note:** Not supported for Apigee hyb... |
| `apigee.organizations.instances.attachments.get` | GET | `v1/{+name}` | Gets an attachment. **Note:** Not supported for Apigee hybrid. |
| `apigee.organizations.instances.attachments.list` | GET | `v1/{+parent}/attachments` | Lists all attachments to an instance. **Note:** Not supported for Apigee hybrid. |
| `apigee.organizations.instances.attachments.delete` | DELETE | `v1/{+name}` | Deletes an attachment. **Note:** Not supported for Apigee hybrid. |
| `apigee.organizations.apimServiceExtensions.list` | GET | `v1/{+parent}/apimServiceExtensions` | Lists all APIM service extensions in an organization. |
| `apigee.organizations.apimServiceExtensions.delete` | DELETE | `v1/{+name}` | Deletes APIM service extension from an organization. |
| `apigee.organizations.apimServiceExtensions.create` | POST | `v1/{+parent}/apimServiceExtensions` | Creates an APIM ServiceExtension in an organization. |
| `apigee.organizations.apimServiceExtensions.get` | GET | `v1/{+name}` | Gets APIM service extension details. |
| `apigee.organizations.apimServiceExtensions.patch` | PATCH | `v1/{+name}` | Updates an APIM service extension in an organization. |
| `apigee.organizations.reports.create` | POST | `v1/{+parent}/reports` | Creates a Custom Report for an Organization. A Custom Report provides Apigee Customers to create ... |
| `apigee.organizations.reports.get` | GET | `v1/{+name}` | Retrieve a custom report definition. |
| `apigee.organizations.reports.list` | GET | `v1/{+parent}/reports` | Return a list of Custom Reports |
| `apigee.organizations.reports.delete` | DELETE | `v1/{+name}` | Deletes an existing custom report definition |
| `apigee.organizations.reports.update` | PUT | `v1/{+name}` | Update an existing custom report definition |
| `apigee.organizations.apps.list` | GET | `v1/{+parent}/apps` | Lists IDs of apps within an organization that have the specified app status (approved or revoked)... |
| `apigee.organizations.apps.get` | GET | `v1/{+name}` | Gets the app profile for the specified app ID. |
| `apigee.organizations.developers.setDeveloperStatus` | POST | `v1/{+name}` | Sets the status of a developer. A developer is `active` by default. If you set a developer's stat... |
| `apigee.organizations.developers.create` | POST | `v1/{+parent}/developers` | Creates a developer. Once created, the developer can register an app and obtain an API key. At cr... |
| `apigee.organizations.developers.get` | GET | `v1/{+name}` | Returns the developer details, including the developer's name, email address, apps, and other inf... |
| `apigee.organizations.developers.delete` | DELETE | `v1/{+name}` | Deletes a developer. All apps and API keys associated with the developer are also removed. **Warn... |
| `apigee.organizations.developers.list` | GET | `v1/{+parent}/developers` | Lists all developers in an organization by email address. By default, the response does not inclu... |
| `apigee.organizations.developers.updateMonetizationConfig` | PUT | `v1/{+name}` | Updates the monetization configuration for the developer. |
| `apigee.organizations.developers.update` | PUT | `v1/{+name}` | Updates a developer. This API replaces the existing developer details with those specified in the... |
| `apigee.organizations.developers.getBalance` | GET | `v1/{+name}` | Gets the account balance for the developer. |
| `apigee.organizations.developers.attributes` | POST | `v1/{+parent}/attributes` | Updates developer attributes. This API replaces the existing attributes with those specified in t... |
| `apigee.organizations.developers.getMonetizationConfig` | GET | `v1/{+name}` | Gets the monetization configuration for the developer. |
| `apigee.organizations.developers.apps.update` | PUT | `v1/{+name}` | Updates the details for a developer app. In addition, you can add an API product to a developer a... |
| `apigee.organizations.developers.apps.generateKeyPairOrUpdateDeveloperAppStatus` | POST | `v1/{+name}` | Manages access to a developer app by enabling you to: * Approve or revoke a developer app * Gener... |
| `apigee.organizations.developers.apps.delete` | DELETE | `v1/{+name}` | Deletes a developer app. **Note**: The delete operation is asynchronous. The developer app is del... |
| `apigee.organizations.developers.apps.list` | GET | `v1/{+parent}/apps` | Lists all apps created by a developer in an Apigee organization. Optionally, you can request an e... |
| `apigee.organizations.developers.apps.create` | POST | `v1/{+parent}/apps` | Creates an app associated with a developer. This API associates the developer app with the specif... |
| `apigee.organizations.developers.apps.get` | GET | `v1/{+name}` | Returns the details for a developer app. |
| `apigee.organizations.developers.apps.attributes` | POST | `v1/{+name}/attributes` | Updates attributes for a developer app. This API replaces the current attributes with those speci... |
| `apigee.organizations.developers.apps.attributes.get` | GET | `v1/{+name}` | Returns a developer app attribute. |
| `apigee.organizations.developers.apps.attributes.updateDeveloperAppAttribute` | POST | `v1/{+name}` | Updates a developer app attribute. **Note**: OAuth access tokens and Key Management Service (KMS)... |
| `apigee.organizations.developers.apps.attributes.delete` | DELETE | `v1/{+name}` | Deletes a developer app attribute. |
| `apigee.organizations.developers.apps.attributes.list` | GET | `v1/{+parent}/attributes` | Returns a list of all developer app attributes. |
| `apigee.organizations.developers.apps.keys.updateDeveloperAppKey` | POST | `v1/{+name}` | Adds an API product to a developer app key, enabling the app that holds the key to access the API... |
| `apigee.organizations.developers.apps.keys.replaceDeveloperAppKey` | PUT | `v1/{+name}` | Updates the scope of an app. This API replaces the existing scopes with those specified in the re... |
| `apigee.organizations.developers.apps.keys.delete` | DELETE | `v1/{+name}` | Deletes an app's consumer key and removes all API products associated with the app. After the con... |
| `apigee.organizations.developers.apps.keys.create` | POST | `v1/{+parent}/keys` | Creates a custom consumer key and secret for a developer app. This is particularly useful if you ... |
| `apigee.organizations.developers.apps.keys.get` | GET | `v1/{+name}` | Gets details for a consumer key for a developer app, including the key and secret value, associat... |
| `apigee.organizations.developers.apps.keys.create.create` | POST | `v1/{+parent}/keys/create` | Creates a custom consumer key and secret for a developer app. This is particularly useful if you ... |
| `apigee.organizations.developers.apps.keys.apiproducts.updateDeveloperAppKeyApiProduct` | POST | `v1/{+name}` | Approves or revokes the consumer key for an API product. After a consumer key is approved, the ap... |
| `apigee.organizations.developers.apps.keys.apiproducts.delete` | DELETE | `v1/{+name}` | Removes an API product from an app's consumer key. After the API product is removed, the app cann... |
| `apigee.organizations.developers.attributes.delete` | DELETE | `v1/{+name}` | Deletes a developer attribute. |
| `apigee.organizations.developers.attributes.list` | GET | `v1/{+parent}/attributes` | Returns a list of all developer attributes. |
| `apigee.organizations.developers.attributes.get` | GET | `v1/{+name}` | Returns the value of the specified developer attribute. |
| `apigee.organizations.developers.attributes.updateDeveloperAttribute` | POST | `v1/{+name}` | Updates a developer attribute. **Note**: OAuth access tokens and Key Management Service (KMS) ent... |
| `apigee.organizations.developers.subscriptions.expire` | POST | `v1/{+name}:expire` | Expires an API product subscription immediately. |
| `apigee.organizations.developers.subscriptions.create` | POST | `v1/{+parent}/subscriptions` | Creates a subscription to an API product. |
| `apigee.organizations.developers.subscriptions.get` | GET | `v1/{+name}` | Gets details for an API product subscription. |
| `apigee.organizations.developers.subscriptions.list` | GET | `v1/{+parent}/subscriptions` | Lists all API product subscriptions for a developer. |
| `apigee.organizations.developers.balance.credit` | POST | `v1/{+name}:credit` | Credits the account balance for the developer. |
| `apigee.organizations.developers.balance.adjust` | POST | `v1/{+name}:adjust` | Adjust the prepaid balance for the developer. This API will be used in scenarios where the develo... |
| `apigee.organizations.endpointAttachments.list` | GET | `v1/{+parent}/endpointAttachments` | Lists the endpoint attachments in an organization. |
| `apigee.organizations.endpointAttachments.delete` | DELETE | `v1/{+name}` | Deletes an endpoint attachment. |
| `apigee.organizations.endpointAttachments.create` | POST | `v1/{+parent}/endpointAttachments` | Creates an endpoint attachment. **Note:** Not supported for Apigee hybrid. |
| `apigee.organizations.endpointAttachments.get` | GET | `v1/{+name}` | Gets the endpoint attachment. |
| `apigee.organizations.securityProfiles.create` | POST | `v1/{+parent}/securityProfiles` | CreateSecurityProfile create a new custom security profile. |
| `apigee.organizations.securityProfiles.get` | GET | `v1/{+name}` | GetSecurityProfile gets the specified security profile. Returns NOT_FOUND if security profile is ... |
| `apigee.organizations.securityProfiles.delete` | DELETE | `v1/{+name}` | DeleteSecurityProfile delete a profile with all its revisions. |
| `apigee.organizations.securityProfiles.list` | GET | `v1/{+parent}/securityProfiles` | ListSecurityProfiles lists all the security profiles associated with the org including attached a... |
| `apigee.organizations.securityProfiles.listRevisions` | GET | `v1/{+name}:listRevisions` | ListSecurityProfileRevisions lists all the revisions of the security profile. |
| `apigee.organizations.securityProfiles.patch` | PATCH | `v1/{+name}` | UpdateSecurityProfile update the metadata of security profile. |
| `apigee.organizations.securityProfiles.environments.delete` | DELETE | `v1/{+name}` | DeleteSecurityProfileEnvironmentAssociation removes profile environment association i.e. detaches... |
| `apigee.organizations.securityProfiles.environments.create` | POST | `v1/{+parent}/environments` | CreateSecurityProfileEnvironmentAssociation creates profile environment association i.e. attaches... |
| `apigee.organizations.securityProfiles.environments.computeEnvironmentScores` | POST | `v1/{+profileEnvironment}:computeEnvironmentScores` | ComputeEnvironmentScores calculates scores for requested time range for the specified security pr... |
| `apigee.organizations.hostStats.get` | GET | `v1/{+name}` | Retrieve metrics grouped by dimensions in host level. The types of metrics you can retrieve inclu... |
| `apigee.organizations.securityMonitoringConditions.patch` | PATCH | `v1/{+name}` | Update a security monitoring condition. |
| `apigee.organizations.securityMonitoringConditions.create` | POST | `v1/{+parent}/securityMonitoringConditions` | Create a security monitoring condition. |
| `apigee.organizations.securityMonitoringConditions.get` | GET | `v1/{+name}` | Get a security monitoring condition. |
| `apigee.organizations.securityMonitoringConditions.list` | GET | `v1/{+parent}/securityMonitoringConditions` | List security monitoring conditions. |
| `apigee.organizations.securityMonitoringConditions.delete` | DELETE | `v1/{+name}` | Delete a security monitoring condition. |
| `apigee.organizations.environments.updateDebugmask` | PATCH | `v1/{+name}` | Updates the debug mask singleton resource for an environment. |
| `apigee.organizations.environments.delete` | DELETE | `v1/{+name}` | Deletes an environment from an organization. **Warning: You must delete all key value maps and ke... |
| `apigee.organizations.environments.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the IAM policy on an environment, if the policy already exists it will be replaced. For more... |
| `apigee.organizations.environments.unsubscribe` | POST | `v1/{+parent}:unsubscribe` | Deletes a subscription for the environment's Pub/Sub topic. |
| `apigee.organizations.environments.updateTraceConfig` | PATCH | `v1/{+name}` | Updates the trace configurations in an environment. Note that the repeated fields have replace se... |
| `apigee.organizations.environments.getDeployedConfig` | GET | `v1/{+name}` | Gets the deployed configuration for an environment. |
| `apigee.organizations.environments.getTraceConfig` | GET | `v1/{+name}` | Get distributed trace configuration in an environment. |
| `apigee.organizations.environments.update` | PUT | `v1/{+name}` | Updates an existing environment. When updating properties, you must pass all existing properties ... |
| `apigee.organizations.environments.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Tests the permissions of a user on an environment, and returns a subset of permissions that the u... |
| `apigee.organizations.environments.modifyEnvironment` | PATCH | `v1/{+name}` | Updates properties for an Apigee environment with patch semantics using a field mask. **Note:** N... |
| `apigee.organizations.environments.updateSecurityActionsConfig` | PATCH | `v1/{+name}` | UpdateSecurityActionConfig updates the current SecurityActions configuration. This method is used... |
| `apigee.organizations.environments.getDebugmask` | GET | `v1/{+name}` | Gets the debug mask singleton resource for an environment. |
| `apigee.organizations.environments.create` | POST | `v1/{+parent}/environments` | Creates an environment in an organization. |
| `apigee.organizations.environments.get` | GET | `v1/{+name}` | Gets environment details. |
| `apigee.organizations.environments.getSecurityActionsConfig` | GET | `v1/{+name}` | GetSecurityActionConfig returns the current SecurityActions configuration. |
| `apigee.organizations.environments.subscribe` | POST | `v1/{+parent}:subscribe` | Creates a subscription for the environment's Pub/Sub topic. The server will assign a random name ... |
| `apigee.organizations.environments.getAddonsConfig` | GET | `v1/{+name}` | Gets the add-ons config of an environment. |
| `apigee.organizations.environments.updateEnvironment` | POST | `v1/{+name}` | Updates an existing environment. When updating properties, you must pass all existing properties ... |
| `apigee.organizations.environments.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the IAM policy on an environment. For more information, see [Manage users, roles, and permis... |
| `apigee.organizations.environments.getApiSecurityRuntimeConfig` | GET | `v1/{+name}` | Gets the API Security runtime configuration for an environment. This named ApiSecurityRuntimeConf... |
| `apigee.organizations.environments.securityIncidents.list` | GET | `v1/{+parent}/securityIncidents` | ListSecurityIncidents lists all the security incident associated with the environment. |
| `apigee.organizations.environments.securityIncidents.patch` | PATCH | `v1/{+name}` | UpdateSecurityIncidents updates an existing security incident. |
| `apigee.organizations.environments.securityIncidents.get` | GET | `v1/{+name}` | GetSecurityIncident gets the specified security incident. Returns NOT_FOUND if security incident ... |
| `apigee.organizations.environments.securityIncidents.batchUpdate` | POST | `v1/{+parent}/securityIncidents:batchUpdate` | BatchUpdateSecurityIncident updates multiple existing security incidents. |
| `apigee.organizations.environments.apis.revisions.undeploy` | DELETE | `v1/{+name}/deployments` | Undeploys an API proxy revision from an environment. For a request path `organizations/{org}/envi... |
| `apigee.organizations.environments.apis.revisions.deploy` | POST | `v1/{+name}/deployments` | Deploys a revision of an API proxy. If another revision of the same API proxy revision is current... |
| `apigee.organizations.environments.apis.revisions.getDeployments` | GET | `v1/{+name}/deployments` | Gets the deployment of an API proxy revision and actual state reported by runtime pods. |
| `apigee.organizations.environments.apis.revisions.deployments.generateDeployChangeReport` | POST | `v1/{+name}/deployments:generateDeployChangeReport` | Generates a report for a dry run analysis of a DeployApiProxy request without committing the depl... |
| `apigee.organizations.environments.apis.revisions.deployments.generateUndeployChangeReport` | POST | `v1/{+name}/deployments:generateUndeployChangeReport` | Generates a report for a dry run analysis of an UndeployApiProxy request without committing the u... |
| `apigee.organizations.environments.apis.revisions.debugsessions.create` | POST | `v1/{+parent}/debugsessions` | Creates a debug session for a deployed API Proxy revision. |
| `apigee.organizations.environments.apis.revisions.debugsessions.get` | GET | `v1/{+name}` | Retrieves a debug session. |
| `apigee.organizations.environments.apis.revisions.debugsessions.list` | GET | `v1/{+parent}/debugsessions` | Lists debug sessions that are currently active in the given API Proxy revision. |
| `apigee.organizations.environments.apis.revisions.debugsessions.deleteData` | DELETE | `v1/{+name}/data` | Deletes the data from a debug session. This does not cancel the debug session or prevent further ... |
| `apigee.organizations.environments.apis.revisions.debugsessions.data.get` | GET | `v1/{+name}` | Gets the debug data from a transaction. |
| `apigee.organizations.environments.apis.deployments.list` | GET | `v1/{+parent}/deployments` | Lists all deployments of an API proxy in an environment. |
| `apigee.organizations.environments.optimizedStats.get` | GET | `v1/{+name}` | Similar to GetStats except that the response is less verbose. |
| `apigee.organizations.environments.addonsConfig.setAddonEnablement` | POST | `v1/{+name}:setAddonEnablement` | Updates an add-on enablement status of an environment. |
| `apigee.organizations.environments.flowhooks.detachSharedFlowFromFlowHook` | DELETE | `v1/{+name}` | Detaches a shared flow from a flow hook. |
| `apigee.organizations.environments.flowhooks.get` | GET | `v1/{+name}` | Returns the name of the shared flow attached to the specified flow hook. If there's no shared flo... |
| `apigee.organizations.environments.flowhooks.attachSharedFlowToFlowHook` | PUT | `v1/{+name}` | Attaches a shared flow to a flow hook. |
| `apigee.organizations.environments.references.create` | POST | `v1/{+parent}/references` | Creates a Reference in the specified environment. |
| `apigee.organizations.environments.references.get` | GET | `v1/{+name}` | Gets a Reference resource. |
| `apigee.organizations.environments.references.delete` | DELETE | `v1/{+name}` | Deletes a Reference from an environment. Returns the deleted Reference resource. |
| `apigee.organizations.environments.references.update` | PUT | `v1/{+name}` | Updates an existing Reference. Note that this operation has PUT semantics; it will replace the en... |
| `apigee.organizations.environments.archiveDeployments.patch` | PATCH | `v1/{+name}` | Updates an existing ArchiveDeployment. Labels can modified but most of the other fields are not m... |
| `apigee.organizations.environments.archiveDeployments.list` | GET | `v1/{+parent}/archiveDeployments` | Lists the ArchiveDeployments in the specified Environment. |
| `apigee.organizations.environments.archiveDeployments.generateUploadUrl` | POST | `v1/{+parent}/archiveDeployments:generateUploadUrl` | Generates a signed URL for uploading an Archive zip file to Google Cloud Storage. Once the upload... |
| `apigee.organizations.environments.archiveDeployments.delete` | DELETE | `v1/{+name}` | Deletes an archive deployment. |
| `apigee.organizations.environments.archiveDeployments.get` | GET | `v1/{+name}` | Gets the specified ArchiveDeployment. |
| `apigee.organizations.environments.archiveDeployments.create` | POST | `v1/{+parent}/archiveDeployments` | Creates a new ArchiveDeployment. |
| `apigee.organizations.environments.archiveDeployments.generateDownloadUrl` | POST | `v1/{+name}:generateDownloadUrl` | Generates a signed URL for downloading the original zip file used to create an Archive Deployment... |
| `apigee.organizations.environments.keyvaluemaps.create` | POST | `v1/{+parent}/keyvaluemaps` | Creates a key value map in an environment. |
| `apigee.organizations.environments.keyvaluemaps.get` | GET | `v1/{+name}` | Get the key value map scoped to an organization, environment, or API proxy. |
| `apigee.organizations.environments.keyvaluemaps.delete` | DELETE | `v1/{+name}` | Deletes a key value map from an environment. |
| `apigee.organizations.environments.keyvaluemaps.update` | PUT | `v1/{+name}` | Update the key value map scoped to an organization, environment, or API proxy. |
| `apigee.organizations.environments.keyvaluemaps.entries.delete` | DELETE | `v1/{+name}` | Deletes a key value entry from a key value map scoped to an organization, environment, or API pro... |
| `apigee.organizations.environments.keyvaluemaps.entries.list` | GET | `v1/{+parent}/entries` | Lists key value entries for key values maps scoped to an organization, environment, or API proxy.... |
| `apigee.organizations.environments.keyvaluemaps.entries.update` | PUT | `v1/{+name}` | Update key value entry scoped to an organization, environment, or API proxy for an existing key. |
| `apigee.organizations.environments.keyvaluemaps.entries.get` | GET | `v1/{+name}` | Get the key value entry value for a key value map scoped to an organization, environment, or API ... |
| `apigee.organizations.environments.keyvaluemaps.entries.create` | POST | `v1/{+parent}/entries` | Creates key value entries in a key value map scoped to an organization, environment, or API proxy... |
| `apigee.organizations.environments.keystores.delete` | DELETE | `v1/{+name}` | Deletes a keystore or truststore. |
| `apigee.organizations.environments.keystores.create` | POST | `v1/{+parent}/keystores` | Creates a keystore or truststore. - Keystore: Contains certificates and their associated keys. - ... |
| `apigee.organizations.environments.keystores.get` | GET | `v1/{+name}` | Gets a keystore or truststore. |
| `apigee.organizations.environments.keystores.aliases.create` | POST | `v1/{+parent}/aliases` | Creates an alias from a key/certificate pair. The structure of the request is controlled by the `... |
| `apigee.organizations.environments.keystores.aliases.get` | GET | `v1/{+name}` | Gets an alias. |
| `apigee.organizations.environments.keystores.aliases.csr` | GET | `v1/{+name}/csr` | Generates a PKCS #10 Certificate Signing Request for the private key in an alias. |
| `apigee.organizations.environments.keystores.aliases.getCertificate` | GET | `v1/{+name}/certificate` | Gets the certificate from an alias in PEM-encoded form. |
| `apigee.organizations.environments.keystores.aliases.delete` | DELETE | `v1/{+name}` | Deletes an alias. |
| `apigee.organizations.environments.keystores.aliases.update` | PUT | `v1/{+name}` | Updates the certificate in an alias. The updated certificate must be in PEM- or DER-encoded X.509... |
| `apigee.organizations.environments.stats.get` | GET | `v1/{+name}` | Retrieve metrics grouped by dimensions. The types of metrics you can retrieve include traffic, me... |
| `apigee.organizations.environments.sharedflows.revisions.getDeployments` | GET | `v1/{+name}/deployments` | Gets the deployment of a shared flow revision and actual state reported by runtime pods. |
| `apigee.organizations.environments.sharedflows.revisions.undeploy` | DELETE | `v1/{+name}/deployments` | Undeploys a shared flow revision from an environment. For a request path `organizations/{org}/env... |
| `apigee.organizations.environments.sharedflows.revisions.deploy` | POST | `v1/{+name}/deployments` | Deploys a revision of a shared flow. If another revision of the same shared flow is currently dep... |
| `apigee.organizations.environments.sharedflows.deployments.list` | GET | `v1/{+parent}/deployments` | Lists all deployments of a shared flow in an environment. |
| `apigee.organizations.environments.resourcefiles.delete` | DELETE | `v1/{+parent}/resourcefiles/{type}/{name}` | Deletes a resource file. For more information about resource files, see [Resource files](https://... |
| `apigee.organizations.environments.resourcefiles.list` | GET | `v1/{+parent}/resourcefiles` | Lists all resource files, optionally filtering by type. For more information about resource files... |
| `apigee.organizations.environments.resourcefiles.update` | PUT | `v1/{+parent}/resourcefiles/{type}/{name}` | Updates a resource file. Specify the `Content-Type` as `application/octet-stream` or `multipart/f... |
| `apigee.organizations.environments.resourcefiles.create` | POST | `v1/{+parent}/resourcefiles` | Creates a resource file. Specify the `Content-Type` as `application/octet-stream` or `multipart/f... |
| `apigee.organizations.environments.resourcefiles.get` | GET | `v1/{+parent}/resourcefiles/{type}/{name}` | Gets the contents of a resource file. For more information about resource files, see [Resource fi... |
| `apigee.organizations.environments.resourcefiles.listEnvironmentResources` | GET | `v1/{+parent}/resourcefiles/{type}` | Lists all resource files, optionally filtering by type. For more information about resource files... |
| `apigee.organizations.environments.securityReports.create` | POST | `v1/{+parent}/securityReports` | Submit a report request to be processed in the background. If the submission succeeds, the API re... |
| `apigee.organizations.environments.securityReports.get` | GET | `v1/{+name}` | Get security report status If the query is still in progress, the `state` is set to "running" Aft... |
| `apigee.organizations.environments.securityReports.list` | GET | `v1/{+parent}/securityReports` | Return a list of Security Reports |
| `apigee.organizations.environments.securityReports.getResult` | GET | `v1/{+name}` | After the query is completed, use this API to retrieve the results as file. If the request succee... |
| `apigee.organizations.environments.securityReports.getResultView` | GET | `v1/{+name}` | After the query is completed, use this API to view the query result when result size is small. |
| `apigee.organizations.environments.analytics.exports.list` | GET | `v1/{+parent}/analytics/exports` | Lists the details and status of all analytics export jobs belonging to the parent organization an... |
| `apigee.organizations.environments.analytics.exports.create` | POST | `v1/{+parent}/analytics/exports` | Submit a data export job to be processed in the background. If the request is successful, the API... |
| `apigee.organizations.environments.analytics.exports.get` | GET | `v1/{+name}` | Gets the details and status of an analytics export job. If the export job is still in progress, i... |
| `apigee.organizations.environments.analytics.admin.getSchemav2` | GET | `v1/{+name}` | Gets a list of metrics and dimensions that can be used to create analytics queries and reports. E... |
| `apigee.organizations.environments.securityStats.queryTabularStats` | POST | `v1/{+orgenv}/securityStats:queryTabularStats` | Retrieve security statistics as tabular rows. |
| `apigee.organizations.environments.securityStats.queryTimeSeriesStats` | POST | `v1/{+orgenv}/securityStats:queryTimeSeriesStats` | Retrieve security statistics as a collection of time series. |
| `apigee.organizations.environments.targetservers.create` | POST | `v1/{+parent}/targetservers` | Creates a TargetServer in the specified environment. |
| `apigee.organizations.environments.targetservers.get` | GET | `v1/{+name}` | Gets a TargetServer resource. |
| `apigee.organizations.environments.targetservers.delete` | DELETE | `v1/{+name}` | Deletes a TargetServer from an environment. Returns the deleted TargetServer resource. |
| `apigee.organizations.environments.targetservers.update` | PUT | `v1/{+name}` | Updates an existing TargetServer. Note that this operation has PUT semantics; it will replace the... |
| `apigee.organizations.environments.queries.create` | POST | `v1/{+parent}/queries` | Submit a query to be processed in the background. If the submission of the query succeeds, the AP... |
| `apigee.organizations.environments.queries.get` | GET | `v1/{+name}` | Get query status If the query is still in progress, the `state` is set to "running" After the que... |
| `apigee.organizations.environments.queries.list` | GET | `v1/{+parent}/queries` | Return a list of Asynchronous Queries |
| `apigee.organizations.environments.queries.getResult` | GET | `v1/{+name}` | After the query is completed, use this API to retrieve the results. If the request succeeds, and ... |
| `apigee.organizations.environments.queries.getResulturl` | GET | `v1/{+name}` | After the query is completed, use this API to retrieve the results. If the request succeeds, and ... |
| `apigee.organizations.environments.caches.delete` | DELETE | `v1/{+name}` | Deletes a cache. |
| `apigee.organizations.environments.deployments.get` | GET | `v1/{+name}` | Gets a particular deployment of Api proxy or a shared flow in an environment |
| `apigee.organizations.environments.deployments.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Tests the permissions of a user on a deployment, and returns a subset of permissions that the use... |
| `apigee.organizations.environments.deployments.list` | GET | `v1/{+parent}/deployments` | Lists all deployments of API proxies or shared flows in an environment. |
| `apigee.organizations.environments.deployments.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the IAM policy on a deployment, if the policy already exists it will be replaced. For more i... |
| `apigee.organizations.environments.deployments.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the IAM policy on a deployment. For more information, see [Manage users, roles, and permissi... |
| `apigee.organizations.environments.traceConfig.overrides.list` | GET | `v1/{+parent}/overrides` | Lists all of the distributed trace configuration overrides in an environment. |
| `apigee.organizations.environments.traceConfig.overrides.delete` | DELETE | `v1/{+name}` | Deletes a distributed trace configuration override. |
| `apigee.organizations.environments.traceConfig.overrides.create` | POST | `v1/{+parent}/overrides` | Creates a trace configuration override. The response contains a system-generated UUID, that can b... |
| `apigee.organizations.environments.traceConfig.overrides.get` | GET | `v1/{+name}` | Gets a trace configuration override. |
| `apigee.organizations.environments.traceConfig.overrides.patch` | PATCH | `v1/{+name}` | Updates a distributed trace configuration override. Note that the repeated fields have replace se... |
| `apigee.organizations.environments.securityActions.create` | POST | `v1/{+parent}/securityActions` | CreateSecurityAction creates a SecurityAction. |
| `apigee.organizations.environments.securityActions.get` | GET | `v1/{+name}` | Get a SecurityAction by name. |
| `apigee.organizations.environments.securityActions.list` | GET | `v1/{+parent}/securityActions` | Returns a list of SecurityActions. This returns both enabled and disabled actions. |
| `apigee.organizations.environments.securityActions.delete` | DELETE | `v1/{+name}` | Delete a SecurityAction. |
| `apigee.organizations.environments.securityActions.enable` | POST | `v1/{+name}:enable` | Enable a SecurityAction. The `state` of the SecurityAction after enabling is `ENABLED`. `EnableSe... |
| `apigee.organizations.environments.securityActions.disable` | POST | `v1/{+name}:disable` | Disable a SecurityAction. The `state` of the SecurityAction after disabling is `DISABLED`. `Disab... |
| `apigee.organizations.environments.securityActions.patch` | PATCH | `v1/{+name}` | Update a SecurityAction. |
| `apigee.organizations.apiproducts.delete` | DELETE | `v1/{+name}` | Deletes an API product from an organization. Deleting an API product causes app requests to the r... |
| `apigee.organizations.apiproducts.list` | GET | `v1/{+parent}/apiproducts` | Lists all API product names for an organization. Filter the list by passing an `attributename` an... |
| `apigee.organizations.apiproducts.update` | PUT | `v1/{+name}` | Updates an existing API product. You must include all required values, whether or not you are upd... |
| `apigee.organizations.apiproducts.create` | POST | `v1/{+parent}/apiproducts` | Creates an API product in an organization. You create API products after you have proxied backend... |
| `apigee.organizations.apiproducts.get` | GET | `v1/{+name}` | Gets configuration details for an API product. The API product name required in the request URL i... |
| `apigee.organizations.apiproducts.attributes` | POST | `v1/{+name}/attributes` | Updates or creates API product attributes. This API **replaces** the current list of attributes w... |
| `apigee.organizations.apiproducts.move` | POST | `v1/{+name}:move` | Moves an API product to a different space. |
| `apigee.organizations.apiproducts.attributes.delete` | DELETE | `v1/{+name}` | Deletes an API product attribute. |
| `apigee.organizations.apiproducts.attributes.list` | GET | `v1/{+parent}/attributes` | Lists all API product attributes. |
| `apigee.organizations.apiproducts.attributes.get` | GET | `v1/{+name}` | Gets the value of an API product attribute. |
| `apigee.organizations.apiproducts.attributes.updateApiProductAttribute` | POST | `v1/{+name}` | Updates the value of an API product attribute. **Note**: OAuth access tokens and Key Management S... |
| `apigee.organizations.apiproducts.rateplans.create` | POST | `v1/{+parent}/rateplans` | Create a rate plan that is associated with an API product in an organization. Using rate plans, A... |
| `apigee.organizations.apiproducts.rateplans.get` | GET | `v1/{+name}` | Gets the details of a rate plan. |
| `apigee.organizations.apiproducts.rateplans.list` | GET | `v1/{+parent}/rateplans` | Lists all the rate plans for an API product. |
| `apigee.organizations.apiproducts.rateplans.delete` | DELETE | `v1/{+name}` | Deletes a rate plan. |
| `apigee.organizations.apiproducts.rateplans.update` | PUT | `v1/{+name}` | Updates an existing rate plan. |
| `apigee.organizations.analytics.datastores.create` | POST | `v1/{+parent}/analytics/datastores` | Create a Datastore for an org |
| `apigee.organizations.analytics.datastores.get` | GET | `v1/{+name}` | Get a Datastore |
| `apigee.organizations.analytics.datastores.delete` | DELETE | `v1/{+name}` | Delete a Datastore from an org. |
| `apigee.organizations.analytics.datastores.list` | GET | `v1/{+parent}/analytics/datastores` | List Datastores |
| `apigee.organizations.analytics.datastores.update` | PUT | `v1/{+name}` | Update a Datastore |
| `apigee.organizations.analytics.datastores.test` | POST | `v1/{+parent}/analytics/datastores:test` | Test if Datastore configuration is correct. This includes checking if credentials provided by cus... |
| `apigee.organizations.spaces.patch` | PATCH | `v1/{+name}` | Updates a space. |
| `apigee.organizations.spaces.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Callers must have apigee.spaces.getIamPolicy. |
| `apigee.organizations.spaces.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Callers don't need any permissions. |
| `apigee.organizations.spaces.delete` | DELETE | `v1/{+name}` | Deletes an organization space. |
| `apigee.organizations.spaces.list` | GET | `v1/{+parent}/spaces` | Lists spaces under an organization. |
| `apigee.organizations.spaces.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | IAM META APIs Callers must have apigee.spaces.setIamPolicy. |
| `apigee.organizations.spaces.create` | POST | `v1/{+parent}/spaces` | Create a space under an organization. |
| `apigee.organizations.spaces.get` | GET | `v1/{+name}` | Get a space under an Organization. |
| `apigee.organizations.hostQueries.list` | GET | `v1/{+parent}/hostQueries` | Return a list of Asynchronous Queries at host level. |
| `apigee.organizations.hostQueries.create` | POST | `v1/{+parent}/hostQueries` | Submit a query at host level to be processed in the background. If the submission of the query su... |
| `apigee.organizations.hostQueries.get` | GET | `v1/{+name}` | Get status of a query submitted at host level. If the query is still in progress, the `state` is ... |
| `apigee.organizations.hostQueries.getResult` | GET | `v1/{+name}` | After the query is completed, use this API to retrieve the results. If the request succeeds, and ... |
| `apigee.organizations.hostQueries.getResultView` | GET | `v1/{+name}` |  |
| `apigee.organizations.datacollectors.list` | GET | `v1/{+parent}/datacollectors` | Lists all data collectors. |
| `apigee.organizations.datacollectors.delete` | DELETE | `v1/{+name}` | Deletes a data collector. |
| `apigee.organizations.datacollectors.create` | POST | `v1/{+parent}/datacollectors` | Creates a new data collector. |
| `apigee.organizations.datacollectors.get` | GET | `v1/{+name}` | Gets a data collector. |
| `apigee.organizations.datacollectors.patch` | PATCH | `v1/{+name}` | Updates a data collector. |
| `apigee.organizations.sites.apicategories.patch` | PATCH | `v1/{+name}` | Updates an API category. |
| `apigee.organizations.sites.apicategories.delete` | DELETE | `v1/{+name}` | Deletes an API category. |
| `apigee.organizations.sites.apicategories.list` | GET | `v1/{+parent}/apicategories` | Returns the API categories associated with a portal. |
| `apigee.organizations.sites.apicategories.create` | POST | `v1/{+parent}/apicategories` | Creates a new API category. |
| `apigee.organizations.sites.apicategories.get` | GET | `v1/{+name}` | Gets an API category. |
| `apigee.organizations.sites.apidocs.list` | GET | `v1/{+parent}/apidocs` | Returns the catalog items associated with a portal. |
| `apigee.organizations.sites.apidocs.delete` | DELETE | `v1/{+name}` | Deletes a catalog item. |
| `apigee.organizations.sites.apidocs.updateDocumentation` | PATCH | `v1/{+name}` | Updates the documentation for the specified catalog item. Note that the documentation file conten... |
| `apigee.organizations.sites.apidocs.update` | PUT | `v1/{+name}` | Updates a catalog item. |
| `apigee.organizations.sites.apidocs.getDocumentation` | GET | `v1/{+name}` | Gets the documentation for the specified catalog item. |
| `apigee.organizations.sites.apidocs.get` | GET | `v1/{+name}` | Gets a catalog item. |
| `apigee.organizations.sites.apidocs.create` | POST | `v1/{+parent}/apidocs` | Creates a new catalog item. |
| `apigee.organizations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `apigee.organizations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `apigee.organizations.keyvaluemaps.delete` | DELETE | `v1/{+name}` | Deletes a key value map from an organization. |
| `apigee.organizations.keyvaluemaps.update` | PUT | `v1/{+name}` | Update the key value map scoped to an organization, environment, or API proxy. |
| `apigee.organizations.keyvaluemaps.create` | POST | `v1/{+parent}/keyvaluemaps` | Creates a key value map in an organization. |
| `apigee.organizations.keyvaluemaps.get` | GET | `v1/{+name}` | Get the key value map scoped to an organization, environment, or API proxy. |
| `apigee.organizations.keyvaluemaps.entries.get` | GET | `v1/{+name}` | Get the key value entry value for a key value map scoped to an organization, environment, or API ... |
| `apigee.organizations.keyvaluemaps.entries.create` | POST | `v1/{+parent}/entries` | Creates key value entries in a key value map scoped to an organization, environment, or API proxy... |
| `apigee.organizations.keyvaluemaps.entries.delete` | DELETE | `v1/{+name}` | Deletes a key value entry from a key value map scoped to an organization, environment, or API pro... |
| `apigee.organizations.keyvaluemaps.entries.list` | GET | `v1/{+parent}/entries` | Lists key value entries for key values maps scoped to an organization, environment, or API proxy.... |
| `apigee.organizations.keyvaluemaps.entries.update` | PUT | `v1/{+name}` | Update key value entry scoped to an organization, environment, or API proxy for an existing key. |
| `apigee.organizations.envgroups.patch` | PATCH | `v1/{+name}` | Updates an environment group. |
| `apigee.organizations.envgroups.getDeployedIngressConfig` | GET | `v1/{+name}` | Gets the deployed ingress configuration for an environment group. |
| `apigee.organizations.envgroups.list` | GET | `v1/{+parent}/envgroups` | Lists all environment groups. |
| `apigee.organizations.envgroups.delete` | DELETE | `v1/{+name}` | Deletes an environment group. |
| `apigee.organizations.envgroups.create` | POST | `v1/{+parent}/envgroups` | Creates a new environment group. |
| `apigee.organizations.envgroups.get` | GET | `v1/{+name}` | Gets an environment group. |
| `apigee.organizations.envgroups.attachments.create` | POST | `v1/{+parent}/attachments` | Creates a new attachment of an environment to an environment group. |
| `apigee.organizations.envgroups.attachments.get` | GET | `v1/{+name}` | Gets an environment group attachment. |
| `apigee.organizations.envgroups.attachments.list` | GET | `v1/{+parent}/attachments` | Lists all attachments of an environment group. |
| `apigee.organizations.envgroups.attachments.delete` | DELETE | `v1/{+name}` | Deletes an environment group attachment. |
| `apigee.organizations.sharedflows.list` | GET | `v1/{+parent}/sharedflows` | Lists all shared flows in the organization. If the resource has the `space` attribute set, the re... |
| `apigee.organizations.sharedflows.delete` | DELETE | `v1/{+name}` | Deletes a shared flow and all it's revisions. The shared flow must be undeployed before you can d... |
| `apigee.organizations.sharedflows.get` | GET | `v1/{+name}` | Gets a shared flow by name, including a list of its revisions. |
| `apigee.organizations.sharedflows.create` | POST | `v1/{+parent}/sharedflows` | Uploads a ZIP-formatted shared flow configuration bundle to an organization. If the shared flow a... |
| `apigee.organizations.sharedflows.move` | POST | `v1/{+name}:move` | Moves an shared flow to a different space. |
| `apigee.organizations.sharedflows.deployments.list` | GET | `v1/{+parent}/deployments` | Lists all deployments of a shared flow. |
| `apigee.organizations.sharedflows.revisions.updateSharedFlowRevision` | POST | `v1/{+name}` | Updates a shared flow revision. This operation is only allowed on revisions which have never been... |
| `apigee.organizations.sharedflows.revisions.get` | GET | `v1/{+name}` | Gets a revision of a shared flow. To download the shared flow configuration bundle for the specif... |
| `apigee.organizations.sharedflows.revisions.delete` | DELETE | `v1/{+name}` | Deletes a shared flow and all associated policies, resources, and revisions. You must undeploy th... |
| `apigee.organizations.sharedflows.revisions.deployments.list` | GET | `v1/{+parent}/deployments` | Lists all deployments of a shared flow revision. |
| `apigee.organizations.securityAssessmentResults.batchCompute` | POST | `v1/{+name}:batchCompute` | Compute RAV2 security scores for a set of resources. |
| `apigee.organizations.hostSecurityReports.getResult` | GET | `v1/{+name}` | After the query is completed, use this API to retrieve the results. If the request succeeds, and ... |
| `apigee.organizations.hostSecurityReports.getResultView` | GET | `v1/{+name}` | After the query is completed, use this API to view the query result when result size is small. |
| `apigee.organizations.hostSecurityReports.create` | POST | `v1/{+parent}/hostSecurityReports` | Submit a query at host level to be processed in the background. If the submission of the query su... |
| `apigee.organizations.hostSecurityReports.get` | GET | `v1/{+name}` | Get status of a query submitted at host level. If the query is still in progress, the `state` is ... |
| `apigee.organizations.hostSecurityReports.list` | GET | `v1/{+parent}/hostSecurityReports` | Return a list of Security Reports at host level. |
| `apigee.organizations.apis.patch` | PATCH | `v1/{+name}` | Updates an existing API proxy. |
| `apigee.organizations.apis.move` | POST | `v1/{+name}:move` | Moves an API proxy to a different space. |
| `apigee.organizations.apis.list` | GET | `v1/{+parent}/apis` | Lists the names of all API proxies in an organization. The names returned correspond to the names... |
| `apigee.organizations.apis.delete` | DELETE | `v1/{+name}` | Deletes an API proxy and all associated endpoints, policies, resources, and revisions. The API pr... |
| `apigee.organizations.apis.get` | GET | `v1/{+name}` | Gets an API proxy including a list of existing revisions. |
| `apigee.organizations.apis.create` | POST | `v1/{+parent}/apis` | Creates an API proxy. The API proxy created will not be accessible at runtime until it is deploye... |
| `apigee.organizations.apis.revisions.updateApiProxyRevision` | POST | `v1/{+name}` | Updates an existing API proxy revision by uploading the API proxy configuration bundle as a zip f... |
| `apigee.organizations.apis.revisions.get` | GET | `v1/{+name}` | Gets an API proxy revision. To download the API proxy configuration bundle for the specified revi... |
| `apigee.organizations.apis.revisions.delete` | DELETE | `v1/{+name}` | Deletes an API proxy revision and all policies, resources, endpoints, and revisions associated wi... |
| `apigee.organizations.apis.revisions.deployments.list` | GET | `v1/{+parent}/deployments` | Lists all deployments of an API proxy revision. |
| `apigee.organizations.apis.deployments.list` | GET | `v1/{+parent}/deployments` | Lists all deployments of an API proxy. |
| `apigee.organizations.apis.keyvaluemaps.get` | GET | `v1/{+name}` | Get the key value map scoped to an organization, environment, or API proxy. |
| `apigee.organizations.apis.keyvaluemaps.create` | POST | `v1/{+parent}/keyvaluemaps` | Creates a key value map in an API proxy. |
| `apigee.organizations.apis.keyvaluemaps.delete` | DELETE | `v1/{+name}` | Deletes a key value map from an API proxy. |
| `apigee.organizations.apis.keyvaluemaps.update` | PUT | `v1/{+name}` | Update the key value map scoped to an organization, environment, or API proxy. |
| `apigee.organizations.apis.keyvaluemaps.entries.get` | GET | `v1/{+name}` | Get the key value entry value for a key value map scoped to an organization, environment, or API ... |
| `apigee.organizations.apis.keyvaluemaps.entries.create` | POST | `v1/{+parent}/entries` | Creates key value entries in a key value map scoped to an organization, environment, or API proxy... |
| `apigee.organizations.apis.keyvaluemaps.entries.update` | PUT | `v1/{+name}` | Update key value entry scoped to an organization, environment, or API proxy for an existing key. |
| `apigee.organizations.apis.keyvaluemaps.entries.delete` | DELETE | `v1/{+name}` | Deletes a key value entry from a key value map scoped to an organization, environment, or API pro... |
| `apigee.organizations.apis.keyvaluemaps.entries.list` | GET | `v1/{+parent}/entries` | Lists key value entries for key values maps scoped to an organization, environment, or API proxy.... |
| `apigee.organizations.apis.debugsessions.list` | GET | `v1/{+parent}/debugsessions` | Lists debug sessions that are currently active in the given API Proxy. |
| `apigee.organizations.appgroups.update` | PUT | `v1/{+name}` | Updates an AppGroup. This API replaces the existing AppGroup details with those specified in the ... |
| `apigee.organizations.appgroups.getBalance` | GET | `v1/{+name}` | Gets the account balance for the AppGroup. |
| `apigee.organizations.appgroups.delete` | DELETE | `v1/{+name}` | Deletes an AppGroup. All app and API keys associations with the AppGroup are also removed. **Warn... |
| `apigee.organizations.appgroups.list` | GET | `v1/{+parent}/appgroups` | Lists all AppGroups in an organization. A maximum of 1000 AppGroups are returned in the response ... |
| `apigee.organizations.appgroups.create` | POST | `v1/{+parent}/appgroups` | Creates an AppGroup. Once created, user can register apps under the AppGroup to obtain secret key... |
| `apigee.organizations.appgroups.get` | GET | `v1/{+name}` | Returns the AppGroup details for the provided AppGroup name in the request URI. |
| `apigee.organizations.appgroups.updateMonetizationConfig` | PUT | `v1/{+name}` | Updates the monetization configuration for the AppGroup. |
| `apigee.organizations.appgroups.getMonetizationConfig` | GET | `v1/{+name}` | Gets the monetization configuration for the AppGroup. |
| `apigee.organizations.appgroups.balance.credit` | POST | `v1/{+name}:credit` | Credits the account balance for the AppGroup. |
| `apigee.organizations.appgroups.balance.adjust` | POST | `v1/{+name}:adjust` | Adjust the prepaid balance for the AppGroup. This API will be used in scenarios where the AppGrou... |
| `apigee.organizations.appgroups.subscriptions.list` | GET | `v1/{+parent}/subscriptions` | List all api product subscriptions for an appgroup. |
| `apigee.organizations.appgroups.subscriptions.create` | POST | `v1/{+parent}/subscriptions` | Creates a subscription to an API product. |
| `apigee.organizations.appgroups.subscriptions.get` | GET | `v1/{+name}` | Get an api product subscription for an appgroup. |
| `apigee.organizations.appgroups.subscriptions.expire` | POST | `v1/{+name}:expire` | Expires an API product subscription immediately. |
| `apigee.organizations.appgroups.apps.update` | PUT | `v1/{+name}` | Updates the details for an AppGroup app. In addition, you can add an API product to an AppGroup a... |
| `apigee.organizations.appgroups.apps.delete` | DELETE | `v1/{+name}` | Deletes an AppGroup app. **Note**: The delete operation is asynchronous. The AppGroup app is dele... |
| `apigee.organizations.appgroups.apps.list` | GET | `v1/{+parent}/apps` | Lists all apps created by an AppGroup in an Apigee organization. Optionally, you can request an e... |
| `apigee.organizations.appgroups.apps.create` | POST | `v1/{+parent}/apps` | Creates an app and associates it with an AppGroup. This API associates the AppGroup app with the ... |
| `apigee.organizations.appgroups.apps.get` | GET | `v1/{+name}` | Returns the details for an AppGroup app. |
| `apigee.organizations.appgroups.apps.keys.create` | POST | `v1/{+parent}/keys` | Creates a custom consumer key and secret for a AppGroup app. This is particularly useful if you w... |
| `apigee.organizations.appgroups.apps.keys.get` | GET | `v1/{+name}` | Gets details for a consumer key for a AppGroup app, including the key and secret value, associate... |
| `apigee.organizations.appgroups.apps.keys.delete` | DELETE | `v1/{+name}` | Deletes an app's consumer key and removes all API products associated with the app. After the con... |
| `apigee.organizations.appgroups.apps.keys.updateAppGroupAppKey` | POST | `v1/{+name}` | Adds an API product to an AppGroupAppKey, enabling the app that holds the key to access the API r... |
| `apigee.organizations.appgroups.apps.keys.apiproducts.updateAppGroupAppKeyApiProduct` | POST | `v1/{+name}` | Approves or revokes the consumer key for an API product. After a consumer key is approved, the ap... |
| `apigee.organizations.appgroups.apps.keys.apiproducts.delete` | DELETE | `v1/{+name}` | Removes an API product from an app's consumer key. After the API product is removed, the app cann... |
| `apigee.organizations.dnsZones.create` | POST | `v1/{+parent}/dnsZones` | Creates a new DNS zone. |
| `apigee.organizations.dnsZones.get` | GET | `v1/{+name}` | Fetches the representation of an existing DNS zone. |
| `apigee.organizations.dnsZones.list` | GET | `v1/{+parent}/dnsZones` | Enumerates DNS zones that have been created but not yet deleted. |
| `apigee.organizations.dnsZones.delete` | DELETE | `v1/{+name}` | Deletes a previously created DNS zone. |
| `apigee.organizations.optimizedHostStats.get` | GET | `v1/{+name}` | Similar to GetHostStats except that the response is less verbose. |
| `apigee.organizations.securityProfilesV2.patch` | PATCH | `v1/{+name}` | Update a security profile V2. |
| `apigee.organizations.securityProfilesV2.create` | POST | `v1/{+parent}/securityProfilesV2` | Create a security profile v2. |
| `apigee.organizations.securityProfilesV2.get` | GET | `v1/{+name}` | Get a security profile v2. |
| `apigee.organizations.securityProfilesV2.list` | GET | `v1/{+parent}/securityProfilesV2` | List security profiles v2. |
| `apigee.organizations.securityProfilesV2.delete` | DELETE | `v1/{+name}` | Delete a security profile v2. |
| `apigee.organizations.securityFeedback.create` | POST | `v1/{+parent}/securityFeedback` | Creates a new report containing customer feedback. |
| `apigee.organizations.securityFeedback.get` | GET | `v1/{+name}` | Gets a specific customer feedback report. |
| `apigee.organizations.securityFeedback.list` | GET | `v1/{+parent}/securityFeedback` | Lists all feedback reports which have already been submitted. |
| `apigee.organizations.securityFeedback.delete` | DELETE | `v1/{+name}` | Deletes a specific feedback report. Used for "undo" of a feedback submission. |
| `apigee.organizations.securityFeedback.patch` | PATCH | `v1/{+name}` | Updates a specific feedback report. |
| `apigee.hybrid.issuers.list` | GET | `v1/{+name}` | Lists hybrid services and its trusted issuers service account ids. This api is authenticated and ... |
| `apigee.projects.provisionOrganization` | POST | `v1/{+project}:provisionOrganization` | Provisions a new Apigee organization with a functioning runtime. This is the standard way to crea... |

### `apigee.organizations.setSyncAuthorization`

**POST** `v1/{+name}:setSyncAuthorization`

Sets the permissions required to allow the Synchronizer to download environment data from the control plane. You must call this API to enable proper functioning of hybrid. Pass the ETag when calling `setSyncAuthorization` to ensure that you are updating the correct version. To get an ETag, call [getSyncAuthorization](getSyncAuthorization). If you don't pass the ETag in the call to `setSyncAuthorization`, then the existing authorization is overwritten indiscriminately. For more information, see [Configure the Synchronizer](https://cloud.google.com/apigee/docs/hybrid/latest/synchronizer-access). **Note**: Available to Apigee hybrid only.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the Apigee organization. Use the following structure in your request: `organizations/{org}` |

**Request body**: `GoogleCloudApigeeV1SyncAuthorization`

**Response**: `GoogleCloudApigeeV1SyncAuthorization`

```typescript
const res = await apigee.organizations.setSyncAuthorization({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.update`

**PUT** `v1/{+name}`

Updates the properties for an Apigee organization. No other fields in the organization profile will be updated.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Apigee organization name in the following format: `organizations/{org}` |

**Request body**: `GoogleCloudApigeeV1Organization`

**Response**: `GoogleCloudApigeeV1Organization`

```typescript
const res = await apigee.organizations.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.updateSecuritySettings`

**PATCH** `v1/{+name}`

UpdateSecuritySettings updates the current security settings for API Security.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Full resource name is always `organizations/{org}/securitySettings`. |
| `updateMask` | `string` | query | No | Optional. The list of fields to update. Allowed fields are: - ml_retraining_feedback_enabled |

**Request body**: `GoogleCloudApigeeV1SecuritySettings`

**Response**: `GoogleCloudApigeeV1SecuritySettings`

```typescript
const res = await apigee.organizations.updateSecuritySettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.list`

**GET** `v1/{+parent}`

Lists the Apigee organizations and associated Google Cloud projects that you have permission to access. See [Understanding organizations](https://cloud.google.com/apigee/docs/api-platform/fundamentals/organization-structure).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Use the following structure in your request: `organizations` |

**Response**: `GoogleCloudApigeeV1ListOrganizationsResponse`

```typescript
const res = await apigee.organizations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.delete`

**DELETE** `v1/{+name}`

Delete an Apigee organization. For organizations with BillingType EVALUATION, an immediate deletion is performed. For paid organizations (Subscription or Pay-as-you-go), a soft-deletion is performed. The organization can be restored within the soft-deletion period, which is specified using the `retention` field in the request or by filing a support ticket with Apigee. During the data retention period specified in the request, the Apigee organization cannot be recreated in the same Google Cloud project. **IMPORTANT: The default data retention setting for this operation is 7 days. To permanently delete the organization in 24 hours, set the retention parameter to `MINIMUM`.**

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the organization. Use the following structure in your request: `organizations/{org}` |
| `retention` | `string` | query | No | Optional. This setting is applicable only for organizations that are soft-deleted (i.e., BillingType is not EVALUATIO... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await apigee.organizations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.getControlPlaneAccess`

**GET** `v1/{+name}`

Lists the service accounts allowed to access Apigee control plane directly for limited functionality. **Note**: Available to Apigee hybrid only.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the Control Plane Access. Use the following structure in your request: `organizations/{org... |

**Response**: `GoogleCloudApigeeV1ControlPlaneAccess`

```typescript
const res = await apigee.organizations.getControlPlaneAccess({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.setAddons`

**POST** `v1/{+org}:setAddons`

Configures the add-ons for the Apigee organization. The existing add-on configuration will be fully replaced.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `org` | `string` | path | Yes | Required. Name of the organization. Use the following structure in your request: `organizations/{org}` |

**Request body**: `GoogleCloudApigeeV1SetAddonsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await apigee.organizations.setAddons({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.updateControlPlaneAccess`

**PATCH** `v1/{+name}`

Updates the permissions required to allow Apigee runtime-plane components access to the control plane. Currently, the permissions required are to: 1. Allow runtime components to publish analytics data to the control plane. **Note**: Available to Apigee hybrid only.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the ControlPlaneAccess. Format: "organizations/{org}/controlPlaneAccess" |
| `updateMask` | `string` | query | No | List of fields to be updated. Fields that can be updated: synchronizer_identities, publisher_identities. |

**Request body**: `GoogleCloudApigeeV1ControlPlaneAccess`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await apigee.organizations.updateControlPlaneAccess({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.getSecuritySettings`

**GET** `v1/{+name}`

GetSecuritySettings gets the security settings for API Security.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the SecuritySettings to retrieve. This will always be: 'organizations/{org}/securitySettings'. |

**Response**: `GoogleCloudApigeeV1SecuritySettings`

```typescript
const res = await apigee.organizations.getSecuritySettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.getDeployedIngressConfig`

**GET** `v1/{+name}`

Gets the deployed ingress configuration for an organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the deployed configuration for the organization in the following format: 'organizations/{org}/deplo... |
| `view` | `string` | query | No | When set to FULL, additional details about the specific deployments receiving traffic will be included in the Ingress... |

**Response**: `GoogleCloudApigeeV1IngressConfig`

```typescript
const res = await apigee.organizations.getDeployedIngressConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.get`

**GET** `v1/{+name}`

Gets the profile for an Apigee organization. See [Understanding organizations](https://cloud.google.com/apigee/docs/api-platform/fundamentals/organization-structure).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Apigee organization name in the following format: `organizations/{org}` |

**Response**: `GoogleCloudApigeeV1Organization`

```typescript
const res = await apigee.organizations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.create`

**POST** `v1/organizations`

Creates an Apigee organization. See [Create an Apigee organization](https://cloud.google.com/apigee/docs/api-platform/get-started/create-org).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | query | No | Required. Name of the Google Cloud project in which to associate the Apigee organization. Pass the information as a q... |

**Request body**: `GoogleCloudApigeeV1Organization`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await apigee.organizations.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.getProjectMapping`

**GET** `v1/{+name}:getProjectMapping`

Gets the project ID and region for an Apigee organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Apigee organization name in the following format: `organizations/{org}` |

**Response**: `GoogleCloudApigeeV1OrganizationProjectMapping`

```typescript
const res = await apigee.organizations.getProjectMapping({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.getSyncAuthorization`

**POST** `v1/{+name}:getSyncAuthorization`

Lists the service accounts with the permissions required to allow the Synchronizer to download environment data from the control plane. An ETag is returned in the response to `getSyncAuthorization`. Pass that ETag when calling [setSyncAuthorization](setSyncAuthorization) to ensure that you are updating the correct version. If you don't pass the ETag in the call to `setSyncAuthorization`, then the existing authorization is overwritten indiscriminately. For more information, see [Configure the Synchronizer](https://cloud.google.com/apigee/docs/hybrid/latest/synchronizer-access). **Note**: Available to Apigee hybrid only.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the Apigee organization. Use the following structure in your request: `organizations/{org}` |

**Request body**: `GoogleCloudApigeeV1GetSyncAuthorizationRequest`

**Response**: `GoogleCloudApigeeV1SyncAuthorization`

```typescript
const res = await apigee.organizations.getSyncAuthorization({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.getRuntimeConfig`

**GET** `v1/{+name}`

Get runtime config for an organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the runtime config for the organization in the following format: 'organizations/{org}/runtimeConfig'. |

**Response**: `GoogleCloudApigeeV1RuntimeConfig`

```typescript
const res = await apigee.organizations.getRuntimeConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.deployments.list`

**GET** `v1/{+parent}/deployments`

Lists all deployments of API proxies or shared flows.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the organization for which to return deployment information in the following format: `organizations... |
| `sharedFlows` | `boolean` | query | No | Optional. Flag that specifies whether to return shared flow or API proxy deployments. Set to `true` to return shared ... |

**Response**: `GoogleCloudApigeeV1ListDeploymentsResponse`

```typescript
const res = await apigee.deployments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.instances.delete`

**DELETE** `v1/{+name}`

Deletes an Apigee runtime instance. The instance stops serving requests and the runtime data is deleted. **Note:** Not supported for Apigee hybrid.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the instance. Use the following structure in your request: `organizations/{org}/instances/{instance}`. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await apigee.instances.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.instances.list`

**GET** `v1/{+parent}/instances`

Lists all Apigee runtime instances for the organization. **Note:** Not supported for Apigee hybrid.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the organization. Use the following structure in your request: `organizations/{org}`. |
| `pageSize` | `integer` | query | No | Maximum number of instances to return. Defaults to 25. |
| `pageToken` | `string` | query | No | Page token, returned from a previous ListInstances call, that you can use to retrieve the next page of content. |

**Response**: `GoogleCloudApigeeV1ListInstancesResponse`

```typescript
const res = await apigee.instances.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.instances.create`

**POST** `v1/{+parent}/instances`

Creates an Apigee runtime instance. The instance is accessible from the authorized network configured on the organization. **Note:** Not supported for Apigee hybrid.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the organization. Use the following structure in your request: `organizations/{org}`. |

**Request body**: `GoogleCloudApigeeV1Instance`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await apigee.instances.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.instances.get`

**GET** `v1/{+name}`

Gets the details for an Apigee runtime instance. **Note:** Not supported for Apigee hybrid.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the instance. Use the following structure in your request: `organizations/{org}/instances/{instance}`. |

**Response**: `GoogleCloudApigeeV1Instance`

```typescript
const res = await apigee.instances.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.instances.patch`

**PATCH** `v1/{+name}`

Updates an Apigee runtime instance. You can update the fields described in NodeConfig. No other fields will be updated. **Note:** Not supported for Apigee hybrid.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the instance. Use the following structure in your request: `organizations/{org}/instances/{instance}`. |
| `updateMask` | `string` | query | No | List of fields to be updated. |

**Request body**: `GoogleCloudApigeeV1Instance`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await apigee.instances.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.instances.reportStatus`

**POST** `v1/{+instance}:reportStatus`

Reports the latest status for a runtime instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `instance` | `string` | path | Yes | The name of the instance reporting this status. For SaaS the request will be rejected if no instance exists under thi... |

**Request body**: `GoogleCloudApigeeV1ReportInstanceStatusRequest`

**Response**: `GoogleCloudApigeeV1ReportInstanceStatusResponse`

```typescript
const res = await apigee.instances.reportStatus({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.instances.canaryevaluations.create`

**POST** `v1/{+parent}/canaryevaluations`

Creates a new canary evaluation for an organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the organization. Use the following structure in your request: `organizations/{org}/instances/{inst... |

**Request body**: `GoogleCloudApigeeV1CanaryEvaluation`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await apigee.canaryevaluations.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.instances.canaryevaluations.get`

**GET** `v1/{+name}`

Gets a CanaryEvaluation for an organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the CanaryEvaluation. Use the following structure in your request: `organizations/{org}/instances/*... |

**Response**: `GoogleCloudApigeeV1CanaryEvaluation`

```typescript
const res = await apigee.canaryevaluations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.instances.natAddresses.list`

**GET** `v1/{+parent}/natAddresses`

Lists the NAT addresses for an Apigee instance. **Note:** Not supported for Apigee hybrid.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the instance. Use the following structure in your request: `organizations/{org}/instances/{instance}` |
| `pageSize` | `integer` | query | No | Maximum number of natAddresses to return. Defaults to 25. |
| `pageToken` | `string` | query | No | Page token, returned from a previous ListNatAddresses call, that you can use to retrieve the next page of content. |

**Response**: `GoogleCloudApigeeV1ListNatAddressesResponse`

```typescript
const res = await apigee.natAddresses.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.instances.natAddresses.activate`

**POST** `v1/{+name}:activate`

Activates the NAT address. The Apigee instance can now use this for Internet egress traffic. **Note:** Not supported for Apigee hybrid.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the nat address. Use the following structure in your request: `organizations/{org}/instances/{insta... |

**Request body**: `GoogleCloudApigeeV1ActivateNatAddressRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await apigee.natAddresses.activate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.instances.natAddresses.delete`

**DELETE** `v1/{+name}`

Deletes the NAT address. Connections that are actively using the address are drained before it is removed. **Note:** Not supported for Apigee hybrid.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the nat address. Use the following structure in your request: `organizations/{org}/instances/{insta... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await apigee.natAddresses.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.instances.natAddresses.get`

**GET** `v1/{+name}`

Gets the details of a NAT address. **Note:** Not supported for Apigee hybrid.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the nat address. Use the following structure in your request: `organizations/{org}/instances/{insta... |

**Response**: `GoogleCloudApigeeV1NatAddress`

```typescript
const res = await apigee.natAddresses.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.instances.natAddresses.create`

**POST** `v1/{+parent}/natAddresses`

Creates a NAT address. The address is created in the RESERVED state and a static external IP address will be provisioned. At this time, the instance will not use this IP address for Internet egress traffic. The address can be activated for use once any required firewall IP whitelisting has been completed. **Note:** Not supported for Apigee hybrid.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the instance. Use the following structure in your request: `organizations/{org}/instances/{instance}` |

**Request body**: `GoogleCloudApigeeV1NatAddress`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await apigee.natAddresses.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.instances.attachments.create`

**POST** `v1/{+parent}/attachments`

Creates a new attachment of an environment to an instance. **Note:** Not supported for Apigee hybrid.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the instance. Use the following structure in your request: `organizations/{org}/instances/{instance}`. |

**Request body**: `GoogleCloudApigeeV1InstanceAttachment`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await apigee.attachments.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.instances.attachments.get`

**GET** `v1/{+name}`

Gets an attachment. **Note:** Not supported for Apigee hybrid.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the attachment. Use the following structure in your request: `organizations/{org}/instances/{instan... |

**Response**: `GoogleCloudApigeeV1InstanceAttachment`

```typescript
const res = await apigee.attachments.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.instances.attachments.list`

**GET** `v1/{+parent}/attachments`

Lists all attachments to an instance. **Note:** Not supported for Apigee hybrid.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the organization. Use the following structure in your request: `organizations/{org}/instances/{inst... |
| `pageSize` | `integer` | query | No | Maximum number of instance attachments to return. Defaults to 25. |
| `pageToken` | `string` | query | No | Page token, returned by a previous ListInstanceAttachments call, that you can use to retrieve the next page of content. |

**Response**: `GoogleCloudApigeeV1ListInstanceAttachmentsResponse`

```typescript
const res = await apigee.attachments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.instances.attachments.delete`

**DELETE** `v1/{+name}`

Deletes an attachment. **Note:** Not supported for Apigee hybrid.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the attachment. Use the following structure in your request: `organizations/{org}/instances/{instan... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await apigee.attachments.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.apimServiceExtensions.list`

**GET** `v1/{+parent}/apimServiceExtensions`

Lists all APIM service extensions in an organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the organization for which to list the service extension. Use the following structure in your reque... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of items to return. If unspecified, at most 25 service extension will be returned. |
| `pageToken` | `string` | query | No | Optional. Page token, returned from a previous `ListApimServiceExtensions` call, that you can use to retrieve the nex... |

**Response**: `GoogleCloudApigeeV1ListApimServiceExtensionsResponse`

```typescript
const res = await apigee.apimServiceExtensions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.apimServiceExtensions.delete`

**DELETE** `v1/{+name}`

Deletes APIM service extension from an organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the service extension. Use the following structure in your request: `organizations/{org}/apimServic... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await apigee.apimServiceExtensions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.apimServiceExtensions.create`

**POST** `v1/{+parent}/apimServiceExtensions`

Creates an APIM ServiceExtension in an organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the organization in which the service extension will be created. Use the following structure in you... |
| `apimServiceExtensionId` | `string` | query | No | Optional. ID used to uniquely identify of the service extension. It must conform with RFC-1034, is restricted to lowe... |

**Request body**: `GoogleCloudApigeeV1ApimServiceExtension`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await apigee.apimServiceExtensions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.apimServiceExtensions.get`

**GET** `v1/{+name}`

Gets APIM service extension details.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the service extension. Use the following structure in your request: `organizations/{org}/apimServic... |

**Response**: `GoogleCloudApigeeV1ApimServiceExtension`

```typescript
const res = await apigee.apimServiceExtensions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.apimServiceExtensions.patch`

**PATCH** `v1/{+name}`

Updates an APIM service extension in an organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. unique name of the APIM service extension. The name must conform with RFC-1034, is restricted to lower-ca... |
| `allowMissing` | `boolean` | query | No | Optional. If set to true, and the service extension is not found, a new service extension will be created. In this si... |
| `updateMask` | `string` | query | No | Optional. The list of fields to update. |

**Request body**: `GoogleCloudApigeeV1ApimServiceExtension`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await apigee.apimServiceExtensions.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.reports.create`

**POST** `v1/{+parent}/reports`

Creates a Custom Report for an Organization. A Custom Report provides Apigee Customers to create custom dashboards in addition to the standard dashboards which are provided. The Custom Report in its simplest form contains specifications about metrics, dimensions and filters. It is important to note that the custom report by itself does not provide an executable entity. The Edge UI converts the custom report definition into an analytics query and displays the result in a chart.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent organization name under which the Custom Report will be created. Must be of the form: `organizat... |

**Request body**: `GoogleCloudApigeeV1CustomReport`

**Response**: `GoogleCloudApigeeV1CustomReport`

```typescript
const res = await apigee.reports.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.reports.get`

**GET** `v1/{+name}`

Retrieve a custom report definition.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Custom Report name of the form: `organizations/{organization_id}/reports/{report_name}` |

**Response**: `GoogleCloudApigeeV1CustomReport`

```typescript
const res = await apigee.reports.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.reports.list`

**GET** `v1/{+parent}/reports`

Return a list of Custom Reports

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent organization name under which the API product will be listed `organizations/{organization_id}/re... |
| `expand` | `boolean` | query | No | Set to 'true' to get expanded details about each custom report. |

**Response**: `GoogleCloudApigeeV1ListCustomReportsResponse`

```typescript
const res = await apigee.reports.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.reports.delete`

**DELETE** `v1/{+name}`

Deletes an existing custom report definition

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Custom Report name of the form: `organizations/{organization_id}/reports/{report_name}` |

**Response**: `GoogleCloudApigeeV1DeleteCustomReportResponse`

```typescript
const res = await apigee.reports.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.reports.update`

**PUT** `v1/{+name}`

Update an existing custom report definition

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Custom Report name of the form: `organizations/{organization_id}/reports/{report_name}` |

**Request body**: `GoogleCloudApigeeV1CustomReport`

**Response**: `GoogleCloudApigeeV1CustomReport`

```typescript
const res = await apigee.reports.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.apps.list`

**GET** `v1/{+parent}/apps`

Lists IDs of apps within an organization that have the specified app status (approved or revoked) or are of the specified app type (developer or company).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource path of the parent in the following format: `organizations/{org}` |
| `apiProduct` | `string` | query | No | API product. |
| `apptype` | `string` | query | No | Optional. 'apptype' is no longer available. Use a 'filter' instead. |
| `expand` | `boolean` | query | No | Optional. Flag that specifies whether to return an expanded list of apps for the organization. Defaults to `false`. |
| `filter` | `string` | query | No | Optional. The filter expression to be used to get the list of apps, where filtering can be done on developerEmail, ap... |
| `ids` | `string` | query | No | Optional. Comma-separated list of app IDs on which to filter. |
| `includeCred` | `boolean` | query | No | Optional. Flag that specifies whether to include credentials in the response. |
| `keyStatus` | `string` | query | No | Optional. Key status of the app. Valid values include `approved` or `revoked`. Defaults to `approved`. |
| `pageSize` | `integer` | query | No | Optional. Count of apps a single page can have in the response. If unspecified, at most 1000 apps will be returned. T... |
| `pageToken` | `string` | query | No | Optional. The starting index record for listing the developers. "page_token" is supported from ver 1.10.0 and above. |
| `rows` | `string` | query | No | Optional. Maximum number of app IDs to return. Defaults to 1000, which is also the upper limit. To get more than 1000... |
| `startKey` | `string` | query | No | Returns the list of apps starting from the specified app ID. |
| `status` | `string` | query | No | Optional. Filter by the status of the app. Valid values are `approved` or `revoked`. Defaults to `approved`. |

**Response**: `GoogleCloudApigeeV1ListAppsResponse`

```typescript
const res = await apigee.apps.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.apps.get`

**GET** `v1/{+name}`

Gets the app profile for the specified app ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. App ID in the following format: `organizations/{org}/apps/{app}` |

**Response**: `GoogleCloudApigeeV1App`

```typescript
const res = await apigee.apps.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.developers.setDeveloperStatus`

**POST** `v1/{+name}`

Sets the status of a developer. A developer is `active` by default. If you set a developer's status to `inactive`, the API keys assigned to the developer apps are no longer valid even though the API keys are set to `approved`. Inactive developers can still sign in to the developer portal and create apps; however, any new API keys generated during app creation won't work. To set the status of a developer, set the `action` query parameter to `active` or `inactive`, and the `Content-Type` header to `application/octet-stream`. If successful, the API call returns the following HTTP status code: `204 No Content`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the developer. Use the following structure in your request: `organizations/{org}/developers/{develo... |
| `action` | `string` | query | No | Status of the developer. Valid values are `active` and `inactive`. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await apigee.developers.setDeveloperStatus({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.developers.create`

**POST** `v1/{+parent}/developers`

Creates a developer. Once created, the developer can register an app and obtain an API key. At creation time, a developer is set as `active`. To change the developer status, use the SetDeveloperStatus API.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the Apigee organization in which the developer is created. Use the following structure in your requ... |

**Request body**: `GoogleCloudApigeeV1Developer`

**Response**: `GoogleCloudApigeeV1Developer`

```typescript
const res = await apigee.developers.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.developers.get`

**GET** `v1/{+name}`

Returns the developer details, including the developer's name, email address, apps, and other information. **Note**: The response includes only the first 100 developer apps.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Email address of the developer. Use the following structure in your request: `organizations/{org}/developer... |
| `action` | `string` | query | No | Status of the developer. Valid values are `active` or `inactive`. |

**Response**: `GoogleCloudApigeeV1Developer`

```typescript
const res = await apigee.developers.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.developers.delete`

**DELETE** `v1/{+name}`

Deletes a developer. All apps and API keys associated with the developer are also removed. **Warning**: This API will permanently delete the developer and related artifacts. To avoid permanently deleting developers and their artifacts, set the developer status to `inactive` using the SetDeveloperStatus API. **Note**: The delete operation is asynchronous. The developer is deleted immediately, but its associated resources, such as apps and API keys, may take anywhere from a few seconds to a few minutes to be deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Email address of the developer. Use the following structure in your request: `organizations/{org}/developer... |

**Response**: `GoogleCloudApigeeV1Developer`

```typescript
const res = await apigee.developers.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.developers.list`

**GET** `v1/{+parent}/developers`

Lists all developers in an organization by email address. By default, the response does not include company developers. Set the `includeCompany` query parameter to `true` to include company developers. **Note**: A maximum of 1000 developers are returned in the response. You paginate the list of developers returned using the `startKey` and `count` query parameters.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the Apigee organization. Use the following structure in your request: `organizations/{org}`. |
| `app` | `string` | query | No | Optional. List only Developers that are associated with the app. Note that start_key, count are not applicable for th... |
| `count` | `string` | query | No | Optional. Number of developers to return in the API call. Use with the `startKey` parameter to provide more targeted ... |
| `expand` | `boolean` | query | No | Specifies whether to expand the results. Set to `true` to expand the results. This query parameter is not valid if yo... |
| `ids` | `string` | query | No | Optional. List of IDs to include, separated by commas. |
| `includeCompany` | `boolean` | query | No | Flag that specifies whether to include company details in the response. |
| `startKey` | `string` | query | No | **Note**: Must be used in conjunction with the `count` parameter. Email address of the developer from which to start ... |

**Response**: `GoogleCloudApigeeV1ListOfDevelopersResponse`

```typescript
const res = await apigee.developers.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.developers.updateMonetizationConfig`

**PUT** `v1/{+name}`

Updates the monetization configuration for the developer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Monetization configuration for the developer. Use the following structure in your request: `organizations/{... |

**Request body**: `GoogleCloudApigeeV1DeveloperMonetizationConfig`

**Response**: `GoogleCloudApigeeV1DeveloperMonetizationConfig`

```typescript
const res = await apigee.developers.updateMonetizationConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.developers.update`

**PUT** `v1/{+name}`

Updates a developer. This API replaces the existing developer details with those specified in the request. Include or exclude any existing details that you want to retain or delete, respectively. The custom attribute limit is 18. **Note**: OAuth access tokens and Key Management Service (KMS) entities (apps, developers, and API products) are cached for 180 seconds (current default). Any custom attributes associated with these entities are cached for at least 180 seconds after the entity is accessed at runtime. Therefore, an `ExpiresIn` element on the OAuthV2 policy won't be able to expire an access token in less than 180 seconds.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Email address of the developer. Use the following structure in your request: `organizations/{org}/developer... |

**Request body**: `GoogleCloudApigeeV1Developer`

**Response**: `GoogleCloudApigeeV1Developer`

```typescript
const res = await apigee.developers.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.developers.getBalance`

**GET** `v1/{+name}`

Gets the account balance for the developer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Account balance for the developer. Use the following structure in your request: `organizations/{org}/develo... |

**Response**: `GoogleCloudApigeeV1DeveloperBalance`

```typescript
const res = await apigee.developers.getBalance({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.developers.attributes`

**POST** `v1/{+parent}/attributes`

Updates developer attributes. This API replaces the existing attributes with those specified in the request. Add new attributes, and include or exclude any existing attributes that you want to retain or remove, respectively. The custom attribute limit is 18. **Note**: OAuth access tokens and Key Management Service (KMS) entities (apps, developers, and API products) are cached for 180 seconds (default). Any custom attributes associated with these entities are cached for at least 180 seconds after the entity is accessed at runtime. Therefore, an `ExpiresIn` element on the OAuthV2 policy won't be able to expire an access token in less than 180 seconds.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Email address of the developer for which attributes are being updated. Use the following structure in your ... |

**Request body**: `GoogleCloudApigeeV1Attributes`

**Response**: `GoogleCloudApigeeV1Attributes`

```typescript
const res = await apigee.developers.attributes({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.developers.getMonetizationConfig`

**GET** `v1/{+name}`

Gets the monetization configuration for the developer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Monetization configuration for the developer. Use the following structure in your request: `organizations/{... |

**Response**: `GoogleCloudApigeeV1DeveloperMonetizationConfig`

```typescript
const res = await apigee.developers.getMonetizationConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.developers.apps.update`

**PUT** `v1/{+name}`

Updates the details for a developer app. In addition, you can add an API product to a developer app and automatically generate an API key for the app to use when calling APIs in the API product. If you want to use an existing API key for the API product, add the API product to the API key using the UpdateDeveloperAppKey API. Using this API, you cannot update the following: * App name as it is the primary key used to identify the app and cannot be changed. * Scopes associated with the app. Instead, use the ReplaceDeveloperAppKey API. This API replaces the existing attributes with those specified in the request. Include or exclude any existing attributes that you want to retain or delete, respectively.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the developer app. Use the following structure in your request: `organizations/{org}/developers/{de... |

**Request body**: `GoogleCloudApigeeV1DeveloperApp`

**Response**: `GoogleCloudApigeeV1DeveloperApp`

```typescript
const res = await apigee.apps.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.developers.apps.generateKeyPairOrUpdateDeveloperAppStatus`

**POST** `v1/{+name}`

Manages access to a developer app by enabling you to: * Approve or revoke a developer app * Generate a new consumer key and secret for a developer app To approve or revoke a developer app, set the `action` query parameter to `approve` or `revoke`, respectively, and the `Content-Type` header to `application/octet-stream`. If a developer app is revoked, none of its API keys are valid for API calls even though the keys are still approved. If successful, the API call returns the following HTTP status code: `204 No Content` To generate a new consumer key and secret for a developer app, pass the new key/secret details. Rather than replace an existing key, this API generates a new key. In this case, multiple key pairs may be associated with a single developer app. Each key pair has an independent status (`approve` or `revoke`) and expiration time. Any approved, non-expired key can be used in an API call. For example, if you're using API key rotation, you can generate new keys with expiration times that overlap keys that are going to expire. You might also generate a new consumer key/secret if the security of the original key/secret is compromised. The `keyExpiresIn` property defines the expiration time for the API key in milliseconds. If you don't set this property or set it to `-1`, the API key never expires. **Notes**: * When generating a new key/secret, this API replaces the existing attributes, notes, and callback URLs with those specified in the request. Include or exclude any existing information that you want to retain or delete, respectively. * To migrate existing consumer keys and secrets to hybrid from another system, see the CreateDeveloperAppKey API.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the developer app. Use the following structure in your request: `organizations/{org}/developers/{de... |
| `action` | `string` | query | No | Action. Valid values are `approve` or `revoke`. |

**Request body**: `GoogleCloudApigeeV1DeveloperApp`

**Response**: `GoogleCloudApigeeV1DeveloperApp`

```typescript
const res = await apigee.apps.generateKeyPairOrUpdateDeveloperAppStatus({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.developers.apps.delete`

**DELETE** `v1/{+name}`

Deletes a developer app. **Note**: The delete operation is asynchronous. The developer app is deleted immediately, but its associated resources, such as app keys or access tokens, may take anywhere from a few seconds to a few minutes to be deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the developer app. Use the following structure in your request: `organizations/{org}/developers/{de... |

**Response**: `GoogleCloudApigeeV1DeveloperApp`

```typescript
const res = await apigee.apps.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.developers.apps.list`

**GET** `v1/{+parent}/apps`

Lists all apps created by a developer in an Apigee organization. Optionally, you can request an expanded view of the developer apps. A maximum of 100 developer apps are returned per API call. You can paginate the list of deveoper apps returned using the `startKey` and `count` query parameters.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the developer. Use the following structure in your request: `organizations/{org}/developers/{develo... |
| `count` | `string` | query | No | Number of developer apps to return in the API call. Use with the `startKey` parameter to provide more targeted filter... |
| `expand` | `boolean` | query | No | Optional. Specifies whether to expand the results. Set to `true` to expand the results. This query parameter is not v... |
| `shallowExpand` | `boolean` | query | No | Optional. Specifies whether to expand the results in shallow mode. Set to `true` to expand the results in shallow mode. |
| `startKey` | `string` | query | No | **Note**: Must be used in conjunction with the `count` parameter. Name of the developer app from which to start displ... |

**Response**: `GoogleCloudApigeeV1ListDeveloperAppsResponse`

```typescript
const res = await apigee.apps.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.developers.apps.create`

**POST** `v1/{+parent}/apps`

Creates an app associated with a developer. This API associates the developer app with the specified API product and auto-generates an API key for the app to use in calls to API proxies inside that API product. The `name` is the unique ID of the app that you can use in API calls. The `DisplayName` (set as an attribute) appears in the UI. If you don't set the `DisplayName` attribute, the `name` appears in the UI.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the developer. Use the following structure in your request: `organizations/{org}/developers/{develo... |

**Request body**: `GoogleCloudApigeeV1DeveloperApp`

**Response**: `GoogleCloudApigeeV1DeveloperApp`

```typescript
const res = await apigee.apps.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.developers.apps.get`

**GET** `v1/{+name}`

Returns the details for a developer app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the developer app. Use the following structure in your request: `organizations/{org}/developers/{de... |
| `entity` | `string` | query | No | **Note**: Must be used in conjunction with the `query` parameter. Set to `apiresources` to return the number of API r... |
| `query` | `string` | query | No | **Note**: Must be used in conjunction with the `entity` parameter. Set to `count` to return the number of API resourc... |

**Response**: `GoogleCloudApigeeV1DeveloperApp`

```typescript
const res = await apigee.apps.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.developers.apps.attributes`

**POST** `v1/{+name}/attributes`

Updates attributes for a developer app. This API replaces the current attributes with those specified in the request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the developer app. Use the following structure in your request: `organizations/{org}/developers/{de... |

**Request body**: `GoogleCloudApigeeV1Attributes`

**Response**: `GoogleCloudApigeeV1Attributes`

```typescript
const res = await apigee.apps.attributes({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.developers.apps.attributes.get`

**GET** `v1/{+name}`

Returns a developer app attribute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the developer app attribute. Use the following structure in your request: `organizations/{org}/deve... |

**Response**: `GoogleCloudApigeeV1Attribute`

```typescript
const res = await apigee.attributes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.developers.apps.attributes.updateDeveloperAppAttribute`

**POST** `v1/{+name}`

Updates a developer app attribute. **Note**: OAuth access tokens and Key Management Service (KMS) entities (apps, developers, and API products) are cached for 180 seconds (current default). Any custom attributes associated with these entities are cached for at least 180 seconds after the entity is accessed at runtime. Therefore, an `ExpiresIn` element on the OAuthV2 policy won't be able to expire an access token in less than 180 seconds.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the developer app attribute. Use the following structure in your request: `organizations/{org}/deve... |

**Request body**: `GoogleCloudApigeeV1Attribute`

**Response**: `GoogleCloudApigeeV1Attribute`

```typescript
const res = await apigee.attributes.updateDeveloperAppAttribute({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.developers.apps.attributes.delete`

**DELETE** `v1/{+name}`

Deletes a developer app attribute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the developer app attribute. Use the following structure in your request: `organizations/{org}/deve... |

**Response**: `GoogleCloudApigeeV1Attribute`

```typescript
const res = await apigee.attributes.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.developers.apps.attributes.list`

**GET** `v1/{+parent}/attributes`

Returns a list of all developer app attributes.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the developer app. Use the following structure in your request: `organizations/{org}/developers/{de... |

**Response**: `GoogleCloudApigeeV1Attributes`

```typescript
const res = await apigee.attributes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.developers.apps.keys.updateDeveloperAppKey`

**POST** `v1/{+name}`

Adds an API product to a developer app key, enabling the app that holds the key to access the API resources bundled in the API product. In addition, you can add attributes and scopes associated with the API product to the developer app key. The status of the key can be updated via "action" Query Parameter. None of the other fields can be updated via this API. This API replaces the existing attributes with those specified in the request. Include or exclude any existing attributes that you want to retain or delete, respectively. None of the other fields can be updated. You can use the same key to access all API products associated with the app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Name of the developer app key. Use the following structure in your request: `organizations/{org}/developers/{develope... |
| `action` | `string` | query | No | Approve or revoke the consumer key by setting this value to `approve` or `revoke`, respectively. The `Content-Type` h... |

**Request body**: `GoogleCloudApigeeV1DeveloperAppKey`

**Response**: `GoogleCloudApigeeV1DeveloperAppKey`

```typescript
const res = await apigee.keys.updateDeveloperAppKey({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.developers.apps.keys.replaceDeveloperAppKey`

**PUT** `v1/{+name}`

Updates the scope of an app. This API replaces the existing scopes with those specified in the request. Include or exclude any existing scopes that you want to retain or delete, respectively. The specified scopes must already be defined for the API products associated with the app. This API sets the `scopes` element under the `apiProducts` element in the attributes of the app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Name of the developer app key. Use the following structure in your request: `organizations/{org}/developers/{develope... |

**Request body**: `GoogleCloudApigeeV1DeveloperAppKey`

**Response**: `GoogleCloudApigeeV1DeveloperAppKey`

```typescript
const res = await apigee.keys.replaceDeveloperAppKey({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.developers.apps.keys.delete`

**DELETE** `v1/{+name}`

Deletes an app's consumer key and removes all API products associated with the app. After the consumer key is deleted, it cannot be used to access any APIs. **Note**: After you delete a consumer key, you may want to: 1. Create a new consumer key and secret for the developer app using the CreateDeveloperAppKey API, and subsequently add an API product to the key using the UpdateDeveloperAppKey API. 2. Delete the developer app, if it is no longer required.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Name of the developer app key. Use the following structure in your request: `organizations/{org}/developers/{develope... |

**Response**: `GoogleCloudApigeeV1DeveloperAppKey`

```typescript
const res = await apigee.keys.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.developers.apps.keys.create`

**POST** `v1/{+parent}/keys`

Creates a custom consumer key and secret for a developer app. This is particularly useful if you want to migrate existing consumer keys and secrets to Apigee from another system. Consumer keys and secrets can contain letters, numbers, underscores, and hyphens. No other special characters are allowed. To avoid service disruptions, a consumer key and secret should not exceed 2 KBs each. **Note**: When creating the consumer key and secret, an association to API products will not be made. Therefore, you should not specify the associated API products in your request. Instead, use the UpdateDeveloperAppKey API to make the association after the consumer key and secret are created. If a consumer key and secret already exist, you can keep them or delete them using the DeleteDeveloperAppKey API. **Note**: All keys start out with status=approved, even if status=revoked is passed when the key is created. To revoke a key, use the UpdateDeveloperAppKey API.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Parent of the developer app key. Use the following structure in your request: 'organizations/{org}/developers/{develo... |

**Request body**: `GoogleCloudApigeeV1DeveloperAppKey`

**Response**: `GoogleCloudApigeeV1DeveloperAppKey`

```typescript
const res = await apigee.keys.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.developers.apps.keys.get`

**GET** `v1/{+name}`

Gets details for a consumer key for a developer app, including the key and secret value, associated API products, and other information.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Name of the developer app key. Use the following structure in your request: `organizations/{org}/developers/{develope... |

**Response**: `GoogleCloudApigeeV1DeveloperAppKey`

```typescript
const res = await apigee.keys.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.developers.apps.keys.create.create`

**POST** `v1/{+parent}/keys/create`

Creates a custom consumer key and secret for a developer app. This is particularly useful if you want to migrate existing consumer keys and secrets to Apigee from another system. Consumer keys and secrets can contain letters, numbers, underscores, and hyphens. No other special characters are allowed. To avoid service disruptions, a consumer key and secret should not exceed 2 KBs each. **Note**: When creating the consumer key and secret, an association to API products will not be made. Therefore, you should not specify the associated API products in your request. Instead, use the UpdateDeveloperAppKey API to make the association after the consumer key and secret are created. If a consumer key and secret already exist, you can keep them or delete them using the DeleteDeveloperAppKey API. **Note**: All keys start out with status=approved, even if status=revoked is passed when the key is created. To revoke a key, use the UpdateDeveloperAppKey API.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Parent of the developer app key. Use the following structure in your request: 'organizations/{org}/developers/{develo... |

**Request body**: `GoogleCloudApigeeV1DeveloperAppKey`

**Response**: `GoogleCloudApigeeV1DeveloperAppKey`

```typescript
const res = await apigee.create.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.developers.apps.keys.apiproducts.updateDeveloperAppKeyApiProduct`

**POST** `v1/{+name}`

Approves or revokes the consumer key for an API product. After a consumer key is approved, the app can use it to access APIs. A consumer key that is revoked or pending cannot be used to access an API. Any access tokens associated with a revoked consumer key will remain active. However, Apigee checks the status of the consumer key and if set to `revoked` will not allow access to the API.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Name of the API product in the developer app key in the following format: `organizations/{org}/developers/{developer_... |
| `action` | `string` | query | No | Approve or revoke the consumer key by setting this value to `approve` or `revoke`, respectively. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await apigee.apiproducts.updateDeveloperAppKeyApiProduct({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.developers.apps.keys.apiproducts.delete`

**DELETE** `v1/{+name}`

Removes an API product from an app's consumer key. After the API product is removed, the app cannot access the API resources defined in that API product. **Note**: The consumer key is not removed, only its association with the API product.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Name of the API product in the developer app key in the following format: `organizations/{org}/developers/{developer_... |

**Response**: `GoogleCloudApigeeV1DeveloperAppKey`

```typescript
const res = await apigee.apiproducts.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.developers.attributes.delete`

**DELETE** `v1/{+name}`

Deletes a developer attribute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the developer attribute. Use the following structure in your request: `organizations/{org}/develope... |

**Response**: `GoogleCloudApigeeV1Attribute`

```typescript
const res = await apigee.attributes.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.developers.attributes.list`

**GET** `v1/{+parent}/attributes`

Returns a list of all developer attributes.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Email address of the developer for which attributes are being listed. Use the following structure in your r... |

**Response**: `GoogleCloudApigeeV1Attributes`

```typescript
const res = await apigee.attributes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.developers.attributes.get`

**GET** `v1/{+name}`

Returns the value of the specified developer attribute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the developer attribute. Use the following structure in your request: `organizations/{org}/develope... |

**Response**: `GoogleCloudApigeeV1Attribute`

```typescript
const res = await apigee.attributes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.developers.attributes.updateDeveloperAttribute`

**POST** `v1/{+name}`

Updates a developer attribute. **Note**: OAuth access tokens and Key Management Service (KMS) entities (apps, developers, and API products) are cached for 180 seconds (default). Any custom attributes associated with these entities are cached for at least 180 seconds after the entity is accessed at runtime. Therefore, an `ExpiresIn` element on the OAuthV2 policy won't be able to expire an access token in less than 180 seconds.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the developer attribute. Use the following structure in your request: `organizations/{org}/develope... |

**Request body**: `GoogleCloudApigeeV1Attribute`

**Response**: `GoogleCloudApigeeV1Attribute`

```typescript
const res = await apigee.attributes.updateDeveloperAttribute({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.developers.subscriptions.expire`

**POST** `v1/{+name}:expire`

Expires an API product subscription immediately.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the API product subscription. Use the following structure in your request: `organizations/{org}/dev... |

**Request body**: `GoogleCloudApigeeV1ExpireDeveloperSubscriptionRequest`

**Response**: `GoogleCloudApigeeV1DeveloperSubscription`

```typescript
const res = await apigee.subscriptions.expire({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.developers.subscriptions.create`

**POST** `v1/{+parent}/subscriptions`

Creates a subscription to an API product.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Email address of the developer that is purchasing a subscription to the API product. Use the following stru... |

**Request body**: `GoogleCloudApigeeV1DeveloperSubscription`

**Response**: `GoogleCloudApigeeV1DeveloperSubscription`

```typescript
const res = await apigee.subscriptions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.developers.subscriptions.get`

**GET** `v1/{+name}`

Gets details for an API product subscription.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the API product subscription. Use the following structure in your request: `organizations/{org}/dev... |

**Response**: `GoogleCloudApigeeV1DeveloperSubscription`

```typescript
const res = await apigee.subscriptions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.developers.subscriptions.list`

**GET** `v1/{+parent}/subscriptions`

Lists all API product subscriptions for a developer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Email address of the developer. Use the following structure in your request: `organizations/{org}/developer... |
| `count` | `integer` | query | No | Number of API product subscriptions to return in the API call. Use with `startKey` to provide more targeted filtering... |
| `startKey` | `string` | query | No | Name of the API product subscription from which to start displaying the list of subscriptions. If omitted, the list s... |

**Response**: `GoogleCloudApigeeV1ListDeveloperSubscriptionsResponse`

```typescript
const res = await apigee.subscriptions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.developers.balance.credit`

**POST** `v1/{+name}:credit`

Credits the account balance for the developer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Account balance for the developer. Use the following structure in your request: `organizations/{org}/develo... |

**Request body**: `GoogleCloudApigeeV1CreditDeveloperBalanceRequest`

**Response**: `GoogleCloudApigeeV1DeveloperBalance`

```typescript
const res = await apigee.balance.credit({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.developers.balance.adjust`

**POST** `v1/{+name}:adjust`

Adjust the prepaid balance for the developer. This API will be used in scenarios where the developer has been under-charged or over-charged.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Account balance for the developer. Use the following structure in your request: `organizations/{org}/develo... |

**Request body**: `GoogleCloudApigeeV1AdjustDeveloperBalanceRequest`

**Response**: `GoogleCloudApigeeV1DeveloperBalance`

```typescript
const res = await apigee.balance.adjust({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.endpointAttachments.list`

**GET** `v1/{+parent}/endpointAttachments`

Lists the endpoint attachments in an organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the organization for which to list endpoint attachments. Use the following structure in your reques... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of endpoint attachments to return. If unspecified, at most 25 attachments will be returned. |
| `pageToken` | `string` | query | No | Optional. Page token, returned from a previous `ListEndpointAttachments` call, that you can use to retrieve the next ... |

**Response**: `GoogleCloudApigeeV1ListEndpointAttachmentsResponse`

```typescript
const res = await apigee.endpointAttachments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.endpointAttachments.delete`

**DELETE** `v1/{+name}`

Deletes an endpoint attachment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the endpoint attachment. Use the following structure in your request: `organizations/{org}/endpoint... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await apigee.endpointAttachments.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.endpointAttachments.create`

**POST** `v1/{+parent}/endpointAttachments`

Creates an endpoint attachment. **Note:** Not supported for Apigee hybrid.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Organization the endpoint attachment will be created in. |
| `endpointAttachmentId` | `string` | query | No | ID to use for the endpoint attachment. ID must start with a lowercase letter followed by up to 31 lowercase letters, ... |

**Request body**: `GoogleCloudApigeeV1EndpointAttachment`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await apigee.endpointAttachments.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.endpointAttachments.get`

**GET** `v1/{+name}`

Gets the endpoint attachment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the endpoint attachment. Use the following structure in your request: `organizations/{org}/endpoint... |

**Response**: `GoogleCloudApigeeV1EndpointAttachment`

```typescript
const res = await apigee.endpointAttachments.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.securityProfiles.create`

**POST** `v1/{+parent}/securityProfiles`

CreateSecurityProfile create a new custom security profile.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of organization. Format: organizations/{org} |
| `securityProfileId` | `string` | query | No | Required. The ID to use for the SecurityProfile, which will become the final component of the action's resource name.... |

**Request body**: `GoogleCloudApigeeV1SecurityProfile`

**Response**: `GoogleCloudApigeeV1SecurityProfile`

```typescript
const res = await apigee.securityProfiles.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.securityProfiles.get`

**GET** `v1/{+name}`

GetSecurityProfile gets the specified security profile. Returns NOT_FOUND if security profile is not present for the specified organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Security profile in the following format: `organizations/{org}/securityProfiles/{profile}'. Profile may opt... |

**Response**: `GoogleCloudApigeeV1SecurityProfile`

```typescript
const res = await apigee.securityProfiles.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.securityProfiles.delete`

**DELETE** `v1/{+name}`

DeleteSecurityProfile delete a profile with all its revisions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of profile. Format: organizations/{org}/securityProfiles/{profile} |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await apigee.securityProfiles.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.securityProfiles.list`

**GET** `v1/{+parent}/securityProfiles`

ListSecurityProfiles lists all the security profiles associated with the org including attached and unattached profiles.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. For a specific organization, list of all the security profiles. Format: `organizations/{org}` |
| `pageSize` | `integer` | query | No | The maximum number of profiles to return. The service may return fewer than this value. If unspecified, at most 50 pr... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListSecurityProfiles` call. Provide this to retrieve the subsequent page. |

**Response**: `GoogleCloudApigeeV1ListSecurityProfilesResponse`

```typescript
const res = await apigee.securityProfiles.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.securityProfiles.listRevisions`

**GET** `v1/{+name}:listRevisions`

ListSecurityProfileRevisions lists all the revisions of the security profile.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. For a specific profile, list all the revisions. Format: `organizations/{org}/securityProfiles/{profile}` |
| `pageSize` | `integer` | query | No | The maximum number of profile revisions to return. The service may return fewer than this value. If unspecified, at m... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListSecurityProfileRevisions` call. Provide this to retrieve the subsequent p... |

**Response**: `GoogleCloudApigeeV1ListSecurityProfileRevisionsResponse`

```typescript
const res = await apigee.securityProfiles.listRevisions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.securityProfiles.patch`

**PATCH** `v1/{+name}`

UpdateSecurityProfile update the metadata of security profile.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Name of the security profile resource. Format: organizations/{org}/securityProfiles/{profile} |
| `updateMask` | `string` | query | No | Required. The list of fields to update. |

**Request body**: `GoogleCloudApigeeV1SecurityProfile`

**Response**: `GoogleCloudApigeeV1SecurityProfile`

```typescript
const res = await apigee.securityProfiles.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.securityProfiles.environments.delete`

**DELETE** `v1/{+name}`

DeleteSecurityProfileEnvironmentAssociation removes profile environment association i.e. detaches environment from security profile.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the environment attachment to delete. Format: organizations/{org}/securityProfiles/{profile}/en... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await apigee.environments.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.securityProfiles.environments.create`

**POST** `v1/{+parent}/environments`

CreateSecurityProfileEnvironmentAssociation creates profile environment association i.e. attaches environment to security profile.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of organization and security profile ID. Format: organizations/{org}/securityProfiles/{profile} |

**Request body**: `GoogleCloudApigeeV1SecurityProfileEnvironmentAssociation`

**Response**: `GoogleCloudApigeeV1SecurityProfileEnvironmentAssociation`

```typescript
const res = await apigee.environments.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.securityProfiles.environments.computeEnvironmentScores`

**POST** `v1/{+profileEnvironment}:computeEnvironmentScores`

ComputeEnvironmentScores calculates scores for requested time range for the specified security profile and environment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileEnvironment` | `string` | path | Yes | Required. Name of organization and environment and profile id for which score needs to be computed. Format: organizat... |

**Request body**: `GoogleCloudApigeeV1ComputeEnvironmentScoresRequest`

**Response**: `GoogleCloudApigeeV1ComputeEnvironmentScoresResponse`

```typescript
const res = await apigee.environments.computeEnvironmentScores({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.hostStats.get`

**GET** `v1/{+name}`

Retrieve metrics grouped by dimensions in host level. The types of metrics you can retrieve include traffic, message counts, API call latency, response size, and cache hits and counts. Dimensions let you view metrics in meaningful groups. You can optionally pass dimensions as path parameters to the `stats` API. If dimensions are not specified, the metrics are computed on the entire set of data for the given time range.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name for which the interactive query will be executed. Use the following format in your request: `... |
| `accuracy` | `string` | query | No | No longer used by Apigee. Supported for backwards compatibility. |
| `envgroupHostname` | `string` | query | No | Required. Hostname for which the interactive query will be executed. |
| `filter` | `string` | query | No | Flag that enables drill-down on specific dimension values. |
| `limit` | `string` | query | No | Maximum number of result items to return. |
| `offset` | `string` | query | No | Offset value. Use `offset` with `limit` to enable pagination of results. For example, to display results 11-20, set l... |
| `realtime` | `boolean` | query | No | No longer used by Apigee. Supported for backwards compatibility. |
| `select` | `string` | query | No | Comma-separated list of metrics. For example: `sum(message_count),sum(error_count)` |
| `sort` | `string` | query | No | Flag that specifies if the sort order should be ascending or descending. Valid values are `DESC` and `ASC`. |
| `sortby` | `string` | query | No | Comma-separated list of metrics to sort the final result. |
| `timeRange` | `string` | query | No | Time interval for the interactive query. Time range is specified in GMT as `start~end`. For example: `04/15/2017 00:0... |
| `timeUnit` | `string` | query | No | Granularity of metrics returned. Valid values include: `second`, `minute`, `hour`, `day`, `week`, or `month`. |
| `topk` | `string` | query | No | Top number of results to return. For example, to return the top 5 results, set `topk=5`. |
| `tsAscending` | `boolean` | query | No | Flag that specifies whether to list timestamps in ascending (`true`) or descending (`false`) order. Apigee recommends... |
| `tzo` | `string` | query | No | Timezone offset value. |

**Response**: `GoogleCloudApigeeV1Stats`

```typescript
const res = await apigee.hostStats.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.securityMonitoringConditions.patch`

**PATCH** `v1/{+name}`

Update a security monitoring condition.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Name of the security monitoring condition resource. Format: organizations/{org}/securityMonitoringConditi... |
| `updateMask` | `string` | query | No | Optional. The list of fields to update. Valid fields to update are `include_all_resources` and `include`. |

**Request body**: `GoogleCloudApigeeV1SecurityMonitoringCondition`

**Response**: `GoogleCloudApigeeV1SecurityMonitoringCondition`

```typescript
const res = await apigee.securityMonitoringConditions.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.securityMonitoringConditions.create`

**POST** `v1/{+parent}/securityMonitoringConditions`

Create a security monitoring condition.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name. Format: `organizations/{org}` |
| `securityMonitoringConditionId` | `string` | query | No | Optional. Optional: The security monitoring condition id. If not specified, a monitoring condition uuid will be gener... |

**Request body**: `GoogleCloudApigeeV1SecurityMonitoringCondition`

**Response**: `GoogleCloudApigeeV1SecurityMonitoringCondition`

```typescript
const res = await apigee.securityMonitoringConditions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.securityMonitoringConditions.get`

**GET** `v1/{+name}`

Get a security monitoring condition.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the security monitoring condition to get. Format: `organizations/{org}/securityMonitoringCondit... |
| `riskAssessmentType` | `string` | query | No | Optional. The risk assessment type of the security monitoring condition. Defaults to ADVANCED_API_SECURITY. |

**Response**: `GoogleCloudApigeeV1SecurityMonitoringCondition`

```typescript
const res = await apigee.securityMonitoringConditions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.securityMonitoringConditions.list`

**GET** `v1/{+parent}/securityMonitoringConditions`

List security monitoring conditions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. For a specific organization, list all the security monitoring conditions. Format: `organizations/{org}` |
| `filter` | `string` | query | No | Optional. Filter for the monitoring conditions. When RiskAssessmentType is APIGEE, monitoring conditions can be filte... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of monitoring conditions to return. |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListSecurityMonitoringConditions` call. Provide this to retrieve th... |
| `riskAssessmentType` | `string` | query | No | Optional. The risk assessment type of the security monitoring condition. Defaults to ADVANCED_API_SECURITY. |

**Response**: `GoogleCloudApigeeV1ListSecurityMonitoringConditionsResponse`

```typescript
const res = await apigee.securityMonitoringConditions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.securityMonitoringConditions.delete`

**DELETE** `v1/{+name}`

Delete a security monitoring condition.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the security monitoring condition to delete. Format: `organizations/{org}/securityMonitoringCon... |
| `riskAssessmentType` | `string` | query | No | Optional. The risk assessment type of the security monitoring condition. Defaults to ADVANCED_API_SECURITY. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await apigee.securityMonitoringConditions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.updateDebugmask`

**PATCH** `v1/{+name}`

Updates the debug mask singleton resource for an environment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Name of the debug mask. |
| `replaceRepeatedFields` | `boolean` | query | No | Boolean flag that specifies whether to replace existing values in the debug mask when doing an update. Set to true to... |
| `updateMask` | `string` | query | No | Field debug mask to support partial updates. |

**Request body**: `GoogleCloudApigeeV1DebugMask`

**Response**: `GoogleCloudApigeeV1DebugMask`

```typescript
const res = await apigee.environments.updateDebugmask({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.delete`

**DELETE** `v1/{+name}`

Deletes an environment from an organization. **Warning: You must delete all key value maps and key value entries before you delete an environment.** Otherwise, if you re-create the environment the key value map entry operations will encounter encryption/decryption discrepancies.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the environment. Use the following structure in your request: `organizations/{org}/environments/{env}` |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await apigee.environments.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the IAM policy on an environment, if the policy already exists it will be replaced. For more information, see [Manage users, roles, and permissions using the API](https://cloud.google.com/apigee/docs/api-platform/system-administration/manage-users-roles). You must have the `apigee.environments.setIamPolicy` permission to call this API.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GoogleIamV1SetIamPolicyRequest`

**Response**: `GoogleIamV1Policy`

```typescript
const res = await apigee.environments.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.unsubscribe`

**POST** `v1/{+parent}:unsubscribe`

Deletes a subscription for the environment's Pub/Sub topic.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the environment. Use the following structure in your request: `organizations/{org}/environments/{env}` |

**Request body**: `GoogleCloudApigeeV1Subscription`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await apigee.environments.unsubscribe({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.updateTraceConfig`

**PATCH** `v1/{+name}`

Updates the trace configurations in an environment. Note that the repeated fields have replace semantics when included in the field mask and that they will be overwritten by the value of the fields in the request body.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the trace configuration. Use the following structure in your request: "organizations/*/environments... |
| `updateMask` | `string` | query | No | List of fields to be updated. |

**Request body**: `GoogleCloudApigeeV1TraceConfig`

**Response**: `GoogleCloudApigeeV1TraceConfig`

```typescript
const res = await apigee.environments.updateTraceConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.getDeployedConfig`

**GET** `v1/{+name}`

Gets the deployed configuration for an environment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the environment deployed configuration resource. Use the following structure in your request: `orga... |

**Response**: `GoogleCloudApigeeV1EnvironmentConfig`

```typescript
const res = await apigee.environments.getDeployedConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.getTraceConfig`

**GET** `v1/{+name}`

Get distributed trace configuration in an environment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the trace configuration. Use the following structure in your request: "organizations/*/environments... |

**Response**: `GoogleCloudApigeeV1TraceConfig`

```typescript
const res = await apigee.environments.getTraceConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.update`

**PUT** `v1/{+name}`

Updates an existing environment. When updating properties, you must pass all existing properties to the API, even if they are not being changed. If you omit properties from the payload, the properties are removed. To get the current list of properties for the environment, use the [Get Environment API](get). **Note**: Both `PUT` and `POST` methods are supported for updating an existing environment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the environment. Use the following structure in your request: `organizations/{org}/environments/{env}` |

**Request body**: `GoogleCloudApigeeV1Environment`

**Response**: `GoogleCloudApigeeV1Environment`

```typescript
const res = await apigee.environments.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Tests the permissions of a user on an environment, and returns a subset of permissions that the user has on the environment. If the environment does not exist, an empty permission set is returned (a NOT_FOUND error is not returned).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `GoogleIamV1TestIamPermissionsRequest`

**Response**: `GoogleIamV1TestIamPermissionsResponse`

```typescript
const res = await apigee.environments.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.modifyEnvironment`

**PATCH** `v1/{+name}`

Updates properties for an Apigee environment with patch semantics using a field mask. **Note:** Not supported for Apigee hybrid.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the environment. Use the following structure in your request: `organizations/{org}/environments/{en... |
| `updateMask` | `string` | query | No | List of fields to be updated. Fields that can be updated: node_config. |

**Request body**: `GoogleCloudApigeeV1Environment`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await apigee.environments.modifyEnvironment({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.updateSecurityActionsConfig`

**PATCH** `v1/{+name}`

UpdateSecurityActionConfig updates the current SecurityActions configuration. This method is used to enable/disable the feature at the environment level.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | This is a singleton resource, the name will always be set by SecurityActions and any user input will be ignored. The ... |
| `updateMask` | `string` | query | No | The list of fields to update. |

**Request body**: `GoogleCloudApigeeV1SecurityActionsConfig`

**Response**: `GoogleCloudApigeeV1SecurityActionsConfig`

```typescript
const res = await apigee.environments.updateSecurityActionsConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.getDebugmask`

**GET** `v1/{+name}`

Gets the debug mask singleton resource for an environment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the debug mask. Use the following structure in your request: `organizations/{org}/environments/{env... |

**Response**: `GoogleCloudApigeeV1DebugMask`

```typescript
const res = await apigee.environments.getDebugmask({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.create`

**POST** `v1/{+parent}/environments`

Creates an environment in an organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the organization in which the environment will be created. Use the following structure in your requ... |
| `name` | `string` | query | No | Optional. Name of the environment. |

**Request body**: `GoogleCloudApigeeV1Environment`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await apigee.environments.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.get`

**GET** `v1/{+name}`

Gets environment details.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the environment. Use the following structure in your request: `organizations/{org}/environments/{env}` |

**Response**: `GoogleCloudApigeeV1Environment`

```typescript
const res = await apigee.environments.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.getSecurityActionsConfig`

**GET** `v1/{+name}`

GetSecurityActionConfig returns the current SecurityActions configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the SecurityActionsConfig to retrieve. This will always be: `organizations/{org}/environments/{... |

**Response**: `GoogleCloudApigeeV1SecurityActionsConfig`

```typescript
const res = await apigee.environments.getSecurityActionsConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.subscribe`

**POST** `v1/{+parent}:subscribe`

Creates a subscription for the environment's Pub/Sub topic. The server will assign a random name for this subscription. The "name" and "push_config" must *not* be specified.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the environment. Use the following structure in your request: `organizations/{org}/environments/{env}` |

**Response**: `GoogleCloudApigeeV1Subscription`

```typescript
const res = await apigee.environments.subscribe({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.getAddonsConfig`

**GET** `v1/{+name}`

Gets the add-ons config of an environment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the add-ons config. Must be in the format of `/organizations/{org}/environments/{env}/addonsConfig` |

**Response**: `GoogleCloudApigeeV1AddonsConfig`

```typescript
const res = await apigee.environments.getAddonsConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.updateEnvironment`

**POST** `v1/{+name}`

Updates an existing environment. When updating properties, you must pass all existing properties to the API, even if they are not being changed. If you omit properties from the payload, the properties are removed. To get the current list of properties for the environment, use the [Get Environment API](get). **Note**: Both `PUT` and `POST` methods are supported for updating an existing environment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the environment. Use the following structure in your request: `organizations/{org}/environments/{env}` |

**Request body**: `GoogleCloudApigeeV1Environment`

**Response**: `GoogleCloudApigeeV1Environment`

```typescript
const res = await apigee.environments.updateEnvironment({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the IAM policy on an environment. For more information, see [Manage users, roles, and permissions using the API](https://cloud.google.com/apigee/docs/api-platform/system-administration/manage-users-roles). You must have the `apigee.environments.getIamPolicy` permission to call this API.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `GoogleIamV1Policy`

```typescript
const res = await apigee.environments.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.getApiSecurityRuntimeConfig`

**GET** `v1/{+name}`

Gets the API Security runtime configuration for an environment. This named ApiSecurityRuntimeConfig to prevent conflicts with ApiSecurityConfig from addon config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the environment API Security Runtime configuration resource. Use the following structure in your re... |

**Response**: `GoogleCloudApigeeV1ApiSecurityRuntimeConfig`

```typescript
const res = await apigee.environments.getApiSecurityRuntimeConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.securityIncidents.list`

**GET** `v1/{+parent}/securityIncidents`

ListSecurityIncidents lists all the security incident associated with the environment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. For a specific organization, list of all the security incidents. Format: `organizations/{org}/environments/... |
| `filter` | `string` | query | No | The filter expression to be used to get the list of security incidents, where filtering can be done on API Proxies. E... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of incidents to return. The service may return fewer than this value. If unspecified, at... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListSecurityIncident` call. Provide this to retrieve the subsequent... |

**Response**: `GoogleCloudApigeeV1ListSecurityIncidentsResponse`

```typescript
const res = await apigee.securityIncidents.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.securityIncidents.patch`

**PATCH** `v1/{+name}`

UpdateSecurityIncidents updates an existing security incident.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Name of the security incident resource. Format: organizations/{org}/environments/{environment}/securityInc... |
| `updateMask` | `string` | query | No | Required. The list of fields to update. Allowed fields are: LINT.IfChange(allowed_update_fields_comment) - observabil... |

**Request body**: `GoogleCloudApigeeV1SecurityIncident`

**Response**: `GoogleCloudApigeeV1SecurityIncident`

```typescript
const res = await apigee.securityIncidents.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.securityIncidents.get`

**GET** `v1/{+name}`

GetSecurityIncident gets the specified security incident. Returns NOT_FOUND if security incident is not present for the specified organization and environment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Security incident in the following format: `organizations/{org}/environments/{environment}/securityIncident... |

**Response**: `GoogleCloudApigeeV1SecurityIncident`

```typescript
const res = await apigee.securityIncidents.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.securityIncidents.batchUpdate`

**POST** `v1/{+parent}/securityIncidents:batchUpdate`

BatchUpdateSecurityIncident updates multiple existing security incidents.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Optional. The parent resource shared by all security incidents being updated. If this is set, the parent field in the... |

**Request body**: `GoogleCloudApigeeV1BatchUpdateSecurityIncidentsRequest`

**Response**: `GoogleCloudApigeeV1BatchUpdateSecurityIncidentsResponse`

```typescript
const res = await apigee.securityIncidents.batchUpdate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.apis.revisions.undeploy`

**DELETE** `v1/{+name}/deployments`

Undeploys an API proxy revision from an environment. For a request path `organizations/{org}/environments/{env}/apis/{api}/revisions/{rev}/deployments`, two permissions are required: * `apigee.deployments.delete` on the resource `organizations/{org}/environments/{env}` * `apigee.proxyrevisions.undeploy` on the resource `organizations/{org}/apis/{api}/revisions/{rev}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the API proxy revision deployment in the following format: `organizations/{org}/environments/{env}/... |
| `sequencedRollout` | `boolean` | query | No | Flag that specifies whether to enable sequenced rollout. If set to `true`, the environment group routing rules corres... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await apigee.revisions.undeploy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.apis.revisions.deploy`

**POST** `v1/{+name}/deployments`

Deploys a revision of an API proxy. If another revision of the same API proxy revision is currently deployed, set the `override` parameter to `true` to have this revision replace the currently deployed revision. You cannot invoke an API proxy until it has been deployed to an environment. After you deploy an API proxy revision, you cannot edit it. To edit the API proxy, you must create and deploy a new revision. For a request path `organizations/{org}/environments/{env}/apis/{api}/revisions/{rev}/deployments`, two permissions are required: * `apigee.deployments.create` on the resource `organizations/{org}/environments/{env}` * `apigee.proxyrevisions.deploy` on the resource `organizations/{org}/apis/{api}/revisions/{rev}` All successful API proxy deployments to Apigee are [zero-downtime deployments](https://cloud.google.com/apigee/docs/api-platform/deploy/ui-deploy-overview#zero-downtime-deployment). Apigee hybrid validates the dependencies between shared flows and API proxies at deployment time. For example, if the Flow Callout policy in an API proxy references a shared flow that either doesn't exist or isn't deployed, the API proxy deployment fails.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the API proxy revision deployment in the following format: `organizations/{org}/environments/{env}/... |
| `override` | `boolean` | query | No | Flag that specifies whether the new deployment replaces other deployed revisions of the API proxy in the environment.... |
| `sequencedRollout` | `boolean` | query | No | Flag that specifies whether to enable sequenced rollout. If set to `true`, the routing rules for this deployment and ... |
| `serviceAccount` | `string` | query | No | Google Cloud IAM service account. The service account represents the identity of the deployed proxy, and determines w... |

**Response**: `GoogleCloudApigeeV1Deployment`

```typescript
const res = await apigee.revisions.deploy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.apis.revisions.getDeployments`

**GET** `v1/{+name}/deployments`

Gets the deployment of an API proxy revision and actual state reported by runtime pods.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name representing an API proxy revision in an environment in the following format: `organizations/{org}/env... |

**Response**: `GoogleCloudApigeeV1Deployment`

```typescript
const res = await apigee.revisions.getDeployments({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.apis.revisions.deployments.generateDeployChangeReport`

**POST** `v1/{+name}/deployments:generateDeployChangeReport`

Generates a report for a dry run analysis of a DeployApiProxy request without committing the deployment. In addition to the standard validations performed when adding deployments, additional analysis will be done to detect possible traffic routing changes that would result from this deployment being created. Any potential routing conflicts or unsafe changes will be reported in the response. This routing analysis is not performed for a non-dry-run DeployApiProxy request. For a request path `organizations/{org}/environments/{env}/apis/{api}/revisions/{rev}/deployments:generateDeployChangeReport`, two permissions are required: * `apigee.deployments.create` on the resource `organizations/{org}/environments/{env}` * `apigee.proxyrevisions.deploy` on the resource `organizations/{org}/apis/{api}/revisions/{rev}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Name of the API proxy revision deployment in the following format: `organizations/{org}/environments/{env}/apis/{api}... |
| `override` | `boolean` | query | No | Flag that specifies whether to force the deployment of the new revision over the currently deployed revision by overr... |

**Response**: `GoogleCloudApigeeV1DeploymentChangeReport`

```typescript
const res = await apigee.deployments.generateDeployChangeReport({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.apis.revisions.deployments.generateUndeployChangeReport`

**POST** `v1/{+name}/deployments:generateUndeployChangeReport`

Generates a report for a dry run analysis of an UndeployApiProxy request without committing the undeploy. In addition to the standard validations performed when removing deployments, additional analysis will be done to detect possible traffic routing changes that would result from this deployment being removed. Any potential routing conflicts or unsafe changes will be reported in the response. This routing analysis is not performed for a non-dry-run UndeployApiProxy request. For a request path `organizations/{org}/environments/{env}/apis/{api}/revisions/{rev}/deployments:generateUndeployChangeReport`, two permissions are required: * `apigee.deployments.delete` on the resource `organizations/{org}/environments/{env}` * `apigee.proxyrevisions.undeploy` on the resource `organizations/{org}/apis/{api}/revisions/{rev}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Name of the API proxy revision deployment in the following format: `organizations/{org}/environments/{env}/apis/{api}... |

**Response**: `GoogleCloudApigeeV1DeploymentChangeReport`

```typescript
const res = await apigee.deployments.generateUndeployChangeReport({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.apis.revisions.debugsessions.create`

**POST** `v1/{+parent}/debugsessions`

Creates a debug session for a deployed API Proxy revision.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the API Proxy revision deployment for which to create the DebugSession. Must be of the... |
| `timeout` | `string` | query | No | Optional. The time in seconds after which this DebugSession should end. A timeout specified in DebugSession will over... |

**Request body**: `GoogleCloudApigeeV1DebugSession`

**Response**: `GoogleCloudApigeeV1DebugSession`

```typescript
const res = await apigee.debugsessions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.apis.revisions.debugsessions.get`

**GET** `v1/{+name}`

Retrieves a debug session.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the debug session to retrieve. Must be of the form: `organizations/{organization}/environments/... |

**Response**: `GoogleCloudApigeeV1DebugSession`

```typescript
const res = await apigee.debugsessions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.apis.revisions.debugsessions.list`

**GET** `v1/{+parent}/debugsessions`

Lists debug sessions that are currently active in the given API Proxy revision.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the API Proxy revision deployment for which to list debug sessions. Must be of the form: `organ... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of debug sessions to return. The page size defaults to 25. |
| `pageToken` | `string` | query | No | Optional. Page token, returned from a previous ListDebugSessions call, that you can use to retrieve the next page. |

**Response**: `GoogleCloudApigeeV1ListDebugSessionsResponse`

```typescript
const res = await apigee.debugsessions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.apis.revisions.debugsessions.deleteData`

**DELETE** `v1/{+name}/data`

Deletes the data from a debug session. This does not cancel the debug session or prevent further data from being collected if the session is still active in runtime pods.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the debug session to delete. Must be of the form: `organizations/{organization}/environments/{e... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await apigee.debugsessions.deleteData({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.apis.revisions.debugsessions.data.get`

**GET** `v1/{+name}`

Gets the debug data from a transaction.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the debug session transaction. Must be of the form: `organizations/{organization}/environments/... |

**Response**: `GoogleCloudApigeeV1DebugSessionTransaction`

```typescript
const res = await apigee.data.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.apis.deployments.list`

**GET** `v1/{+parent}/deployments`

Lists all deployments of an API proxy in an environment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name representing an API proxy in an environment in the following format: `organizations/{org}/environments... |

**Response**: `GoogleCloudApigeeV1ListDeploymentsResponse`

```typescript
const res = await apigee.deployments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.optimizedStats.get`

**GET** `v1/{+name}`

Similar to GetStats except that the response is less verbose.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name for which the interactive query will be executed. Use the following format in your request: `... |
| `accuracy` | `string` | query | No | No longer used by Apigee. Supported for backwards compatibility. |
| `aggTable` | `string` | query | No | Table name used to query custom aggregate tables. If this parameter is skipped, then Apigee will try to retrieve the ... |
| `filter` | `string` | query | No | Filter that enables you to drill-down on specific dimension values. |
| `limit` | `string` | query | No | Maximum number of result items to return. |
| `offset` | `string` | query | No | Offset value. Use `offset` with `limit` to enable pagination of results. For example, to display results 11-20, set l... |
| `realtime` | `boolean` | query | No | No longer used by Apigee. Supported for backwards compatibility. |
| `select` | `string` | query | No | Required. Comma-separated list of metrics. For example: `sum(message_count),sum(error_count)` |
| `sonar` | `boolean` | query | No | Routes the query to API Monitoring for the last hour. |
| `sort` | `string` | query | No | Flag that specifies whether the sort order should be ascending or descending. Valid values include `DESC` and `ASC`. |
| `sortby` | `string` | query | No | Comma-separated list of metrics to sort the final result. |
| `timeRange` | `string` | query | No | Required. Time interval for the interactive query. Time range is specified in GMT as `start~end`. For example: `04/15... |
| `timeUnit` | `string` | query | No | Granularity of metrics returned. Valid values include: `second`, `minute`, `hour`, `day`, `week`, or `month`. |
| `topk` | `string` | query | No | Top number of results to return. For example, to return the top 5 results, set `topk=5`. |
| `tsAscending` | `boolean` | query | No | Flag that specifies whether to list timestamps in ascending (`true`) or descending (`false`) order. Apigee recommends... |
| `tzo` | `string` | query | No | Timezone offset value. |

**Response**: `GoogleCloudApigeeV1OptimizedStats`

```typescript
const res = await apigee.optimizedStats.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.addonsConfig.setAddonEnablement`

**POST** `v1/{+name}:setAddonEnablement`

Updates an add-on enablement status of an environment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the add-ons config. Must be in the format of `/organizations/{org}/environments/{env}/addonsConfig` |

**Request body**: `GoogleCloudApigeeV1SetAddonEnablementRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await apigee.addonsConfig.setAddonEnablement({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.flowhooks.detachSharedFlowFromFlowHook`

**DELETE** `v1/{+name}`

Detaches a shared flow from a flow hook.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the flow hook to detach in the following format: `organizations/{org}/environments/{env}/flowhooks/... |

**Response**: `GoogleCloudApigeeV1FlowHook`

```typescript
const res = await apigee.flowhooks.detachSharedFlowFromFlowHook({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.flowhooks.get`

**GET** `v1/{+name}`

Returns the name of the shared flow attached to the specified flow hook. If there's no shared flow attached to the flow hook, the API does not return an error; it simply does not return a name in the response.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the flow hook in the following format: `organizations/{org}/environments/{env}/flowhooks/{flowhook}` |

**Response**: `GoogleCloudApigeeV1FlowHook`

```typescript
const res = await apigee.flowhooks.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.flowhooks.attachSharedFlowToFlowHook`

**PUT** `v1/{+name}`

Attaches a shared flow to a flow hook.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the flow hook to which the shared flow should be attached in the following format: `organizations/{... |

**Request body**: `GoogleCloudApigeeV1FlowHook`

**Response**: `GoogleCloudApigeeV1FlowHook`

```typescript
const res = await apigee.flowhooks.attachSharedFlowToFlowHook({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.references.create`

**POST** `v1/{+parent}/references`

Creates a Reference in the specified environment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent environment name under which the Reference will be created. Must be of the form `organizations/{... |

**Request body**: `GoogleCloudApigeeV1Reference`

**Response**: `GoogleCloudApigeeV1Reference`

```typescript
const res = await apigee.references.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.references.get`

**GET** `v1/{+name}`

Gets a Reference resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Reference to get. Must be of the form `organizations/{org}/environments/{env}/references/{r... |

**Response**: `GoogleCloudApigeeV1Reference`

```typescript
const res = await apigee.references.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.references.delete`

**DELETE** `v1/{+name}`

Deletes a Reference from an environment. Returns the deleted Reference resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Reference to delete. Must be of the form `organizations/{org}/environments/{env}/references... |

**Response**: `GoogleCloudApigeeV1Reference`

```typescript
const res = await apigee.references.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.references.update`

**PUT** `v1/{+name}`

Updates an existing Reference. Note that this operation has PUT semantics; it will replace the entirety of the existing Reference with the resource in the request body.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Reference to update. Must be of the form `organizations/{org}/environments/{env}/references... |

**Request body**: `GoogleCloudApigeeV1Reference`

**Response**: `GoogleCloudApigeeV1Reference`

```typescript
const res = await apigee.references.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.archiveDeployments.patch`

**PATCH** `v1/{+name}`

Updates an existing ArchiveDeployment. Labels can modified but most of the other fields are not modifiable.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Name of the Archive Deployment in the following format: `organizations/{org}/environments/{env}/archiveDeployments/{i... |
| `updateMask` | `string` | query | No | Required. The list of fields to be updated. |

**Request body**: `GoogleCloudApigeeV1ArchiveDeployment`

**Response**: `GoogleCloudApigeeV1ArchiveDeployment`

```typescript
const res = await apigee.archiveDeployments.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.archiveDeployments.list`

**GET** `v1/{+parent}/archiveDeployments`

Lists the ArchiveDeployments in the specified Environment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the Environment for which to list Archive Deployments in the format: `organizations/{org}/environme... |
| `filter` | `string` | query | No | Optional. An optional query used to return a subset of Archive Deployments using the semantics defined in https://goo... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of Archive Deployments to return. If unspecified, at most 25 deployments will be returned. |
| `pageToken` | `string` | query | No | Optional. Page token, returned from a previous ListArchiveDeployments call, that you can use to retrieve the next page. |

**Response**: `GoogleCloudApigeeV1ListArchiveDeploymentsResponse`

```typescript
const res = await apigee.archiveDeployments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.archiveDeployments.generateUploadUrl`

**POST** `v1/{+parent}/archiveDeployments:generateUploadUrl`

Generates a signed URL for uploading an Archive zip file to Google Cloud Storage. Once the upload is complete, the signed URL should be passed to CreateArchiveDeployment. When uploading to the generated signed URL, please follow these restrictions: * Source file type should be a zip file. * Source file size should not exceed 1GB limit. * No credentials should be attached - the signed URLs provide access to the target bucket using internal service identity; if credentials were attached, the identity from the credentials would be used, but that identity does not have permissions to upload files to the URL. When making a HTTP PUT request, these two headers need to be specified: * `content-type: application/zip` * `x-goog-content-length-range: 0,1073741824` And this header SHOULD NOT be specified: * `Authorization: Bearer YOUR_TOKEN`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The organization and environment to upload to. |

**Request body**: `GoogleCloudApigeeV1GenerateUploadUrlRequest`

**Response**: `GoogleCloudApigeeV1GenerateUploadUrlResponse`

```typescript
const res = await apigee.archiveDeployments.generateUploadUrl({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.archiveDeployments.delete`

**DELETE** `v1/{+name}`

Deletes an archive deployment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the Archive Deployment in the following format: `organizations/{org}/environments/{env}/archiveDepl... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await apigee.archiveDeployments.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.archiveDeployments.get`

**GET** `v1/{+name}`

Gets the specified ArchiveDeployment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the Archive Deployment in the following format: `organizations/{org}/environments/{env}/archiveDepl... |

**Response**: `GoogleCloudApigeeV1ArchiveDeployment`

```typescript
const res = await apigee.archiveDeployments.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.archiveDeployments.create`

**POST** `v1/{+parent}/archiveDeployments`

Creates a new ArchiveDeployment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The Environment this Archive Deployment will be created in. |

**Request body**: `GoogleCloudApigeeV1ArchiveDeployment`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await apigee.archiveDeployments.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.archiveDeployments.generateDownloadUrl`

**POST** `v1/{+name}:generateDownloadUrl`

Generates a signed URL for downloading the original zip file used to create an Archive Deployment. The URL is only valid for a limited period and should be used within minutes after generation. Each call returns a new upload URL.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Archive Deployment you want to download. |

**Request body**: `GoogleCloudApigeeV1GenerateDownloadUrlRequest`

**Response**: `GoogleCloudApigeeV1GenerateDownloadUrlResponse`

```typescript
const res = await apigee.archiveDeployments.generateDownloadUrl({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.keyvaluemaps.create`

**POST** `v1/{+parent}/keyvaluemaps`

Creates a key value map in an environment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the environment in which to create the key value map. Use the following structure in your request: ... |

**Request body**: `GoogleCloudApigeeV1KeyValueMap`

**Response**: `GoogleCloudApigeeV1KeyValueMap`

```typescript
const res = await apigee.keyvaluemaps.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.keyvaluemaps.get`

**GET** `v1/{+name}`

Get the key value map scoped to an organization, environment, or API proxy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Scope as indicated by the URI in which to fetch the key value map. Use **one** of the following structures ... |

**Response**: `GoogleCloudApigeeV1KeyValueMap`

```typescript
const res = await apigee.keyvaluemaps.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.keyvaluemaps.delete`

**DELETE** `v1/{+name}`

Deletes a key value map from an environment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the key value map. Use the following structure in your request: `organizations/{org}/environments/{... |

**Response**: `GoogleCloudApigeeV1KeyValueMap`

```typescript
const res = await apigee.keyvaluemaps.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.keyvaluemaps.update`

**PUT** `v1/{+name}`

Update the key value map scoped to an organization, environment, or API proxy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Scope as indicated by the URI in which to fetch the key value map. Use **one** of the following structures ... |

**Request body**: `GoogleCloudApigeeV1KeyValueMap`

**Response**: `GoogleCloudApigeeV1KeyValueMap`

```typescript
const res = await apigee.keyvaluemaps.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.keyvaluemaps.entries.delete`

**DELETE** `v1/{+name}`

Deletes a key value entry from a key value map scoped to an organization, environment, or API proxy. **Notes:** * After you delete the key value entry, the policy consuming the entry will continue to function with its cached values for a few minutes. This is expected behavior. * Supported for Apigee hybrid 1.8.x and higher.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Scope as indicated by the URI in which to delete the key value map entry. Use **one** of the following stru... |

**Response**: `GoogleCloudApigeeV1KeyValueEntry`

```typescript
const res = await apigee.entries.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.keyvaluemaps.entries.list`

**GET** `v1/{+parent}/entries`

Lists key value entries for key values maps scoped to an organization, environment, or API proxy. **Note**: Supported for Apigee hybrid 1.8.x and higher.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Scope as indicated by the URI in which to list key value maps. Use **one** of the following structures in y... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of key value entries to return. If unspecified, at most 100 entries will be returned. |
| `pageToken` | `string` | query | No | Optional. Page token. If provides, must be a valid key value entry returned from a previous call that can be used to ... |

**Response**: `GoogleCloudApigeeV1ListKeyValueEntriesResponse`

```typescript
const res = await apigee.entries.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.keyvaluemaps.entries.update`

**PUT** `v1/{+name}`

Update key value entry scoped to an organization, environment, or API proxy for an existing key.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Scope as indicated by the URI in which to create the key value map entry. Use **one** of the following stru... |

**Request body**: `GoogleCloudApigeeV1KeyValueEntry`

**Response**: `GoogleCloudApigeeV1KeyValueEntry`

```typescript
const res = await apigee.entries.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.keyvaluemaps.entries.get`

**GET** `v1/{+name}`

Get the key value entry value for a key value map scoped to an organization, environment, or API proxy. **Note**: Supported for Apigee hybrid 1.8.x and higher.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Scope as indicated by the URI in which to fetch the key value map entry/value. Use **one** of the following... |

**Response**: `GoogleCloudApigeeV1KeyValueEntry`

```typescript
const res = await apigee.entries.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.keyvaluemaps.entries.create`

**POST** `v1/{+parent}/entries`

Creates key value entries in a key value map scoped to an organization, environment, or API proxy. **Note**: Supported for Apigee hybrid 1.8.x and higher.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Scope as indicated by the URI in which to create the key value map entry. Use **one** of the following stru... |

**Request body**: `GoogleCloudApigeeV1KeyValueEntry`

**Response**: `GoogleCloudApigeeV1KeyValueEntry`

```typescript
const res = await apigee.entries.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.keystores.delete`

**DELETE** `v1/{+name}`

Deletes a keystore or truststore.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the keystore. Use the following format in your request: `organizations/{org}/environments/{env}/key... |

**Response**: `GoogleCloudApigeeV1Keystore`

```typescript
const res = await apigee.keystores.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.keystores.create`

**POST** `v1/{+parent}/keystores`

Creates a keystore or truststore. - Keystore: Contains certificates and their associated keys. - Truststore: Contains trusted certificates used to validate a server's certificate. These certificates are typically self-signed certificates or certificates that are not signed by a trusted CA.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the environment in which to create the keystore. Use the following format in your request: `organiz... |
| `name` | `string` | query | No | Optional. Name of the keystore. Overrides the value in Keystore. |

**Request body**: `GoogleCloudApigeeV1Keystore`

**Response**: `GoogleCloudApigeeV1Keystore`

```typescript
const res = await apigee.keystores.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.keystores.get`

**GET** `v1/{+name}`

Gets a keystore or truststore.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the keystore. Use the following format in your request: `organizations/{org}/environments/{env}/key... |

**Response**: `GoogleCloudApigeeV1Keystore`

```typescript
const res = await apigee.keystores.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.keystores.aliases.create`

**POST** `v1/{+parent}/aliases`

Creates an alias from a key/certificate pair. The structure of the request is controlled by the `format` query parameter: - `keycertfile` - Separate PEM-encoded key and certificate files are uploaded. Set `Content-Type: multipart/form-data` and include the `keyFile`, `certFile`, and `password` (if keys are encrypted) fields in the request body. If uploading to a truststore, omit `keyFile`. - `pkcs12` - A PKCS12 file is uploaded. Set `Content-Type: multipart/form-data`, provide the file in the `file` field, and include the `password` field if the file is encrypted in the request body. - `selfsignedcert` - A new private key and certificate are generated. Set `Content-Type: application/json` and include CertificateGenerationSpec in the request body.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the keystore. Use the following format in your request: `organizations/{org}/environments/{env}/key... |
| `_password` | `string` | query | No | DEPRECATED: For improved security, specify the password in the request body instead of using the query parameter. To ... |
| `alias` | `string` | query | No | Alias for the key/certificate pair. Values must match the regular expression `[\w\s-.]{1,255}`. This must be provided... |
| `format` | `string` | query | No | Required. Format of the data. Valid values include: `selfsignedcert`, `keycertfile`, or `pkcs12` |
| `ignoreExpiryValidation` | `boolean` | query | No | Flag that specifies whether to ignore expiry validation. If set to `true`, no expiry validation will be performed. |
| `ignoreNewlineValidation` | `boolean` | query | No | Flag that specifies whether to ignore newline validation. If set to `true`, no error is thrown when the file contains... |

**Request body**: `GoogleApiHttpBody`

**Response**: `GoogleCloudApigeeV1Alias`

```typescript
const res = await apigee.aliases.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.keystores.aliases.get`

**GET** `v1/{+name}`

Gets an alias.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the alias. Use the following format in your request: `organizations/{org}/environments/{env}/keysto... |

**Response**: `GoogleCloudApigeeV1Alias`

```typescript
const res = await apigee.aliases.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.keystores.aliases.csr`

**GET** `v1/{+name}/csr`

Generates a PKCS #10 Certificate Signing Request for the private key in an alias.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the alias. Use the following format in your request: `organizations/{org}/environments/{env}/keysto... |

**Response**: `GoogleApiHttpBody`

```typescript
const res = await apigee.aliases.csr({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.keystores.aliases.getCertificate`

**GET** `v1/{+name}/certificate`

Gets the certificate from an alias in PEM-encoded form.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the alias. Use the following format in your request: `organizations/{org}/environments/{env}/keysto... |

**Response**: `GoogleApiHttpBody`

```typescript
const res = await apigee.aliases.getCertificate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.keystores.aliases.delete`

**DELETE** `v1/{+name}`

Deletes an alias.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the alias. Use the following format in your request: `organizations/{org}/environments/{env}/keysto... |

**Response**: `GoogleCloudApigeeV1Alias`

```typescript
const res = await apigee.aliases.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.keystores.aliases.update`

**PUT** `v1/{+name}`

Updates the certificate in an alias. The updated certificate must be in PEM- or DER-encoded X.509 format.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the alias. Use the following format in your request: `organizations/{org}/environments/{env}/keysto... |
| `ignoreExpiryValidation` | `boolean` | query | No | Required. Flag that specifies whether to ignore expiry validation. If set to `true`, no expiry validation will be per... |
| `ignoreNewlineValidation` | `boolean` | query | No | Flag that specifies whether to ignore newline validation. If set to `true`, no error is thrown when the file contains... |

**Request body**: `GoogleApiHttpBody`

**Response**: `GoogleCloudApigeeV1Alias`

```typescript
const res = await apigee.aliases.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.stats.get`

**GET** `v1/{+name}`

Retrieve metrics grouped by dimensions. The types of metrics you can retrieve include traffic, message counts, API call latency, response size, and cache hits and counts. Dimensions let you view metrics in meaningful groups. You can optionally pass dimensions as path parameters to the `stats` API. If dimensions are not specified, the metrics are computed on the entire set of data for the given time range.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name for which the interactive query will be executed. Use the following format in your request: `... |
| `accuracy` | `string` | query | No | No longer used by Apigee. Supported for backwards compatibility. |
| `aggTable` | `string` | query | No | Table name used to query custom aggregate tables. If this parameter is skipped, then Apigee will try to retrieve the ... |
| `filter` | `string` | query | No | Filter that enables you to drill down on specific dimension values. |
| `limit` | `string` | query | No | Maximum number of result items to return. |
| `offset` | `string` | query | No | Offset value. Use `offset` with `limit` to enable pagination of results. For example, to display results 11-20, set l... |
| `realtime` | `boolean` | query | No | No longer used by Apigee. Supported for backwards compatibility. |
| `select` | `string` | query | No | Comma-separated list of metrics. For example: `sum(message_count),sum(error_count)` |
| `sonar` | `boolean` | query | No | Routes the query to API Monitoring for the last hour. |
| `sort` | `string` | query | No | Flag that specifies whether the sort order should be ascending or descending. Valid values include: `DESC` and `ASC`. |
| `sortby` | `string` | query | No | Comma-separated list of metrics to sort the final result. |
| `timeRange` | `string` | query | No | Time interval for the interactive query. Time range is specified in GMT as `start~end`. For example: `04/15/2017 00:0... |
| `timeUnit` | `string` | query | No | Granularity of metrics returned. Valid values include: `second`, `minute`, `hour`, `day`, `week`, or` month`. |
| `topk` | `string` | query | No | Top number of results to return. For example, to return the top 5 results, set `topk=5`. |
| `tsAscending` | `boolean` | query | No | Flag that specifies whether to list timestamps in ascending (`true`) or descending (`false`) order. Apigee recommends... |
| `tzo` | `string` | query | No | Timezone offset value. |

**Response**: `GoogleCloudApigeeV1Stats`

```typescript
const res = await apigee.stats.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.sharedflows.revisions.getDeployments`

**GET** `v1/{+name}/deployments`

Gets the deployment of a shared flow revision and actual state reported by runtime pods.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name representing a shared flow in an environment in the following format: `organizations/{org}/environment... |

**Response**: `GoogleCloudApigeeV1Deployment`

```typescript
const res = await apigee.revisions.getDeployments({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.sharedflows.revisions.undeploy`

**DELETE** `v1/{+name}/deployments`

Undeploys a shared flow revision from an environment. For a request path `organizations/{org}/environments/{env}/sharedflows/{sf}/revisions/{rev}/deployments`, two permissions are required: * `apigee.deployments.delete` on the resource `organizations/{org}/environments/{env}` * `apigee.sharedflowrevisions.undeploy` on the resource `organizations/{org}/sharedflows/{sf}/revisions/{rev}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the shared flow revision to undeploy in the following format: `organizations/{org}/environments/{en... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await apigee.revisions.undeploy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.sharedflows.revisions.deploy`

**POST** `v1/{+name}/deployments`

Deploys a revision of a shared flow. If another revision of the same shared flow is currently deployed, set the `override` parameter to `true` to have this revision replace the currently deployed revision. You cannot use a shared flow until it has been deployed to an environment. For a request path `organizations/{org}/environments/{env}/sharedflows/{sf}/revisions/{rev}/deployments`, two permissions are required: * `apigee.deployments.create` on the resource `organizations/{org}/environments/{env}` * `apigee.sharedflowrevisions.deploy` on the resource `organizations/{org}/sharedflows/{sf}/revisions/{rev}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the shared flow revision to deploy in the following format: `organizations/{org}/environments/{env}... |
| `override` | `boolean` | query | No | Flag that specifies whether the new deployment replaces other deployed revisions of the shared flow in the environmen... |
| `serviceAccount` | `string` | query | No | Google Cloud IAM service account. The service account represents the identity of the deployed proxy, and determines w... |

**Response**: `GoogleCloudApigeeV1Deployment`

```typescript
const res = await apigee.revisions.deploy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.sharedflows.deployments.list`

**GET** `v1/{+parent}/deployments`

Lists all deployments of a shared flow in an environment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name representing a shared flow in an environment in the following format: `organizations/{org}/environment... |

**Response**: `GoogleCloudApigeeV1ListDeploymentsResponse`

```typescript
const res = await apigee.deployments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.resourcefiles.delete`

**DELETE** `v1/{+parent}/resourcefiles/{type}/{name}`

Deletes a resource file. For more information about resource files, see [Resource files](https://cloud.google.com/apigee/docs/api-platform/develop/resource-files).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the environment in the following format: `organizations/{org}/environments/{env}`. |
| `type` | `string` | path | Yes | Required. Resource file type. {{ resource_file_type }} |
| `name` | `string` | path | Yes | Required. ID of the resource file to delete. Must match the regular expression: [a-zA-Z0-9:/\\!@#$%^&{}\[\]()+\-=,.~'... |

**Response**: `GoogleCloudApigeeV1ResourceFile`

```typescript
const res = await apigee.resourcefiles.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.resourcefiles.list`

**GET** `v1/{+parent}/resourcefiles`

Lists all resource files, optionally filtering by type. For more information about resource files, see [Resource files](https://cloud.google.com/apigee/docs/api-platform/develop/resource-files).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the environment in which to list resource files in the following format: `organizations/{org}/envir... |
| `type` | `string` | query | No | Optional. Type of resource files to list. {{ resource_file_type }} |

**Response**: `GoogleCloudApigeeV1ListEnvironmentResourcesResponse`

```typescript
const res = await apigee.resourcefiles.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.resourcefiles.update`

**PUT** `v1/{+parent}/resourcefiles/{type}/{name}`

Updates a resource file. Specify the `Content-Type` as `application/octet-stream` or `multipart/form-data`. For more information about resource files, see [Resource files](https://cloud.google.com/apigee/docs/api-platform/develop/resource-files).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the environment in the following format: `organizations/{org}/environments/{env}`. |
| `type` | `string` | path | Yes | Required. Resource file type. {{ resource_file_type }} |
| `name` | `string` | path | Yes | Required. ID of the resource file to update. Must match the regular expression: [a-zA-Z0-9:/\\!@#$%^&{}\[\]()+\-=,.~'... |

**Request body**: `GoogleApiHttpBody`

**Response**: `GoogleCloudApigeeV1ResourceFile`

```typescript
const res = await apigee.resourcefiles.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.resourcefiles.create`

**POST** `v1/{+parent}/resourcefiles`

Creates a resource file. Specify the `Content-Type` as `application/octet-stream` or `multipart/form-data`. For more information about resource files, see [Resource files](https://cloud.google.com/apigee/docs/api-platform/develop/resource-files).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the environment in which to create the resource file in the following format: `organizations/{org}/... |
| `name` | `string` | query | No | Required. Name of the resource file. Must match the regular expression: [a-zA-Z0-9:/\\!@#$%^&{}\[\]()+\-=,.~'` ]{1,255} |
| `type` | `string` | query | No | Required. Resource file type. {{ resource_file_type }} |

**Request body**: `GoogleApiHttpBody`

**Response**: `GoogleCloudApigeeV1ResourceFile`

```typescript
const res = await apigee.resourcefiles.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.resourcefiles.get`

**GET** `v1/{+parent}/resourcefiles/{type}/{name}`

Gets the contents of a resource file. For more information about resource files, see [Resource files](https://cloud.google.com/apigee/docs/api-platform/develop/resource-files).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the environment in the following format: `organizations/{org}/environments/{env}`. |
| `type` | `string` | path | Yes | Required. Resource file type. {{ resource_file_type }} |
| `name` | `string` | path | Yes | Required. ID of the resource file. Must match the regular expression: [a-zA-Z0-9:/\\!@#$%^&{}\[\]()+\-=,.~'` ]{1,255} |

**Response**: `GoogleApiHttpBody`

```typescript
const res = await apigee.resourcefiles.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.resourcefiles.listEnvironmentResources`

**GET** `v1/{+parent}/resourcefiles/{type}`

Lists all resource files, optionally filtering by type. For more information about resource files, see [Resource files](https://cloud.google.com/apigee/docs/api-platform/develop/resource-files).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the environment in which to list resource files in the following format: `organizations/{org}/envir... |
| `type` | `string` | path | Yes | Optional. Type of resource files to list. {{ resource_file_type }} |

**Response**: `GoogleCloudApigeeV1ListEnvironmentResourcesResponse`

```typescript
const res = await apigee.resourcefiles.listEnvironmentResources({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.securityReports.create`

**POST** `v1/{+parent}/securityReports`

Submit a report request to be processed in the background. If the submission succeeds, the API returns a 200 status and an ID that refer to the report request. In addition to the HTTP status 200, the `state` of "enqueued" means that the request succeeded.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name. Must be of the form `organizations/{org}/environments/{env}`. |

**Request body**: `GoogleCloudApigeeV1SecurityReportQuery`

**Response**: `GoogleCloudApigeeV1SecurityReport`

```typescript
const res = await apigee.securityReports.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.securityReports.get`

**GET** `v1/{+name}`

Get security report status If the query is still in progress, the `state` is set to "running" After the query has completed successfully, `state` is set to "completed"

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the security report to get. Must be of the form `organizations/{org}/environments/{env}/securityRep... |

**Response**: `GoogleCloudApigeeV1SecurityReport`

```typescript
const res = await apigee.securityReports.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.securityReports.list`

**GET** `v1/{+parent}/securityReports`

Return a list of Security Reports

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name. Must be of the form `organizations/{org}/environments/{env}`. |
| `dataset` | `string` | query | No | Filter response list by dataset. Example: `api`, `mint` |
| `from` | `string` | query | No | Filter response list by returning security reports that created after this date time. Time must be in ISO date-time f... |
| `pageSize` | `integer` | query | No | The maximum number of security report to return in the list response. |
| `pageToken` | `string` | query | No | Token returned from the previous list response to fetch the next page. |
| `status` | `string` | query | No | Filter response list by security reports status. |
| `submittedBy` | `string` | query | No | Filter response list by user who submitted queries. |
| `to` | `string` | query | No | Filter response list by returning security reports that created before this date time. Time must be in ISO date-time ... |

**Response**: `GoogleCloudApigeeV1ListSecurityReportsResponse`

```typescript
const res = await apigee.securityReports.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.securityReports.getResult`

**GET** `v1/{+name}`

After the query is completed, use this API to retrieve the results as file. If the request succeeds, and there is a non-zero result set, the result is downloaded to the client as a zipped JSON file. The name of the downloaded file will be: OfflineQueryResult-.zip Example: `OfflineQueryResult-9cfc0d85-0f30-46d6-ae6f-318d0cb961bd.zip`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the security report result to get. Must be of the form `organizations/{org}/environments/{env}/secu... |

**Response**: `GoogleApiHttpBody`

```typescript
const res = await apigee.securityReports.getResult({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.securityReports.getResultView`

**GET** `v1/{+name}`

After the query is completed, use this API to view the query result when result size is small.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the security report result view to get. Must be of the form `organizations/{org}/environments/{env}... |

**Response**: `GoogleCloudApigeeV1SecurityReportResultView`

```typescript
const res = await apigee.securityReports.getResultView({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.analytics.exports.list`

**GET** `v1/{+parent}/analytics/exports`

Lists the details and status of all analytics export jobs belonging to the parent organization and environment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Names of the parent organization and environment. Must be of the form `organizations/{org}/environments/{en... |

**Response**: `GoogleCloudApigeeV1ListExportsResponse`

```typescript
const res = await apigee.exports.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.analytics.exports.create`

**POST** `v1/{+parent}/analytics/exports`

Submit a data export job to be processed in the background. If the request is successful, the API returns a 201 status, a URI that can be used to retrieve the status of the export job, and the `state` value of "enqueued".

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Names of the parent organization and environment. Must be of the form `organizations/{org}/environments/{en... |

**Request body**: `GoogleCloudApigeeV1ExportRequest`

**Response**: `GoogleCloudApigeeV1Export`

```typescript
const res = await apigee.exports.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.analytics.exports.get`

**GET** `v1/{+name}`

Gets the details and status of an analytics export job. If the export job is still in progress, its `state` is set to "running". After the export job has completed successfully, its `state` is set to "completed". If the export job fails, its `state` is set to `failed`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the export to get. |

**Response**: `GoogleCloudApigeeV1Export`

```typescript
const res = await apigee.exports.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.analytics.admin.getSchemav2`

**GET** `v1/{+name}`

Gets a list of metrics and dimensions that can be used to create analytics queries and reports. Each schema element contains the name of the field, its associated type, and a flag indicating whether it is a standard or custom field.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Path to the schema. Use the following structure in your request: `organizations/{org}/environments/{env}/an... |
| `disableCache` | `boolean` | query | No | Flag that specifies whether the schema is be read from the database or cache. Set to `true` to read the schema from t... |
| `type` | `string` | query | No | Required. Name of the dataset for which you want to retrieve the schema. For example: `fact` or `agg_cus1` |

**Response**: `GoogleCloudApigeeV1Schema`

```typescript
const res = await apigee.admin.getSchemav2({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.securityStats.queryTabularStats`

**POST** `v1/{+orgenv}/securityStats:queryTabularStats`

Retrieve security statistics as tabular rows.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `orgenv` | `string` | path | Yes | Required. Should be of the form organizations//environments/. |

**Request body**: `GoogleCloudApigeeV1QueryTabularStatsRequest`

**Response**: `GoogleCloudApigeeV1QueryTabularStatsResponse`

```typescript
const res = await apigee.securityStats.queryTabularStats({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.securityStats.queryTimeSeriesStats`

**POST** `v1/{+orgenv}/securityStats:queryTimeSeriesStats`

Retrieve security statistics as a collection of time series.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `orgenv` | `string` | path | Yes | Required. Should be of the form organizations//environments/. |

**Request body**: `GoogleCloudApigeeV1QueryTimeSeriesStatsRequest`

**Response**: `GoogleCloudApigeeV1QueryTimeSeriesStatsResponse`

```typescript
const res = await apigee.securityStats.queryTimeSeriesStats({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.targetservers.create`

**POST** `v1/{+parent}/targetservers`

Creates a TargetServer in the specified environment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent environment name under which the TargetServer will be created. Must be of the form `organization... |
| `name` | `string` | query | No | Optional. The ID to give the TargetServer. This will overwrite the value in TargetServer. |

**Request body**: `GoogleCloudApigeeV1TargetServer`

**Response**: `GoogleCloudApigeeV1TargetServer`

```typescript
const res = await apigee.targetservers.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.targetservers.get`

**GET** `v1/{+name}`

Gets a TargetServer resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the TargetServer to get. Must be of the form `organizations/{org}/environments/{env}/targetserv... |

**Response**: `GoogleCloudApigeeV1TargetServer`

```typescript
const res = await apigee.targetservers.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.targetservers.delete`

**DELETE** `v1/{+name}`

Deletes a TargetServer from an environment. Returns the deleted TargetServer resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the TargetServer to delete. Must be of the form `organizations/{org}/environments/{env}/targets... |

**Response**: `GoogleCloudApigeeV1TargetServer`

```typescript
const res = await apigee.targetservers.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.targetservers.update`

**PUT** `v1/{+name}`

Updates an existing TargetServer. Note that this operation has PUT semantics; it will replace the entirety of the existing TargetServer with the resource in the request body.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the TargetServer to replace. Must be of the form `organizations/{org}/environments/{env}/target... |

**Request body**: `GoogleCloudApigeeV1TargetServer`

**Response**: `GoogleCloudApigeeV1TargetServer`

```typescript
const res = await apigee.targetservers.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.queries.create`

**POST** `v1/{+parent}/queries`

Submit a query to be processed in the background. If the submission of the query succeeds, the API returns a 201 status and an ID that refer to the query. In addition to the HTTP status 201, the `state` of "enqueued" means that the request succeeded.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name. Must be of the form `organizations/{org}/environments/{env}`. |

**Request body**: `GoogleCloudApigeeV1Query`

**Response**: `GoogleCloudApigeeV1AsyncQuery`

```typescript
const res = await apigee.queries.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.queries.get`

**GET** `v1/{+name}`

Get query status If the query is still in progress, the `state` is set to "running" After the query has completed successfully, `state` is set to "completed"

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the asynchronous query to get. Must be of the form `organizations/{org}/environments/{env}/queries/... |

**Response**: `GoogleCloudApigeeV1AsyncQuery`

```typescript
const res = await apigee.queries.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.queries.list`

**GET** `v1/{+parent}/queries`

Return a list of Asynchronous Queries

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name. Must be of the form `organizations/{org}/environments/{env}`. |
| `dataset` | `string` | query | No | Filter response list by dataset. Example: `api`, `mint` |
| `from` | `string` | query | No | Filter response list by returning asynchronous queries that created after this date time. Time must be in ISO date-ti... |
| `inclQueriesWithoutReport` | `string` | query | No | Flag to include asynchronous queries that don't have a report denifition. |
| `status` | `string` | query | No | Filter response list by asynchronous query status. |
| `submittedBy` | `string` | query | No | Filter response list by user who submitted queries. |
| `to` | `string` | query | No | Filter response list by returning asynchronous queries that created before this date time. Time must be in ISO date-t... |

**Response**: `GoogleCloudApigeeV1ListAsyncQueriesResponse`

```typescript
const res = await apigee.queries.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.queries.getResult`

**GET** `v1/{+name}`

After the query is completed, use this API to retrieve the results. If the request succeeds, and there is a non-zero result set, the result is downloaded to the client as a zipped JSON file. The name of the downloaded file will be: OfflineQueryResult-.zip Example: `OfflineQueryResult-9cfc0d85-0f30-46d6-ae6f-318d0cb961bd.zip`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the asynchronous query result to get. Must be of the form `organizations/{org}/environments/{env}/q... |

**Response**: `GoogleApiHttpBody`

```typescript
const res = await apigee.queries.getResult({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.queries.getResulturl`

**GET** `v1/{+name}`

After the query is completed, use this API to retrieve the results. If the request succeeds, and there is a non-zero result set, the result is sent to the client as a list of urls to JSON files.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the asynchronous query result to get. Must be of the form `organizations/{org}/environments/{env}/q... |

**Response**: `GoogleCloudApigeeV1GetAsyncQueryResultUrlResponse`

```typescript
const res = await apigee.queries.getResulturl({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.caches.delete`

**DELETE** `v1/{+name}`

Deletes a cache.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Cache resource name of the form: `organizations/{organization_id}/environments/{environment_id}/caches/{cac... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await apigee.caches.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.deployments.get`

**GET** `v1/{+name}`

Gets a particular deployment of Api proxy or a shared flow in an environment

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the api proxy or the shared flow deployment. Use the following structure in your request: `organiza... |

**Response**: `GoogleCloudApigeeV1Deployment`

```typescript
const res = await apigee.deployments.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.deployments.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Tests the permissions of a user on a deployment, and returns a subset of permissions that the user has on the deployment. If the deployment does not exist, an empty permission set is returned (a NOT_FOUND error is not returned).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `GoogleIamV1TestIamPermissionsRequest`

**Response**: `GoogleIamV1TestIamPermissionsResponse`

```typescript
const res = await apigee.deployments.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.deployments.list`

**GET** `v1/{+parent}/deployments`

Lists all deployments of API proxies or shared flows in an environment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the environment for which to return deployment information in the following format: `organizations/... |
| `sharedFlows` | `boolean` | query | No | Optional. Flag that specifies whether to return shared flow or API proxy deployments. Set to `true` to return shared ... |

**Response**: `GoogleCloudApigeeV1ListDeploymentsResponse`

```typescript
const res = await apigee.deployments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.deployments.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the IAM policy on a deployment, if the policy already exists it will be replaced. For more information, see [Manage users, roles, and permissions using the API](https://cloud.google.com/apigee/docs/api-platform/system-administration/manage-users-roles). You must have the `apigee.deployments.setIamPolicy` permission to call this API.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GoogleIamV1SetIamPolicyRequest`

**Response**: `GoogleIamV1Policy`

```typescript
const res = await apigee.deployments.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.deployments.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the IAM policy on a deployment. For more information, see [Manage users, roles, and permissions using the API](https://cloud.google.com/apigee/docs/api-platform/system-administration/manage-users-roles). You must have the `apigee.deployments.getIamPolicy` permission to call this API.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `GoogleIamV1Policy`

```typescript
const res = await apigee.deployments.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.traceConfig.overrides.list`

**GET** `v1/{+parent}/overrides`

Lists all of the distributed trace configuration overrides in an environment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource of the trace configuration override. Use the following structure in your request: "organiza... |
| `pageSize` | `integer` | query | No | Maximum number of trace configuration overrides to return. If not specified, the maximum number returned is 25. The m... |
| `pageToken` | `string` | query | No | A page token, returned from a previous `ListTraceConfigOverrides` call. Token value that can be used to retrieve the ... |

**Response**: `GoogleCloudApigeeV1ListTraceConfigOverridesResponse`

```typescript
const res = await apigee.overrides.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.traceConfig.overrides.delete`

**DELETE** `v1/{+name}`

Deletes a distributed trace configuration override.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the trace configuration override. Use the following structure in your request: "organizations/*/env... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await apigee.overrides.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.traceConfig.overrides.create`

**POST** `v1/{+parent}/overrides`

Creates a trace configuration override. The response contains a system-generated UUID, that can be used to view, update, or delete the configuration override. Use the List API to view the existing trace configuration overrides.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource of the trace configuration override. Use the following structure in your request. "organiza... |

**Request body**: `GoogleCloudApigeeV1TraceConfigOverride`

**Response**: `GoogleCloudApigeeV1TraceConfigOverride`

```typescript
const res = await apigee.overrides.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.traceConfig.overrides.get`

**GET** `v1/{+name}`

Gets a trace configuration override.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the trace configuration override. Use the following structure in your request: "organizations/*/env... |

**Response**: `GoogleCloudApigeeV1TraceConfigOverride`

```typescript
const res = await apigee.overrides.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.traceConfig.overrides.patch`

**PATCH** `v1/{+name}`

Updates a distributed trace configuration override. Note that the repeated fields have replace semantics when included in the field mask and that they will be overwritten by the value of the fields in the request body.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the trace configuration override. Use the following structure in your request: "organizations/*/env... |
| `updateMask` | `string` | query | No | List of fields to be updated. |

**Request body**: `GoogleCloudApigeeV1TraceConfigOverride`

**Response**: `GoogleCloudApigeeV1TraceConfigOverride`

```typescript
const res = await apigee.overrides.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.securityActions.create`

**POST** `v1/{+parent}/securityActions`

CreateSecurityAction creates a SecurityAction.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The organization and environment that this SecurityAction applies to. Format: organizations/{org}/environme... |
| `securityActionId` | `string` | query | No | Required. The ID to use for the SecurityAction, which will become the final component of the action's resource name. ... |

**Request body**: `GoogleCloudApigeeV1SecurityAction`

**Response**: `GoogleCloudApigeeV1SecurityAction`

```typescript
const res = await apigee.securityActions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.securityActions.get`

**GET** `v1/{+name}`

Get a SecurityAction by name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified name of the SecurityAction to retrieve. Format: organizations/{org}/environments/{env}/... |

**Response**: `GoogleCloudApigeeV1SecurityAction`

```typescript
const res = await apigee.securityActions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.securityActions.list`

**GET** `v1/{+parent}/securityActions`

Returns a list of SecurityActions. This returns both enabled and disabled actions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of SecurityActions. Format: organizations/{org}/environments/{env} |
| `filter` | `string` | query | No | The filter expression to filter List results. https://google.aip.dev/160. Allows for filtering over: state and api_pr... |
| `pageSize` | `integer` | query | No | The maximum number of SecurityActions to return. If unspecified, at most 50 SecurityActions will be returned. The max... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListSecurityActions` call. Provide this to retrieve the subsequent page. When... |

**Response**: `GoogleCloudApigeeV1ListSecurityActionsResponse`

```typescript
const res = await apigee.securityActions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.securityActions.delete`

**DELETE** `v1/{+name}`

Delete a SecurityAction.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the security action to delete. Format: `organizations/{org}/environment/{env}/securityActions/{... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await apigee.securityActions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.securityActions.enable`

**POST** `v1/{+name}:enable`

Enable a SecurityAction. The `state` of the SecurityAction after enabling is `ENABLED`. `EnableSecurityAction` can be called on SecurityActions in the state `DISABLED`; SecurityActions in a different state (including `ENABLED) return an error.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the SecurityAction to enable. Format: organizations/{org}/environments/{env}/securityActions/{s... |

**Request body**: `GoogleCloudApigeeV1EnableSecurityActionRequest`

**Response**: `GoogleCloudApigeeV1SecurityAction`

```typescript
const res = await apigee.securityActions.enable({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.securityActions.disable`

**POST** `v1/{+name}:disable`

Disable a SecurityAction. The `state` of the SecurityAction after disabling is `DISABLED`. `DisableSecurityAction` can be called on SecurityActions in the state `ENABLED`; SecurityActions in a different state (including `DISABLED`) return an error.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the SecurityAction to disable. Format: organizations/{org}/environments/{env}/securityActions/{... |

**Request body**: `GoogleCloudApigeeV1DisableSecurityActionRequest`

**Response**: `GoogleCloudApigeeV1SecurityAction`

```typescript
const res = await apigee.securityActions.disable({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.environments.securityActions.patch`

**PATCH** `v1/{+name}`

Update a SecurityAction.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. This field is ignored during creation as per AIP-133. Please set the `security_action_id` field in the Cre... |
| `updateMask` | `string` | query | No | Optional. The list of fields to update. Valid fields to update are `description`, `state`, `allow`, `deny`, and `flag... |

**Request body**: `GoogleCloudApigeeV1SecurityAction`

**Response**: `GoogleCloudApigeeV1SecurityAction`

```typescript
const res = await apigee.securityActions.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.apiproducts.delete`

**DELETE** `v1/{+name}`

Deletes an API product from an organization. Deleting an API product causes app requests to the resource URIs defined in the API product to fail. Ensure that you create a new API product to serve existing apps, unless your intention is to disable access to the resources defined in the API product. The API product name required in the request URL is the internal name of the product, not the display name. While they may be the same, it depends on whether the API product was created via the UI or the API. View the list of API products to verify the internal name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the API product. Use the following structure in your request: `organizations/{org}/apiproducts/{api... |

**Response**: `GoogleCloudApigeeV1ApiProduct`

```typescript
const res = await apigee.apiproducts.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.apiproducts.list`

**GET** `v1/{+parent}/apiproducts`

Lists all API product names for an organization. Filter the list by passing an `attributename` and `attibutevalue`. The maximum number of API products returned is 1000. You can paginate the list of API products returned using the `startKey` and `count` query parameters. If the resource has the `space` attribute set, the response may not return all resources. To learn more, read the [Apigee Spaces Overview](https://cloud.google.com/apigee/docs/api-platform/system-administration/spaces/apigee-spaces-overview).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the organization. Use the following structure in your request: `organizations/{org}` If the resourc... |
| `attributename` | `string` | query | No | Name of the attribute used to filter the search. |
| `attributevalue` | `string` | query | No | Value of the attribute used to filter the search. |
| `count` | `string` | query | No | Enter the number of API products you want returned in the API call. The limit is 1000. |
| `expand` | `boolean` | query | No | Flag that specifies whether to expand the results. Set to `true` to get expanded details about each API. |
| `space` | `string` | query | No | Optional. The Space to list API products for. When none provided, all the spaces the user has list access, will be us... |
| `startKey` | `string` | query | No | Gets a list of API products starting with a specific API product in the list. For example, if you're returning 50 API... |

**Response**: `GoogleCloudApigeeV1ListApiProductsResponse`

```typescript
const res = await apigee.apiproducts.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.apiproducts.update`

**PUT** `v1/{+name}`

Updates an existing API product. You must include all required values, whether or not you are updating them, as well as any optional values that you are updating. The API product name required in the request URL is the internal name of the product, not the display name. While they may be the same, it depends on whether the API product was created via UI or API. View the list of API products to identify their internal names.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the API product. Use the following structure in your request: `organizations/{org}/apiproducts/{api... |

**Request body**: `GoogleCloudApigeeV1ApiProduct`

**Response**: `GoogleCloudApigeeV1ApiProduct`

```typescript
const res = await apigee.apiproducts.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.apiproducts.create`

**POST** `v1/{+parent}/apiproducts`

Creates an API product in an organization. You create API products after you have proxied backend services using API proxies. An API product is a collection of API resources combined with quota settings and metadata that you can use to deliver customized and productized API bundles to your developer community. This metadata can include: - Scope - Environments - API proxies - Extensible profile API products enable you repackage APIs on the fly, without having to do any additional coding or configuration. Apigee recommends that you start with a simple API product including only required elements. You then provision credentials to apps to enable them to start testing your APIs. After you have authentication and authorization working against a simple API product, you can iterate to create finer-grained API products, defining different sets of API resources for each API product. **WARNING:** - If you don't specify an API proxy in the request body, *any* app associated with the product can make calls to *any* API in your entire organization. - If you don't specify an environment in the request body, the product allows access to all environments. For more information, see What is an API product?

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the organization in which the API product will be created. Use the following structure in your requ... |

**Request body**: `GoogleCloudApigeeV1ApiProduct`

**Response**: `GoogleCloudApigeeV1ApiProduct`

```typescript
const res = await apigee.apiproducts.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.apiproducts.get`

**GET** `v1/{+name}`

Gets configuration details for an API product. The API product name required in the request URL is the internal name of the product, not the display name. While they may be the same, it depends on whether the API product was created via the UI or the API. View the list of API products to verify the internal name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the API product. Use the following structure in your request: `organizations/{org}/apiproducts/{api... |

**Response**: `GoogleCloudApigeeV1ApiProduct`

```typescript
const res = await apigee.apiproducts.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.apiproducts.attributes`

**POST** `v1/{+name}/attributes`

Updates or creates API product attributes. This API **replaces** the current list of attributes with the attributes specified in the request body. In this way, you can update existing attributes, add new attributes, or delete existing attributes by omitting them from the request body. **Note**: OAuth access tokens and Key Management Service (KMS) entities (apps, developers, and API products) are cached for 180 seconds (current default). Any custom attributes associated with entities also get cached for at least 180 seconds after entity is accessed during runtime. In this case, the `ExpiresIn` element on the OAuthV2 policy won't be able to expire an access token in less than 180 seconds.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the API product. Use the following structure in your request: `organizations/{org}/apiproducts/{api... |

**Request body**: `GoogleCloudApigeeV1Attributes`

**Response**: `GoogleCloudApigeeV1Attributes`

```typescript
const res = await apigee.apiproducts.attributes({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.apiproducts.move`

**POST** `v1/{+name}:move`

Moves an API product to a different space.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. API product to move in the following format: `organizations/{org}/apiproducts/{apiproduct} |

**Request body**: `GoogleCloudApigeeV1MoveApiProductRequest`

**Response**: `GoogleCloudApigeeV1ApiProduct`

```typescript
const res = await apigee.apiproducts.move({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.apiproducts.attributes.delete`

**DELETE** `v1/{+name}`

Deletes an API product attribute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the API product attribute. Use the following structure in your request: `organizations/{org}/apipro... |

**Response**: `GoogleCloudApigeeV1Attribute`

```typescript
const res = await apigee.attributes.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.apiproducts.attributes.list`

**GET** `v1/{+parent}/attributes`

Lists all API product attributes.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the API product. Use the following structure in your request: `organizations/{org}/apiproducts/{api... |

**Response**: `GoogleCloudApigeeV1Attributes`

```typescript
const res = await apigee.attributes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.apiproducts.attributes.get`

**GET** `v1/{+name}`

Gets the value of an API product attribute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the API product attribute. Use the following structure in your request: `organizations/{org}/apipro... |

**Response**: `GoogleCloudApigeeV1Attribute`

```typescript
const res = await apigee.attributes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.apiproducts.attributes.updateApiProductAttribute`

**POST** `v1/{+name}`

Updates the value of an API product attribute. **Note**: OAuth access tokens and Key Management Service (KMS) entities (apps, developers, and API products) are cached for 180 seconds (current default). Any custom attributes associated with entities also get cached for at least 180 seconds after entity is accessed during runtime. In this case, the `ExpiresIn` element on the OAuthV2 policy won't be able to expire an access token in less than 180 seconds.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the API product. Use the following structure in your request: `organizations/{org}/apiproducts/{api... |

**Request body**: `GoogleCloudApigeeV1Attribute`

**Response**: `GoogleCloudApigeeV1Attribute`

```typescript
const res = await apigee.attributes.updateApiProductAttribute({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.apiproducts.rateplans.create`

**POST** `v1/{+parent}/rateplans`

Create a rate plan that is associated with an API product in an organization. Using rate plans, API product owners can monetize their API products by configuring one or more of the following: - Billing frequency - Initial setup fees for using an API product - Payment funding model (postpaid only) - Fixed recurring or consumption-based charges for using an API product - Revenue sharing with developer partners An API product can have multiple rate plans associated with it but *only one* rate plan can be active at any point of time. **Note: From the developer's perspective, they purchase API products not rate plans.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the API product that is associated with the rate plan. Use the following structure in your request:... |

**Request body**: `GoogleCloudApigeeV1RatePlan`

**Response**: `GoogleCloudApigeeV1RatePlan`

```typescript
const res = await apigee.rateplans.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.apiproducts.rateplans.get`

**GET** `v1/{+name}`

Gets the details of a rate plan.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the rate plan. Use the following structure in your request: `organizations/{org}/apiproducts/{apipr... |

**Response**: `GoogleCloudApigeeV1RatePlan`

```typescript
const res = await apigee.rateplans.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.apiproducts.rateplans.list`

**GET** `v1/{+parent}/rateplans`

Lists all the rate plans for an API product.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the API product. Use the following structure in your request: `organizations/{org}/apiproducts/{api... |
| `count` | `integer` | query | No | Number of rate plans to return in the API call. Use with the `startKey` parameter to provide more targeted filtering.... |
| `expand` | `boolean` | query | No | Flag that specifies whether to expand the results. Set to `true` to get expanded details about each API. Defaults to ... |
| `orderBy` | `string` | query | No | Name of the attribute used for sorting. Valid values include: * `name`: Name of the rate plan. * `state`: State of th... |
| `startKey` | `string` | query | No | Name of the rate plan from which to start displaying the list of rate plans. If omitted, the list starts from the fir... |
| `state` | `string` | query | No | State of the rate plans (`DRAFT`, `PUBLISHED`) that you want to display. |

**Response**: `GoogleCloudApigeeV1ListRatePlansResponse`

```typescript
const res = await apigee.rateplans.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.apiproducts.rateplans.delete`

**DELETE** `v1/{+name}`

Deletes a rate plan.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. ID of the rate plan. Use the following structure in your request: `organizations/{org}/apiproducts/{apiprod... |

**Response**: `GoogleCloudApigeeV1RatePlan`

```typescript
const res = await apigee.rateplans.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.apiproducts.rateplans.update`

**PUT** `v1/{+name}`

Updates an existing rate plan.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the rate plan. Use the following structure in your request: `organizations/{org}/apiproducts/{apipr... |

**Request body**: `GoogleCloudApigeeV1RatePlan`

**Response**: `GoogleCloudApigeeV1RatePlan`

```typescript
const res = await apigee.rateplans.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.analytics.datastores.create`

**POST** `v1/{+parent}/analytics/datastores`

Create a Datastore for an org

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent organization name. Must be of the form `organizations/{org}`. |

**Request body**: `GoogleCloudApigeeV1Datastore`

**Response**: `GoogleCloudApigeeV1Datastore`

```typescript
const res = await apigee.datastores.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.analytics.datastores.get`

**GET** `v1/{+name}`

Get a Datastore

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the Datastore to be get. Must be of the form `organizations/{org}/analytics/datastores/{da... |

**Response**: `GoogleCloudApigeeV1Datastore`

```typescript
const res = await apigee.datastores.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.analytics.datastores.delete`

**DELETE** `v1/{+name}`

Delete a Datastore from an org.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the Datastore to be deleted. Must be of the form `organizations/{org}/analytics/datastores... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await apigee.datastores.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.analytics.datastores.list`

**GET** `v1/{+parent}/analytics/datastores`

List Datastores

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent organization name. Must be of the form `organizations/{org}`. |
| `targetType` | `string` | query | No | Optional. TargetType is used to fetch all Datastores that match the type |

**Response**: `GoogleCloudApigeeV1ListDatastoresResponse`

```typescript
const res = await apigee.datastores.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.analytics.datastores.update`

**PUT** `v1/{+name}`

Update a Datastore

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of datastore to be updated. Must be of the form `organizations/{org}/analytics/datastores... |

**Request body**: `GoogleCloudApigeeV1Datastore`

**Response**: `GoogleCloudApigeeV1Datastore`

```typescript
const res = await apigee.datastores.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.analytics.datastores.test`

**POST** `v1/{+parent}/analytics/datastores:test`

Test if Datastore configuration is correct. This includes checking if credentials provided by customer have required permissions in target destination storage

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent organization name Must be of the form `organizations/{org}` |

**Request body**: `GoogleCloudApigeeV1Datastore`

**Response**: `GoogleCloudApigeeV1TestDatastoreResponse`

```typescript
const res = await apigee.datastores.test({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.spaces.patch`

**PATCH** `v1/{+name}`

Updates a space.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the space in the following format: `organizations/{org}/spaces/{space_id}`. |
| `updateMask` | `string` | query | No | Required. List of fields to be updated. Fields that can be updated: display_name. |

**Request body**: `GoogleCloudApigeeV1Space`

**Response**: `GoogleCloudApigeeV1Space`

```typescript
const res = await apigee.spaces.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.spaces.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Callers must have apigee.spaces.getIamPolicy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `GoogleIamV1Policy`

```typescript
const res = await apigee.spaces.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.spaces.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Callers don't need any permissions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `GoogleIamV1TestIamPermissionsRequest`

**Response**: `GoogleIamV1TestIamPermissionsResponse`

```typescript
const res = await apigee.spaces.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.spaces.delete`

**DELETE** `v1/{+name}`

Deletes an organization space.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Apigee organization space name in the following format: `organizations/{org}/spaces/{space}` |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await apigee.spaces.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.spaces.list`

**GET** `v1/{+parent}/spaces`

Lists spaces under an organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Use the following structure in your request: `organizations` |
| `pageSize` | `integer` | query | No | Optional. The maximum number of spaces to return. The service may return fewer than this value. If unspecified, at mo... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListSpaces` call. Provide this to retrieve the subsequent page. Whe... |

**Response**: `GoogleCloudApigeeV1ListSpacesResponse`

```typescript
const res = await apigee.spaces.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.spaces.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

IAM META APIs Callers must have apigee.spaces.setIamPolicy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GoogleIamV1SetIamPolicyRequest`

**Response**: `GoogleIamV1Policy`

```typescript
const res = await apigee.spaces.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.spaces.create`

**POST** `v1/{+parent}/spaces`

Create a space under an organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the Google Cloud project in which to associate the Apigee space. Pass the information as a query pa... |
| `spaceId` | `string` | query | No | Required. Resource ID of the space. |

**Request body**: `GoogleCloudApigeeV1Space`

**Response**: `GoogleCloudApigeeV1Space`

```typescript
const res = await apigee.spaces.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.spaces.get`

**GET** `v1/{+name}`

Get a space under an Organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Apigee organization space name in the following format: `organizations/{org}/spaces/{space}` |

**Response**: `GoogleCloudApigeeV1Space`

```typescript
const res = await apigee.spaces.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.hostQueries.list`

**GET** `v1/{+parent}/hostQueries`

Return a list of Asynchronous Queries at host level.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name. Must be of the form `organizations/{org}`. |
| `dataset` | `string` | query | No | Filter response list by dataset. Example: `api`, `mint` |
| `envgroupHostname` | `string` | query | No | Required. Filter response list by hostname. |
| `from` | `string` | query | No | Filter response list by returning asynchronous queries that created after this date time. Time must be in ISO date-ti... |
| `inclQueriesWithoutReport` | `string` | query | No | Flag to include asynchronous queries that don't have a report denifition. |
| `status` | `string` | query | No | Filter response list by asynchronous query status. |
| `submittedBy` | `string` | query | No | Filter response list by user who submitted queries. |
| `to` | `string` | query | No | Filter response list by returning asynchronous queries that created before this date time. Time must be in ISO date-t... |

**Response**: `GoogleCloudApigeeV1ListAsyncQueriesResponse`

```typescript
const res = await apigee.hostQueries.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.hostQueries.create`

**POST** `v1/{+parent}/hostQueries`

Submit a query at host level to be processed in the background. If the submission of the query succeeds, the API returns a 201 status and an ID that refer to the query. In addition to the HTTP status 201, the `state` of "enqueued" means that the request succeeded.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name. Must be of the form `organizations/{org}`. |

**Request body**: `GoogleCloudApigeeV1Query`

**Response**: `GoogleCloudApigeeV1AsyncQuery`

```typescript
const res = await apigee.hostQueries.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.hostQueries.get`

**GET** `v1/{+name}`

Get status of a query submitted at host level. If the query is still in progress, the `state` is set to "running" After the query has completed successfully, `state` is set to "completed"

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the asynchronous query to get. Must be of the form `organizations/{org}/queries/{queryId}`. |

**Response**: `GoogleCloudApigeeV1AsyncQuery`

```typescript
const res = await apigee.hostQueries.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.hostQueries.getResult`

**GET** `v1/{+name}`

After the query is completed, use this API to retrieve the results. If the request succeeds, and there is a non-zero result set, the result is downloaded to the client as a zipped JSON file. The name of the downloaded file will be: OfflineQueryResult-.zip Example: `OfflineQueryResult-9cfc0d85-0f30-46d6-ae6f-318d0cb961bd.zip`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the asynchronous query result to get. Must be of the form `organizations/{org}/queries/{queryId}/re... |

**Response**: `GoogleApiHttpBody`

```typescript
const res = await apigee.hostQueries.getResult({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.hostQueries.getResultView`

**GET** `v1/{+name}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the asynchronous query result view to get. Must be of the form `organizations/{org}/queries/{queryI... |

**Response**: `GoogleCloudApigeeV1AsyncQueryResultView`

```typescript
const res = await apigee.hostQueries.getResultView({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.datacollectors.list`

**GET** `v1/{+parent}/datacollectors`

Lists all data collectors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the organization for which to list data collectors in the following format: `organizations/{org}`. |
| `pageSize` | `integer` | query | No | Maximum number of data collectors to return. The page size defaults to 25. |
| `pageToken` | `string` | query | No | Page token, returned from a previous ListDataCollectors call, that you can use to retrieve the next page. |

**Response**: `GoogleCloudApigeeV1ListDataCollectorsResponse`

```typescript
const res = await apigee.datacollectors.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.datacollectors.delete`

**DELETE** `v1/{+name}`

Deletes a data collector.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the data collector in the following format: `organizations/{org}/datacollectors/{data_collector_id}`. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await apigee.datacollectors.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.datacollectors.create`

**POST** `v1/{+parent}/datacollectors`

Creates a new data collector.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the organization in which to create the data collector in the following format: `organizations/{org}`. |
| `dataCollectorId` | `string` | query | No | ID of the data collector. Overrides any ID in the data collector resource. Must be a string beginning with `dc_` that... |

**Request body**: `GoogleCloudApigeeV1DataCollector`

**Response**: `GoogleCloudApigeeV1DataCollector`

```typescript
const res = await apigee.datacollectors.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.datacollectors.get`

**GET** `v1/{+name}`

Gets a data collector.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the data collector in the following format: `organizations/{org}/datacollectors/{data_collector_id}`. |

**Response**: `GoogleCloudApigeeV1DataCollector`

```typescript
const res = await apigee.datacollectors.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.datacollectors.patch`

**PATCH** `v1/{+name}`

Updates a data collector.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the data collector in the following format: `organizations/{org}/datacollectors/{data_collector_id}`. |
| `updateMask` | `string` | query | No | List of fields to be updated. |

**Request body**: `GoogleCloudApigeeV1DataCollector`

**Response**: `GoogleCloudApigeeV1DataCollector`

```typescript
const res = await apigee.datacollectors.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.sites.apicategories.patch`

**PATCH** `v1/{+name}`

Updates an API category.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the category. Use the following structure in your request: `organizations/{org}/sites/{site}/apicat... |

**Request body**: `GoogleCloudApigeeV1ApiCategory`

**Response**: `GoogleCloudApigeeV1ApiCategoryResponse`

```typescript
const res = await apigee.apicategories.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.sites.apicategories.delete`

**DELETE** `v1/{+name}`

Deletes an API category.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the category. Use the following structure in your request: `organizations/{org}/sites/{site}/apicat... |

**Response**: `GoogleCloudApigeeV1DeleteResponse`

```typescript
const res = await apigee.apicategories.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.sites.apicategories.list`

**GET** `v1/{+parent}/apicategories`

Returns the API categories associated with a portal.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the portal. Use the following structure in your request: `organizations/{org}/sites/{site}` |

**Response**: `GoogleCloudApigeeV1ListApiCategoriesResponse`

```typescript
const res = await apigee.apicategories.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.sites.apicategories.create`

**POST** `v1/{+parent}/apicategories`

Creates a new API category.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the portal. Use the following structure in your request: `organizations/{org}/sites/{site}` |

**Request body**: `GoogleCloudApigeeV1ApiCategory`

**Response**: `GoogleCloudApigeeV1ApiCategoryResponse`

```typescript
const res = await apigee.apicategories.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.sites.apicategories.get`

**GET** `v1/{+name}`

Gets an API category.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the category. Use the following structure in your request: `organizations/{org}/sites/{site}/apicat... |

**Response**: `GoogleCloudApigeeV1ApiCategoryResponse`

```typescript
const res = await apigee.apicategories.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.sites.apidocs.list`

**GET** `v1/{+parent}/apidocs`

Returns the catalog items associated with a portal.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the portal. Use the following structure in your request: `organizations/{org}/sites/{site}` |
| `pageSize` | `integer` | query | No | Optional. The maximum number of items to return. The service may return fewer than this value. If unspecified, at mos... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListApiDocs` call. Provide this to retrieve the subsequent page. |

**Response**: `GoogleCloudApigeeV1ListApiDocsResponse`

```typescript
const res = await apigee.apidocs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.sites.apidocs.delete`

**DELETE** `v1/{+name}`

Deletes a catalog item.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the catalog item. Use the following structure in your request: `organizations/{org}/sites/{site}/ap... |

**Response**: `GoogleCloudApigeeV1DeleteResponse`

```typescript
const res = await apigee.apidocs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.sites.apidocs.updateDocumentation`

**PATCH** `v1/{+name}`

Updates the documentation for the specified catalog item. Note that the documentation file contents will not be populated in the return message.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the catalog item documentation. Use the following structure in your request: `organization... |

**Request body**: `GoogleCloudApigeeV1ApiDocDocumentation`

**Response**: `GoogleCloudApigeeV1ApiDocDocumentationResponse`

```typescript
const res = await apigee.apidocs.updateDocumentation({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.sites.apidocs.update`

**PUT** `v1/{+name}`

Updates a catalog item.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the catalog item. Use the following structure in your request: `organizations/{org}/sites/{site}/ap... |

**Request body**: `GoogleCloudApigeeV1ApiDoc`

**Response**: `GoogleCloudApigeeV1ApiDocResponse`

```typescript
const res = await apigee.apidocs.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.sites.apidocs.getDocumentation`

**GET** `v1/{+name}`

Gets the documentation for the specified catalog item.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the catalog item documentation. Use the following structure in your request: `organization... |

**Response**: `GoogleCloudApigeeV1ApiDocDocumentationResponse`

```typescript
const res = await apigee.apidocs.getDocumentation({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.sites.apidocs.get`

**GET** `v1/{+name}`

Gets a catalog item.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the catalog item. Use the following structure in your request: `organizations/{org}/sites/{site}/ap... |

**Response**: `GoogleCloudApigeeV1ApiDocResponse`

```typescript
const res = await apigee.apidocs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.sites.apidocs.create`

**POST** `v1/{+parent}/apidocs`

Creates a new catalog item.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the portal. Use the following structure in your request: `organizations/{org}/sites/{site}` |

**Request body**: `GoogleCloudApigeeV1ApiDoc`

**Response**: `GoogleCloudApigeeV1ApiDocResponse`

```typescript
const res = await apigee.apidocs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await apigee.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.operations.list`

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

**Response**: `GoogleLongrunningListOperationsResponse`

```typescript
const res = await apigee.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.keyvaluemaps.delete`

**DELETE** `v1/{+name}`

Deletes a key value map from an organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the key value map. Use the following structure in your request: `organizations/{org}/keyvaluemaps/{... |

**Response**: `GoogleCloudApigeeV1KeyValueMap`

```typescript
const res = await apigee.keyvaluemaps.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.keyvaluemaps.update`

**PUT** `v1/{+name}`

Update the key value map scoped to an organization, environment, or API proxy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Scope as indicated by the URI in which to fetch the key value map. Use **one** of the following structures ... |

**Request body**: `GoogleCloudApigeeV1KeyValueMap`

**Response**: `GoogleCloudApigeeV1KeyValueMap`

```typescript
const res = await apigee.keyvaluemaps.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.keyvaluemaps.create`

**POST** `v1/{+parent}/keyvaluemaps`

Creates a key value map in an organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the organization in which to create the key value map file. Use the following structure in your req... |

**Request body**: `GoogleCloudApigeeV1KeyValueMap`

**Response**: `GoogleCloudApigeeV1KeyValueMap`

```typescript
const res = await apigee.keyvaluemaps.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.keyvaluemaps.get`

**GET** `v1/{+name}`

Get the key value map scoped to an organization, environment, or API proxy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Scope as indicated by the URI in which to fetch the key value map. Use **one** of the following structures ... |

**Response**: `GoogleCloudApigeeV1KeyValueMap`

```typescript
const res = await apigee.keyvaluemaps.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.keyvaluemaps.entries.get`

**GET** `v1/{+name}`

Get the key value entry value for a key value map scoped to an organization, environment, or API proxy. **Note**: Supported for Apigee hybrid 1.8.x and higher.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Scope as indicated by the URI in which to fetch the key value map entry/value. Use **one** of the following... |

**Response**: `GoogleCloudApigeeV1KeyValueEntry`

```typescript
const res = await apigee.entries.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.keyvaluemaps.entries.create`

**POST** `v1/{+parent}/entries`

Creates key value entries in a key value map scoped to an organization, environment, or API proxy. **Note**: Supported for Apigee hybrid 1.8.x and higher.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Scope as indicated by the URI in which to create the key value map entry. Use **one** of the following stru... |

**Request body**: `GoogleCloudApigeeV1KeyValueEntry`

**Response**: `GoogleCloudApigeeV1KeyValueEntry`

```typescript
const res = await apigee.entries.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.keyvaluemaps.entries.delete`

**DELETE** `v1/{+name}`

Deletes a key value entry from a key value map scoped to an organization, environment, or API proxy. **Notes:** * After you delete the key value entry, the policy consuming the entry will continue to function with its cached values for a few minutes. This is expected behavior. * Supported for Apigee hybrid 1.8.x and higher.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Scope as indicated by the URI in which to delete the key value map entry. Use **one** of the following stru... |

**Response**: `GoogleCloudApigeeV1KeyValueEntry`

```typescript
const res = await apigee.entries.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.keyvaluemaps.entries.list`

**GET** `v1/{+parent}/entries`

Lists key value entries for key values maps scoped to an organization, environment, or API proxy. **Note**: Supported for Apigee hybrid 1.8.x and higher.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Scope as indicated by the URI in which to list key value maps. Use **one** of the following structures in y... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of key value entries to return. If unspecified, at most 100 entries will be returned. |
| `pageToken` | `string` | query | No | Optional. Page token. If provides, must be a valid key value entry returned from a previous call that can be used to ... |

**Response**: `GoogleCloudApigeeV1ListKeyValueEntriesResponse`

```typescript
const res = await apigee.entries.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.keyvaluemaps.entries.update`

**PUT** `v1/{+name}`

Update key value entry scoped to an organization, environment, or API proxy for an existing key.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Scope as indicated by the URI in which to create the key value map entry. Use **one** of the following stru... |

**Request body**: `GoogleCloudApigeeV1KeyValueEntry`

**Response**: `GoogleCloudApigeeV1KeyValueEntry`

```typescript
const res = await apigee.entries.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.envgroups.patch`

**PATCH** `v1/{+name}`

Updates an environment group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the environment group to update in the format: `organizations/{org}/envgroups/{envgroup}. |
| `updateMask` | `string` | query | No | Optional. List of fields to be updated. |

**Request body**: `GoogleCloudApigeeV1EnvironmentGroup`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await apigee.envgroups.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.envgroups.getDeployedIngressConfig`

**GET** `v1/{+name}`

Gets the deployed ingress configuration for an environment group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the deployed configuration for the environment group in the following format: 'organizations/{org}/... |
| `view` | `string` | query | No | When set to FULL, additional details about the specific deployments receiving traffic will be included in the Ingress... |

**Response**: `GoogleCloudApigeeV1EnvironmentGroupConfig`

```typescript
const res = await apigee.envgroups.getDeployedIngressConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.envgroups.list`

**GET** `v1/{+parent}/envgroups`

Lists all environment groups.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the organization for which to list environment groups in the following format: `organizations/{org}`. |
| `pageSize` | `integer` | query | No | Maximum number of environment groups to return. The page size defaults to 25. |
| `pageToken` | `string` | query | No | Page token, returned from a previous ListEnvironmentGroups call, that you can use to retrieve the next page. |

**Response**: `GoogleCloudApigeeV1ListEnvironmentGroupsResponse`

```typescript
const res = await apigee.envgroups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.envgroups.delete`

**DELETE** `v1/{+name}`

Deletes an environment group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the environment group in the following format: `organizations/{org}/envgroups/{envgroup}`. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await apigee.envgroups.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.envgroups.create`

**POST** `v1/{+parent}/envgroups`

Creates a new environment group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the organization in which to create the environment group in the following format: `organizations/{... |
| `name` | `string` | query | No | Optional. ID of the environment group. Overrides any ID in the environment_group resource. |

**Request body**: `GoogleCloudApigeeV1EnvironmentGroup`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await apigee.envgroups.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.envgroups.get`

**GET** `v1/{+name}`

Gets an environment group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the environment group in the following format: `organizations/{org}/envgroups/{envgroup}`. |

**Response**: `GoogleCloudApigeeV1EnvironmentGroup`

```typescript
const res = await apigee.envgroups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.envgroups.attachments.create`

**POST** `v1/{+parent}/attachments`

Creates a new attachment of an environment to an environment group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. EnvironmentGroup under which to create the attachment in the following format: `organizations/{org}/envgrou... |

**Request body**: `GoogleCloudApigeeV1EnvironmentGroupAttachment`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await apigee.attachments.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.envgroups.attachments.get`

**GET** `v1/{+name}`

Gets an environment group attachment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the environment group attachment in the following format: `organizations/{org}/envgroups/{envgroup}... |

**Response**: `GoogleCloudApigeeV1EnvironmentGroupAttachment`

```typescript
const res = await apigee.attachments.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.envgroups.attachments.list`

**GET** `v1/{+parent}/attachments`

Lists all attachments of an environment group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the environment group in the following format: `organizations/{org}/envgroups/{envgroup}`. |
| `pageSize` | `integer` | query | No | Maximum number of environment group attachments to return. The page size defaults to 25. |
| `pageToken` | `string` | query | No | Page token, returned by a previous ListEnvironmentGroupAttachments call, that you can use to retrieve the next page. |

**Response**: `GoogleCloudApigeeV1ListEnvironmentGroupAttachmentsResponse`

```typescript
const res = await apigee.attachments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.envgroups.attachments.delete`

**DELETE** `v1/{+name}`

Deletes an environment group attachment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the environment group attachment to delete in the following format: `organizations/{org}/envgroups/... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await apigee.attachments.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.sharedflows.list`

**GET** `v1/{+parent}/sharedflows`

Lists all shared flows in the organization. If the resource has the `space` attribute set, the response may not return all resources. To learn more, read the [Apigee Spaces Overview](https://cloud.google.com/apigee/docs/api-platform/system-administration/spaces/apigee-spaces-overview).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent organization under which to get shared flows. Must be of the form: `organizations/{o... |
| `includeMetaData` | `boolean` | query | No | Indicates whether to include shared flow metadata in the response. |
| `includeRevisions` | `boolean` | query | No | Indicates whether to include a list of revisions in the response. |
| `space` | `string` | query | No | Optional. The space ID used to filter the list of shared flows (optional). If unspecified, all shared flows in the or... |

**Response**: `GoogleCloudApigeeV1ListSharedFlowsResponse`

```typescript
const res = await apigee.sharedflows.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.sharedflows.delete`

**DELETE** `v1/{+name}`

Deletes a shared flow and all it's revisions. The shared flow must be undeployed before you can delete it.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. shared flow name of the form: `organizations/{organization_id}/sharedflows/{shared_flow_id}` If the resourc... |

**Response**: `GoogleCloudApigeeV1SharedFlow`

```typescript
const res = await apigee.sharedflows.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.sharedflows.get`

**GET** `v1/{+name}`

Gets a shared flow by name, including a list of its revisions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the shared flow to get. Must be of the form: `organizations/{organization_id}/sharedflows/{shar... |

**Response**: `GoogleCloudApigeeV1SharedFlow`

```typescript
const res = await apigee.sharedflows.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.sharedflows.create`

**POST** `v1/{+parent}/sharedflows`

Uploads a ZIP-formatted shared flow configuration bundle to an organization. If the shared flow already exists, this creates a new revision of it. If the shared flow does not exist, this creates it. Once imported, the shared flow revision must be deployed before it can be accessed at runtime. The size limit of a shared flow bundle is 15 MB.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent organization under which to create the shared flow. Must be of the form: `organizati... |
| `action` | `string` | query | No | Required. Must be set to either `import` or `validate`. |
| `name` | `string` | query | No | Required. The name to give the shared flow |
| `space` | `string` | query | No | Optional. The ID of the space to associated with this shared flow. Any IAM policies applied to the space will affect ... |

**Request body**: `GoogleApiHttpBody`

**Response**: `GoogleCloudApigeeV1SharedFlowRevision`

```typescript
const res = await apigee.sharedflows.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.sharedflows.move`

**POST** `v1/{+name}:move`

Moves an shared flow to a different space.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Shared Flow to move in the following format: `organizations/{org}/sharedflows/{shared_flow}` |

**Request body**: `GoogleCloudApigeeV1MoveSharedFlowRequest`

**Response**: `GoogleCloudApigeeV1SharedFlow`

```typescript
const res = await apigee.sharedflows.move({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.sharedflows.deployments.list`

**GET** `v1/{+parent}/deployments`

Lists all deployments of a shared flow.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the shared flow for which to return deployment information in the following format: `organizations/... |

**Response**: `GoogleCloudApigeeV1ListDeploymentsResponse`

```typescript
const res = await apigee.deployments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.sharedflows.revisions.updateSharedFlowRevision`

**POST** `v1/{+name}`

Updates a shared flow revision. This operation is only allowed on revisions which have never been deployed. After deployment a revision becomes immutable, even if it becomes undeployed. The payload is a ZIP-formatted shared flow. Content type must be either multipart/form-data or application/octet-stream.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the shared flow revision to update. Must be of the form: `organizations/{organization_id}/share... |
| `validate` | `boolean` | query | No | Ignored. All uploads are validated regardless of the value of this field. It is kept for compatibility with existing ... |

**Request body**: `GoogleApiHttpBody`

**Response**: `GoogleCloudApigeeV1SharedFlowRevision`

```typescript
const res = await apigee.revisions.updateSharedFlowRevision({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.sharedflows.revisions.get`

**GET** `v1/{+name}`

Gets a revision of a shared flow. To download the shared flow configuration bundle for the specified revision as a zip file, set the `format` query parameter to `bundle`. If you are using curl, specify `-o filename.zip` to save the output to a file; otherwise, it displays to `stdout`. Then, develop the shared flow configuration locally and upload the updated sharedFlow configuration revision, as described in [updateSharedFlowRevision](updateSharedFlowRevision).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the shared flow revision to get. Must be of the form: `organizations/{organization_id}/sharedfl... |
| `format` | `string` | query | No | Specify `bundle` to export the contents of the shared flow bundle. Otherwise, the bundle metadata is returned. |

**Response**: `GoogleApiHttpBody`

```typescript
const res = await apigee.revisions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.sharedflows.revisions.delete`

**DELETE** `v1/{+name}`

Deletes a shared flow and all associated policies, resources, and revisions. You must undeploy the shared flow before deleting it.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the shared flow revision to delete. Must be of the form: `organizations/{organization_id}/share... |

**Response**: `GoogleCloudApigeeV1SharedFlowRevision`

```typescript
const res = await apigee.revisions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.sharedflows.revisions.deployments.list`

**GET** `v1/{+parent}/deployments`

Lists all deployments of a shared flow revision.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the API proxy revision for which to return deployment information in the following format: `organiz... |

**Response**: `GoogleCloudApigeeV1ListDeploymentsResponse`

```typescript
const res = await apigee.deployments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.securityAssessmentResults.batchCompute`

**POST** `v1/{+name}:batchCompute`

Compute RAV2 security scores for a set of resources.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the organization for which the score needs to be computed in the following format: `organizations/{... |

**Request body**: `GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsRequest`

**Response**: `GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsResponse`

```typescript
const res = await apigee.securityAssessmentResults.batchCompute({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.hostSecurityReports.getResult`

**GET** `v1/{+name}`

After the query is completed, use this API to retrieve the results. If the request succeeds, and there is a non-zero result set, the result is downloaded to the client as a zipped JSON file. The name of the downloaded file will be: OfflineQueryResult-.zip Example: `OfflineQueryResult-9cfc0d85-0f30-46d6-ae6f-318d0cb961bd.zip`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the security report result to get. Must be of the form `organizations/{org}/securityReports/{report... |

**Response**: `GoogleApiHttpBody`

```typescript
const res = await apigee.hostSecurityReports.getResult({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.hostSecurityReports.getResultView`

**GET** `v1/{+name}`

After the query is completed, use this API to view the query result when result size is small.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the security report result view to get. Must be of the form `organizations/{org}/securityReports/{r... |

**Response**: `GoogleCloudApigeeV1SecurityReportResultView`

```typescript
const res = await apigee.hostSecurityReports.getResultView({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.hostSecurityReports.create`

**POST** `v1/{+parent}/hostSecurityReports`

Submit a query at host level to be processed in the background. If the submission of the query succeeds, the API returns a 201 status and an ID that refer to the query. In addition to the HTTP status 201, the `state` of "enqueued" means that the request succeeded.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name. Must be of the form `organizations/{org}`. |

**Request body**: `GoogleCloudApigeeV1SecurityReportQuery`

**Response**: `GoogleCloudApigeeV1SecurityReport`

```typescript
const res = await apigee.hostSecurityReports.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.hostSecurityReports.get`

**GET** `v1/{+name}`

Get status of a query submitted at host level. If the query is still in progress, the `state` is set to "running" After the query has completed successfully, `state` is set to "completed"

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the security report to get. Must be of the form `organizations/{org}/securityReports/{reportId}`. |

**Response**: `GoogleCloudApigeeV1SecurityReport`

```typescript
const res = await apigee.hostSecurityReports.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.hostSecurityReports.list`

**GET** `v1/{+parent}/hostSecurityReports`

Return a list of Security Reports at host level.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name. Must be of the form `organizations/{org}`. |
| `dataset` | `string` | query | No | Filter response list by dataset. Example: `api`, `mint` |
| `envgroupHostname` | `string` | query | No | Required. Filter response list by hostname. |
| `from` | `string` | query | No | Filter response list by returning security reports that created after this date time. Time must be in ISO date-time f... |
| `pageSize` | `integer` | query | No | The maximum number of security report to return in the list response. |
| `pageToken` | `string` | query | No | Token returned from the previous list response to fetch the next page. |
| `status` | `string` | query | No | Filter response list by security report status. |
| `submittedBy` | `string` | query | No | Filter response list by user who submitted queries. |
| `to` | `string` | query | No | Filter response list by returning security reports that created before this date time. Time must be in ISO date-time ... |

**Response**: `GoogleCloudApigeeV1ListSecurityReportsResponse`

```typescript
const res = await apigee.hostSecurityReports.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.apis.patch`

**PATCH** `v1/{+name}`

Updates an existing API proxy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. API proxy to update in the following format: `organizations/{org}/apis/{api}` If the resource has the `spac... |
| `updateMask` | `string` | query | No | Required. The list of fields to update. |

**Request body**: `GoogleCloudApigeeV1ApiProxy`

**Response**: `GoogleCloudApigeeV1ApiProxy`

```typescript
const res = await apigee.apis.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.apis.move`

**POST** `v1/{+name}:move`

Moves an API proxy to a different space.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. API proxy to move in the following format: `organizations/{org}/apis/{api}` |

**Request body**: `GoogleCloudApigeeV1MoveApiProxyRequest`

**Response**: `GoogleCloudApigeeV1ApiProxy`

```typescript
const res = await apigee.apis.move({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.apis.list`

**GET** `v1/{+parent}/apis`

Lists the names of all API proxies in an organization. The names returned correspond to the names defined in the configuration files for each API proxy. If the resource has the `space` attribute set, the response may not return all resources. To learn more, read the [Apigee Spaces Overview](https://cloud.google.com/apigee/docs/api-platform/system-administration/spaces/apigee-spaces-overview).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the organization in the following format: `organizations/{org}` If the resource has the `space` att... |
| `includeMetaData` | `boolean` | query | No | Flag that specifies whether to include API proxy metadata in the response. |
| `includeRevisions` | `boolean` | query | No | Flag that specifies whether to include a list of revisions in the response. |
| `space` | `string` | query | No | Optional. The space ID to filter the list of proxies (optional). If unspecified, all proxies in the organization will... |

**Response**: `GoogleCloudApigeeV1ListApiProxiesResponse`

```typescript
const res = await apigee.apis.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.apis.delete`

**DELETE** `v1/{+name}`

Deletes an API proxy and all associated endpoints, policies, resources, and revisions. The API proxy must be undeployed before you can delete it.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the API proxy in the following format: `organizations/{org}/apis/{api}` If the API Proxy resource h... |

**Response**: `GoogleCloudApigeeV1ApiProxy`

```typescript
const res = await apigee.apis.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.apis.get`

**GET** `v1/{+name}`

Gets an API proxy including a list of existing revisions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the API proxy in the following format: `organizations/{org}/apis/{api}` If the API Proxy resource h... |

**Response**: `GoogleCloudApigeeV1ApiProxy`

```typescript
const res = await apigee.apis.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.apis.create`

**POST** `v1/{+parent}/apis`

Creates an API proxy. The API proxy created will not be accessible at runtime until it is deployed to an environment. Create a new API proxy by setting the `name` query parameter to the name of the API proxy. Import an API proxy configuration bundle stored in zip format on your local machine to your organization by doing the following: * Set the `name` query parameter to the name of the API proxy. * Set the `action` query parameter to `import`. * Set the `Content-Type` header to `multipart/form-data`. * Pass as a file the name of API proxy configuration bundle stored in zip format on your local machine using the `file` form field. **Note**: To validate the API proxy configuration bundle only without importing it, set the `action` query parameter to `validate`. When importing an API proxy configuration bundle, if the API proxy does not exist, it will be created. If the API proxy exists, then a new revision is created. Invalid API proxy configurations are rejected, and a list of validation errors is returned to the client.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the organization in the following format: `organizations/{org}` If the API Proxy resource has the `... |
| `action` | `string` | query | No | Action to perform when importing an API proxy configuration bundle. Set this parameter to one of the following values... |
| `name` | `string` | query | No | Name of the API proxy. Restrict the characters used to: A-Za-z0-9._- |
| `space` | `string` | query | No | Optional. The ID of the space associated with this proxy. Any IAM policies applied to the space will affect access to... |
| `validate` | `boolean` | query | No | Ignored. All uploads are validated regardless of the value of this field. Maintained for compatibility with Apigee Ed... |

**Request body**: `GoogleApiHttpBody`

**Response**: `GoogleCloudApigeeV1ApiProxyRevision`

```typescript
const res = await apigee.apis.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.apis.revisions.updateApiProxyRevision`

**POST** `v1/{+name}`

Updates an existing API proxy revision by uploading the API proxy configuration bundle as a zip file from your local machine. You can update only API proxy revisions that have never been deployed. After deployment, an API proxy revision becomes immutable, even if it is undeployed. Set the `Content-Type` header to either `multipart/form-data` or `application/octet-stream`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. API proxy revision to update in the following format: `organizations/{org}/apis/{api}/revisions/{rev}` If t... |
| `validate` | `boolean` | query | No | Ignored. All uploads are validated regardless of the value of this field. Maintained for compatibility with Apigee Ed... |

**Request body**: `GoogleApiHttpBody`

**Response**: `GoogleCloudApigeeV1ApiProxyRevision`

```typescript
const res = await apigee.revisions.updateApiProxyRevision({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.apis.revisions.get`

**GET** `v1/{+name}`

Gets an API proxy revision. To download the API proxy configuration bundle for the specified revision as a zip file, set the `format` query parameter to `bundle`. If you are using curl, specify `-o filename.zip` to save the output to a file; otherwise, it displays to `stdout`. Then, develop the API proxy configuration locally and upload the updated API proxy configuration revision, as described in [updateApiProxyRevision](updateApiProxyRevision).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. API proxy revision in the following format: `organizations/{org}/apis/{api}/revisions/{rev}` If the API Pro... |
| `format` | `string` | query | No | Format used when downloading the API proxy configuration revision. Set to `bundle` to download the API proxy configur... |

**Response**: `GoogleApiHttpBody`

```typescript
const res = await apigee.revisions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.apis.revisions.delete`

**DELETE** `v1/{+name}`

Deletes an API proxy revision and all policies, resources, endpoints, and revisions associated with it. The API proxy revision must be undeployed before you can delete it.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. API proxy revision in the following format: `organizations/{org}/apis/{api}/revisions/{rev}` If the API Pro... |

**Response**: `GoogleCloudApigeeV1ApiProxyRevision`

```typescript
const res = await apigee.revisions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.apis.revisions.deployments.list`

**GET** `v1/{+parent}/deployments`

Lists all deployments of an API proxy revision.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the API proxy revision for which to return deployment information in the following format: `organiz... |

**Response**: `GoogleCloudApigeeV1ListDeploymentsResponse`

```typescript
const res = await apigee.deployments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.apis.deployments.list`

**GET** `v1/{+parent}/deployments`

Lists all deployments of an API proxy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the API proxy for which to return deployment information in the following format: `organizations/{o... |

**Response**: `GoogleCloudApigeeV1ListDeploymentsResponse`

```typescript
const res = await apigee.deployments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.apis.keyvaluemaps.get`

**GET** `v1/{+name}`

Get the key value map scoped to an organization, environment, or API proxy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Scope as indicated by the URI in which to fetch the key value map. Use **one** of the following structures ... |

**Response**: `GoogleCloudApigeeV1KeyValueMap`

```typescript
const res = await apigee.keyvaluemaps.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.apis.keyvaluemaps.create`

**POST** `v1/{+parent}/keyvaluemaps`

Creates a key value map in an API proxy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the environment in which to create the key value map. Use the following structure in your request: ... |

**Request body**: `GoogleCloudApigeeV1KeyValueMap`

**Response**: `GoogleCloudApigeeV1KeyValueMap`

```typescript
const res = await apigee.keyvaluemaps.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.apis.keyvaluemaps.delete`

**DELETE** `v1/{+name}`

Deletes a key value map from an API proxy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the key value map. Use the following structure in your request: `organizations/{org}/apis/{api}/key... |

**Response**: `GoogleCloudApigeeV1KeyValueMap`

```typescript
const res = await apigee.keyvaluemaps.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.apis.keyvaluemaps.update`

**PUT** `v1/{+name}`

Update the key value map scoped to an organization, environment, or API proxy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Scope as indicated by the URI in which to fetch the key value map. Use **one** of the following structures ... |

**Request body**: `GoogleCloudApigeeV1KeyValueMap`

**Response**: `GoogleCloudApigeeV1KeyValueMap`

```typescript
const res = await apigee.keyvaluemaps.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.apis.keyvaluemaps.entries.get`

**GET** `v1/{+name}`

Get the key value entry value for a key value map scoped to an organization, environment, or API proxy. **Note**: Supported for Apigee hybrid 1.8.x and higher.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Scope as indicated by the URI in which to fetch the key value map entry/value. Use **one** of the following... |

**Response**: `GoogleCloudApigeeV1KeyValueEntry`

```typescript
const res = await apigee.entries.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.apis.keyvaluemaps.entries.create`

**POST** `v1/{+parent}/entries`

Creates key value entries in a key value map scoped to an organization, environment, or API proxy. **Note**: Supported for Apigee hybrid 1.8.x and higher.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Scope as indicated by the URI in which to create the key value map entry. Use **one** of the following stru... |

**Request body**: `GoogleCloudApigeeV1KeyValueEntry`

**Response**: `GoogleCloudApigeeV1KeyValueEntry`

```typescript
const res = await apigee.entries.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.apis.keyvaluemaps.entries.update`

**PUT** `v1/{+name}`

Update key value entry scoped to an organization, environment, or API proxy for an existing key.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Scope as indicated by the URI in which to create the key value map entry. Use **one** of the following stru... |

**Request body**: `GoogleCloudApigeeV1KeyValueEntry`

**Response**: `GoogleCloudApigeeV1KeyValueEntry`

```typescript
const res = await apigee.entries.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.apis.keyvaluemaps.entries.delete`

**DELETE** `v1/{+name}`

Deletes a key value entry from a key value map scoped to an organization, environment, or API proxy. **Notes:** * After you delete the key value entry, the policy consuming the entry will continue to function with its cached values for a few minutes. This is expected behavior. * Supported for Apigee hybrid 1.8.x and higher.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Scope as indicated by the URI in which to delete the key value map entry. Use **one** of the following stru... |

**Response**: `GoogleCloudApigeeV1KeyValueEntry`

```typescript
const res = await apigee.entries.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.apis.keyvaluemaps.entries.list`

**GET** `v1/{+parent}/entries`

Lists key value entries for key values maps scoped to an organization, environment, or API proxy. **Note**: Supported for Apigee hybrid 1.8.x and higher.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Scope as indicated by the URI in which to list key value maps. Use **one** of the following structures in y... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of key value entries to return. If unspecified, at most 100 entries will be returned. |
| `pageToken` | `string` | query | No | Optional. Page token. If provides, must be a valid key value entry returned from a previous call that can be used to ... |

**Response**: `GoogleCloudApigeeV1ListKeyValueEntriesResponse`

```typescript
const res = await apigee.entries.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.apis.debugsessions.list`

**GET** `v1/{+parent}/debugsessions`

Lists debug sessions that are currently active in the given API Proxy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the API Proxy for which to list debug sessions. Must be of the form: `organizations/{organizati... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of debug sessions to return. The page size defaults to 25. |
| `pageToken` | `string` | query | No | Optional. Page token, returned from a previous ListApiDebugSessions call, that you can use to retrieve the next page. |

**Response**: `GoogleCloudApigeeV1ListApiDebugSessionsResponse`

```typescript
const res = await apigee.debugsessions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.appgroups.update`

**PUT** `v1/{+name}`

Updates an AppGroup. This API replaces the existing AppGroup details with those specified in the request. Include or exclude any existing details that you want to retain or delete, respectively. Note that the state of the AppGroup should be updated using `action`, and not via AppGroup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the AppGroup. Use the following structure in your request: `organizations/{org}/appgroups/{app_grou... |
| `action` | `string` | query | No | Activate or de-activate the AppGroup by setting the action as `active` or `inactive`. The `Content-Type` header must ... |

**Request body**: `GoogleCloudApigeeV1AppGroup`

**Response**: `GoogleCloudApigeeV1AppGroup`

```typescript
const res = await apigee.appgroups.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.appgroups.getBalance`

**GET** `v1/{+name}`

Gets the account balance for the AppGroup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Account balance for the AppGroup. Use the following structure in your request: `organizations/{org}/appgrou... |

**Response**: `GoogleCloudApigeeV1AppGroupBalance`

```typescript
const res = await apigee.appgroups.getBalance({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.appgroups.delete`

**DELETE** `v1/{+name}`

Deletes an AppGroup. All app and API keys associations with the AppGroup are also removed. **Warning**: This API will permanently delete the AppGroup and related artifacts. **Note**: The delete operation is asynchronous. The AppGroup is deleted immediately, but its associated resources, such as apps and API keys, may take anywhere from a few seconds to a few minutes to be deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the AppGroup. Use the following structure in your request: `organizations/{org}/appgroups/{app_grou... |

**Response**: `GoogleCloudApigeeV1AppGroup`

```typescript
const res = await apigee.appgroups.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.appgroups.list`

**GET** `v1/{+parent}/appgroups`

Lists all AppGroups in an organization. A maximum of 1000 AppGroups are returned in the response if PageSize is not specified, or if the PageSize is greater than 1000.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the Apigee organization. Use the following structure in your request: `organizations/{org}`. |
| `filter` | `string` | query | No | The filter expression to be used to get the list of AppGroups, where filtering can be done on status, channelId or ch... |
| `pageSize` | `integer` | query | No | Count of AppGroups a single page can have in the response. If unspecified, at most 1000 AppGroups will be returned. T... |
| `pageToken` | `string` | query | No | The starting index record for listing the AppGroups. |

**Response**: `GoogleCloudApigeeV1ListAppGroupsResponse`

```typescript
const res = await apigee.appgroups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.appgroups.create`

**POST** `v1/{+parent}/appgroups`

Creates an AppGroup. Once created, user can register apps under the AppGroup to obtain secret key and password. At creation time, the AppGroup's state is set as `active`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the Apigee organization in which the AppGroup is created. Use the following structure in your reque... |

**Request body**: `GoogleCloudApigeeV1AppGroup`

**Response**: `GoogleCloudApigeeV1AppGroup`

```typescript
const res = await apigee.appgroups.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.appgroups.get`

**GET** `v1/{+name}`

Returns the AppGroup details for the provided AppGroup name in the request URI.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the AppGroup. Use the following structure in your request: `organizations/{org}/appgroups/{app_grou... |

**Response**: `GoogleCloudApigeeV1AppGroup`

```typescript
const res = await apigee.appgroups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.appgroups.updateMonetizationConfig`

**PUT** `v1/{+name}`

Updates the monetization configuration for the AppGroup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Monetization configuration for the AppGroup. Use the following structure in your request: `organizations/{o... |

**Request body**: `GoogleCloudApigeeV1AppGroupMonetizationConfig`

**Response**: `GoogleCloudApigeeV1AppGroupMonetizationConfig`

```typescript
const res = await apigee.appgroups.updateMonetizationConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.appgroups.getMonetizationConfig`

**GET** `v1/{+name}`

Gets the monetization configuration for the AppGroup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Monetization configuration for the AppGroup. Use the following structure in your request: `organizations/{o... |

**Response**: `GoogleCloudApigeeV1AppGroupMonetizationConfig`

```typescript
const res = await apigee.appgroups.getMonetizationConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.appgroups.balance.credit`

**POST** `v1/{+name}:credit`

Credits the account balance for the AppGroup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Account balance for the AppGroup. Use the following structure in your request: `organizations/{org}/appgrou... |

**Request body**: `GoogleCloudApigeeV1CreditAppGroupBalanceRequest`

**Response**: `GoogleCloudApigeeV1AppGroupBalance`

```typescript
const res = await apigee.balance.credit({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.appgroups.balance.adjust`

**POST** `v1/{+name}:adjust`

Adjust the prepaid balance for the AppGroup. This API will be used in scenarios where the AppGroup has been under-charged or over-charged.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Account balance for the AppGroup. Use the following structure in your request: `organizations/{org}/appgrou... |

**Request body**: `GoogleCloudApigeeV1AdjustAppGroupBalanceRequest`

**Response**: `GoogleCloudApigeeV1AppGroupBalance`

```typescript
const res = await apigee.balance.adjust({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.appgroups.subscriptions.list`

**GET** `v1/{+parent}/subscriptions`

List all api product subscriptions for an appgroup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the appgroup. Use the following structure in your request: `organizations/{org}/appgroups/{appgroup}` |
| `pageSize` | `integer` | query | No | Optional. The maximum number of subscriptions to return. The service may return fewer than this value. If unspecified... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListAppGroupSubscriptions` call. Provide this to retrieve the subse... |

**Response**: `GoogleCloudApigeeV1ListAppGroupSubscriptionsResponse`

```typescript
const res = await apigee.subscriptions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.appgroups.subscriptions.create`

**POST** `v1/{+parent}/subscriptions`

Creates a subscription to an API product.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the appgroup that is purchasing a subscription to the API product. Use the following structure in y... |

**Request body**: `GoogleCloudApigeeV1AppGroupSubscription`

**Response**: `GoogleCloudApigeeV1AppGroupSubscription`

```typescript
const res = await apigee.subscriptions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.appgroups.subscriptions.get`

**GET** `v1/{+name}`

Get an api product subscription for an appgroup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the AppGroupSubscription to retrieve. Format: `organizations/{org}/appgroups/{appgroup}/subscri... |

**Response**: `GoogleCloudApigeeV1AppGroupSubscription`

```typescript
const res = await apigee.subscriptions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.appgroups.subscriptions.expire`

**POST** `v1/{+name}:expire`

Expires an API product subscription immediately.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the API product subscription. Use the following structure in your request: `organizations/{org}/app... |

**Request body**: `GoogleCloudApigeeV1ExpireAppGroupSubscriptionRequest`

**Response**: `GoogleCloudApigeeV1AppGroupSubscription`

```typescript
const res = await apigee.subscriptions.expire({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.appgroups.apps.update`

**PUT** `v1/{+name}`

Updates the details for an AppGroup app. In addition, you can add an API product to an AppGroup app and automatically generate an API key for the app to use when calling APIs in the API product. If you want to use an existing API key for the API product, add the API product to the API key using the UpdateAppGroupAppKey API. Using this API, you cannot update the app name, as it is the primary key used to identify the app and cannot be changed. This API replaces the existing attributes with those specified in the request. Include or exclude any existing attributes that you want to retain or delete, respectively.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the AppGroup app. Use the following structure in your request: `organizations/{org}/appgroups/{app_... |
| `action` | `string` | query | No | Approve or revoke the consumer key by setting this value to `approve` or `revoke`. The `Content-Type` header must be ... |

**Request body**: `GoogleCloudApigeeV1AppGroupApp`

**Response**: `GoogleCloudApigeeV1AppGroupApp`

```typescript
const res = await apigee.apps.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.appgroups.apps.delete`

**DELETE** `v1/{+name}`

Deletes an AppGroup app. **Note**: The delete operation is asynchronous. The AppGroup app is deleted immediately, but its associated resources, such as app keys or access tokens, may take anywhere from a few seconds to a few minutes to be deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the AppGroup app. Use the following structure in your request: `organizations/{org}/appgroups/{app_... |

**Response**: `GoogleCloudApigeeV1AppGroupApp`

```typescript
const res = await apigee.apps.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.appgroups.apps.list`

**GET** `v1/{+parent}/apps`

Lists all apps created by an AppGroup in an Apigee organization. Optionally, you can request an expanded view of the AppGroup apps. Lists all AppGroupApps in an AppGroup. A maximum of 1000 AppGroup apps are returned in the response if PageSize is not specified, or if the PageSize is greater than 1000.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the AppGroup. Use the following structure in your request: `organizations/{org}/appgroups/{app_grou... |
| `pageSize` | `integer` | query | No | Optional. Maximum number entries to return. If unspecified, at most 1000 entries will be returned. |
| `pageToken` | `string` | query | No | Optional. Page token. If provides, must be a valid AppGroup app returned from a previous call that can be used to ret... |

**Response**: `GoogleCloudApigeeV1ListAppGroupAppsResponse`

```typescript
const res = await apigee.apps.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.appgroups.apps.create`

**POST** `v1/{+parent}/apps`

Creates an app and associates it with an AppGroup. This API associates the AppGroup app with the specified API product and auto-generates an API key for the app to use in calls to API proxies inside that API product. The `name` is the unique ID of the app that you can use in API calls.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the AppGroup. Use the following structure in your request: `organizations/{org}/appgroups/{app_grou... |

**Request body**: `GoogleCloudApigeeV1AppGroupApp`

**Response**: `GoogleCloudApigeeV1AppGroupApp`

```typescript
const res = await apigee.apps.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.appgroups.apps.get`

**GET** `v1/{+name}`

Returns the details for an AppGroup app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the AppGroup app. Use the following structure in your request: `organizations/{org}/appgroups/{app_... |

**Response**: `GoogleCloudApigeeV1AppGroupApp`

```typescript
const res = await apigee.apps.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.appgroups.apps.keys.create`

**POST** `v1/{+parent}/keys`

Creates a custom consumer key and secret for a AppGroup app. This is particularly useful if you want to migrate existing consumer keys and secrets to Apigee from another system. Consumer keys and secrets can contain letters, numbers, underscores, and hyphens. No other special characters are allowed. To avoid service disruptions, a consumer key and secret should not exceed 2 KBs each. **Note**: When creating the consumer key and secret, an association to API products will not be made. Therefore, you should not specify the associated API products in your request. Instead, use the UpdateAppGroupAppKey API to make the association after the consumer key and secret are created. If a consumer key and secret already exist, you can keep them or delete them using the DeleteAppGroupAppKey API.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent of the AppGroup app key. Use the following structure in your request: `organizations/{org}/appgroups... |

**Request body**: `GoogleCloudApigeeV1AppGroupAppKey`

**Response**: `GoogleCloudApigeeV1AppGroupAppKey`

```typescript
const res = await apigee.keys.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.appgroups.apps.keys.get`

**GET** `v1/{+name}`

Gets details for a consumer key for a AppGroup app, including the key and secret value, associated API products, and other information.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the AppGroup app key. Use the following structure in your request: `organizations/{org}/appgroups/{... |

**Response**: `GoogleCloudApigeeV1AppGroupAppKey`

```typescript
const res = await apigee.keys.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.appgroups.apps.keys.delete`

**DELETE** `v1/{+name}`

Deletes an app's consumer key and removes all API products associated with the app. After the consumer key is deleted, it cannot be used to access any APIs.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the AppGroup app key. Use the following structure in your request: `organizations/{org}/appgroups/{... |

**Response**: `GoogleCloudApigeeV1AppGroupAppKey`

```typescript
const res = await apigee.keys.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.appgroups.apps.keys.updateAppGroupAppKey`

**POST** `v1/{+name}`

Adds an API product to an AppGroupAppKey, enabling the app that holds the key to access the API resources bundled in the API product. In addition, you can add attributes and scopes to the AppGroupAppKey. This API replaces the existing attributes with those specified in the request. Include or exclude any existing attributes that you want to retain or delete, respectively. You can use the same key to access all API products associated with the app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the AppGroup app key. Use the following structure in your request: `organizations/{org}/appgroups/{... |

**Request body**: `GoogleCloudApigeeV1UpdateAppGroupAppKeyRequest`

**Response**: `GoogleCloudApigeeV1AppGroupAppKey`

```typescript
const res = await apigee.keys.updateAppGroupAppKey({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.appgroups.apps.keys.apiproducts.updateAppGroupAppKeyApiProduct`

**POST** `v1/{+name}`

Approves or revokes the consumer key for an API product. After a consumer key is approved, the app can use it to access APIs. A consumer key that is revoked or pending cannot be used to access an API. Any access tokens associated with a revoked consumer key will remain active. However, Apigee checks the status of the consumer key and if set to `revoked` will not allow access to the API.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the API product in the developer app key in the following format: `organizations/{org}/appgroups/{a... |
| `action` | `string` | query | No | Approve or revoke the consumer key by setting this value to `approve` or `revoke` respectively. The `Content-Type` he... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await apigee.apiproducts.updateAppGroupAppKeyApiProduct({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.appgroups.apps.keys.apiproducts.delete`

**DELETE** `v1/{+name}`

Removes an API product from an app's consumer key. After the API product is removed, the app cannot access the API resources defined in that API product. **Note**: The consumer key is not removed, only its association with the API product.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Parent of the AppGroup app key. Use the following structure in your request: `organizations/{org}/appgroups... |

**Response**: `GoogleCloudApigeeV1AppGroupAppKey`

```typescript
const res = await apigee.apiproducts.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.dnsZones.create`

**POST** `v1/{+parent}/dnsZones`

Creates a new DNS zone.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Organization where the DNS zone will be created. |
| `dnsZoneId` | `string` | query | No | Required. User assigned ID for this resource. Must be unique within the organization. The name must be 1-63 character... |

**Request body**: `GoogleCloudApigeeV1DnsZone`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await apigee.dnsZones.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.dnsZones.get`

**GET** `v1/{+name}`

Fetches the representation of an existing DNS zone.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the DNS zone to fetch. Use the following structure in your request: `organizations/{org}/dnsZones/{... |

**Response**: `GoogleCloudApigeeV1DnsZone`

```typescript
const res = await apigee.dnsZones.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.dnsZones.list`

**GET** `v1/{+parent}/dnsZones`

Enumerates DNS zones that have been created but not yet deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the organization for which to list the DNS zones. Use the following structure in your request: `org... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of DNS zones to return. If unspecified, at most 25 DNS zones will be returned. |
| `pageToken` | `string` | query | No | Optional. Page token, returned from a previous `ListDnsZones` call, that you can use to retrieve the next page. |

**Response**: `GoogleCloudApigeeV1ListDnsZonesResponse`

```typescript
const res = await apigee.dnsZones.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.dnsZones.delete`

**DELETE** `v1/{+name}`

Deletes a previously created DNS zone.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the DNS zone to delete. Use the following structure in your request: `organizations/{org}/dnsZones/... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await apigee.dnsZones.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.optimizedHostStats.get`

**GET** `v1/{+name}`

Similar to GetHostStats except that the response is less verbose.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name for which the interactive query will be executed. Use the following format in your request: `... |
| `accuracy` | `string` | query | No | No longer used by Apigee. Supported for backwards compatibility. |
| `envgroupHostname` | `string` | query | No | Required. Hostname for which the interactive query will be executed. |
| `filter` | `string` | query | No | Filter that enables you to drill-down on specific dimension values. |
| `limit` | `string` | query | No | Maximum number of result items to return. |
| `offset` | `string` | query | No | Offset value. Use `offset` with `limit` to enable pagination of results. For example, to display results 11-20, set l... |
| `realtime` | `boolean` | query | No | No longer used by Apigee. Supported for backwards compatibility. |
| `select` | `string` | query | No | Required. Comma-separated list of metrics. For example: `sum(message_count),sum(error_count)` |
| `sort` | `string` | query | No | Flag that specifies whether the sort order should be ascending or descending. Valid values include `DESC` and `ASC`. |
| `sortby` | `string` | query | No | Comma-separated list of metrics used to sort the final result. |
| `timeRange` | `string` | query | No | Required. Time interval for the interactive query. Time range is specified in GMT as `start~end`. For example: `04/15... |
| `timeUnit` | `string` | query | No | Granularity of metrics returned. Valid values include: `second`, `minute`, `hour`, `day`, `week`, or `month`. |
| `topk` | `string` | query | No | Top number of results to return. For example, to return the top 5 results, set `topk=5`. |
| `tsAscending` | `boolean` | query | No | Flag that specifies whether to list timestamps in ascending (`true`) or descending (`false`) order. Apigee recommends... |
| `tzo` | `string` | query | No | Timezone offset value. |

**Response**: `GoogleCloudApigeeV1OptimizedStats`

```typescript
const res = await apigee.optimizedHostStats.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.securityProfilesV2.patch`

**PATCH** `v1/{+name}`

Update a security profile V2.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Name of the security profile v2 resource. Format: organizations/{org}/securityProfilesV2/{profile} |
| `updateMask` | `string` | query | No | Optional. The list of fields to update. Valid fields to update are `description` and `profileAssessmentConfigs`. |

**Request body**: `GoogleCloudApigeeV1SecurityProfileV2`

**Response**: `GoogleCloudApigeeV1SecurityProfileV2`

```typescript
const res = await apigee.securityProfilesV2.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.securityProfilesV2.create`

**POST** `v1/{+parent}/securityProfilesV2`

Create a security profile v2.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name. Format: `organizations/{org}` |
| `securityProfileV2Id` | `string` | query | No | Required. The security profile id. |

**Request body**: `GoogleCloudApigeeV1SecurityProfileV2`

**Response**: `GoogleCloudApigeeV1SecurityProfileV2`

```typescript
const res = await apigee.securityProfilesV2.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.securityProfilesV2.get`

**GET** `v1/{+name}`

Get a security profile v2.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the security profile v2 to get. Format: `organizations/{org}/securityProfilesV2/{profile}` |
| `riskAssessmentType` | `string` | query | No | Optional. The risk assessment type of the security profile. Defaults to ADVANCED_API_SECURITY. |

**Response**: `GoogleCloudApigeeV1SecurityProfileV2`

```typescript
const res = await apigee.securityProfilesV2.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.securityProfilesV2.list`

**GET** `v1/{+parent}/securityProfilesV2`

List security profiles v2.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. For a specific organization, list of all the security profiles. Format: `organizations/{org}` |
| `pageSize` | `integer` | query | No | Optional. The maximum number of profiles to return |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListSecurityProfilesV2` call. Provide this to retrieve the subseque... |
| `riskAssessmentType` | `string` | query | No | Optional. The risk assessment type of the security profiles. Defaults to ADVANCED_API_SECURITY. |

**Response**: `GoogleCloudApigeeV1ListSecurityProfilesV2Response`

```typescript
const res = await apigee.securityProfilesV2.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.securityProfilesV2.delete`

**DELETE** `v1/{+name}`

Delete a security profile v2.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the security profile v2 to delete. Format: `organizations/{org}/securityProfilesV2/{profile}` |
| `riskAssessmentType` | `string` | query | No | Optional. The risk assessment type of the security profile. Defaults to ADVANCED_API_SECURITY. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await apigee.securityProfilesV2.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.securityFeedback.create`

**POST** `v1/{+parent}/securityFeedback`

Creates a new report containing customer feedback.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the organization. Use the following structure in your request: `organizations/{org}`. |
| `securityFeedbackId` | `string` | query | No | Optional. The id for this feedback report. If not provided, it will be set to a system-generated UUID. |

**Request body**: `GoogleCloudApigeeV1SecurityFeedback`

**Response**: `GoogleCloudApigeeV1SecurityFeedback`

```typescript
const res = await apigee.securityFeedback.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.securityFeedback.get`

**GET** `v1/{+name}`

Gets a specific customer feedback report.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the SecurityFeedback. Format: `organizations/{org}/securityFeedback/{feedback_id}` Example: organiz... |

**Response**: `GoogleCloudApigeeV1SecurityFeedback`

```typescript
const res = await apigee.securityFeedback.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.securityFeedback.list`

**GET** `v1/{+parent}/securityFeedback`

Lists all feedback reports which have already been submitted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the organization. Format: `organizations/{org}`. Example: organizations/apigee-organization-name/se... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of feedback reports to return. The service may return fewer than this value. LINT.IfChan... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListSecurityFeedback` call. Provide this to retrieve the subsequent... |

**Response**: `GoogleCloudApigeeV1ListSecurityFeedbackResponse`

```typescript
const res = await apigee.securityFeedback.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.securityFeedback.delete`

**DELETE** `v1/{+name}`

Deletes a specific feedback report. Used for "undo" of a feedback submission.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the SecurityFeedback to delete. Use the following structure in your request: `organizations/{org}/s... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await apigee.securityFeedback.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.organizations.securityFeedback.patch`

**PATCH** `v1/{+name}`

Updates a specific feedback report.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Identifier. The feedback name is intended to be a system-generated uuid. |
| `updateMask` | `string` | query | No | Optional. The list of fields to update. |

**Request body**: `GoogleCloudApigeeV1SecurityFeedback`

**Response**: `GoogleCloudApigeeV1SecurityFeedback`

```typescript
const res = await apigee.securityFeedback.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.hybrid.issuers.list`

**GET** `v1/{+name}`

Lists hybrid services and its trusted issuers service account ids. This api is authenticated and unauthorized(allow all the users) and used by runtime authn-authz service to query control plane's issuer service account ids.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Must be of the form `hybrid/issuers`. |

**Response**: `GoogleCloudApigeeV1ListHybridIssuersResponse`

```typescript
const res = await apigee.issuers.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigee.projects.provisionOrganization`

**POST** `v1/{+project}:provisionOrganization`

Provisions a new Apigee organization with a functioning runtime. This is the standard way to create trial organizations for a free Apigee trial.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Required. Name of the GCP project with which to associate the Apigee organization. |

**Request body**: `GoogleCloudApigeeV1ProvisionOrganizationRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await apigee.projects.provisionOrganization({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `ApiservingMcpMcpToolDataHandlingProfile`

Profile describing the data handling characteristics of an MCP tool. When used within the McpTool.meta field, this message should be packed into a google.protobuf.Any and associated with the key: "google.com/tool.profiles/data_handling"

| Property | Type | Description |
|----------|------|-------------|
| `inputDataAccessLevel` | `string` | // The data access level of the tool's inputs. |
| `outputDataAccessLevel` | `string` | The data access level of the tool's outputs. |

### `ApiservingMcpMcpToolLifecycleProfile`

Profile describing the lifecycle stage of an MCP tool. When used within the McpTool.meta field, this message should be packed into a google.protobuf.Any and associated with the key: "google.com/tool.profiles/lifecycle"

| Property | Type | Description |
|----------|------|-------------|
| `launchState` | `string` | Output only. The current launch state of the MCP tool. |

### `EdgeConfigstoreBundleBadBundle`

Describes why a bundle is invalid. Intended for use in error details.

| Property | Type | Description |
|----------|------|-------------|
| `violations` | `array<EdgeConfigstoreBundleBadBundleViolation>` | Describes all precondition violations. |

### `EdgeConfigstoreBundleBadBundleViolation`

A message type used to describe a single bundle validation error.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | A description of why the bundle is invalid and how to fix it. |
| `filename` | `string` | The filename (including relative path from the bundle root) in which the error occurred. |

### `GoogleApiHttpBody`

Message that represents an arbitrary HTTP body. It should only be used for payload formats that can't be represented as JSON, such as raw binary or an HTML page. This message can be used both in streaming and non-streaming API methods in the request as well as the response. It can be used as a top-level request field, which is convenient if one wants to extract parameters from either the URL or HTTP template into the request fields and also want access to the raw HTTP body. Example: message GetResourceRequest { // A unique request id. string request_id = 1; // The raw HTTP body is bound to this field. google.api.HttpBody http_body = 2; } service ResourceService { rpc GetResource(GetResourceRequest) returns (google.api.HttpBody); rpc UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty); } Example with streaming methods: service CaldavService { rpc GetCalendar(stream google.api.HttpBody) returns (stream google.api.HttpBody); rpc UpdateCalendar(stream google.api.HttpBody) returns (stream google.api.HttpBody); } Use of this type only changes how the request and response bodies are handled, all other features will continue to work unchanged.

| Property | Type | Description |
|----------|------|-------------|
| `contentType` | `string` | The HTTP Content-Type header value specifying the content type of the body. |
| `data` | `string` | The HTTP request/response body as raw binary. |
| `extensions` | `array<object>` | Application specific response metadata. Must be set in the first response for streaming APIs. |

### `GoogleCloudApigeeV1APIProductAssociation`

APIProductAssociation has the API product and its administrative state association.

| Property | Type | Description |
|----------|------|-------------|
| `apiproduct` | `string` | API product to be associated with the credential. |
| `status` | `string` | The API product credential associated status. Valid values are `approved` or `revoked`. |

### `GoogleCloudApigeeV1Access`

| Property | Type | Description |
|----------|------|-------------|
| `Get` | `GoogleCloudApigeeV1AccessGet` |  |
| `Remove` | `GoogleCloudApigeeV1AccessRemove` |  |
| `Set` | `GoogleCloudApigeeV1AccessSet` |  |

### `GoogleCloudApigeeV1AccessGet`

Get action. For example, "Get" : { "name" : "target.name", "value" : "default" }

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` |  |
| `value` | `string` |  |

### `GoogleCloudApigeeV1AccessLoggingConfig`

Access logging configuration enables customers to ship the access logs from the tenant projects to their own project's cloud logging. The feature is at the instance level ad disabled by default. It can be enabled during CreateInstance or UpdateInstance.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Optional. Boolean flag that specifies whether the customer access log feature is enabled. |
| `filter` | `string` | Optional. Ship the access log entries that match the status_code defined in the filter. The statu... |

### `GoogleCloudApigeeV1AccessRemove`

Remove action. For example, "Remove" : { "name" : "target.name", "success" : true }

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` |  |
| `success` | `boolean` |  |

### `GoogleCloudApigeeV1AccessSet`

Set action. For example, "Set" : { "name" : "target.name", "success" : true, "value" : "default" }

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` |  |
| `success` | `boolean` |  |
| `value` | `string` |  |

### `GoogleCloudApigeeV1ActivateNatAddressRequest`

Request for ActivateNatAddressRequest. Activate the nat address request.

### `GoogleCloudApigeeV1AddonsConfig`

Add-on configurations for the Apigee organization.

| Property | Type | Description |
|----------|------|-------------|
| `advancedApiOpsConfig` | `GoogleCloudApigeeV1AdvancedApiOpsConfig` | Configuration for the Advanced API Ops add-on. |
| `analyticsConfig` | `GoogleCloudApigeeV1AnalyticsConfig` | Configuration for the Analytics add-on. Only used in organizations.environments.addonsConfig. |
| `apiSecurityConfig` | `GoogleCloudApigeeV1ApiSecurityConfig` | Configuration for the API Security add-on. |
| `connectorsPlatformConfig` | `GoogleCloudApigeeV1ConnectorsPlatformConfig` | Configuration for the Connectors Platform add-on. |
| `integrationConfig` | `GoogleCloudApigeeV1IntegrationConfig` | Configuration for the Integration add-on. |
| `monetizationConfig` | `GoogleCloudApigeeV1MonetizationConfig` | Configuration for the Monetization add-on. |

### `GoogleCloudApigeeV1AdjustAppGroupBalanceRequest`

Request for AdjustAppGroupBalance.

| Property | Type | Description |
|----------|------|-------------|
| `adjustment` | `GoogleTypeMoney` | Required. * A positive value of `adjustment` means that that the API provider wants to adjust the... |

### `GoogleCloudApigeeV1AdjustDeveloperBalanceRequest`

Request for AdjustDeveloperBalance.

| Property | Type | Description |
|----------|------|-------------|
| `adjustment` | `GoogleTypeMoney` | * A positive value of `adjustment` means that that the API provider wants to adjust the balance f... |

### `GoogleCloudApigeeV1AdvancedApiOpsConfig`

Configuration for the Advanced API Ops add-on.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Flag that specifies whether the Advanced API Ops add-on is enabled. |

### `GoogleCloudApigeeV1Alias`

Reference to a certificate or key/certificate pair.

| Property | Type | Description |
|----------|------|-------------|
| `alias` | `string` | Resource ID for this alias. Values must match the regular expression `[^/]{1,255}`. |
| `certsInfo` | `GoogleCloudApigeeV1Certificate` | Chain of certificates under this alias. |
| `type` | `string` | Type of alias. |

### `GoogleCloudApigeeV1AliasRevisionConfig`

| Property | Type | Description |
|----------|------|-------------|
| `location` | `string` | Location of the alias file. For example, a Google Cloud Storage URI. |
| `name` | `string` | Name of the alias revision included in the keystore in the following format: `organizations/{org}... |
| `type` | `string` |  |

### `GoogleCloudApigeeV1AnalyticsConfig`

Configuration for the Analytics add-on.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Whether the Analytics add-on is enabled. |
| `expireTimeMillis` | `string` | Output only. Time at which the Analytics add-on expires in milliseconds since epoch. If unspecifi... |
| `state` | `string` | Output only. The state of the Analytics add-on. |
| `updateTime` | `string` | Output only. The latest update time. |

### `GoogleCloudApigeeV1ApiCategory`

`ApiCategory` represents an API category. [Catalog items](/apigee/docs/reference/apis/apigee/rest/v1/organizations.sites.apidocs) can be tagged with API categories; users viewing the API catalog in the portal will have the option to browse the catalog by category.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | ID of the category (a UUID). |
| `name` | `string` | Name of the category. |
| `siteId` | `string` | Name of the portal. |
| `updateTime` | `string` | Time the category was last modified in milliseconds since epoch. |

### `GoogleCloudApigeeV1ApiCategoryResponse`

The API category resource wrapped with response status, error_code, etc.

| Property | Type | Description |
|----------|------|-------------|
| `data` | `GoogleCloudApigeeV1ApiCategory` | The API category resource. |
| `errorCode` | `string` | Unique error code for the request, if any. |
| `message` | `string` | Description of the operation. |
| `requestId` | `string` | Unique ID of the request. |
| `status` | `string` | Status of the operation. |

### `GoogleCloudApigeeV1ApiDebugSession`

Session carries the debug session id and its creation time.

| Property | Type | Description |
|----------|------|-------------|
| `apiProxyRevisionId` | `string` | The revision ID of the deployed API proxy. |
| `createTime` | `string` | The first transaction creation timestamp in millisecond, recorded by UAP. |
| `environmentId` | `string` | The environment ID of the deployed API proxy. |
| `id` | `string` | The debug session ID. |

### `GoogleCloudApigeeV1ApiDoc`

`ApiDoc` represents an API catalog item. Catalog items are used in two ways in a portal: - Users can browse and interact with a visual representation of the API documentation - The `api_product_name` field provides a link to a backing [API product] (/apigee/docs/reference/apis/apigee/rest/v1/organizations.apiproducts). Through this link, portal users can create and manage developer apps linked to one or more API products.

| Property | Type | Description |
|----------|------|-------------|
| `anonAllowed` | `boolean` | Optional. Boolean flag that manages user access to the catalog item. When true, the catalog item ... |
| `apiProductName` | `string` | Required. Immutable. The `name` field of the associated [API product](/apigee/docs/reference/apis... |
| `categoryIds` | `array<string>` | Optional. The IDs of the API categories to which this catalog item belongs. |
| `description` | `string` | Optional. Description of the catalog item. Max length is 10,000 characters. |
| `edgeAPIProductName` | `string` | Optional. Immutable. DEPRECATED: use the `apiProductName` field instead |
| `graphqlEndpointUrl` | `string` | Optional. DEPRECATED: manage documentation through the `getDocumentation` and `updateDocumentatio... |
| `graphqlSchema` | `string` | Optional. DEPRECATED: manage documentation through the `getDocumentation` and `updateDocumentatio... |
| `graphqlSchemaDisplayName` | `string` | Optional. DEPRECATED: manage documentation through the `getDocumentation` and `updateDocumentatio... |
| `id` | `string` | Output only. The ID of the catalog item. |
| `imageUrl` | `string` | Optional. Location of the image used for the catalog item in the catalog. This can be either an i... |
| `modified` | `string` | Output only. Time the catalog item was last modified in milliseconds since epoch. |
| `published` | `boolean` | Optional. Denotes whether the catalog item is published to the portal or is in a draft state. Whe... |
| `requireCallbackUrl` | `boolean` | Optional. Whether a callback URL is required when this catalog item's API product is enabled in a... |
| `siteId` | `string` | Output only. The ID of the parent portal. |
| `specId` | `string` | Optional. DEPRECATED: DO NOT USE |
| `title` | `string` | Required. The user-facing name of the catalog item. `title` must be a non-empty string with a max... |
| `visibility` | `boolean` | Optional. DEPRECATED: use the `published` field instead |

### `GoogleCloudApigeeV1ApiDocDocumentation`

The documentation for a catalog item.

| Property | Type | Description |
|----------|------|-------------|
| `asyncApiDocumentation` | `GoogleCloudApigeeV1AsyncApiDocumentation` | Optional. AsyncAPI Specification documentation. |
| `graphqlDocumentation` | `GoogleCloudApigeeV1GraphqlDocumentation` | Optional. GraphQL documentation. |
| `oasDocumentation` | `GoogleCloudApigeeV1OASDocumentation` | Optional. OpenAPI Specification documentation. |

### `GoogleCloudApigeeV1ApiDocDocumentationResponse`

The catalog item documentation wrapped with response status, error_code, etc.

| Property | Type | Description |
|----------|------|-------------|
| `data` | `GoogleCloudApigeeV1ApiDocDocumentation` | Output only. The documentation resource. |
| `errorCode` | `string` | Output only. Unique error code for the request, if any. |
| `message` | `string` | Output only. Description of the operation. |
| `requestId` | `string` | Output only. Unique ID of the request. |
| `status` | `string` | Output only. Status of the operation. |

### `GoogleCloudApigeeV1ApiDocResponse`

The catalog item resource wrapped with response status, error_code, etc.

| Property | Type | Description |
|----------|------|-------------|
| `data` | `GoogleCloudApigeeV1ApiDoc` | The catalog item resource. |
| `errorCode` | `string` | Unique error code for the request, if any. |
| `message` | `string` | Description of the operation. |
| `requestId` | `string` | Unique ID of the request. |
| `status` | `string` | Status of the operation. |

### `GoogleCloudApigeeV1ApiProduct`

| Property | Type | Description |
|----------|------|-------------|
| `apiResources` | `array<string>` | Comma-separated list of API resources to be bundled in the API product. By default, the resource ... |
| `approvalType` | `string` | Flag that specifies how API keys are approved to access the APIs defined by the API product. If s... |
| `attributes` | `array<GoogleCloudApigeeV1Attribute>` | Array of attributes that may be used to extend the default API product profile with customer-spec... |
| `createdAt` | `string` | Response only. Creation time of this environment as milliseconds since epoch. |
| `description` | `string` | Description of the API product. Include key information about the API product that is not capture... |
| `displayName` | `string` | Name displayed in the UI or developer portal to developers registering for API access. |
| `environments` | `array<string>` | Comma-separated list of environment names to which the API product is bound. Requests to environm... |
| `graphqlOperationGroup` | `GoogleCloudApigeeV1GraphQLOperationGroup` | Configuration used to group Apigee proxies or remote services with graphQL operation name, graphQ... |
| `grpcOperationGroup` | `GoogleCloudApigeeV1GrpcOperationGroup` | Optional. Configuration used to group Apigee proxies with gRPC services and method names. This gr... |
| `lastModifiedAt` | `string` | Response only. Modified time of this environment as milliseconds since epoch. |
| `llmOperationGroup` | `GoogleCloudApigeeV1LlmOperationGroup` | Optional. Configuration used to group Apigee proxies with resources, method types, LLM model and ... |
| `llmQuota` | `string` | Optional. Number of LLM tokens permitted per app by this API product for the specified `llm_quota... |
| `llmQuotaInterval` | `string` | Optional. Time interval over which the number of tokens from LLM responses is calculated. |
| `llmQuotaTimeUnit` | `string` | Optional. Time unit defined for the `llm_quota_interval`. Valid values include `minute`, `hour`, ... |
| `name` | `string` | Internal name of the API product. Characters you can use in the name are restricted to: `A-Z0-9._... |
| `operationGroup` | `GoogleCloudApigeeV1OperationGroup` | Configuration used to group Apigee proxies or remote services with resources, method types, and q... |
| `proxies` | `array<string>` | Comma-separated list of API proxy names to which this API product is bound. By specifying API pro... |
| `quota` | `string` | Number of request messages permitted per app by this API product for the specified `quotaInterval... |
| `quotaCounterScope` | `string` | Scope of the quota decides how the quota counter gets applied and evaluate for quota violation. I... |
| `quotaInterval` | `string` | Time interval over which the number of request messages is calculated. |
| `quotaTimeUnit` | `string` | Time unit defined for the `quotaInterval`. Valid values include `minute`, `hour`, `day`, or `month`. |
| `scopes` | `array<string>` | Comma-separated list of OAuth scopes that are validated at runtime. Apigee validates that the sco... |
| `space` | `string` | Optional. The resource ID of the parent Space. If not set, the parent resource will be the Organi... |

### `GoogleCloudApigeeV1ApiProductRef`

| Property | Type | Description |
|----------|------|-------------|
| `apiproduct` | `string` | Name of the API product. |
| `status` | `string` | Status of the API product. Valid values are `approved` or `revoked`. |

### `GoogleCloudApigeeV1ApiProxy`

Metadata describing the API proxy

| Property | Type | Description |
|----------|------|-------------|
| `apiProxyType` | `string` | Output only. The type of the API proxy. |
| `labels` | `object` | User labels applied to this API Proxy. |
| `latestRevisionId` | `string` | Output only. The id of the most recently created revision for this api proxy. |
| `metaData` | `GoogleCloudApigeeV1EntityMetadata` | Output only. Metadata describing the API proxy. |
| `name` | `string` | Output only. Name of the API proxy. |
| `readOnly` | `boolean` | Output only. Whether this proxy is read-only. A read-only proxy cannot have new revisions created... |
| `revision` | `array<string>` | Output only. List of revisions defined for the API proxy. |
| `space` | `string` | Optional. The id of the space this proxy is associated with. Any IAM policies applied to the spac... |

### `GoogleCloudApigeeV1ApiProxyRevision`

API proxy revision.

| Property | Type | Description |
|----------|------|-------------|
| `archive` | `string` | Output only. The archive that generated this proxy revision. This field is only present on proxy ... |
| `basepaths` | `array<string>` | Base URL of the API proxy. |
| `configurationVersion` | `GoogleCloudApigeeV1ConfigVersion` | Version of the API proxy configuration schema to which the API proxy conforms. Currently, the onl... |
| `contextInfo` | `string` | Revision number, app name, and organization for the API proxy. |
| `createdAt` | `string` | Time that the API proxy revision was created in milliseconds since epoch. |
| `description` | `string` | Description of the API proxy revision. |
| `displayName` | `string` | Human-readable name of the API proxy. |
| `entityMetaDataAsProperties` | `object` | Metadata describing the API proxy revision as a key-value map. |
| `hasExtensiblePolicy` | `boolean` | Output only. This field will be marked as true if revision contains any policies marked as extens... |
| `integrationEndpoints` | `array<string>` | List of IntegrationEndpoints in the '/integration-endpoints' directory of the API proxy. This is ... |
| `lastModifiedAt` | `string` | Time that the API proxy revision was last modified in milliseconds since epoch. |
| `name` | `string` | Name of the API proxy. |
| `policies` | `array<string>` | List of policy names included in the API proxy revision.. |
| `proxies` | `array<string>` | List of proxy names included in the API proxy revision. |
| `proxyEndpoints` | `array<string>` | List of ProxyEndpoints in the `/proxies` directory of the API proxy. Typically, this element is i... |
| `resourceFiles` | `GoogleCloudApigeeV1ResourceFiles` | List of resource files included in the API proxy revision. |
| `resources` | `array<string>` | List of the resources included in the API proxy revision formatted as "{type}://{name}". |
| `revision` | `string` | API proxy revision. |
| `sharedFlows` | `array<string>` | List of the shared flows included in the API proxy revision. |
| `spec` | `string` | OpenAPI Specification that is associated with the API proxy. The value is set to a URL or to a pa... |
| `targetEndpoints` | `array<string>` | List of TargetEndpoints in the `/targets` directory of the API proxy. Typically, this element is ... |
| `targetServers` | `array<string>` | List of TargetServers referenced in any TargetEndpoint in the API proxy. Typically, you will see ... |
| `targets` | `array<string>` | List of the targets included in the API proxy revision. |
| `teams` | `array<string>` | List of the teams included in the API proxy revision. |
| `type` | `string` | Type. Set to `Application`. Maintained for compatibility with the Apigee Edge API. |

### `GoogleCloudApigeeV1ApiSecurityConfig`

Configurations of the API Security add-on.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Flag that specifies whether the API security add-on is enabled. |
| `expiresAt` | `string` | Output only. Time at which the API Security add-on expires in milliseconds since epoch. If unspec... |

### `GoogleCloudApigeeV1ApiSecurityRuntimeConfig`

Response for GetApiSecurityRuntimeConfig[EnvironmentService.GetApiSecurityRuntimeConfig].

| Property | Type | Description |
|----------|------|-------------|
| `location` | `array<string>` | A list of up to 5 Cloud Storage Blobs that contain SecurityActions. |
| `name` | `string` | Name of the environment API Security Runtime configuration resource. Format: `organizations/{org}... |
| `revisionId` | `string` | Revision ID of the API Security Runtime configuration. The higher the value, the more recently th... |
| `uid` | `string` | Unique ID for the API Security Runtime configuration. The ID will only change if the environment ... |
| `updateTime` | `string` | Time that the API Security Runtime configuration was updated. |

### `GoogleCloudApigeeV1ApimServiceExtension`

APIM Service Extension is a resource under an Apigee Organization that is used to create APIM Service Extension to route traffic to existing X instances.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time that this resource was created on the server. |
| `extensionProcessor` | `string` | Required. Name of the proxy deployed in the Apigee X instance. |
| `extensions` | `array<GoogleCloudApigeeV1ApimServiceExtensionExtension>` | Optional. List of extensions that are part of the service extension. Refer to https://cloud.googl... |
| `lbForwardingRule` | `string` | Required. Name of the Google Cloud LB forwarding rule. Format: projects/{project}/regions/{region... |
| `name` | `string` | Identifier. unique name of the APIM service extension. The name must conform with RFC-1034, is re... |
| `network` | `string` | Required. The network where the forwarding rule is created. Format: projects/{project}/global/net... |
| `networkConfigs` | `array<GoogleCloudApigeeV1ApimServiceExtensionNetworkConfig>` | Required. List of network configurations for the APIM service extension. |
| `state` | `string` | Output only. State of the APIM service extension. Values other than `ACTIVE` mean the resource is... |
| `updateTime` | `string` | Output only. The time that this resource was updated on the server. |

### `GoogleCloudApigeeV1ApimServiceExtensionExtension`

Extension configuration for Apigee extension processor service extension.

| Property | Type | Description |
|----------|------|-------------|
| `failOpen` | `boolean` | Optional. Whether this request should fail open. |
| `hostname` | `string` | Required. One of the hostnames of Apigee EnvGroup where the proxy is deployed. This hostname (i.e... |
| `matchCondition` | `string` | Optional. Match Condition for CEL expression. Refer to https://cloud.google.com/service-extension... |
| `name` | `string` | Required. Name of the `LbTrafficExtension` resource. The name must conform with RFC-1034, is rest... |
| `supportedEvents` | `array<string>` | Optional. Supported events for the Service Extension. If not specified, all events are supported. |

### `GoogleCloudApigeeV1ApimServiceExtensionNetworkConfig`

Network configuration for the APIM service extension.

| Property | Type | Description |
|----------|------|-------------|
| `region` | `string` | Required. The region for the PSC NEG. |
| `subnet` | `string` | Required. The subnet for the PSC NEG. Format: projects/{project}/regions/{region}/subnetworks/{su... |

### `GoogleCloudApigeeV1App`

| Property | Type | Description |
|----------|------|-------------|
| `apiProducts` | `array<GoogleCloudApigeeV1ApiProductRef>` | List of API products associated with the app. |
| `appGroup` | `string` | Name of the AppGroup |
| `appId` | `string` | ID of the app. |
| `attributes` | `array<GoogleCloudApigeeV1Attribute>` | List of attributes. |
| `callbackUrl` | `string` | Callback URL used by OAuth 2.0 authorization servers to communicate authorization codes back to a... |
| `companyName` | `string` | Name of the company that owns the app. |
| `createdAt` | `string` | Output only. Unix time when the app was created. |
| `credentials` | `array<GoogleCloudApigeeV1Credential>` | Output only. Set of credentials for the app. Credentials are API key/secret pairs associated with... |
| `developerEmail` | `string` | Email of the developer. |
| `developerId` | `string` | ID of the developer. |
| `keyExpiresIn` | `string` | Duration, in milliseconds, of the consumer key that will be generated for the app. The default va... |
| `lastModifiedAt` | `string` | Output only. Last modified time as milliseconds since epoch. |
| `name` | `string` | Name of the app. |
| `scopes` | `array<string>` | Scopes to apply to the app. The specified scope names must already exist on the API product that ... |
| `status` | `string` | Status of the credential. |

### `GoogleCloudApigeeV1AppGroup`

AppGroup contains the request/response fields representing the logical grouping of apps. Note that appgroup_id, create_time and update_time cannot be changed by the user, and gets updated by the system. The name and the organization once provided cannot be edited subsequently.

| Property | Type | Description |
|----------|------|-------------|
| `appGroupId` | `string` | Output only. Internal identifier that cannot be edited |
| `attributes` | `array<GoogleCloudApigeeV1Attribute>` | A list of attributes |
| `channelId` | `string` | channel identifier identifies the owner maintaing this grouping. |
| `channelUri` | `string` | A reference to the associated storefront/marketplace. |
| `createdAt` | `string` | Output only. Created time as milliseconds since epoch. |
| `displayName` | `string` | app group name displayed in the UI |
| `email` | `string` | Optional. Email of the AppGroup. |
| `lastModifiedAt` | `string` | Output only. Modified time as milliseconds since epoch. |
| `name` | `string` | Immutable. Name of the AppGroup. Characters you can use in the name are restricted to: A-Z0-9._\-... |
| `organization` | `string` | Immutable. the org the app group is created |
| `status` | `string` | Valid values are `active` or `inactive`. Note that the status of the AppGroup should be updated v... |

### `GoogleCloudApigeeV1AppGroupApp`

Response for [GetAppGroupApp].[AppGroupApps.GetAppGroupApp], [CreateAppGroupAppRequest].[AppGroupApp.CreateAppGroupAppRequest] and [DeleteAppGroupApp].[AppGroupApp.DeleteAppGroupApp]

| Property | Type | Description |
|----------|------|-------------|
| `apiProducts` | `array<string>` | List of API products associated with the AppGroup app. |
| `appGroup` | `string` | Immutable. Name of the parent AppGroup whose resource name format is of syntax (organizations/*/a... |
| `appId` | `string` | Immutable. ID of the AppGroup app. |
| `attributes` | `array<GoogleCloudApigeeV1Attribute>` | List of attributes for the AppGroup app. |
| `callbackUrl` | `string` | Callback URL used by OAuth 2.0 authorization servers to communicate authorization codes back to A... |
| `createdAt` | `string` | Output only. Time the AppGroup app was created in milliseconds since epoch. |
| `credentials` | `array<GoogleCloudApigeeV1Credential>` | Output only. Set of credentials for the AppGroup app consisting of the consumer key/secret pairs ... |
| `keyExpiresIn` | `string` | Immutable. Expiration time, in seconds, for the consumer key that is generated for the AppGroup a... |
| `lastModifiedAt` | `string` | Output only. Time the AppGroup app was modified in milliseconds since epoch. |
| `name` | `string` | Immutable. Name of the AppGroup app whose resource name format is of syntax (organizations/*/appg... |
| `scopes` | `array<string>` | Scopes to apply to the AppGroup app. The specified scopes must already exist for the API product ... |
| `status` | `string` | Status of the App. Valid values include `approved` or `revoked`. |

### `GoogleCloudApigeeV1AppGroupAppKey`

AppGroupAppKey contains all the information associated with the credentials.

| Property | Type | Description |
|----------|------|-------------|
| `apiProducts` | `array<GoogleCloudApigeeV1APIProductAssociation>` | Output only. List of API products and its status for which the credential can be used. **Note**: ... |
| `attributes` | `array<GoogleCloudApigeeV1Attribute>` | List of attributes associated with the credential. |
| `consumerKey` | `string` | Immutable. Consumer key. |
| `consumerSecret` | `string` | Secret key. |
| `expiresAt` | `string` | Output only. Time the AppGroup app expires in milliseconds since epoch. |
| `expiresInSeconds` | `string` | Immutable. Expiration time, in seconds, for the consumer key. If not set or left to the default v... |
| `issuedAt` | `string` | Output only. Time the AppGroup app was created in milliseconds since epoch. |
| `scopes` | `array<string>` | Scopes to apply to the app. The specified scope names must already be defined for the API product... |
| `status` | `string` | Status of the credential. Valid values include `approved` or `revoked`. |

### `GoogleCloudApigeeV1AppGroupBalance`

AppGroupBalance for the AppGroup.

| Property | Type | Description |
|----------|------|-------------|
| `wallets` | `array<GoogleCloudApigeeV1AppGroupBalanceWallet>` | Output only. List of all wallets. Each individual wallet stores the account balance for a particu... |

### `GoogleCloudApigeeV1AppGroupBalanceWallet`

Wallet used to manage an account balance for a particular currency.

| Property | Type | Description |
|----------|------|-------------|
| `balance` | `GoogleTypeMoney` | Current remaining balance of the AppGroup for a particular currency. |
| `lastCreditTime` | `string` | Output only. Time at which the AppGroup last added credit to the account in milliseconds since ep... |

### `GoogleCloudApigeeV1AppGroupMonetizationConfig`

Monetization configuration for the AppGroup.

| Property | Type | Description |
|----------|------|-------------|
| `billingType` | `string` | Required. Billing type. |

### `GoogleCloudApigeeV1AppGroupSubscription`

AppGroup Subscription details.

| Property | Type | Description |
|----------|------|-------------|
| `apiproduct` | `string` | Required. Name of the API product for which the appgroup is purchasing a subscription. |
| `createdAt` | `string` | Output only. Time when the API product subscription was created in milliseconds since epoch. |
| `endTime` | `string` | Output only. Time when the API product subscription ends in milliseconds since epoch. |
| `lastModifiedAt` | `string` | Output only. Time when the API product subscription was last modified in milliseconds since epoch. |
| `name` | `string` | Output only. Name of the API product subscription. |
| `startTime` | `string` | Output only. Time when the API product subscription starts in milliseconds since epoch. |

### `GoogleCloudApigeeV1ArchiveDeployment`

Archive Deployment information.

| Property | Type | Description |
|----------|------|-------------|
| `createdAt` | `string` | Output only. The time at which the Archive Deployment was created in milliseconds since the epoch. |
| `gcsUri` | `string` | Input only. The Google Cloud Storage signed URL returned from GenerateUploadUrl and used to uploa... |
| `labels` | `object` | User-supplied key-value pairs used to organize ArchiveDeployments. Label keys must be between 1 a... |
| `name` | `string` | Name of the Archive Deployment in the following format: `organizations/{org}/environments/{env}/a... |
| `operation` | `string` | Output only. A reference to the LRO that created this Archive Deployment in the following format:... |
| `updatedAt` | `string` | Output only. The time at which the Archive Deployment was updated in milliseconds since the epoch. |

### `GoogleCloudApigeeV1AsyncApiDocumentation`

AsyncAPI Specification documentation for a catalog item.

| Property | Type | Description |
|----------|------|-------------|
| `spec` | `GoogleCloudApigeeV1DocumentationFile` | Required. The documentation file contents for the AsyncAPI Specification. JSON and YAML file form... |

### `GoogleCloudApigeeV1AsyncQuery`

| Property | Type | Description |
|----------|------|-------------|
| `created` | `string` | Creation time of the query. |
| `envgroupHostname` | `string` | Hostname is available only when query is executed at host level. |
| `error` | `string` | Error is set when query fails. |
| `executionTime` | `string` | ExecutionTime is available only after the query is completed. |
| `name` | `string` | Asynchronous Query Name. |
| `queryParams` | `GoogleCloudApigeeV1QueryMetadata` | Contains information like metrics, dimenstions etc of the AsyncQuery. |
| `reportDefinitionId` | `string` | Asynchronous Report ID. |
| `result` | `GoogleCloudApigeeV1AsyncQueryResult` | Result is available only after the query is completed. |
| `resultFileSize` | `string` | ResultFileSize is available only after the query is completed. |
| `resultRows` | `string` | ResultRows is available only after the query is completed. |
| `self` | `string` | Self link of the query. Example: `/organizations/myorg/environments/myenv/queries/9cfc0d85-0f30-4... |
| `state` | `string` | Query state could be "enqueued", "running", "completed", "failed". |
| `updated` | `string` | Last updated timestamp for the query. |

### `GoogleCloudApigeeV1AsyncQueryResult`

| Property | Type | Description |
|----------|------|-------------|
| `expires` | `string` | Query result will be unaccessable after this time. |
| `self` | `string` | Self link of the query results. Example: `/organizations/myorg/environments/myenv/queries/9cfc0d8... |

### `GoogleCloudApigeeV1AsyncQueryResultView`

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | Error code when there is a failure. |
| `error` | `string` | Error message when there is a failure. |
| `metadata` | `GoogleCloudApigeeV1QueryMetadata` | Metadata contains information like metrics, dimenstions etc of the AsyncQuery. |
| `rows` | `array<any>` | Rows of query result. Each row is a JSON object. Example: {sum(message_count): 1, developer_app: ... |
| `state` | `string` | State of retrieving ResultView. |

### `GoogleCloudApigeeV1Attribute`

Key-value pair to store extra metadata.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | API key of the attribute. |
| `value` | `string` | Value of the attribute. |

### `GoogleCloudApigeeV1Attributes`

| Property | Type | Description |
|----------|------|-------------|
| `attribute` | `array<GoogleCloudApigeeV1Attribute>` | List of attributes. |

### `GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsRequest`

Request for BatchComputeSecurityAssessmentResults.

| Property | Type | Description |
|----------|------|-------------|
| `apiHubApis` | `GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsRequestApiHubApiArray` | An array of API Hub APIs to assess. A maximum of 1 API can be assessed. |
| `apiHubGateways` | `GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsRequestApiHubGatewayArray` | An array of API Hub Gateways to assess. A maximum of 3 gateways can be assessed. |
| `include` | `GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsRequestResourceArray` | Include only these resources. |
| `includeAllResources` | `GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsRequestIncludeAll` | Include all resources under the scope. |
| `pageSize` | `integer` | Optional. The maximum number of results to return. The service may return fewer than this value. ... |
| `pageToken` | `string` | Optional. A page token, received from a previous `BatchComputeSecurityAssessmentResults` call. Pr... |
| `profile` | `string` | Required. Name of the profile that is used for computation. |
| `scope` | `string` | Optional. Scope of the resources for the computation. When computing scores for Apigee proxies, t... |

### `GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsRequestApiHubApiArray`

Message for the array of API Hub APIs.

| Property | Type | Description |
|----------|------|-------------|
| `apis` | `array<string>` | Required. The array of API Hub API IDs. Format: `projects/{project}/locations/{location}/apis/{api}` |

### `GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsRequestApiHubGatewayArray`

Message for the array of API Hub Gateways.

| Property | Type | Description |
|----------|------|-------------|
| `gateways` | `array<string>` | Required. The array of API Hub Gateway IDs. Format: `projects/{project}/locations/{location}/plug... |

### `GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsRequestIncludeAll`

Message for include_all_resources option.

### `GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsRequestResourceArray`

Message for the array of resources. For Apigee, the proxies are resources.

| Property | Type | Description |
|----------|------|-------------|
| `resources` | `array<GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsRequestResourceArrayResource>` | Required. The array of resources. For Apigee, the proxies are resources. |

### `GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsRequestResourceArrayResource`

Resource for which we are computing security assessment.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. Name of this resource. For an Apigee API Proxy, this should be the id of the API proxy.... |
| `type` | `string` | Required. Type of this resource. |

### `GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsResponse`

Response for BatchComputeSecurityAssessmentResults.

| Property | Type | Description |
|----------|------|-------------|
| `assessmentTime` | `string` | The time of the assessment api call. |
| `nextPageToken` | `string` | A token that can be sent as `page_token` to retrieve the next page. If this field is blank, there... |
| `securityAssessmentResults` | `array<GoogleCloudApigeeV1SecurityAssessmentResult>` | Default sort order is by resource name in alphabetic order. |

### `GoogleCloudApigeeV1BatchUpdateSecurityIncidentsRequest`

Request for BatchUpdateSecurityIncident.

| Property | Type | Description |
|----------|------|-------------|
| `requests` | `array<GoogleCloudApigeeV1UpdateSecurityIncidentRequest>` | Optional. Required. The request message specifying the resources to update. A maximum of 1000 can... |

### `GoogleCloudApigeeV1BatchUpdateSecurityIncidentsResponse`

Response for BatchUpdateSecurityIncident.

| Property | Type | Description |
|----------|------|-------------|
| `securityIncidents` | `array<GoogleCloudApigeeV1SecurityIncident>` | Output only. Updated security incidents |

### `GoogleCloudApigeeV1CanaryEvaluation`

CanaryEvaluation represents the canary analysis between two versions of the runtime that is serving requests.

| Property | Type | Description |
|----------|------|-------------|
| `control` | `string` | Required. The stable version that is serving requests. |
| `createTime` | `string` | Output only. Create time of the canary evaluation. |
| `endTime` | `string` | Required. End time for the evaluation's analysis. |
| `metricLabels` | `GoogleCloudApigeeV1CanaryEvaluationMetricLabels` | Required. Labels used to filter the metrics used for a canary evaluation. |
| `name` | `string` | Output only. Name of the canary evalution. |
| `startTime` | `string` | Required. Start time for the canary evaluation's analysis. |
| `state` | `string` | Output only. The current state of the canary evaluation. |
| `treatment` | `string` | Required. The newer version that is serving requests. |
| `verdict` | `string` | Output only. The resulting verdict of the canary evaluations: NONE, PASS, or FAIL. |

### `GoogleCloudApigeeV1CanaryEvaluationMetricLabels`

Labels that can be used to filter Apigee metrics.

| Property | Type | Description |
|----------|------|-------------|
| `env` | `string` | The environment ID associated with the metrics. |
| `instance_id` | `string` | Required. The instance ID associated with the metrics. In Apigee Hybrid, the value is configured ... |
| `location` | `string` | Required. The location associated with the metrics. |

### `GoogleCloudApigeeV1CertInfo`

X.509 certificate as defined in RFC 5280.

| Property | Type | Description |
|----------|------|-------------|
| `basicConstraints` | `string` | X.509 basic constraints extension. |
| `expiryDate` | `string` | X.509 `notAfter` validity period in milliseconds since epoch. |
| `isValid` | `string` | Flag that specifies whether the certificate is valid. Flag is set to `Yes` if the certificate is ... |
| `issuer` | `string` | X.509 issuer. |
| `publicKey` | `string` | Public key component of the X.509 subject public key info. |
| `serialNumber` | `string` | X.509 serial number. |
| `sigAlgName` | `string` | X.509 signatureAlgorithm. |
| `subject` | `string` | X.509 subject. |
| `subjectAlternativeNames` | `array<string>` | X.509 subject alternative names (SANs) extension. |
| `validFrom` | `string` | X.509 `notBefore` validity period in milliseconds since epoch. |
| `version` | `integer` | X.509 version. |

### `GoogleCloudApigeeV1Certificate`

| Property | Type | Description |
|----------|------|-------------|
| `certInfo` | `array<GoogleCloudApigeeV1CertInfo>` | Chain of certificates under this name. |

### `GoogleCloudApigeeV1CommonNameConfig`

| Property | Type | Description |
|----------|------|-------------|
| `matchWildCards` | `boolean` |  |
| `name` | `string` |  |

### `GoogleCloudApigeeV1ComputeEnvironmentScoresRequest`

Request for ComputeEnvironmentScores.

| Property | Type | Description |
|----------|------|-------------|
| `filters` | `array<GoogleCloudApigeeV1ComputeEnvironmentScoresRequestFilter>` | Optional. Filters are used to filter scored components. Return all the components if no filter is... |
| `pageSize` | `integer` | Optional. The maximum number of subcomponents to be returned in a single page. The service may re... |
| `pageToken` | `string` | Optional. A token that can be sent as `page_token` to retrieve the next page. If this field is om... |
| `timeRange` | `GoogleTypeInterval` | Required. Time range for score calculation. At most 14 days of scores will be returned, and both ... |

### `GoogleCloudApigeeV1ComputeEnvironmentScoresRequestFilter`

Filter scores by component path. Used custom filter instead of AIP-160 as the use cases are highly constrained and predictable.

| Property | Type | Description |
|----------|------|-------------|
| `scorePath` | `string` | Optional. Return scores for this component. Example: "/org@myorg/envgroup@myenvgroup/env@myenv/pr... |

### `GoogleCloudApigeeV1ComputeEnvironmentScoresResponse`

Response for ComputeEnvironmentScores.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A page token, received from a previous `ComputeScore` call. Provide this to retrieve the subseque... |
| `scores` | `array<GoogleCloudApigeeV1Score>` | List of scores. One score per day. |

### `GoogleCloudApigeeV1ConfigVersion`

Version of the API proxy configuration schema. Currently, only 4.0 is supported.

| Property | Type | Description |
|----------|------|-------------|
| `majorVersion` | `integer` | Major version of the API proxy configuration schema. |
| `minorVersion` | `integer` | Minor version of the API proxy configuration schema. |

### `GoogleCloudApigeeV1ConnectorsPlatformConfig`

Configuration for the Connectors Platform add-on.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Flag that specifies whether the Connectors Platform add-on is enabled. |
| `expiresAt` | `string` | Output only. Time at which the Connectors Platform add-on expires in milliseconds since epoch. If... |

### `GoogleCloudApigeeV1ControlPlaneAccess`

ControlPlaneAccess is the request body and response body of UpdateControlPlaneAccess. and the response body of GetControlPlaneAccess. The input identities contains an array of service accounts to grant access to the respective control plane resource, with each service account specified using the following format: `serviceAccount:`***service-account-name***. The ***service-account-name*** is formatted like an email address. For example: `my-control-plane-service_account@my_project_id.iam.gserviceaccount.com` You might specify multiple service accounts, for example, if you have multiple environments and wish to assign a unique service account to each one.

| Property | Type | Description |
|----------|------|-------------|
| `analyticsPublisherIdentities` | `array<string>` | Optional. Array of service accounts authorized to publish analytics data to the control plane (fo... |
| `name` | `string` | Identifier. The resource name of the ControlPlaneAccess. Format: "organizations/{org}/controlPlan... |
| `synchronizerIdentities` | `array<string>` | Optional. Array of service accounts to grant access to control plane resources (for the Synchroni... |

### `GoogleCloudApigeeV1Credential`

| Property | Type | Description |
|----------|------|-------------|
| `apiProducts` | `array<GoogleCloudApigeeV1ApiProductRef>` | List of API products this credential can be used for. |
| `attributes` | `array<GoogleCloudApigeeV1Attribute>` | List of attributes associated with this credential. |
| `consumerKey` | `string` | Consumer key. |
| `consumerSecret` | `string` | Secret key. |
| `expiresAt` | `string` | Time the credential will expire in milliseconds since epoch. |
| `issuedAt` | `string` | Time the credential was issued in milliseconds since epoch. |
| `scopes` | `array<string>` | List of scopes to apply to the app. Specified scopes must already exist on the API product that y... |
| `status` | `string` | Status of the credential. Valid values include `approved` or `revoked`. |

### `GoogleCloudApigeeV1CreditAppGroupBalanceRequest`

Request for CreditAppGroupBalance.

| Property | Type | Description |
|----------|------|-------------|
| `transactionAmount` | `GoogleTypeMoney` | Required. The amount of money to be credited. The wallet corresponding to the currency specified ... |
| `transactionId` | `string` | Required. Each transaction_id uniquely identifies a credit balance request. If multiple requests ... |

### `GoogleCloudApigeeV1CreditDeveloperBalanceRequest`

Request for CreditDeveloperBalance.

| Property | Type | Description |
|----------|------|-------------|
| `transactionAmount` | `GoogleTypeMoney` | The amount of money to be credited. The wallet corresponding to the currency specified within `tr... |
| `transactionId` | `string` | Each transaction_id uniquely identifies a credit balance request. If multiple requests are receiv... |

### `GoogleCloudApigeeV1CustomReport`

| Property | Type | Description |
|----------|------|-------------|
| `chartType` | `string` | This field contains the chart type for the report |
| `comments` | `array<string>` | Legacy field: not used. This field contains a list of comments associated with custom report |
| `createdAt` | `string` | Output only. Unix time when the app was created json key: createdAt |
| `dimensions` | `array<string>` | This contains the list of dimensions for the report |
| `displayName` | `string` | This is the display name for the report |
| `environment` | `string` | Output only. Environment name |
| `filter` | `string` | This field contains the filter expression |
| `fromTime` | `string` | Legacy field: not used. Contains the from time for the report |
| `lastModifiedAt` | `string` | Output only. Modified time of this entity as milliseconds since epoch. json key: lastModifiedAt |
| `lastViewedAt` | `string` | Output only. Last viewed time of this entity as milliseconds since epoch |
| `limit` | `string` | Legacy field: not used This field contains the limit for the result retrieved |
| `metrics` | `array<GoogleCloudApigeeV1CustomReportMetric>` | Required. This contains the list of metrics |
| `name` | `string` | Required. Unique identifier for the report T his is a legacy field used to encode custom report u... |
| `offset` | `string` | Legacy field: not used. This field contains the offset for the data |
| `organization` | `string` | Output only. Organization name |
| `properties` | `array<GoogleCloudApigeeV1ReportProperty>` | This field contains report properties such as ui metadata etc. |
| `sortByCols` | `array<string>` | Legacy field: not used much. Contains the list of sort by columns |
| `sortOrder` | `string` | Legacy field: not used much. Contains the sort order for the sort columns |
| `tags` | `array<string>` | Legacy field: not used. This field contains a list of tags associated with custom report |
| `timeUnit` | `string` | This field contains the time unit of aggregation for the report |
| `toTime` | `string` | Legacy field: not used. Contains the end time for the report |
| `topk` | `string` | Legacy field: not used. This field contains the top k parameter value for restricting the result |

### `GoogleCloudApigeeV1CustomReportMetric`

This encapsulates a metric property of the form sum(message_count) where name is message_count and function is sum

| Property | Type | Description |
|----------|------|-------------|
| `function` | `string` | aggregate function |
| `name` | `string` | name of the metric |

### `GoogleCloudApigeeV1DataCollector`

Data collector configuration.

| Property | Type | Description |
|----------|------|-------------|
| `createdAt` | `string` | Output only. The time at which the data collector was created in milliseconds since the epoch. |
| `description` | `string` | A description of the data collector. |
| `lastModifiedAt` | `string` | Output only. The time at which the Data Collector was last updated in milliseconds since the epoch. |
| `name` | `string` | ID of the data collector. Must begin with `dc_`. |
| `type` | `string` | Immutable. The type of data this data collector will collect. |

### `GoogleCloudApigeeV1DataCollectorConfig`

Data collector and its configuration.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Name of the data collector in the following format: `organizations/{org}/datacollectors/{datacoll... |
| `type` | `string` | Data type accepted by the data collector. |

### `GoogleCloudApigeeV1Datastore`

The data store defines the connection to export data repository (Cloud Storage, BigQuery), including the credentials used to access the data repository.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Datastore create time, in milliseconds since the epoch of 1970-01-01T00:00:00Z |
| `datastoreConfig` | `GoogleCloudApigeeV1DatastoreConfig` | Datastore Configurations. |
| `displayName` | `string` | Required. Display name in UI |
| `lastUpdateTime` | `string` | Output only. Datastore last update time, in milliseconds since the epoch of 1970-01-01T00:00:00Z |
| `org` | `string` | Output only. Organization that the datastore belongs to |
| `self` | `string` | Output only. Resource link of Datastore. Example: `/organizations/{org}/analytics/datastores/{uuid}` |
| `targetType` | `string` | Destination storage type. Supported types `gcs` or `bigquery`. |

### `GoogleCloudApigeeV1DatastoreConfig`

Configuration detail for datastore

| Property | Type | Description |
|----------|------|-------------|
| `bucketName` | `string` | Name of the Cloud Storage bucket. Required for `gcs` target_type. |
| `datasetName` | `string` | BigQuery dataset name Required for `bigquery` target_type. |
| `path` | `string` | Path of Cloud Storage bucket Required for `gcs` target_type. |
| `projectId` | `string` | Required. Google Cloud project in which the datastore exists |
| `tablePrefix` | `string` | Prefix of BigQuery table Required for `bigquery` target_type. |

### `GoogleCloudApigeeV1DateRange`

Date range of the data to export.

| Property | Type | Description |
|----------|------|-------------|
| `end` | `string` | Required. End date (exclusive) of the data to export in the format `yyyy-mm-dd`. The date range e... |
| `start` | `string` | Required. Start date of the data to export in the format `yyyy-mm-dd`. The date range begins at 0... |

### `GoogleCloudApigeeV1DebugMask`

| Property | Type | Description |
|----------|------|-------------|
| `faultJSONPaths` | `array<string>` | List of JSON paths that specify the JSON elements to be filtered from JSON payloads in error flows. |
| `faultXPaths` | `array<string>` | List of XPaths that specify the XML elements to be filtered from XML payloads in error flows. |
| `name` | `string` | Name of the debug mask. |
| `namespaces` | `object` | Map of namespaces to URIs. |
| `requestJSONPaths` | `array<string>` | List of JSON paths that specify the JSON elements to be filtered from JSON request message payloads. |
| `requestXPaths` | `array<string>` | List of XPaths that specify the XML elements to be filtered from XML request message payloads. |
| `responseJSONPaths` | `array<string>` | List of JSON paths that specify the JSON elements to be filtered from JSON response message paylo... |
| `responseXPaths` | `array<string>` | List of XPaths that specify the XML elements to be filtered from XML response message payloads. |
| `variables` | `array<string>` | List of variables that should be masked from the debug output. |

### `GoogleCloudApigeeV1DebugSession`

| Property | Type | Description |
|----------|------|-------------|
| `count` | `integer` | Optional. The number of request to be traced. Min = 1, Max = 15, Default = 10. |
| `createTime` | `string` | Output only. The first transaction creation timestamp, recorded by UAP. |
| `filter` | `string` | Optional. A conditional statement which is evaluated against the request message to determine if ... |
| `name` | `string` | A unique ID for this DebugSession. |
| `timeout` | `string` | Optional. The time in seconds after which this DebugSession should end. This value will override ... |
| `tracesize` | `integer` | Optional. The maximum number of bytes captured from the response payload. Min = 0, Max = 5120, De... |
| `validity` | `integer` | Optional. The length of time, in seconds, that this debug session is valid, starting from when it... |

### `GoogleCloudApigeeV1DebugSessionTransaction`

A transaction contains all of the debug information of the entire message flow of an API call processed by the runtime plane. The information is collected and recorded at critical points of the message flow in the runtime apiproxy.

| Property | Type | Description |
|----------|------|-------------|
| `completed` | `boolean` | Flag indicating whether a transaction is completed or not |
| `point` | `array<GoogleCloudApigeeV1Point>` | List of debug data collected by runtime plane at various defined points in the flow. |

### `GoogleCloudApigeeV1DeleteCustomReportResponse`

| Property | Type | Description |
|----------|------|-------------|
| `message` | `string` | The response contains only a message field. |

### `GoogleCloudApigeeV1DeleteResponse`

Response for certain delete operations.

| Property | Type | Description |
|----------|------|-------------|
| `errorCode` | `string` | Unique error code for the request, if any. |
| `gcpResource` | `string` | Google Cloud name of deleted resource. |
| `message` | `string` | Description of the operation. |
| `requestId` | `string` | Unique ID of the request. |
| `status` | `string` | Status of the operation. |

### `GoogleCloudApigeeV1Deployment`

Deployment represents a deployment of an API proxy or shared flow.

| Property | Type | Description |
|----------|------|-------------|
| `apiProxy` | `string` | API proxy. |
| `deployStartTime` | `string` | Time the API proxy was marked `deployed` in the control plane in millisconds since epoch. |
| `environment` | `string` | Environment. |
| `errors` | `array<GoogleRpcStatus>` | Errors reported for this deployment. Populated only when state == ERROR. **Note**: This field is ... |
| `instances` | `array<GoogleCloudApigeeV1InstanceDeploymentStatus>` | Status reported by each runtime instance. **Note**: This field is displayed only when viewing dep... |
| `pods` | `array<GoogleCloudApigeeV1PodStatus>` | Status reported by runtime pods. **Note**: **This field is deprecated**. Runtime versions 1.3 and... |
| `proxyDeploymentType` | `string` | Output only. The type of the deployment (standard or extensible) Deployed proxy revision will be ... |
| `revision` | `string` | API proxy revision. |
| `routeConflicts` | `array<GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict>` | Conflicts in the desired state routing configuration. The presence of conflicts does not cause th... |
| `serviceAccount` | `string` | The full resource name of Cloud IAM Service Account that this deployment is using, eg, `projects/... |
| `state` | `string` | Current state of the deployment. **Note**: This field is displayed only when viewing deployment s... |

### `GoogleCloudApigeeV1DeploymentChangeReport`

Response for GenerateDeployChangeReport and GenerateUndeployChangeReport. This report contains any validation failures that would cause the deployment to be rejected, as well changes and conflicts in routing that may occur due to the new deployment. The existence of a routing warning does not necessarily imply that the deployment request is bad, if the desired state of the deployment request is to effect a routing change. The primary purposes of the routing messages are: 1) To inform users of routing changes that may have an effect on traffic currently being routed to other existing deployments. 2) To warn users if some base path in the proxy will not receive traffic due to an existing deployment having already claimed that base path. The presence of routing conflicts/changes will not cause non-dry-run DeployApiProxy/UndeployApiProxy requests to be rejected.

| Property | Type | Description |
|----------|------|-------------|
| `routingChanges` | `array<GoogleCloudApigeeV1DeploymentChangeReportRoutingChange>` | All routing changes that may result from a deployment request. |
| `routingConflicts` | `array<GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict>` | All base path conflicts detected for a deployment request. |
| `validationErrors` | `GoogleRpcPreconditionFailure` | Validation errors that would cause the deployment change request to be rejected. |

### `GoogleCloudApigeeV1DeploymentChangeReportRoutingChange`

Describes a potential routing change that may occur as a result of some deployment operation.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Human-readable description of this routing change. |
| `environmentGroup` | `string` | Name of the environment group affected by this routing change. |
| `fromDeployment` | `GoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment` | Base path/deployment that may stop receiving some traffic. |
| `shouldSequenceRollout` | `boolean` | Set to `true` if using sequenced rollout would make this routing change safer. **Note**: This doe... |
| `toDeployment` | `GoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment` | Base path/deployment that may start receiving that traffic. May be null if no deployment is able ... |

### `GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict`

Describes a routing conflict that may cause a deployment not to receive traffic at some base path.

| Property | Type | Description |
|----------|------|-------------|
| `conflictingDeployment` | `GoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment` | Existing base path/deployment causing the conflict. |
| `description` | `string` | Human-readable description of this conflict. |
| `environmentGroup` | `string` | Name of the environment group in which this conflict exists. |

### `GoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment`

Tuple representing a base path and the deployment containing it.

| Property | Type | Description |
|----------|------|-------------|
| `apiProxy` | `string` | Name of the deployed API proxy revision containing the base path. |
| `basepath` | `string` | Base path receiving traffic. |
| `environment` | `string` | Name of the environment in which the proxy is deployed. |
| `revision` | `string` | Name of the deployed API proxy revision containing the base path. |

### `GoogleCloudApigeeV1DeploymentConfig`

NEXT ID: 11

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `object` | Additional key-value metadata for the deployment. |
| `basePath` | `string` | Base path where the application will be hosted. Defaults to "/". |
| `deploymentGroups` | `array<string>` | The list of deployment groups in which this proxy should be deployed. Not currently populated for... |
| `endpoints` | `object` | A mapping from basepaths to proxy endpoint names in this proxy. Not populated for shared flows. |
| `location` | `string` | Location of the API proxy bundle as a URI. |
| `name` | `string` | Name of the API or shared flow revision to be deployed in the following format: `organizations/{o... |
| `proxyUid` | `string` | Unique ID of the API proxy revision. |
| `serviceAccount` | `string` | The service account identity associated with this deployment. If non-empty, will be in the follow... |
| `uid` | `string` | Unique ID. The ID will only change if the deployment is deleted and recreated. |

### `GoogleCloudApigeeV1DeploymentGroupConfig`

DeploymentGroupConfig represents a deployment group that should be present in a particular environment.

| Property | Type | Description |
|----------|------|-------------|
| `deploymentGroupType` | `string` | Type of the deployment group, which will be either Standard or Extensible. |
| `name` | `string` | Name of the deployment group in the following format: `organizations/{org}/environments/{env}/dep... |
| `revisionId` | `string` | Revision number which can be used by the runtime to detect if the deployment group has changed be... |
| `uid` | `string` | Unique ID. The ID will only change if the deployment group is deleted and recreated. |

### `GoogleCloudApigeeV1Developer`

| Property | Type | Description |
|----------|------|-------------|
| `accessType` | `string` | Access type. |
| `appFamily` | `string` | Developer app family. |
| `apps` | `array<string>` | List of apps associated with the developer. |
| `attributes` | `array<GoogleCloudApigeeV1Attribute>` | Optional. Developer attributes (name/value pairs). The custom attribute limit is 18. |
| `companies` | `array<string>` | List of companies associated with the developer. |
| `createdAt` | `string` | Output only. Time at which the developer was created in milliseconds since epoch. |
| `developerId` | `string` | ID of the developer. **Note**: IDs are generated internally by Apigee and are not guaranteed to s... |
| `email` | `string` | Required. Email address of the developer. This value is used to uniquely identify the developer i... |
| `firstName` | `string` | Required. First name of the developer. |
| `lastModifiedAt` | `string` | Output only. Time at which the developer was last modified in milliseconds since epoch. |
| `lastName` | `string` | Required. Last name of the developer. |
| `organizationName` | `string` | Output only. Name of the Apigee organization in which the developer resides. |
| `status` | `string` | Output only. Status of the developer. Valid values are `active` and `inactive`. |
| `userName` | `string` | Required. User name of the developer. Not used by Apigee hybrid. |

### `GoogleCloudApigeeV1DeveloperApp`

| Property | Type | Description |
|----------|------|-------------|
| `apiProducts` | `array<string>` | List of API products associated with the developer app. |
| `appFamily` | `string` | Developer app family. |
| `appId` | `string` | ID of the developer app. This ID is not user specified but is automatically generated on app crea... |
| `attributes` | `array<GoogleCloudApigeeV1Attribute>` | List of attributes for the developer app. |
| `callbackUrl` | `string` | Callback URL used by OAuth 2.0 authorization servers to communicate authorization codes back to d... |
| `createdAt` | `string` | Output only. Time the developer app was created in milliseconds since epoch. |
| `credentials` | `array<GoogleCloudApigeeV1Credential>` | Output only. Set of credentials for the developer app consisting of the consumer key/secret pairs... |
| `developerId` | `string` | ID of the developer. |
| `keyExpiresIn` | `string` | Expiration time, in milliseconds, for the consumer key that is generated for the developer app. I... |
| `lastModifiedAt` | `string` | Output only. Time the developer app was modified in milliseconds since epoch. |
| `name` | `string` | Name of the developer app. |
| `scopes` | `array<string>` | Scopes to apply to the developer app. The specified scopes must already exist for the API product... |
| `status` | `string` | Status of the credential. Valid values include `approved` or `revoked`. |

### `GoogleCloudApigeeV1DeveloperAppKey`

| Property | Type | Description |
|----------|------|-------------|
| `apiProducts` | `array<any>` | List of API products for which the credential can be used. **Note**: Do not specify the list of A... |
| `attributes` | `array<GoogleCloudApigeeV1Attribute>` | List of attributes associated with the credential. |
| `consumerKey` | `string` | Consumer key. |
| `consumerSecret` | `string` | Secret key. |
| `expiresAt` | `string` | Time the developer app expires in milliseconds since epoch. |
| `expiresInSeconds` | `string` | Input only. Expiration time, in seconds, for the consumer key. If not set or left to the default ... |
| `issuedAt` | `string` | Time the developer app was created in milliseconds since epoch. |
| `scopes` | `array<string>` | Scopes to apply to the app. The specified scope names must already be defined for the API product... |
| `status` | `string` | Status of the credential. Valid values include `approved` or `revoked`. |

### `GoogleCloudApigeeV1DeveloperBalance`

Account balance for the developer.

| Property | Type | Description |
|----------|------|-------------|
| `wallets` | `array<GoogleCloudApigeeV1DeveloperBalanceWallet>` | Output only. List of all wallets. Each individual wallet stores the account balance for a particu... |

### `GoogleCloudApigeeV1DeveloperBalanceWallet`

Wallet used to manage an account balance for a particular currency.

| Property | Type | Description |
|----------|------|-------------|
| `balance` | `GoogleTypeMoney` | Current remaining balance of the developer for a particular currency. |
| `lastCreditTime` | `string` | Output only. Time at which the developer last added credit to the account in milliseconds since e... |

### `GoogleCloudApigeeV1DeveloperMonetizationConfig`

Monetization configuration for the developer.

| Property | Type | Description |
|----------|------|-------------|
| `billingType` | `string` | Billing type. |

### `GoogleCloudApigeeV1DeveloperSubscription`

Structure of a DeveloperSubscription.

| Property | Type | Description |
|----------|------|-------------|
| `apiproduct` | `string` | Name of the API product for which the developer is purchasing a subscription. |
| `createdAt` | `string` | Output only. Time when the API product subscription was created in milliseconds since epoch. |
| `endTime` | `string` | Time when the API product subscription ends in milliseconds since epoch. |
| `lastModifiedAt` | `string` | Output only. Time when the API product subscription was last modified in milliseconds since epoch. |
| `name` | `string` | Output only. Name of the API product subscription. |
| `startTime` | `string` | Time when the API product subscription starts in milliseconds since epoch. |

### `GoogleCloudApigeeV1DimensionMetric`

Encapsulates a metric grouped by dimension.

| Property | Type | Description |
|----------|------|-------------|
| `individualNames` | `array<string>` | Individual dimension names. E.g. ["dim1_name", "dim2_name"]. |
| `metrics` | `array<GoogleCloudApigeeV1Metric>` | List of metrics. |
| `name` | `string` | Comma joined dimension names. E.g. "dim1_name,dim2_name". Deprecated. If name already has comma b... |

### `GoogleCloudApigeeV1DisableSecurityActionRequest`

Message to disable an enabled SecurityAction.

### `GoogleCloudApigeeV1DnsZone`

A DNS zone is a resource under an Apigee organization that is used to create a DNS peering with Apigee's network. DNS peering will let Apigee instances resolve the hostnames created in a peered network.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time that this resource was created on the server. |
| `description` | `string` | Required. Description of the resource. String of at most 1024 characters associated with this res... |
| `domain` | `string` | Required. The domain name for hosts in this private zone, for instance "example.com.". |
| `name` | `string` | Identifier. Unique name for the resource. Defined by the server Format: "organizations/{organizat... |
| `peeringConfig` | `GoogleCloudApigeeV1DnsZonePeeringConfig` | DNS PEERING zone configuration. |
| `state` | `string` | Output only. State of the DNS Peering. Values other than `ACTIVE` mean the resource is not ready ... |
| `updateTime` | `string` | Output only. The time that this resource was updated on the server. |

### `GoogleCloudApigeeV1DnsZonePeeringConfig`

Fields for DNS PEERING zone.

| Property | Type | Description |
|----------|------|-------------|
| `targetNetworkId` | `string` | Required. The VPC network where the records for that private DNS zone's namespace are available. ... |
| `targetProjectId` | `string` | Required. The ID of the project that contains the producer VPC network. |

### `GoogleCloudApigeeV1DocumentationFile`

Documentation file contents for a catalog item.

| Property | Type | Description |
|----------|------|-------------|
| `contents` | `string` | Required. The file contents. The max size is 4 MB. |
| `displayName` | `string` | Required. A display name for the file, shown in the management UI. Max length is 255 characters. |

### `GoogleCloudApigeeV1EnableSecurityActionRequest`

Message to enable a disabled SecurityAction.

### `GoogleCloudApigeeV1EndpointAttachment`

Apigee endpoint attachment. For more information, see [Southbound networking patterns] (https://cloud.google.com/apigee/docs/api-platform/architecture/southbound-networking-patterns-endpoints).

| Property | Type | Description |
|----------|------|-------------|
| `connectionState` | `string` | Output only. State of the endpoint attachment connection to the service attachment. |
| `host` | `string` | Output only. Host that can be used in either the HTTP target endpoint directly or as the host in ... |
| `location` | `string` | Required. Location of the endpoint attachment. |
| `name` | `string` | Name of the endpoint attachment. Use the following structure in your request: `organizations/{org... |
| `serviceAttachment` | `string` | Format: projects/*/regions/*/serviceAttachments/* |
| `state` | `string` | Output only. State of the endpoint attachment. Values other than `ACTIVE` mean the resource is no... |

### `GoogleCloudApigeeV1EndpointChainingRule`

EndpointChainingRule specifies the proxies contained in a particular deployment group, so that other deployment groups can find them in chaining calls.

| Property | Type | Description |
|----------|------|-------------|
| `deploymentGroup` | `string` | The deployment group to target for cross-shard chaining calls to these proxies. |
| `proxyIds` | `array<string>` | List of proxy ids which may be found in the given deployment group. |

### `GoogleCloudApigeeV1EntityMetadata`

Metadata common to many entities in this API.

| Property | Type | Description |
|----------|------|-------------|
| `createdAt` | `string` | Time at which the API proxy was created, in milliseconds since epoch. |
| `lastModifiedAt` | `string` | Time at which the API proxy was most recently modified, in milliseconds since epoch. |
| `subType` | `string` | The type of entity described |

### `GoogleCloudApigeeV1Environment`

| Property | Type | Description |
|----------|------|-------------|
| `apiProxyType` | `string` | Optional. API Proxy type supported by the environment. The type can be set when creating the Envi... |
| `clientIpResolutionConfig` | `GoogleCloudApigeeV1EnvironmentClientIPResolutionConfig` | Optional. The algorithm to resolve IP. This will affect Analytics, API Security, and other featur... |
| `createdAt` | `string` | Output only. Creation time of this environment as milliseconds since epoch. |
| `deploymentType` | `string` | Optional. Deployment type supported by the environment. The deployment type can be set when creat... |
| `description` | `string` | Optional. Description of the environment. |
| `displayName` | `string` | Optional. Display name for this environment. |
| `forwardProxyUri` | `string` | Optional. URI of the forward proxy to be applied to the runtime instances in this environment. Mu... |
| `hasAttachedFlowHooks` | `boolean` |  |
| `lastModifiedAt` | `string` | Output only. Last modification time of this environment as milliseconds since epoch. |
| `name` | `string` | Required. Name of the environment. Values must match the regular expression `^[.\\p{Alnum}-_]{1,2... |
| `nodeConfig` | `GoogleCloudApigeeV1NodeConfig` | Optional. NodeConfig of the environment. |
| `properties` | `GoogleCloudApigeeV1Properties` | Optional. Key-value pairs that may be used for customizing the environment. |
| `state` | `string` | Output only. State of the environment. Values other than ACTIVE means the resource is not ready t... |
| `type` | `string` | Optional. EnvironmentType selected for the environment. |

### `GoogleCloudApigeeV1EnvironmentClientIPResolutionConfig`

Configuration for resolving the client ip.

| Property | Type | Description |
|----------|------|-------------|
| `headerIndexAlgorithm` | `GoogleCloudApigeeV1EnvironmentClientIPResolutionConfigHeaderIndexAlgorithm` | Resolves the client ip based on a custom header. |

### `GoogleCloudApigeeV1EnvironmentClientIPResolutionConfigHeaderIndexAlgorithm`

Resolves the client ip based on a custom header.

| Property | Type | Description |
|----------|------|-------------|
| `ipHeaderIndex` | `integer` | Required. The index of the ip in the header. Positive indices 0, 1, 2, 3 chooses indices from the... |
| `ipHeaderName` | `string` | Required. The name of the header to extract the client ip from. We are currently only supporting ... |

### `GoogleCloudApigeeV1EnvironmentConfig`

| Property | Type | Description |
|----------|------|-------------|
| `addonsConfig` | `GoogleCloudApigeeV1RuntimeAddonsConfig` | The latest runtime configurations for add-ons. |
| `arcConfigLocation` | `string` | The location for the config blob of API Runtime Control, aka Envoy Adapter, for op-based authenti... |
| `clientIpResolutionConfig` | `GoogleCloudApigeeV1EnvironmentConfigClientIPResolutionConfig` | The algorithm to resolve IP. |
| `createTime` | `string` | Time that the environment configuration was created. |
| `dataCollectors` | `array<GoogleCloudApigeeV1DataCollectorConfig>` | List of data collectors used by the deployments in the environment. |
| `debugMask` | `GoogleCloudApigeeV1DebugMask` | Debug mask that applies to all deployments in the environment. |
| `deploymentGroups` | `array<GoogleCloudApigeeV1DeploymentGroupConfig>` | List of deployment groups in the environment. |
| `deployments` | `array<GoogleCloudApigeeV1DeploymentConfig>` | List of deployments in the environment. |
| `envScopedRevisionId` | `string` | Revision ID for environment-scoped resources (e.g. target servers, keystores) in this config. Thi... |
| `featureFlags` | `object` | Feature flags inherited from the organization and environment. |
| `flowhooks` | `array<GoogleCloudApigeeV1FlowHookConfig>` | List of flow hooks in the environment. |
| `forwardProxyUri` | `string` | The forward proxy's url to be used by the runtime. When set, runtime will send requests to the ta... |
| `gatewayConfigLocation` | `string` | The location for the gateway config blob as a URI, e.g. a Cloud Storage URI. This is only used by... |
| `keystores` | `array<GoogleCloudApigeeV1KeystoreConfig>` | List of keystores in the environment. |
| `name` | `string` | Name of the environment configuration in the following format: `organizations/{org}/environments/... |
| `provider` | `string` | Used by the Control plane to add context information to help detect the source of the document du... |
| `pubsubTopic` | `string` | Name of the PubSub topic for the environment. |
| `resourceReferences` | `array<GoogleCloudApigeeV1ReferenceConfig>` | List of resource references in the environment. |
| `resources` | `array<GoogleCloudApigeeV1ResourceConfig>` | List of resource versions in the environment. |
| `revisionId` | `string` | Revision ID of the environment configuration. The higher the value, the more recently the configu... |
| `sequenceNumber` | `string` | DEPRECATED: Use revision_id. |
| `targets` | `array<GoogleCloudApigeeV1TargetServerConfig>` | List of target servers in the environment. Disabled target servers are not displayed. |
| `traceConfig` | `GoogleCloudApigeeV1RuntimeTraceConfig` | Trace configurations. Contains config for the environment and config overrides for specific API p... |
| `uid` | `string` | Unique ID for the environment configuration. The ID will only change if the environment is delete... |

### `GoogleCloudApigeeV1EnvironmentConfigClientIPResolutionConfig`

Configuration for resolving the client ip.

| Property | Type | Description |
|----------|------|-------------|
| `headerIndexAlgorithm` | `GoogleCloudApigeeV1EnvironmentConfigClientIPResolutionConfigHeaderIndexAlgorithm` | Resolves the client ip based on a custom header. |

### `GoogleCloudApigeeV1EnvironmentConfigClientIPResolutionConfigHeaderIndexAlgorithm`

Resolves the client ip based on a custom header.

| Property | Type | Description |
|----------|------|-------------|
| `ipHeaderIndex` | `integer` | The index of the ip in the header. (By default, value is 0 if missing) |
| `ipHeaderName` | `string` | The name of the header to extract the client ip from. |

### `GoogleCloudApigeeV1EnvironmentGroup`

EnvironmentGroup configuration. An environment group is used to group one or more Apigee environments under a single host name.

| Property | Type | Description |
|----------|------|-------------|
| `createdAt` | `string` | Output only. The time at which the environment group was created as milliseconds since epoch. |
| `hostnames` | `array<string>` | Required. Host names for this environment group. |
| `lastModifiedAt` | `string` | Output only. The time at which the environment group was last updated as milliseconds since epoch. |
| `name` | `string` | ID of the environment group. |
| `state` | `string` | Output only. State of the environment group. Values other than ACTIVE means the resource is not r... |

### `GoogleCloudApigeeV1EnvironmentGroupAttachment`

EnvironmentGroupAttachment is a resource which defines an attachment of an environment to an environment group.

| Property | Type | Description |
|----------|------|-------------|
| `createdAt` | `string` | Output only. The time at which the environment group attachment was created as milliseconds since... |
| `environment` | `string` | Required. ID of the attached environment. |
| `environmentGroupId` | `string` | Output only. ID of the environment group. |
| `name` | `string` | ID of the environment group attachment. |

### `GoogleCloudApigeeV1EnvironmentGroupConfig`

EnvironmentGroupConfig is a revisioned snapshot of an EnvironmentGroup and its associated routing rules.

| Property | Type | Description |
|----------|------|-------------|
| `endpointChainingRules` | `array<GoogleCloudApigeeV1EndpointChainingRule>` | A list of proxies in each deployment group for proxy chaining calls. |
| `hostnames` | `array<string>` | Host names for the environment group. |
| `location` | `string` | When this message appears in the top-level IngressConfig, this field will be populated in lieu of... |
| `name` | `string` | Name of the environment group in the following format: `organizations/{org}/envgroups/{envgroup}`. |
| `revisionId` | `string` | Revision id that defines the ordering of the EnvironmentGroupConfig resource. The higher the revi... |
| `routingRules` | `array<GoogleCloudApigeeV1RoutingRule>` | Ordered list of routing rules defining how traffic to this environment group's hostnames should b... |
| `uid` | `string` | A unique id for the environment group config that will only change if the environment group is de... |

### `GoogleCloudApigeeV1ExpireAppGroupSubscriptionRequest`

Request for ExpireAppGroupSubscription.

### `GoogleCloudApigeeV1ExpireDeveloperSubscriptionRequest`

Request for ExpireDeveloperSubscription.

### `GoogleCloudApigeeV1Export`

Details of an export job.

| Property | Type | Description |
|----------|------|-------------|
| `created` | `string` | Output only. Time the export job was created. |
| `datastoreName` | `string` | Name of the datastore that is the destination of the export job [datastore] |
| `description` | `string` | Description of the export job. |
| `error` | `string` | Output only. Error is set when export fails |
| `executionTime` | `string` | Output only. Execution time for this export job. If the job is still in progress, it will be set ... |
| `name` | `string` | Display name of the export job. |
| `self` | `string` | Output only. Self link of the export job. A URI that can be used to retrieve the status of an exp... |
| `state` | `string` | Output only. Status of the export job. Valid values include `enqueued`, `running`, `completed`, a... |
| `updated` | `string` | Output only. Time the export job was last updated. |

### `GoogleCloudApigeeV1ExportRequest`

Request body for [CreateExportRequest]

| Property | Type | Description |
|----------|------|-------------|
| `csvDelimiter` | `string` | Optional. Delimiter used in the CSV file, if `outputFormat` is set to `csv`. Defaults to the `,` ... |
| `datastoreName` | `string` | Required. Name of the preconfigured datastore. |
| `dateRange` | `GoogleCloudApigeeV1DateRange` | Required. Date range of the data to export. |
| `description` | `string` | Optional. Description of the export job. |
| `name` | `string` | Required. Display name of the export job. |
| `outputFormat` | `string` | Optional. Output format of the export. Valid values include: `csv` or `json`. Defaults to `json`.... |

### `GoogleCloudApigeeV1FlowHook`

| Property | Type | Description |
|----------|------|-------------|
| `continueOnError` | `boolean` | Optional. Flag that specifies whether execution should continue if the flow hook throws an except... |
| `description` | `string` | Description of the flow hook. |
| `flowHookPoint` | `string` | Output only. Where in the API call flow the flow hook is invoked. Must be one of `PreProxyFlowHoo... |
| `sharedFlow` | `string` | Shared flow attached to this flow hook, or empty if there is none attached. |

### `GoogleCloudApigeeV1FlowHookConfig`

| Property | Type | Description |
|----------|------|-------------|
| `continueOnError` | `boolean` | Flag that specifies whether the flow should abort after an error in the flow hook. Defaults to `t... |
| `name` | `string` | Name of the flow hook in the following format: `organizations/{org}/environments/{env}/flowhooks/... |
| `sharedFlowName` | `string` | Name of the shared flow to invoke in the following format: `organizations/{org}/sharedflows/{shar... |

### `GoogleCloudApigeeV1GenerateDownloadUrlRequest`

Request for GenerateDownloadUrl method.

### `GoogleCloudApigeeV1GenerateDownloadUrlResponse`

Response for GenerateDownloadUrl method.

| Property | Type | Description |
|----------|------|-------------|
| `downloadUri` | `string` | The Google Cloud Storage signed URL that can be used to download the Archive zip file. |

### `GoogleCloudApigeeV1GenerateUploadUrlRequest`

Request for GenerateUploadUrl method.

### `GoogleCloudApigeeV1GenerateUploadUrlResponse`

Response for GenerateUploadUrl method.

| Property | Type | Description |
|----------|------|-------------|
| `uploadUri` | `string` | The Google Cloud Storage signed URL that can be used to upload a new Archive zip file. |

### `GoogleCloudApigeeV1GetAsyncQueryResultUrlResponse`

The response for GetAsyncQueryResultUrl

| Property | Type | Description |
|----------|------|-------------|
| `urls` | `array<GoogleCloudApigeeV1GetAsyncQueryResultUrlResponseURLInfo>` | The list of Signed URLs generated by the CreateAsyncQuery request |

### `GoogleCloudApigeeV1GetAsyncQueryResultUrlResponseURLInfo`

A Signed URL and the relevant metadata associated with it.

| Property | Type | Description |
|----------|------|-------------|
| `md5` | `string` | The MD5 Hash of the JSON data |
| `sizeBytes` | `string` | The size of the returned file in bytes |
| `uri` | `string` | The signed URL of the JSON data. Will be of the form `https://storage.googleapis.com/example-buck... |

### `GoogleCloudApigeeV1GetSyncAuthorizationRequest`

Request for GetSyncAuthorization.

### `GoogleCloudApigeeV1GraphQLOperation`

Represents the pairing of GraphQL operation types and the GraphQL operation name.

| Property | Type | Description |
|----------|------|-------------|
| `operation` | `string` | GraphQL operation name. The name and operation type will be used to apply quotas. If no name is s... |
| `operationTypes` | `array<string>` | Required. GraphQL operation types. Valid values include `query` or `mutation`. **Note**: Apigee d... |

### `GoogleCloudApigeeV1GraphQLOperationConfig`

Binds the resources in a proxy or remote service with the GraphQL operation and its associated quota enforcement.

| Property | Type | Description |
|----------|------|-------------|
| `apiSource` | `string` | Required. Name of the API proxy endpoint or remote service with which the GraphQL operation and q... |
| `attributes` | `array<GoogleCloudApigeeV1Attribute>` | Custom attributes associated with the operation. |
| `operations` | `array<GoogleCloudApigeeV1GraphQLOperation>` | Required. List of GraphQL name/operation type pairs for the proxy or remote service to which quot... |
| `quota` | `GoogleCloudApigeeV1Quota` | Quota parameters to be enforced for the resources, methods, and API source combination. If none a... |

### `GoogleCloudApigeeV1GraphQLOperationGroup`

List of graphQL operation configuration details associated with Apigee API proxies or remote services. Remote services are non-Apigee proxies, such as Istio-Envoy.

| Property | Type | Description |
|----------|------|-------------|
| `operationConfigType` | `string` | Flag that specifies whether the configuration is for Apigee API proxy or a remote service. Valid ... |
| `operationConfigs` | `array<GoogleCloudApigeeV1GraphQLOperationConfig>` | Required. List of operation configurations for either Apigee API proxies or other remote services... |

### `GoogleCloudApigeeV1GraphqlDocumentation`

GraphQL documentation for a catalog item.

| Property | Type | Description |
|----------|------|-------------|
| `endpointUri` | `string` | Required. The GraphQL endpoint URI to be queried by API consumers. Max length is 2,083 characters. |
| `schema` | `GoogleCloudApigeeV1DocumentationFile` | Required. The documentation file contents for the GraphQL schema. |

### `GoogleCloudApigeeV1GrpcOperationConfig`

Binds the resources in a proxy or remote service with the gRPC operation and its associated quota enforcement.

| Property | Type | Description |
|----------|------|-------------|
| `apiSource` | `string` | Required. Name of the API proxy with which the gRPC operation and quota are associated. |
| `attributes` | `array<GoogleCloudApigeeV1Attribute>` | Custom attributes associated with the operation. |
| `methods` | `array<string>` | List of unqualified gRPC method names for the proxy to which quota will be applied. If this field... |
| `quota` | `GoogleCloudApigeeV1Quota` | Quota parameters to be enforced for the methods and API source combination. If none are specified... |
| `service` | `string` | Required. gRPC Service name associated to be associated with the API proxy, on which quota rules ... |

### `GoogleCloudApigeeV1GrpcOperationGroup`

List of gRPC operation configuration details associated with Apigee API proxies.

| Property | Type | Description |
|----------|------|-------------|
| `operationConfigs` | `array<GoogleCloudApigeeV1GrpcOperationConfig>` | Required. List of operation configurations for either Apigee API proxies that are associated with... |

### `GoogleCloudApigeeV1IngressConfig`

| Property | Type | Description |
|----------|------|-------------|
| `environmentGroups` | `array<GoogleCloudApigeeV1EnvironmentGroupConfig>` | List of environment groups in the organization. |
| `name` | `string` | Name of the resource in the following format: `organizations/{org}/deployedIngressConfig`. |
| `revisionCreateTime` | `string` | Time at which the IngressConfig revision was created. |
| `revisionId` | `string` | Revision id that defines the ordering on IngressConfig resources. The higher the revision, the mo... |
| `uid` | `string` | A unique id for the ingress config that will only change if the organization is deleted and recre... |

### `GoogleCloudApigeeV1Instance`

Apigee runtime instance.

| Property | Type | Description |
|----------|------|-------------|
| `accessLoggingConfig` | `GoogleCloudApigeeV1AccessLoggingConfig` | Optional. Access logging configuration enables the access logging feature at the instance. Apigee... |
| `consumerAcceptList` | `array<string>` | Optional. Customer accept list represents the list of projects (id/number) on customer side that ... |
| `createdAt` | `string` | Output only. Time the instance was created in milliseconds since epoch. |
| `description` | `string` | Optional. Description of the instance. |
| `diskEncryptionKeyName` | `string` | Optional. Customer Managed Encryption Key (CMEK) used for disk and volume encryption. If not spec... |
| `displayName` | `string` | Optional. Display name for the instance. |
| `host` | `string` | Output only. Internal hostname or IP address of the Apigee endpoint used by clients to connect to... |
| `ipRange` | `string` | Optional. Comma-separated list of CIDR blocks of length 22 and/or 28 used to create the Apigee in... |
| `isVersionLocked` | `boolean` | Output only. Indicates whether the instance is version locked. If true, the instance will not be ... |
| `lastModifiedAt` | `string` | Output only. Time the instance was last modified in milliseconds since epoch. |
| `location` | `string` | Required. Compute Engine location where the instance resides. |
| `maintenanceUpdatePolicy` | `GoogleCloudApigeeV1MaintenanceUpdatePolicy` | Optional. Apigee customers can set the preferred window to perform maintenance on the instance (d... |
| `name` | `string` | Required. Resource ID of the instance. Values must match the regular expression `^a-z{0,30}[a-z\d... |
| `peeringCidrRange` | `string` | Optional. Size of the CIDR block range that will be reserved by the instance. PAID organizations ... |
| `port` | `string` | Output only. Port number of the exposed Apigee endpoint. |
| `runtimeVersion` | `string` | Output only. Version of the runtime system running in the instance. The runtime system is the set... |
| `scheduledMaintenance` | `GoogleCloudApigeeV1ScheduledMaintenance` | Output only. Time and date of the scheduled maintenance for this instance. This field is only pop... |
| `serviceAttachment` | `string` | Output only. Resource name of the service attachment created for the instance in the format: `pro... |
| `state` | `string` | Output only. State of the instance. Values other than `ACTIVE` means the resource is not ready to... |

### `GoogleCloudApigeeV1InstanceAttachment`

InstanceAttachment represents the installation of an environment onto an instance.

| Property | Type | Description |
|----------|------|-------------|
| `createdAt` | `string` | Output only. Time the attachment was created in milliseconds since epoch. |
| `environment` | `string` | ID of the attached environment. |
| `name` | `string` | Output only. ID of the attachment. |

### `GoogleCloudApigeeV1InstanceDeploymentStatus`

The status of a deployment as reported by a single instance.

| Property | Type | Description |
|----------|------|-------------|
| `deployedRevisions` | `array<GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRevision>` | Revisions currently deployed in MPs. |
| `deployedRoutes` | `array<GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRoute>` | Current routes deployed in the ingress routing table. A route which is missing will appear in `mi... |
| `instance` | `string` | ID of the instance reporting the status. |

### `GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRevision`

Revisions deployed in the MPs.

| Property | Type | Description |
|----------|------|-------------|
| `percentage` | `integer` | Percentage of MP replicas reporting this revision. |
| `revision` | `string` | API proxy revision reported as deployed. |

### `GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRoute`

Route deployed in the ingress routing table.

| Property | Type | Description |
|----------|------|-------------|
| `basepath` | `string` | Base path in the routing table. |
| `envgroup` | `string` | Environment group where this route is installed. |
| `environment` | `string` | Destination environment. This will be empty if the route is not yet reported. |
| `percentage` | `integer` | Percentage of ingress replicas reporting this route. |

### `GoogleCloudApigeeV1IntegrationConfig`

Configuration for the Integration add-on.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Flag that specifies whether the Integration add-on is enabled. |

### `GoogleCloudApigeeV1KeyAliasReference`

| Property | Type | Description |
|----------|------|-------------|
| `aliasId` | `string` | Alias ID. Must exist in the keystore referred to by the reference. |
| `reference` | `string` | Reference name in the following format: `organizations/{org}/environments/{env}/references/{refer... |

### `GoogleCloudApigeeV1KeyValueEntry`

Key value map pair where the value represents the data associated with the corresponding key. **Note**: Supported for Apigee hybrid 1.8.x and higher.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Resource URI that can be used to identify the scope of the key value map entries. |
| `value` | `string` | Required. Data or payload that is being retrieved and associated with the unique key. |

### `GoogleCloudApigeeV1KeyValueMap`

Collection of key/value string pairs.

| Property | Type | Description |
|----------|------|-------------|
| `encrypted` | `boolean` | Required. Flag that specifies whether entry values will be encrypted. This field is retained for ... |
| `maskedValues` | `boolean` | Optional. Flag that specifies whether entry values will be masked when returned. |
| `name` | `string` | Required. ID of the key value map. |

### `GoogleCloudApigeeV1Keystore`

Datastore for Certificates and Aliases.

| Property | Type | Description |
|----------|------|-------------|
| `aliases` | `array<string>` | Output only. Aliases in this keystore. |
| `name` | `string` | Required. Resource ID for this keystore. Values must match the regular expression `[\w[:space:].-... |

### `GoogleCloudApigeeV1KeystoreConfig`

| Property | Type | Description |
|----------|------|-------------|
| `aliases` | `array<GoogleCloudApigeeV1AliasRevisionConfig>` | Aliases in the keystore. |
| `name` | `string` | Resource name in the following format: `organizations/{org}/environments/{env}/keystores/{keystore}` |

### `GoogleCloudApigeeV1ListApiCategoriesResponse`

The response for `ListApiCategoriesRequest`. Next ID: 6

| Property | Type | Description |
|----------|------|-------------|
| `data` | `array<GoogleCloudApigeeV1ApiCategory>` | The API category resources. |
| `errorCode` | `string` | Unique error code for the request, if any. |
| `message` | `string` | Description of the operation. |
| `requestId` | `string` | Unique ID of the request. |
| `status` | `string` | Status of the operation. |

### `GoogleCloudApigeeV1ListApiDebugSessionsResponse`

Response for ListApiDebugSessions.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Page token that you can include in a ListApiDebugSessionsRequest to retrieve the next page. If om... |
| `sessions` | `array<GoogleCloudApigeeV1ApiDebugSession>` | Session info that includes debug session ID, environment ID, api proxy revision ID and the first ... |

### `GoogleCloudApigeeV1ListApiDocsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `data` | `array<GoogleCloudApigeeV1ApiDoc>` | The catalog item resources. |
| `errorCode` | `string` | Unique error code for the request, if any. |
| `message` | `string` | Description of the operation. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `requestId` | `string` | Unique ID of the request. |
| `status` | `string` | Status of the operation. |

### `GoogleCloudApigeeV1ListApiProductsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `apiProduct` | `array<GoogleCloudApigeeV1ApiProduct>` | Lists all API product names defined for an organization. |

### `GoogleCloudApigeeV1ListApiProxiesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `proxies` | `array<GoogleCloudApigeeV1ApiProxy>` |  |

### `GoogleCloudApigeeV1ListApimServiceExtensionsResponse`

Response for list service extensions.

| Property | Type | Description |
|----------|------|-------------|
| `apimServiceExtensions` | `array<GoogleCloudApigeeV1ApimServiceExtension>` | service extension in a given organization. |
| `nextPageToken` | `string` | Page token that you can include in an `ListApimServiceExtensions` request to retrieve the next pa... |

### `GoogleCloudApigeeV1ListAppGroupAppsResponse`

Response for ListAppGroupApps

| Property | Type | Description |
|----------|------|-------------|
| `appGroupApps` | `array<GoogleCloudApigeeV1AppGroupApp>` | List of AppGroup apps and their credentials. |
| `nextPageToken` | `string` | Token that can be sent as `next_page_token` to retrieve the next page. If this field is omitted, ... |

### `GoogleCloudApigeeV1ListAppGroupSubscriptionsResponse`

Response for ListAppGroupSubscriptions.

| Property | Type | Description |
|----------|------|-------------|
| `appGroupSubscriptions` | `array<GoogleCloudApigeeV1AppGroupSubscription>` | The list of subscriptions for an AppGroup. |
| `nextPageToken` | `string` | Value that can be sent as `pageToken` to retrieve the next page of content. If this field is omit... |

### `GoogleCloudApigeeV1ListAppGroupsResponse`

ListAppGroupsResponse contains the 0 or more AppGroups, along with the optional page token and the total count of apps.

| Property | Type | Description |
|----------|------|-------------|
| `appGroups` | `array<GoogleCloudApigeeV1AppGroup>` | List of AppGroups. |
| `nextPageToken` | `string` | Token that can be sent as `next_page_token` to retrieve the next page. If this field is omitted, ... |
| `totalSize` | `integer` | Total count of AppGroups. |

### `GoogleCloudApigeeV1ListAppsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `app` | `array<GoogleCloudApigeeV1App>` |  |
| `nextPageToken` | `string` | Token that can be sent as `next_page_token` to retrieve the next page. If this field is omitted, ... |
| `totalSize` | `integer` | Total count of Apps. |

### `GoogleCloudApigeeV1ListArchiveDeploymentsResponse`

Response for ListArchiveDeployments method.

| Property | Type | Description |
|----------|------|-------------|
| `archiveDeployments` | `array<GoogleCloudApigeeV1ArchiveDeployment>` | Archive Deployments in the specified environment. |
| `nextPageToken` | `string` | Page token that you can include in a ListArchiveDeployments request to retrieve the next page. If... |

### `GoogleCloudApigeeV1ListAsyncQueriesResponse`

The response for ListAsyncQueries.

| Property | Type | Description |
|----------|------|-------------|
| `queries` | `array<GoogleCloudApigeeV1AsyncQuery>` | The asynchronous queries belong to requested resource name. |

### `GoogleCloudApigeeV1ListCustomReportsResponse`

This message encapsulates a list of custom report definitions

| Property | Type | Description |
|----------|------|-------------|
| `qualifier` | `array<GoogleCloudApigeeV1CustomReport>` |  |

### `GoogleCloudApigeeV1ListDataCollectorsResponse`

Response for ListDataCollectors.

| Property | Type | Description |
|----------|------|-------------|
| `dataCollectors` | `array<GoogleCloudApigeeV1DataCollector>` | Data collectors in the specified organization. |
| `nextPageToken` | `string` | Page token that you can include in a ListDataCollectors request to retrieve the next page. If omi... |

### `GoogleCloudApigeeV1ListDatastoresResponse`

The response for ListDatastores

| Property | Type | Description |
|----------|------|-------------|
| `datastores` | `array<GoogleCloudApigeeV1Datastore>` | A list of datastores |

### `GoogleCloudApigeeV1ListDebugSessionsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Page token that you can include in a ListDebugSessionsRequest to retrieve the next page. If omitt... |
| `sessions` | `array<GoogleCloudApigeeV1Session>` | Session info that includes debug session ID and the first transaction creation timestamp. |

### `GoogleCloudApigeeV1ListDeploymentsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `deployments` | `array<GoogleCloudApigeeV1Deployment>` | List of deployments. |

### `GoogleCloudApigeeV1ListDeveloperAppsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `app` | `array<GoogleCloudApigeeV1DeveloperApp>` | List of developer apps and their credentials. |

### `GoogleCloudApigeeV1ListDeveloperSubscriptionsResponse`

Response for ListDeveloperSubscriptions.

| Property | Type | Description |
|----------|------|-------------|
| `developerSubscriptions` | `array<GoogleCloudApigeeV1DeveloperSubscription>` | List of all subscriptions. |
| `nextStartKey` | `string` | Value that can be sent as `startKey` to retrieve the next page of content. If this field is omitt... |

### `GoogleCloudApigeeV1ListDnsZonesResponse`

Response for list DNS zones.

| Property | Type | Description |
|----------|------|-------------|
| `dnsZones` | `array<GoogleCloudApigeeV1DnsZone>` | DNS zones in a given organization. |
| `nextPageToken` | `string` | Page token that you can include in an `ListDnsZones` request to retrieve the next page. If omitte... |

### `GoogleCloudApigeeV1ListEndpointAttachmentsResponse`

Response for ListEndpointAttachments method.

| Property | Type | Description |
|----------|------|-------------|
| `endpointAttachments` | `array<GoogleCloudApigeeV1EndpointAttachment>` | Endpoint attachments in the specified organization. |
| `nextPageToken` | `string` | Page token that you can include in an `ListEndpointAttachments` request to retrieve the next page... |

### `GoogleCloudApigeeV1ListEnvironmentGroupAttachmentsResponse`

Response for ListEnvironmentGroupAttachments.

| Property | Type | Description |
|----------|------|-------------|
| `environmentGroupAttachments` | `array<GoogleCloudApigeeV1EnvironmentGroupAttachment>` | EnvironmentGroupAttachments for the specified environment group. |
| `nextPageToken` | `string` | Page token that you can include in a ListEnvironmentGroupAttachments request to retrieve the next... |

### `GoogleCloudApigeeV1ListEnvironmentGroupsResponse`

Response for ListEnvironmentGroups.

| Property | Type | Description |
|----------|------|-------------|
| `environmentGroups` | `array<GoogleCloudApigeeV1EnvironmentGroup>` | EnvironmentGroups in the specified organization. |
| `nextPageToken` | `string` | Page token that you can include in a ListEnvironmentGroups request to retrieve the next page. If ... |

### `GoogleCloudApigeeV1ListEnvironmentResourcesResponse`

Response for ListEnvironmentResources

| Property | Type | Description |
|----------|------|-------------|
| `resourceFile` | `array<GoogleCloudApigeeV1ResourceFile>` | List of resources files. |

### `GoogleCloudApigeeV1ListExportsResponse`

The response for ListExports

| Property | Type | Description |
|----------|------|-------------|
| `exports` | `array<GoogleCloudApigeeV1Export>` | Details of the export jobs. |

### `GoogleCloudApigeeV1ListHybridIssuersResponse`

| Property | Type | Description |
|----------|------|-------------|
| `issuers` | `array<GoogleCloudApigeeV1ServiceIssuersMapping>` | Lists of hybrid services and its trusted issuer email ids. |

### `GoogleCloudApigeeV1ListInstanceAttachmentsResponse`

Response for ListInstanceAttachments.

| Property | Type | Description |
|----------|------|-------------|
| `attachments` | `array<GoogleCloudApigeeV1InstanceAttachment>` | Attachments for the instance. |
| `nextPageToken` | `string` | Page token that you can include in a ListInstanceAttachments request to retrieve the next page of... |

### `GoogleCloudApigeeV1ListInstancesResponse`

Response for ListInstances.

| Property | Type | Description |
|----------|------|-------------|
| `instances` | `array<GoogleCloudApigeeV1Instance>` | Instances in the specified organization. |
| `nextPageToken` | `string` | Page token that you can include in a ListInstance request to retrieve the next page of content. I... |

### `GoogleCloudApigeeV1ListKeyValueEntriesResponse`

The request structure for listing key value map keys and its corresponding values.

| Property | Type | Description |
|----------|------|-------------|
| `keyValueEntries` | `array<GoogleCloudApigeeV1KeyValueEntry>` | One or more key value map keys and values. |
| `nextPageToken` | `string` | Token that can be sent as `next_page_token` to retrieve the next page. If this field is omitted, ... |

### `GoogleCloudApigeeV1ListNatAddressesResponse`

Response for ListNatAddresses.

| Property | Type | Description |
|----------|------|-------------|
| `natAddresses` | `array<GoogleCloudApigeeV1NatAddress>` | List of NAT Addresses for the instance. |
| `nextPageToken` | `string` | Page token that you can include in a ListNatAddresses request to retrieve the next page of conten... |

### `GoogleCloudApigeeV1ListOfDevelopersResponse`

| Property | Type | Description |
|----------|------|-------------|
| `developer` | `array<GoogleCloudApigeeV1Developer>` | List of developers. |

### `GoogleCloudApigeeV1ListOrganizationsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `organizations` | `array<GoogleCloudApigeeV1OrganizationProjectMapping>` | List of Apigee organizations and associated Google Cloud projects. |

### `GoogleCloudApigeeV1ListRatePlansResponse`

Response for ListRatePlans.

| Property | Type | Description |
|----------|------|-------------|
| `nextStartKey` | `string` | Value that can be sent as `startKey` to retrieve the next page of content. If this field is omitt... |
| `ratePlans` | `array<GoogleCloudApigeeV1RatePlan>` | List of rate plans in an organization. |

### `GoogleCloudApigeeV1ListSecurityActionsResponse`

Contains a list of SecurityActions in response to a ListSecurityActionRequest.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `securityActions` | `array<GoogleCloudApigeeV1SecurityAction>` | The SecurityActions for the specified environment. |

### `GoogleCloudApigeeV1ListSecurityFeedbackResponse`

Response for ListSecurityFeedback

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token that can be sent as `page_token` in `ListSecurityFeedbackRequest` to retrieve the next pa... |
| `securityFeedback` | `array<GoogleCloudApigeeV1SecurityFeedback>` | List of SecurityFeedback reports. |

### `GoogleCloudApigeeV1ListSecurityIncidentsResponse`

Response for ListSecurityIncidents.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token that can be sent as `page_token` to retrieve the next page. If this field is omitted, the... |
| `securityIncidents` | `array<GoogleCloudApigeeV1SecurityIncident>` | List of security incidents in the organization |

### `GoogleCloudApigeeV1ListSecurityMonitoringConditionsResponse`

Response for ListSecurityMonitoringConditions.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token that can be sent as `page_token` to retrieve the next page. If this field is omitted, the... |
| `securityMonitoringConditions` | `array<GoogleCloudApigeeV1SecurityMonitoringCondition>` | List of security monitoring conditions in the organization. |

### `GoogleCloudApigeeV1ListSecurityProfileRevisionsResponse`

Response for ListSecurityProfileRevisions.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token that can be sent as `page_token` to retrieve the next page. If this field is omitted, the... |
| `securityProfiles` | `array<GoogleCloudApigeeV1SecurityProfile>` | List of security profile revisions. The revisions may be attached or unattached to any environment. |

### `GoogleCloudApigeeV1ListSecurityProfilesResponse`

Response for ListSecurityProfiles.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token that can be sent as `page_token` to retrieve the next page. If this field is omitted, the... |
| `securityProfiles` | `array<GoogleCloudApigeeV1SecurityProfile>` | List of security profiles in the organization. The profiles may be attached or unattached to any ... |

### `GoogleCloudApigeeV1ListSecurityProfilesV2Response`

Response for ListSecurityProfilesV2.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token that can be sent as `page_token` to retrieve the next page. If this field is omitted, the... |
| `securityProfilesV2` | `array<GoogleCloudApigeeV1SecurityProfileV2>` | List of security profiles in the organization. |

### `GoogleCloudApigeeV1ListSecurityReportsResponse`

The response for SecurityReports.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If the number of security reports exceeded the page size requested, the token can be used to fetc... |
| `securityReports` | `array<GoogleCloudApigeeV1SecurityReport>` | The security reports belong to requested resource name. |

### `GoogleCloudApigeeV1ListSharedFlowsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `sharedFlows` | `array<GoogleCloudApigeeV1SharedFlow>` |  |

### `GoogleCloudApigeeV1ListSpacesResponse`

A response to a ListSpaces request containing the list of organization spaces and a page token for the next page.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token that can be sent as `page_token` to retrieve the next page. If this field is omitted, the... |
| `spaces` | `array<GoogleCloudApigeeV1Space>` | List of Apigee organization spaces. |

### `GoogleCloudApigeeV1ListTraceConfigOverridesResponse`

Response for ListTraceConfigOverrides.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token value that can be passed as `page_token` to retrieve the next page of content. |
| `traceConfigOverrides` | `array<GoogleCloudApigeeV1TraceConfigOverride>` | List all trace configuration overrides in an environment. |

### `GoogleCloudApigeeV1LlmOperation`

Represents the pairing of REST resource path, model and the actions (verbs) allowed on the resource path.

| Property | Type | Description |
|----------|------|-------------|
| `methods` | `array<string>` | Optional. methods refers to the REST verbs as in https://httpwg.org/specs/rfc9110.html For exampl... |
| `model` | `string` | Required. LLM model name associated with the API proxy |
| `resource` | `string` | Required. REST resource path associated with the API proxy or remote service. |

### `GoogleCloudApigeeV1LlmOperationConfig`

Binds the resources in an API proxy or remote service with the allowed REST methods and associated quota enforcement.

| Property | Type | Description |
|----------|------|-------------|
| `apiSource` | `string` | Required. Name of the API proxy or remote service with which the resources, methods, and quota ar... |
| `attributes` | `array<GoogleCloudApigeeV1Attribute>` | Optional. Custom attributes associated with the operation. |
| `llmOperations` | `array<GoogleCloudApigeeV1LlmOperation>` | Required. List of resource/method/model for the API proxy to which quota will applied. **Note**: ... |
| `llmTokenQuota` | `GoogleCloudApigeeV1LlmTokenQuota` | Required. LLM token Quota parameters to be enforced for the resources, methods, and API source & ... |

### `GoogleCloudApigeeV1LlmOperationGroup`

List of LLM operation configuration details associated with Apigee API proxies.

| Property | Type | Description |
|----------|------|-------------|
| `operationConfigs` | `array<GoogleCloudApigeeV1LlmOperationConfig>` | Required. List of LLM operation configurations for either Apigee API proxies that are associated ... |

### `GoogleCloudApigeeV1LlmTokenQuota`

LLM Token Quota contains the essential parameters needed that can be applied on the resources, methods, models, API source combination associated with this API product. While LLM Token Quota is optional, setting it prevents requests from exceeding the provisioned parameters.

| Property | Type | Description |
|----------|------|-------------|
| `interval` | `string` | Required. Time interval over which the number of request messages is calculated. |
| `limit` | `string` | Required. Upper limit of LLM tokens allowed for the time interval and time unit specified. Reques... |
| `timeUnit` | `string` | Optional. Time unit defined for the `interval`. Valid values include `minute`, `hour`, `day`, or ... |

### `GoogleCloudApigeeV1MaintenanceUpdatePolicy`

MaintenanceUpdatePolicy specifies the preferred window to perform maintenance on the instance (day of the week and time of day).

| Property | Type | Description |
|----------|------|-------------|
| `maintenanceChannel` | `string` | Optional. Maintenance channel to specify relative scheduling for maintenance. |
| `maintenanceWindows` | `array<GoogleCloudApigeeV1MaintenanceUpdatePolicyMaintenanceWindow>` | Optional. Preferred windows to perform maintenance. Currently limited to 1. |

### `GoogleCloudApigeeV1MaintenanceUpdatePolicyMaintenanceWindow`

MaintenanceWindow specifies the preferred day of the week and time of day to perform maintenance.

| Property | Type | Description |
|----------|------|-------------|
| `day` | `string` | Required. Preferred day of the week for maintenance, e.g. MONDAY, TUESDAY, etc. |
| `startTime` | `GoogleTypeTimeOfDay` | Required. The start time (UTC) of the maintenance window. |

### `GoogleCloudApigeeV1Metadata`

Encapsulates additional information about query execution.

| Property | Type | Description |
|----------|------|-------------|
| `errors` | `array<string>` | List of error messages as strings. |
| `notices` | `array<string>` | List of additional information such as data source, if result was truncated. For example: ``` "no... |

### `GoogleCloudApigeeV1Metric`

Encapsulates the metric data point. For example: ```{ "name": "sum(message_count)", "values" : [ { "timestamp": 1549004400000, "value": "39.0" }, { "timestamp" : 1548997200000, "value" : "0.0" } ] }``` or ```{ "name": "sum(message_count)", "values" : ["39.0"] }```

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Metric name. |
| `values` | `array<any>` | List of metric values. Possible value formats include: `"values":["39.0"]` or `"values":[ { "valu... |

### `GoogleCloudApigeeV1MetricAggregation`

The optionally aggregated metric to query with its ordering.

| Property | Type | Description |
|----------|------|-------------|
| `aggregation` | `string` | Aggregation function associated with the metric. |
| `name` | `string` | Name of the metric |
| `order` | `string` | Ordering for this aggregation in the result. For time series this is ignored since the ordering o... |

### `GoogleCloudApigeeV1MonetizationConfig`

Configuration for the Monetization add-on.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Flag that specifies whether the Monetization add-on is enabled. |

### `GoogleCloudApigeeV1MoveApiProductRequest`

Moves API product to a different space.

| Property | Type | Description |
|----------|------|-------------|
| `space` | `string` | Optional. Resource ID of the space to move the API product to. If unspecified, the API product wi... |

### `GoogleCloudApigeeV1MoveApiProxyRequest`

Moves an API Proxy to a different Space.

| Property | Type | Description |
|----------|------|-------------|
| `space` | `string` | Optional. Resource ID of the space to move the proxy to. If unspecified, the proxy will be moved ... |

### `GoogleCloudApigeeV1MoveSharedFlowRequest`

Moves a Shared Flow to a different space.

| Property | Type | Description |
|----------|------|-------------|
| `space` | `string` | Optional. Resource ID of the space to move the shared flow to. If unspecified, the shared flow wi... |

### `GoogleCloudApigeeV1NatAddress`

Apigee NAT(network address translation) address. A NAT address is a static external IP address used for Internet egress traffic.

| Property | Type | Description |
|----------|------|-------------|
| `ipAddress` | `string` | Output only. The static IPV4 address. |
| `name` | `string` | Required. Resource ID of the NAT address. |
| `state` | `string` | Output only. State of the nat address. |

### `GoogleCloudApigeeV1NodeConfig`

NodeConfig for setting the min/max number of nodes associated with the environment.

| Property | Type | Description |
|----------|------|-------------|
| `currentAggregateNodeCount` | `string` | Output only. The current total number of gateway nodes that each environment currently has across... |
| `maxNodeCount` | `string` | Optional. The maximum total number of gateway nodes that the is reserved for all instances that h... |
| `minNodeCount` | `string` | Optional. The minimum total number of gateway nodes that the is reserved for all instances that h... |

### `GoogleCloudApigeeV1OASDocumentation`

OpenAPI Specification documentation for a catalog item.

| Property | Type | Description |
|----------|------|-------------|
| `format` | `string` | Output only. The format of the input specification file contents. |
| `spec` | `GoogleCloudApigeeV1DocumentationFile` | Required. The documentation file contents for the OpenAPI Specification. JSON and YAML file forma... |

### `GoogleCloudApigeeV1Operation`

Represents the pairing of REST resource path and the actions (verbs) allowed on the resource path.

| Property | Type | Description |
|----------|------|-------------|
| `methods` | `array<string>` | methods refers to the REST verbs as in https://www.w3.org/Protocols/rfc2616/rfc2616-sec9.html. Wh... |
| `resource` | `string` | Required. REST resource path associated with the API proxy or remote service. |

### `GoogleCloudApigeeV1OperationConfig`

Binds the resources in an API proxy or remote service with the allowed REST methods and associated quota enforcement.

| Property | Type | Description |
|----------|------|-------------|
| `apiSource` | `string` | Required. Name of the API proxy or remote service with which the resources, methods, and quota ar... |
| `attributes` | `array<GoogleCloudApigeeV1Attribute>` | Custom attributes associated with the operation. |
| `operations` | `array<GoogleCloudApigeeV1Operation>` | List of resource/method pairs for the API proxy or remote service to which quota will applied. **... |
| `quota` | `GoogleCloudApigeeV1Quota` | Quota parameters to be enforced for the resources, methods, and API source combination. If none a... |

### `GoogleCloudApigeeV1OperationGroup`

List of operation configuration details associated with Apigee API proxies or remote services. Remote services are non-Apigee proxies, such as Istio-Envoy.

| Property | Type | Description |
|----------|------|-------------|
| `operationConfigType` | `string` | Flag that specifes whether the configuration is for Apigee API proxy or a remote service. Valid v... |
| `operationConfigs` | `array<GoogleCloudApigeeV1OperationConfig>` | Required. List of operation configurations for either Apigee API proxies or other remote services... |

### `GoogleCloudApigeeV1OperationMetadata`

Metadata describing an Operation.

| Property | Type | Description |
|----------|------|-------------|
| `operationType` | `string` |  |
| `progress` | `GoogleCloudApigeeV1OperationMetadataProgress` | Progress of the operation. |
| `state` | `string` |  |
| `targetResourceName` | `string` | Name of the resource for which the operation is operating on. |
| `warnings` | `array<string>` | Warnings encountered while executing the operation. |

### `GoogleCloudApigeeV1OperationMetadataProgress`

Information about operation progress.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Description of the operation's progress. |
| `details` | `object` | The additional details of the progress. |
| `percentDone` | `integer` | The percentage of the operation progress. |
| `state` | `string` | State of the operation. |

### `GoogleCloudApigeeV1OptimizedStats`

Encapsulates a response format for JavaScript Optimized Scenario.

| Property | Type | Description |
|----------|------|-------------|
| `Response` | `GoogleCloudApigeeV1OptimizedStatsResponse` | Wraps the `stats` response for JavaScript Optimized Scenario with a response key. For example: ``... |

### `GoogleCloudApigeeV1OptimizedStatsNode`

Encapsulates a data node as represented below: ``` { "identifier": { "names": [ "apiproxy" ], "values": [ "sirjee" ] }, "metric": [ { "env": "prod", "name": "sum(message_count)", "values": [ 36.0 ] } ] }``` or ``` { "env": "prod", "name": "sum(message_count)", "values": [ 36.0 ] }``` Depending on whether a dimension is present in the query or not the data node type can be a simple metric value or dimension identifier with list of metrics.

| Property | Type | Description |
|----------|------|-------------|
| `data` | `array<any>` | List of data values. |

### `GoogleCloudApigeeV1OptimizedStatsResponse`

Encapsulates a response format for JavaScript Optimized Scenario.

| Property | Type | Description |
|----------|------|-------------|
| `TimeUnit` | `array<string>` | List of time unit values. Time unit refers to an epoch timestamp value. |
| `metaData` | `GoogleCloudApigeeV1Metadata` | Metadata information about the query executed. |
| `resultTruncated` | `boolean` | Boolean flag that indicates whether the results were truncated based on the limit parameter. |
| `stats` | `GoogleCloudApigeeV1OptimizedStatsNode` | `stats` results. |

### `GoogleCloudApigeeV1Organization`

| Property | Type | Description |
|----------|------|-------------|
| `addonsConfig` | `GoogleCloudApigeeV1AddonsConfig` | Optional. Addon configurations of the Apigee organization. |
| `analyticsRegion` | `string` | Required. DEPRECATED: This field will eventually be deprecated and replaced with a differently-na... |
| `apiConsumerDataEncryptionKeyName` | `string` | Optional. Cloud KMS key name used for encrypting API consumer data. If not specified or [BillingT... |
| `apiConsumerDataLocation` | `string` | Optional. This field is needed only for customers using non-default data residency regions. Apige... |
| `apigeeProjectId` | `string` | Output only. Apigee Project ID associated with the organization. Use this project to allowlist Ap... |
| `attributes` | `array<string>` | Not used by Apigee. |
| `authorizedNetwork` | `string` | Optional. Compute Engine network used for Service Networking to be peered with Apigee runtime ins... |
| `billingType` | `string` | Optional. Billing type of the Apigee organization. See [Apigee pricing](https://cloud.google.com/... |
| `caCertificate` | `string` | Output only. Deprecated: Use `ca_certificates` instead. Base64-encoded public certificate for the... |
| `caCertificates` | `array<string>` | Output only. Base64-encoded public certificates for the root CA of the Apigee organization. Valid... |
| `controlPlaneEncryptionKeyName` | `string` | Optional. Cloud KMS key name used for encrypting control plane data that is stored in a multi reg... |
| `createdAt` | `string` | Output only. Time that the Apigee organization was created in milliseconds since epoch. |
| `customerName` | `string` | Not used by Apigee. |
| `description` | `string` | Optional. Description of the Apigee organization. |
| `disableVpcPeering` | `boolean` | Optional. Flag that specifies whether the VPC Peering through Private Google Access should be dis... |
| `displayName` | `string` | Optional. Display name for the Apigee organization. Unused, but reserved for future use. |
| `environments` | `array<string>` | Output only. List of environments in the Apigee organization. |
| `expiresAt` | `string` | Output only. Time that the Apigee organization is scheduled for deletion. |
| `lastModifiedAt` | `string` | Output only. Time that the Apigee organization was last modified in milliseconds since epoch. |
| `name` | `string` | Output only. Name of the Apigee organization. |
| `networkEgressRestricted` | `boolean` | Optional. Flag that specifies if internet egress is restricted for VPC Service Controls. Valid on... |
| `portalDisabled` | `boolean` | Optional. Configuration for the Portals settings. |
| `projectId` | `string` | Output only. Project ID associated with the Apigee organization. |
| `properties` | `GoogleCloudApigeeV1Properties` | Optional. Properties defined in the Apigee organization profile. |
| `runtimeDatabaseEncryptionKeyName` | `string` | Optional. Cloud KMS key name used for encrypting the data that is stored and replicated across ru... |
| `runtimeType` | `string` | Required. Runtime type of the Apigee organization based on the Apigee subscription purchased. |
| `state` | `string` | Output only. State of the organization. Values other than ACTIVE means the resource is not ready ... |
| `subscriptionPlan` | `string` | Output only. Subscription plan that the customer has purchased. Output only. |
| `subscriptionType` | `string` | Output only. DEPRECATED: This will eventually be replaced by BillingType. Subscription type of th... |
| `type` | `string` | Not used by Apigee. |

### `GoogleCloudApigeeV1OrganizationProjectMapping`

| Property | Type | Description |
|----------|------|-------------|
| `location` | `string` | Output only. The Google Cloud region where control plane data is located. For more information, s... |
| `organization` | `string` | Name of the Apigee organization. |
| `projectId` | `string` | Google Cloud project associated with the Apigee organization |
| `projectIds` | `array<string>` | DEPRECATED: Use `project_id`. An Apigee Organization is mapped to a single project. |

### `GoogleCloudApigeeV1PodStatus`

| Property | Type | Description |
|----------|------|-------------|
| `appVersion` | `string` | Version of the application running in the pod. |
| `deploymentStatus` | `string` | Status of the deployment. Valid values include: - `deployed`: Successful. - `error` : Failed. - `... |
| `deploymentStatusTime` | `string` | Time the deployment status was reported in milliseconds since epoch. |
| `deploymentTime` | `string` | Time the proxy was deployed in milliseconds since epoch. |
| `podName` | `string` | Name of the pod which is reporting the status. |
| `podStatus` | `string` | Overall status of the pod (not this specific deployment). Valid values include: - `active`: Up to... |
| `podStatusTime` | `string` | Time the pod status was reported in milliseconds since epoch. |
| `statusCode` | `string` | Code associated with the deployment status. |
| `statusCodeDetails` | `string` | Human-readable message associated with the status code. |

### `GoogleCloudApigeeV1Point`

Point is a group of information collected by runtime plane at critical points of the message flow of the processed API request. This is a list of supported point IDs, categorized to three major buckets. For each category, debug points that we are currently supporting are listed below: - Flow status debug points: StateChange FlowInfo Condition Execution DebugMask Error - Flow control debug points: FlowCallout Paused Resumed FlowReturn BreakFlow Error - Runtime debug points: ScriptExecutor FlowCalloutStepDefinition CustomTarget StepDefinition Oauth2ServicePoint RaiseFault NodeJS The detail information of the given debug point is stored in a list of results.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | Name of a step in the transaction. |
| `results` | `array<GoogleCloudApigeeV1Result>` | List of results extracted from a given debug point. |

### `GoogleCloudApigeeV1ProfileConfig`

ProfileConfig defines a set of categories and policies which will be used to compute security score.

| Property | Type | Description |
|----------|------|-------------|
| `categories` | `array<GoogleCloudApigeeV1ProfileConfigCategory>` | List of categories of profile config. |

### `GoogleCloudApigeeV1ProfileConfigAbuse`

Checks for abuse, which includes any requests sent to the API for purposes other than what it is intended for, such as high volumes of requests, data scraping, and abuse related to authorization.

### `GoogleCloudApigeeV1ProfileConfigAuthorization`

By default, following policies will be included: - JWS - JWT - OAuth - BasicAuth - APIKey

### `GoogleCloudApigeeV1ProfileConfigCORS`

Checks to see if you have CORS policy in place.

### `GoogleCloudApigeeV1ProfileConfigCategory`

Advanced API Security provides security profile that scores the following categories.

| Property | Type | Description |
|----------|------|-------------|
| `abuse` | `GoogleCloudApigeeV1ProfileConfigAbuse` | Checks for abuse, which includes any requests sent to the API for purposes other than what it is ... |
| `authorization` | `GoogleCloudApigeeV1ProfileConfigAuthorization` | Checks to see if you have an authorization policy in place. |
| `cors` | `GoogleCloudApigeeV1ProfileConfigCORS` | Checks to see if you have CORS policy in place. |
| `mediation` | `GoogleCloudApigeeV1ProfileConfigMediation` | Checks to see if you have a mediation policy in place. |
| `mtls` | `GoogleCloudApigeeV1ProfileConfigMTLS` | Checks to see if you have configured mTLS for the target server. |
| `threat` | `GoogleCloudApigeeV1ProfileConfigThreat` | Checks to see if you have a threat protection policy in place. |

### `GoogleCloudApigeeV1ProfileConfigMTLS`

Checks to see if you have configured mTLS for the target server.

### `GoogleCloudApigeeV1ProfileConfigMediation`

By default, following policies will be included: - OASValidation - SOAPMessageValidation

### `GoogleCloudApigeeV1ProfileConfigThreat`

By default, following policies will be included: - XMLThreatProtection - JSONThreatProtection

### `GoogleCloudApigeeV1Properties`

Message for compatibility with legacy Edge specification for Java Properties object in JSON.

| Property | Type | Description |
|----------|------|-------------|
| `property` | `array<GoogleCloudApigeeV1Property>` | List of all properties in the object |

### `GoogleCloudApigeeV1Property`

A single property entry in the Properties message.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The property key |
| `value` | `string` | The property value |

### `GoogleCloudApigeeV1ProvisionOrganizationRequest`

Request for ProvisionOrganization.

| Property | Type | Description |
|----------|------|-------------|
| `analyticsRegion` | `string` | Primary Cloud Platform region for analytics data storage. For valid values, see [Create an organi... |
| `authorizedNetwork` | `string` | Compute Engine network used for Service Networking to be peered with Apigee runtime instances. Se... |
| `disableVpcPeering` | `boolean` | Optional. Flag that specifies whether the VPC Peering through Private Google Access should be dis... |
| `runtimeLocation` | `string` | Cloud Platform location for the runtime instance. Defaults to zone `us-west1-a`. If a region is p... |

### `GoogleCloudApigeeV1Query`

| Property | Type | Description |
|----------|------|-------------|
| `csvDelimiter` | `string` | Delimiter used in the CSV file, if `outputFormat` is set to `csv`. Defaults to the `,` (comma) ch... |
| `dimensions` | `array<string>` | A list of dimensions. https://docs.apigee.com/api-platform/analytics/analytics-reference#dimensions |
| `envgroupHostname` | `string` | Hostname needs to be specified if query intends to run at host level. This field is only allowed ... |
| `filter` | `string` | Boolean expression that can be used to filter data. Filter expressions can be combined using AND/... |
| `groupByTimeUnit` | `string` | Time unit used to group the result set. Valid values include: second, minute, hour, day, week, or... |
| `limit` | `integer` | Maximum number of rows that can be returned in the result. |
| `metrics` | `array<GoogleCloudApigeeV1QueryMetric>` | A list of Metrics. |
| `name` | `string` | Asynchronous Query Name. |
| `outputFormat` | `string` | Valid values include: `csv` or `json`. Defaults to `json`. Note: Configure the delimiter for CSV ... |
| `reportDefinitionId` | `string` | Asynchronous Report ID. |
| `timeRange` | `any` | Required. Time range for the query. Can use the following predefined strings to specify the time ... |

### `GoogleCloudApigeeV1QueryMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `dimensions` | `array<string>` | Dimensions of the AsyncQuery. |
| `endTimestamp` | `string` | End timestamp of the query range. |
| `metrics` | `array<string>` | Metrics of the AsyncQuery. Example: ["name:message_count,func:sum,alias:sum_message_count"] |
| `outputFormat` | `string` | Output format. |
| `startTimestamp` | `string` | Start timestamp of the query range. |
| `timeUnit` | `string` | Query GroupBy time unit. |

### `GoogleCloudApigeeV1QueryMetric`

More info about Metric: https://docs.apigee.com/api-platform/analytics/analytics-reference#metrics

| Property | Type | Description |
|----------|------|-------------|
| `alias` | `string` | Alias for the metric. Alias will be used to replace metric name in query results. |
| `function` | `string` | Aggregation function: avg, min, max, or sum. |
| `name` | `string` | Required. Metric name. |
| `operator` | `string` | One of `+`, `-`, `/`, `%`, `*`. |
| `value` | `string` | Operand value should be provided when operator is set. |

### `GoogleCloudApigeeV1QueryTabularStatsRequest`

Request payload representing the query to be run for fetching security statistics as rows.

| Property | Type | Description |
|----------|------|-------------|
| `dimensions` | `array<string>` | Required. List of dimension names to group the aggregations by. |
| `filter` | `string` | Filter further on specific dimension values. Follows the same grammar as custom report's filter e... |
| `metrics` | `array<GoogleCloudApigeeV1MetricAggregation>` | Required. List of metrics and their aggregations. |
| `pageSize` | `integer` | Page size represents the number of rows. |
| `pageToken` | `string` | Identifies a sequence of rows. |
| `timeRange` | `GoogleTypeInterval` | Time range for the stats. |

### `GoogleCloudApigeeV1QueryTabularStatsResponse`

Encapsulates two kinds of stats that are results of the dimensions and aggregations requested. - Tabular rows. - Time series data. Example of tabular rows, Represents security stats results as a row of flat values.

| Property | Type | Description |
|----------|------|-------------|
| `columns` | `array<string>` | Column names corresponding to the same order as the inner values in the stats field. |
| `nextPageToken` | `string` | Next page token. |
| `values` | `array<array>` | Resultant rows from the executed query. |

### `GoogleCloudApigeeV1QueryTimeSeriesStatsRequest`

QueryTimeSeriesStatsRequest represents a query that returns a collection of time series sequences grouped by their values.

| Property | Type | Description |
|----------|------|-------------|
| `dimensions` | `array<string>` | List of dimension names to group the aggregations by. If no dimensions are passed, a single trend... |
| `filter` | `string` | Filter further on specific dimension values. Follows the same grammar as custom report's filter e... |
| `metrics` | `array<GoogleCloudApigeeV1MetricAggregation>` | Required. List of metrics and their aggregations. |
| `pageSize` | `integer` | Page size represents the number of time series sequences, one per unique set of dimensions and th... |
| `pageToken` | `string` | Page token stands for a specific collection of time series sequences. |
| `timeRange` | `GoogleTypeInterval` | Required. Time range for the stats. |
| `timestampOrder` | `string` | Order the sequences in increasing or decreasing order of timestamps. Default is descending order ... |
| `windowSize` | `string` | Time buckets to group the stats by. |

### `GoogleCloudApigeeV1QueryTimeSeriesStatsResponse`

Represents security stats result as a collection of time series sequences.

| Property | Type | Description |
|----------|------|-------------|
| `columns` | `array<string>` | Column names corresponding to the same order as the inner values in the stats field. |
| `nextPageToken` | `string` | Next page token. |
| `values` | `array<GoogleCloudApigeeV1QueryTimeSeriesStatsResponseSequence>` | Results of the query returned as a JSON array. |

### `GoogleCloudApigeeV1QueryTimeSeriesStatsResponseSequence`

A sequence of time series.

| Property | Type | Description |
|----------|------|-------------|
| `dimensions` | `object` | Map of dimensions and their values that uniquely identifies a time series sequence. |
| `points` | `array<array>` | List of points. First value of each inner list is a timestamp. |

### `GoogleCloudApigeeV1Quota`

Quota contains the essential parameters needed that can be applied on the resources, methods, API source combination associated with this API product. While Quota is optional, setting it prevents requests from exceeding the provisioned parameters.

| Property | Type | Description |
|----------|------|-------------|
| `interval` | `string` | Required. Time interval over which the number of request messages is calculated. |
| `limit` | `string` | Required. Upper limit allowed for the time interval and time unit specified. Requests exceeding t... |
| `timeUnit` | `string` | Time unit defined for the `interval`. Valid values include `minute`, `hour`, `day`, or `month`. I... |

### `GoogleCloudApigeeV1RatePlan`

Rate plan details.

| Property | Type | Description |
|----------|------|-------------|
| `apiproduct` | `string` | Name of the API product that the rate plan is associated with. |
| `billingPeriod` | `string` | Frequency at which the customer will be billed. |
| `consumptionPricingRates` | `array<GoogleCloudApigeeV1RateRange>` | API call volume ranges and the fees charged when the total number of API calls is within a given ... |
| `consumptionPricingType` | `string` | Pricing model used for consumption-based charges. |
| `createdAt` | `string` | Output only. Time that the rate plan was created in milliseconds since epoch. |
| `currencyCode` | `string` | Currency to be used for billing. Consists of a three-letter code as defined by the [ISO 4217](htt... |
| `description` | `string` | Description of the rate plan. |
| `displayName` | `string` | Display name of the rate plan. |
| `endTime` | `string` | Time when the rate plan will expire in milliseconds since epoch. Set to 0 or `null` to indicate t... |
| `fixedFeeFrequency` | `integer` | Frequency at which the fixed fee is charged. |
| `fixedRecurringFee` | `GoogleTypeMoney` | Fixed amount that is charged at a defined interval and billed in advance of use of the API produc... |
| `lastModifiedAt` | `string` | Output only. Time the rate plan was last modified in milliseconds since epoch. |
| `name` | `string` | Output only. Name of the rate plan. |
| `paymentFundingModel` | `string` | DEPRECATED: This field is no longer supported and will eventually be removed when Apigee Hybrid 1... |
| `revenueShareRates` | `array<GoogleCloudApigeeV1RevenueShareRange>` | Details of the revenue sharing model. |
| `revenueShareType` | `string` | Method used to calculate the revenue that is shared with developers. |
| `setupFee` | `GoogleTypeMoney` | Initial, one-time fee paid when purchasing the API product. |
| `startTime` | `string` | Time when the rate plan becomes active in milliseconds since epoch. |
| `state` | `string` | Current state of the rate plan (draft or published). |

### `GoogleCloudApigeeV1RateRange`

API call volume range and the fees charged when the total number of API calls is within the range.

| Property | Type | Description |
|----------|------|-------------|
| `end` | `string` | Ending value of the range. Set to 0 or `null` for the last range of values. |
| `fee` | `GoogleTypeMoney` | Fee to charge when total number of API calls falls within this range. |
| `start` | `string` | Starting value of the range. Set to 0 or `null` for the initial range of values. |

### `GoogleCloudApigeeV1Reference`

A Reference configuration. References must refer to a keystore that also exists in the parent environment.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. A human-readable description of this reference. |
| `name` | `string` | Required. The resource id of this reference. Values must match the regular expression [\w\s\-.]+. |
| `refers` | `string` | Required. The id of the resource to which this reference refers. Must be the id of a resource tha... |
| `resourceType` | `string` | The type of resource referred to by this reference. Valid values are 'KeyStore' or 'TrustStore'. |

### `GoogleCloudApigeeV1ReferenceConfig`

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Name of the reference in the following format: `organizations/{org}/environments/{env}/references... |
| `resourceName` | `string` | Name of the referenced resource in the following format: `organizations/{org}/environments/{env}/... |

### `GoogleCloudApigeeV1ReportInstanceStatusRequest`

Request for ReportInstanceStatus.

| Property | Type | Description |
|----------|------|-------------|
| `instanceUid` | `string` | A unique ID for the instance which is guaranteed to be unique in case the user installs multiple ... |
| `reportTime` | `string` | The time the report was generated in the runtime. Used to prevent an old status from overwriting ... |
| `resources` | `array<GoogleCloudApigeeV1ResourceStatus>` | Status for config resources |

### `GoogleCloudApigeeV1ReportInstanceStatusResponse`

Placeholder for future enhancements to status reporting protocol

### `GoogleCloudApigeeV1ReportProperty`

| Property | Type | Description |
|----------|------|-------------|
| `property` | `string` | name of the property |
| `value` | `array<GoogleCloudApigeeV1Attribute>` | property values |

### `GoogleCloudApigeeV1ResourceConfig`

| Property | Type | Description |
|----------|------|-------------|
| `location` | `string` | Location of the resource as a URI. |
| `name` | `string` | Resource name in the following format: `organizations/{org}/environments/{env}/resourcefiles/{typ... |

### `GoogleCloudApigeeV1ResourceFile`

Metadata about a resource file.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | ID of the resource file. |
| `type` | `string` | Resource file type. {{ resource_file_type }} |

### `GoogleCloudApigeeV1ResourceFiles`

List of resource files.

| Property | Type | Description |
|----------|------|-------------|
| `resourceFile` | `array<GoogleCloudApigeeV1ResourceFile>` | List of resource files. |

### `GoogleCloudApigeeV1ResourceStatus`

The status of a resource loaded in the runtime.

| Property | Type | Description |
|----------|------|-------------|
| `resource` | `string` | The resource name. Currently only two resources are supported: EnvironmentGroup - organizations/{... |
| `revisions` | `array<GoogleCloudApigeeV1RevisionStatus>` | Revisions of the resource currently deployed in the instance. |
| `totalReplicas` | `integer` | The total number of replicas that should have this resource. |
| `uid` | `string` | The uid of the resource. In the unexpected case that the instance has multiple uids for the same ... |

### `GoogleCloudApigeeV1Result`

Result is short for "action result", could be different types identified by "action_result" field. Supported types: 1. DebugInfo : generic debug info collected by runtime recorded as a list of properties. For example, the contents could be virtual host info, state change result, or execution metadata. Required fields : properties, timestamp 2. RequestMessage: information of a http request. Contains headers, request URI and http methods type.Required fields : headers, uri, verb 3. ResponseMessage: information of a http response. Contains headers, reason phrase and http status code. Required fields : headers, reasonPhrase, statusCode 4. ErrorMessage: information of a http error message. Contains detail error message, reason phrase and status code. Required fields : content, headers, reasonPhrase, statusCode 5. VariableAccess: a list of variable access actions, can be Get, Set and Remove. Required fields : accessList

| Property | Type | Description |
|----------|------|-------------|
| `ActionResult` | `string` | Type of the action result. Can be one of the five: DebugInfo, RequestMessage, ResponseMessage, Er... |
| `accessList` | `array<GoogleCloudApigeeV1Access>` | A list of variable access actions agaist the api proxy. Supported values: Get, Set, Remove. |
| `content` | `string` | Error message content. for example, "content" : "{\"fault\":{\"faultstring\":\"API timed out\",\"... |
| `headers` | `array<GoogleCloudApigeeV1Property>` | A list of HTTP headers. for example, '"headers" : [ { "name" : "Content-Length", "value" : "83" }... |
| `properties` | `GoogleCloudApigeeV1Properties` | Name value pairs used for DebugInfo ActionResult. |
| `reasonPhrase` | `string` | HTTP response phrase |
| `statusCode` | `string` | HTTP response code |
| `timestamp` | `string` | Timestamp of when the result is recorded. Its format is dd-mm-yy hh:mm:ss:xxx. For example, `"tim... |
| `uRI` | `string` | The relative path of the api proxy. for example, `"uRI" : "/iloveapis"` |
| `verb` | `string` | HTTP method verb |

### `GoogleCloudApigeeV1RevenueShareRange`

API call volume range and the percentage of revenue to share with the developer when the total number of API calls is within the range.

| Property | Type | Description |
|----------|------|-------------|
| `end` | `string` | Ending value of the range. Set to 0 or `null` for the last range of values. |
| `sharePercentage` | `number` | Percentage of the revenue to be shared with the developer. For example, to share 21 percent of th... |
| `start` | `string` | Starting value of the range. Set to 0 or `null` for the initial range of values. |

### `GoogleCloudApigeeV1RevisionStatus`

The status of a specific resource revision.

| Property | Type | Description |
|----------|------|-------------|
| `errors` | `array<GoogleCloudApigeeV1UpdateError>` | Errors reported when attempting to load this revision. |
| `jsonSpec` | `string` | The json content of the resource revision. Large specs should be sent individually via the spec f... |
| `replicas` | `integer` | The number of replicas that have successfully loaded this revision. |
| `revisionId` | `string` | The revision of the resource. |

### `GoogleCloudApigeeV1RoutingRule`

| Property | Type | Description |
|----------|------|-------------|
| `basepath` | `string` | URI path prefix used to route to the specified environment. May contain one or more wildcards. Fo... |
| `deploymentGroup` | `string` | Name of a deployment group in an environment bound to the environment group in the following form... |
| `envGroupRevision` | `string` | The env group config revision_id when this rule was added or last updated. This value is set when... |
| `environment` | `string` | Name of an environment bound to the environment group in the following format: `organizations/{or... |
| `otherTargets` | `array<string>` | Conflicting targets, which will be resource names specifying either deployment groups or environm... |
| `receiver` | `string` | The resource name of the proxy revision that is receiving this basepath in the following format: ... |
| `updateTime` | `string` | The unix timestamp when this rule was updated. This is updated whenever env_group_revision is upd... |

### `GoogleCloudApigeeV1RuntimeAddonsConfig`

RuntimeAddonsConfig defines the runtime configurations for add-ons in an environment.

| Property | Type | Description |
|----------|------|-------------|
| `analyticsConfig` | `GoogleCloudApigeeV1RuntimeAnalyticsConfig` | Runtime configuration for Analytics add-on. |
| `apiSecurityConfig` | `GoogleCloudApigeeV1RuntimeApiSecurityConfig` | Runtime configuration for API Security add-on. |
| `name` | `string` | Name of the addons config in the format: `organizations/{org}/environments/{env}/addonsConfig` |
| `revisionId` | `string` | Revision number used by the runtime to detect config changes. |
| `uid` | `string` | UID is to detect if config is recreated after deletion. The add-on config will only be deleted wh... |

### `GoogleCloudApigeeV1RuntimeAnalyticsConfig`

Runtime configuration for the Analytics add-on.

| Property | Type | Description |
|----------|------|-------------|
| `billingPipelineEnabled` | `boolean` | If Runtime should send billing data to AX or not. |
| `enabled` | `boolean` | If the Analytics is enabled or not. |

### `GoogleCloudApigeeV1RuntimeApiSecurityConfig`

Runtime configuration for the API Security add-on.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | If the API Security is enabled or not. |

### `GoogleCloudApigeeV1RuntimeConfig`

Runtime configuration for the organization. Response for GetRuntimeConfig.

| Property | Type | Description |
|----------|------|-------------|
| `analyticsBucket` | `string` | Cloud Storage bucket used for uploading Analytics records. |
| `name` | `string` | Name of the resource in the following format: `organizations/{org}/runtimeConfig`. |
| `tenantProjectId` | `string` | Output only. Tenant project ID associated with the Apigee organization. The tenant project is use... |
| `traceBucket` | `string` | Cloud Storage bucket used for uploading Trace records. |

### `GoogleCloudApigeeV1RuntimeTraceConfig`

NEXT ID: 9 RuntimeTraceConfig defines the configurations for distributed trace in an environment.

| Property | Type | Description |
|----------|------|-------------|
| `endpoint` | `string` | Endpoint of the exporter. |
| `exporter` | `string` | Exporter that is used to view the distributed trace captured using OpenCensus. An exporter sends ... |
| `name` | `string` | Name of the trace config in the following format: `organizations/{org}/environment/{env}/traceCon... |
| `openTelemetryProtocolEnabled` | `boolean` | If `true`, the runtime uses OpenTelemetry Protocol (OTLP) to send trace data. Configuration Requi... |
| `overrides` | `array<GoogleCloudApigeeV1RuntimeTraceConfigOverride>` | List of trace configuration overrides for spicific API proxies. |
| `revisionCreateTime` | `string` | The timestamp that the revision was created or updated. |
| `revisionId` | `string` | Revision number which can be used by the runtime to detect if the trace config has changed betwee... |
| `samplingConfig` | `GoogleCloudApigeeV1RuntimeTraceSamplingConfig` | Trace configuration for all API proxies in an environment. |

### `GoogleCloudApigeeV1RuntimeTraceConfigOverride`

NEXT ID: 8 Trace configuration override for a specific API proxy in an environment.

| Property | Type | Description |
|----------|------|-------------|
| `apiProxy` | `string` | Name of the API proxy that will have its trace configuration overridden following format: `organi... |
| `name` | `string` | Name of the trace config override in the following format: `organizations/{org}/environment/{env}... |
| `openTelemetryProtocolEnabled` | `boolean` | If `true`, the runtime uses OpenTelemetry Protocol (OTLP) to send trace data. Configuration Requi... |
| `revisionCreateTime` | `string` | The timestamp that the revision was created or updated. |
| `revisionId` | `string` | Revision number which can be used by the runtime to detect if the trace config override has chang... |
| `samplingConfig` | `GoogleCloudApigeeV1RuntimeTraceSamplingConfig` | Trace configuration override for a specific API proxy in an environment. |
| `uid` | `string` | Unique ID for the configuration override. The ID will only change if the override is deleted and ... |

### `GoogleCloudApigeeV1RuntimeTraceSamplingConfig`

NEXT ID: 3 RuntimeTraceSamplingConfig represents the detail settings of distributed tracing. Only the fields that are defined in the distributed trace configuration can be overridden using the distribute trace configuration override APIs.

| Property | Type | Description |
|----------|------|-------------|
| `sampler` | `string` | Sampler of distributed tracing. OFF is the default value. |
| `samplingRate` | `number` | Field sampling rate. This value is only applicable when using the PROBABILITY sampler. The suppor... |

### `GoogleCloudApigeeV1ScheduledMaintenance`

Scheduled maintenance information for an instance.

| Property | Type | Description |
|----------|------|-------------|
| `startTime` | `string` | Output only. The start time (UTC) of the scheduled maintenance. |

### `GoogleCloudApigeeV1Schema`

Response for Schema call

| Property | Type | Description |
|----------|------|-------------|
| `dimensions` | `array<GoogleCloudApigeeV1SchemaSchemaElement>` | List of schema fields grouped as dimensions. |
| `meta` | `array<string>` | Additional metadata associated with schema. This is a legacy field and usually consists of an emp... |
| `metrics` | `array<GoogleCloudApigeeV1SchemaSchemaElement>` | List of schema fields grouped as dimensions that can be used with an aggregate function such as `... |

### `GoogleCloudApigeeV1SchemaSchemaElement`

Message type for the schema element

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Name of the field. |
| `properties` | `GoogleCloudApigeeV1SchemaSchemaProperty` | Properties for the schema field. For example: { "createTime": "2016-02-26T10:23:09.592Z", "custom... |

### `GoogleCloudApigeeV1SchemaSchemaProperty`

Properties for the schema field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Time the field was created in RFC3339 string form. For example: `2016-02-26T10:23:09.592Z`. |
| `custom` | `string` | Flag that specifies whether the field is standard in the dataset or a custom field created by the... |
| `type` | `string` | Data type of the field. |

### `GoogleCloudApigeeV1Score`

Represents Security Score.

| Property | Type | Description |
|----------|------|-------------|
| `component` | `GoogleCloudApigeeV1ScoreComponent` | Component containing score, recommendations and actions. |
| `subcomponents` | `array<GoogleCloudApigeeV1ScoreComponent>` | List of all the drilldown score components. |
| `timeRange` | `GoogleTypeInterval` | Start and end time for the score. |

### `GoogleCloudApigeeV1ScoreComponent`

Component is an individual security element that is scored.

| Property | Type | Description |
|----------|------|-------------|
| `calculateTime` | `string` | Time when score was calculated. |
| `dataCaptureTime` | `string` | Time in the requested time period when data was last captured to compute the score. |
| `drilldownPaths` | `array<string>` | List of paths for next components. |
| `recommendations` | `array<GoogleCloudApigeeV1ScoreComponentRecommendation>` | List of recommendations to improve API security. |
| `score` | `integer` | Score for the component. |
| `scorePath` | `string` | Path of the component. Example: /org@myorg/envgroup@myenvgroup/proxies/proxy@myproxy |

### `GoogleCloudApigeeV1ScoreComponentRecommendation`

Recommendation based on security concerns and score.

| Property | Type | Description |
|----------|------|-------------|
| `actions` | `array<GoogleCloudApigeeV1ScoreComponentRecommendationAction>` | Actions for the recommendation to improve the security score. |
| `description` | `string` | Description of the recommendation. |
| `impact` | `integer` | Potential impact of this recommendation on the overall score. This denotes how important this rec... |
| `title` | `string` | Title represents recommendation title. |

### `GoogleCloudApigeeV1ScoreComponentRecommendationAction`

Action to improve security score.

| Property | Type | Description |
|----------|------|-------------|
| `actionContext` | `GoogleCloudApigeeV1ScoreComponentRecommendationActionActionContext` | Action context for the action. |
| `description` | `string` | Description of the action. |

### `GoogleCloudApigeeV1ScoreComponentRecommendationActionActionContext`

Action context are all the relevant details for the action.

| Property | Type | Description |
|----------|------|-------------|
| `documentationLink` | `string` | Documentation link for the action. |

### `GoogleCloudApigeeV1SecurityAction`

A SecurityAction is rule that can be enforced at an environment level. The result is one of: - A denied API call - An explicitly allowed API call - A flagged API call (HTTP headers added before the target receives it) At least one condition is required to create a SecurityAction.

| Property | Type | Description |
|----------|------|-------------|
| `allow` | `GoogleCloudApigeeV1SecurityActionAllow` | Allow a request through if it matches this SecurityAction. |
| `apiProxies` | `array<string>` | Optional. If unset, this would apply to all proxies in the environment. If set, this action is en... |
| `conditionConfig` | `GoogleCloudApigeeV1SecurityActionConditionConfig` | Required. A valid SecurityAction must contain at least one condition. |
| `createTime` | `string` | Output only. The create time for this SecurityAction. |
| `deny` | `GoogleCloudApigeeV1SecurityActionDeny` | Deny a request through if it matches this SecurityAction. |
| `description` | `string` | Optional. An optional user provided description of the SecurityAction. |
| `expireTime` | `string` | The expiration for this SecurityAction. |
| `flag` | `GoogleCloudApigeeV1SecurityActionFlag` | Flag a request through if it matches this SecurityAction. |
| `name` | `string` | Immutable. This field is ignored during creation as per AIP-133. Please set the `security_action_... |
| `state` | `string` | Required. Only an ENABLED SecurityAction is enforced. An ENABLED SecurityAction past its expirati... |
| `ttl` | `string` | Input only. The TTL for this SecurityAction. |
| `updateTime` | `string` | Output only. The update time for this SecurityAction. This reflects when this SecurityAction chan... |

### `GoogleCloudApigeeV1SecurityActionAllow`

Message that should be set in case of an Allow Action. This does not have any fields.

### `GoogleCloudApigeeV1SecurityActionConditionConfig`

The following are a list of conditions. A valid SecurityAction must contain at least one condition. Within a condition, each element is ORed. Across conditions elements are ANDed. For example if a SecurityAction has the following: ip_address_ranges: ["ip1", "ip2"] and bot_reasons: ["Flooder", "Robot Abuser"] then this is interpreted as: enforce the action if the incoming request has ((ip_address_ranges = "ip1" OR ip_address_ranges = "ip2") AND (bot_reasons="Flooder" OR bot_reasons="Robot Abuser")). Conditions other than ip_address_ranges and bot_reasons cannot be ANDed.

| Property | Type | Description |
|----------|------|-------------|
| `accessTokens` | `array<string>` | Optional. A list of access_tokens. Limit 1000 per action. |
| `apiKeys` | `array<string>` | Optional. A list of API keys. Limit 1000 per action. |
| `apiProducts` | `array<string>` | Optional. A list of API Products. Limit 1000 per action. |
| `asns` | `array<string>` | Optional. A list of ASN numbers to act on, e.g. 23. https://en.wikipedia.org/wiki/Autonomous_syst... |
| `botReasons` | `array<string>` | Optional. A list of Bot Reasons. Current options: Flooder, Brute Guessor, Static Content Scraper,... |
| `developerApps` | `array<string>` | Optional. A list of developer apps. Limit 1000 per action. |
| `developers` | `array<string>` | Optional. A list of developers. Limit 1000 per action. |
| `httpMethods` | `array<string>` | Optional. Act only on particular HTTP methods. E.g. A read-only API can block POST/PUT/DELETE met... |
| `ipAddressRanges` | `array<string>` | Optional. A list of IP addresses. This could be either IPv4 or IPv6. Limited to 100 per action. |
| `regionCodes` | `array<string>` | Optional. A list of countries/region codes to act on, e.g. US. This follows https://en.wikipedia.... |
| `userAgents` | `array<string>` | Optional. A list of user agents to deny. We look for exact matches. Limit 50 per action. |

### `GoogleCloudApigeeV1SecurityActionDeny`

Message that should be set in case of a Deny Action.

| Property | Type | Description |
|----------|------|-------------|
| `responseCode` | `integer` | Optional. The HTTP response code if the Action = DENY. |

### `GoogleCloudApigeeV1SecurityActionFlag`

The message that should be set in the case of a Flag action.

| Property | Type | Description |
|----------|------|-------------|
| `headers` | `array<GoogleCloudApigeeV1SecurityActionHttpHeader>` | Optional. A list of HTTP headers to be sent to the target in case of a FLAG SecurityAction. Limit... |

### `GoogleCloudApigeeV1SecurityActionHttpHeader`

An HTTP header.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The header name to be sent to the target. |
| `value` | `string` | The header value to be sent to the target. |

### `GoogleCloudApigeeV1SecurityActionsConfig`

SecurityActionsConfig reflects the current state of the SecurityActions feature. This is a singleton resource: https://google.aip.dev/156

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | The flag that controls whether this feature is enabled. This is `unset` by default. When this fla... |
| `name` | `string` | This is a singleton resource, the name will always be set by SecurityActions and any user input w... |
| `updateTime` | `string` | Output only. The update time for configuration. |

### `GoogleCloudApigeeV1SecurityAssessmentResult`

The security assessment result for one resource.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | The time of the assessment of this resource. This could lag behind `assessment_time` due to cachi... |
| `error` | `GoogleRpcStatus` | The error status if scoring fails. |
| `resource` | `GoogleCloudApigeeV1SecurityAssessmentResultResource` | The assessed resource. |
| `scoringResult` | `GoogleCloudApigeeV1SecurityAssessmentResultScoringResult` | The result of the assessment. |

### `GoogleCloudApigeeV1SecurityAssessmentResultResource`

Resource for which we are computing security assessment.

| Property | Type | Description |
|----------|------|-------------|
| `apiHubDeploymentDetails` | `GoogleCloudApigeeV1SecurityAssessmentResultResourceApiHubDeploymentDetails` | Output only. Additional details for the API Hub deployment. |
| `apiHubGatewayType` | `string` | Optional. |
| `name` | `string` | Required. Name of this resource. For an Apigee API Proxy, this should be the id of the API proxy.... |
| `resourceRevisionId` | `string` | The revision id for the resource. In case of Apigee, this is proxy revision id. |
| `type` | `string` | Required. Type of this resource. |

### `GoogleCloudApigeeV1SecurityAssessmentResultResourceApiHubDeploymentDetails`

Additional details if the resource is an API Hub deployment.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The display name of the API Hub deployment. |
| `gateway` | `string` | The gateway for the API Hub deployment. Format: `projects/{project}/locations/{location}/plugins/... |
| `gatewayType` | `string` | The gateway type for the API Hub deployment. |
| `resourceUri` | `string` | The resource uri for the API Hub deployment. |
| `sourceProject` | `string` | The source project for the API Hub deployment. |

### `GoogleCloudApigeeV1SecurityAssessmentResultScoringResult`

The result of the assessment.

| Property | Type | Description |
|----------|------|-------------|
| `assessmentRecommendations` | `object` | The recommendations of the assessment. The key is the "name" of the assessment (not display_name)... |
| `dataUpdateTime` | `string` | The time when resource data was last fetched for this resource. This time may be different than w... |
| `failedAssessmentPerWeight` | `object` | The number of failed assessments grouped by its weight. Keys are one of the following: "MAJOR", "... |
| `score` | `integer` | The security score of the assessment. |
| `severity` | `string` |  |

### `GoogleCloudApigeeV1SecurityAssessmentResultScoringResultAssessmentRecommendation`

The message format of a recommendation from the assessment.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The display name of the assessment. |
| `recommendations` | `array<GoogleCloudApigeeV1SecurityAssessmentResultScoringResultAssessmentRecommendationRecommendation>` | The recommended steps of the assessment. |
| `scoreImpact` | `integer` | Score impact indicates the impact on the overall score if the assessment were to pass. |
| `verdict` | `string` | Verdict indicates the assessment result. |
| `weight` | `string` | The weight of the assessment which was set in the profile. |

### `GoogleCloudApigeeV1SecurityAssessmentResultScoringResultAssessmentRecommendationRecommendation`

The format of the assessment recommendation.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | The description of the recommendation. |
| `link` | `GoogleCloudApigeeV1SecurityAssessmentResultScoringResultAssessmentRecommendationRecommendationLink` | The link for the recommendation. |

### `GoogleCloudApigeeV1SecurityAssessmentResultScoringResultAssessmentRecommendationRecommendationLink`

The format for a link in the recommendation.

| Property | Type | Description |
|----------|------|-------------|
| `text` | `string` | The text of the url. (ie: "Learn more") |
| `uri` | `string` | The link itself. |

### `GoogleCloudApigeeV1SecurityFeedback`

Represents a feedback report from an Advanced API Security customer.

| Property | Type | Description |
|----------|------|-------------|
| `comment` | `string` | Optional. Optional text the user can provide for additional, unstructured context. |
| `createTime` | `string` | Output only. The time when this specific feedback id was created. |
| `displayName` | `string` | Optional. The display name of the feedback. |
| `feedbackContexts` | `array<GoogleCloudApigeeV1SecurityFeedbackFeedbackContext>` | Required. One or more attribute/value pairs for constraining the feedback. |
| `feedbackType` | `string` | Required. The type of feedback being submitted. |
| `name` | `string` | Output only. Identifier. The feedback name is intended to be a system-generated uuid. |
| `reason` | `string` | Optional. The reason for the feedback. |
| `updateTime` | `string` | Output only. The time when this specific feedback id was updated. |

### `GoogleCloudApigeeV1SecurityFeedbackFeedbackContext`

FeedbackContext captures the intent of the submitted feedback.

| Property | Type | Description |
|----------|------|-------------|
| `attribute` | `string` | Required. The attribute the user is providing feedback about. |
| `values` | `array<string>` | Required. The values of the attribute the user is providing feedback about. |

### `GoogleCloudApigeeV1SecurityIncident`

Represents an SecurityIncident resource.

| Property | Type | Description |
|----------|------|-------------|
| `detectionTypes` | `array<string>` | Output only. Detection types which are part of the incident. Examples: Flooder, OAuth Abuser, Sta... |
| `displayName` | `string` | Optional. Display name of the security incident. |
| `firstDetectedTime` | `string` | Output only. The time when events associated with the incident were first detected. |
| `lastDetectedTime` | `string` | Output only. The time when events associated with the incident were last detected. |
| `lastObservabilityChangeTime` | `string` | Output only. The time when the incident observability was last changed. |
| `name` | `string` | Immutable. Name of the security incident resource. Format: organizations/{org}/environments/{envi... |
| `observability` | `string` | Optional. Indicates if the user archived this incident. |
| `riskLevel` | `string` | Output only. Risk level of the incident. |
| `trafficCount` | `string` | Total traffic detected as part of the incident. |

### `GoogleCloudApigeeV1SecurityMonitoringCondition`

Security monitoring condition for risk assessment version 2.

| Property | Type | Description |
|----------|------|-------------|
| `apiHubGateway` | `string` | Optional. The API Hub gateway monitored by the security monitoring condition. This should only be... |
| `createTime` | `string` | Output only. The time of the security monitoring condition creation. |
| `include` | `GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsRequestResourceArray` | Include only these resources. |
| `includeAllResources` | `GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsRequestIncludeAll` | Include all resources under the scope. |
| `name` | `string` | Identifier. Name of the security monitoring condition resource. Format: organizations/{org}/secur... |
| `profile` | `string` | Required. ID of security profile of the security monitoring condition. |
| `riskAssessmentType` | `string` | Optional. The risk assessment type of the security monitoring condition. Defaults to ADVANCED_API... |
| `scope` | `string` | Optional. Scope of the security monitoring condition. When RiskAssessmentType is APIGEE, the scop... |
| `totalDeployedResources` | `integer` | Output only. Total number of deployed resources within scope. |
| `totalMonitoredResources` | `integer` | Output only. Total number of monitored resources within this condition. |
| `updateTime` | `string` | Output only. The time of the security monitoring condition update. |

### `GoogleCloudApigeeV1SecurityProfile`

Represents a SecurityProfile resource.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Description of the security profile. |
| `displayName` | `string` | DEPRECATED: DO NOT USE Display name of the security profile. |
| `environments` | `array<GoogleCloudApigeeV1SecurityProfileEnvironment>` | List of environments attached to security profile. |
| `maxScore` | `integer` | Output only. Maximum security score that can be generated by this profile. |
| `minScore` | `integer` | Output only. Minimum security score that can be generated by this profile. |
| `name` | `string` | Immutable. Name of the security profile resource. Format: organizations/{org}/securityProfiles/{p... |
| `profileConfig` | `GoogleCloudApigeeV1ProfileConfig` | Required. Customized profile configuration that computes the security score. |
| `revisionCreateTime` | `string` | Output only. The time when revision was created. |
| `revisionId` | `string` | Output only. Revision ID of the security profile. |
| `revisionPublishTime` | `string` | Output only. DEPRECATED: DO NOT USE The time when revision was published. Once published, the sec... |
| `revisionUpdateTime` | `string` | Output only. The time when revision was updated. |
| `scoringConfigs` | `array<GoogleCloudApigeeV1SecurityProfileScoringConfig>` | List of profile scoring configs in this revision. |

### `GoogleCloudApigeeV1SecurityProfileEnvironment`

Environment information of attached environments. Scoring an environment is enabled only if it is attached to a security profile.

| Property | Type | Description |
|----------|------|-------------|
| `attachTime` | `string` | Output only. Time at which environment was attached to the security profile. |
| `environment` | `string` | Output only. Name of the environment. |

### `GoogleCloudApigeeV1SecurityProfileEnvironmentAssociation`

Represents a SecurityProfileEnvironmentAssociation resource.

| Property | Type | Description |
|----------|------|-------------|
| `attachTime` | `string` | Output only. The time when environment was attached to the security profile. |
| `name` | `string` | Immutable. Name of the environment that the profile is attached to. |
| `securityProfileRevisionId` | `string` | DEPRECATED: DO NOT USE Revision ID of the security profile. |

### `GoogleCloudApigeeV1SecurityProfileScoringConfig`

Security configurations to manage scoring.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Description of the config. |
| `scorePath` | `string` | Path of the component config used for scoring. |
| `title` | `string` | Title of the config. |

### `GoogleCloudApigeeV1SecurityProfileV2`

Security profile for risk assessment version 2.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time of the security profile creation. |
| `description` | `string` | Optional. The description of the security profile. |
| `googleDefined` | `boolean` | Output only. Whether the security profile is google defined. |
| `name` | `string` | Identifier. Name of the security profile v2 resource. Format: organizations/{org}/securityProfile... |
| `profileAssessmentConfigs` | `object` | Required. The configuration for each assessment in this profile. Key is the name/id of the assess... |
| `riskAssessmentType` | `string` | Optional. The risk assessment type of the security profile. Defaults to ADVANCED_API_SECURITY. |
| `updateTime` | `string` | Output only. The time of the security profile update. |

### `GoogleCloudApigeeV1SecurityProfileV2ProfileAssessmentConfig`

The configuration definition for a specific assessment.

| Property | Type | Description |
|----------|------|-------------|
| `include` | `GoogleCloudApigeeV1SecurityProfileV2ProfileAssessmentConfigApiHubGatewayTypeArray` | Include only these Gateway Types. |
| `weight` | `string` | The weight of the assessment. |

### `GoogleCloudApigeeV1SecurityProfileV2ProfileAssessmentConfigApiHubGatewayTypeArray`

Message for the array of API Hub Gateway Types.

| Property | Type | Description |
|----------|------|-------------|
| `gatewayTypes` | `array<string>` | Required. The array of API Hub Gateway Types. |

### `GoogleCloudApigeeV1SecurityReport`

SecurityReport saves all the information about the created security report.

| Property | Type | Description |
|----------|------|-------------|
| `created` | `string` | Creation time of the query. |
| `displayName` | `string` | Display Name specified by the user. |
| `envgroupHostname` | `string` | Hostname is available only when query is executed at host level. |
| `error` | `string` | Error is set when query fails. |
| `executionTime` | `string` | ExecutionTime is available only after the query is completed. |
| `queryParams` | `GoogleCloudApigeeV1SecurityReportMetadata` | Contains information like metrics, dimenstions etc of the Security Report. |
| `reportDefinitionId` | `string` | Report Definition ID. |
| `result` | `GoogleCloudApigeeV1SecurityReportResultMetadata` | Result is available only after the query is completed. |
| `resultFileSize` | `string` | ResultFileSize is available only after the query is completed. |
| `resultRows` | `string` | ResultRows is available only after the query is completed. |
| `self` | `string` | Self link of the query. Example: `/organizations/myorg/environments/myenv/securityReports/9cfc0d8... |
| `state` | `string` | Query state could be "enqueued", "running", "completed", "expired" and "failed". |
| `updated` | `string` | Output only. Last updated timestamp for the query. |

### `GoogleCloudApigeeV1SecurityReportMetadata`

Metadata for the security report.

| Property | Type | Description |
|----------|------|-------------|
| `dimensions` | `array<string>` | Dimensions of the SecurityReport. |
| `endTimestamp` | `string` | End timestamp of the query range. |
| `metrics` | `array<string>` | Metrics of the SecurityReport. Example: ["name:bot_count,func:sum,alias:sum_bot_count"] |
| `mimeType` | `string` | MIME type / Output format. |
| `startTimestamp` | `string` | Start timestamp of the query range. |
| `timeUnit` | `string` | Query GroupBy time unit. Example: "seconds", "minute", "hour" |

### `GoogleCloudApigeeV1SecurityReportQuery`

Body structure when user makes a request to create a security report.

| Property | Type | Description |
|----------|------|-------------|
| `csvDelimiter` | `string` | Delimiter used in the CSV file, if `outputFormat` is set to `csv`. Defaults to the `,` (comma) ch... |
| `dimensions` | `array<string>` | A list of dimensions. https://docs.apigee.com/api-platform/analytics/analytics-reference#dimensions |
| `displayName` | `string` | Security Report display name which users can specify. |
| `envgroupHostname` | `string` | Hostname needs to be specified if query intends to run at host level. This field is only allowed ... |
| `filter` | `string` | Boolean expression that can be used to filter data. Filter expressions can be combined using AND/... |
| `groupByTimeUnit` | `string` | Time unit used to group the result set. Valid values include: second, minute, hour, day, week, or... |
| `limit` | `integer` | Maximum number of rows that can be returned in the result. |
| `metrics` | `array<GoogleCloudApigeeV1SecurityReportQueryMetric>` | A list of Metrics. |
| `mimeType` | `string` | Valid values include: `csv` or `json`. Defaults to `json`. Note: Configure the delimiter for CSV ... |
| `reportDefinitionId` | `string` | Report Definition ID. |
| `timeRange` | `any` | Required. Time range for the query. Can use the following predefined strings to specify the time ... |

### `GoogleCloudApigeeV1SecurityReportQueryMetric`

Metric of the Query

| Property | Type | Description |
|----------|------|-------------|
| `aggregationFunction` | `string` | Aggregation function: avg, min, max, or sum. |
| `alias` | `string` | Alias for the metric. Alias will be used to replace metric name in query results. |
| `name` | `string` | Required. Metric name. |
| `operator` | `string` | One of `+`, `-`, `/`, `%`, `*`. |
| `value` | `string` | Operand value should be provided when operator is set. |

### `GoogleCloudApigeeV1SecurityReportResultMetadata`

Contains informations about the security report results.

| Property | Type | Description |
|----------|------|-------------|
| `expires` | `string` | Output only. Expire_time is set to 7 days after report creation. Query result will be unaccessabl... |
| `self` | `string` | Self link of the query results. Example: `/organizations/myorg/environments/myenv/securityReports... |

### `GoogleCloudApigeeV1SecurityReportResultView`

The response for security report result view APIs.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | Error code when there is a failure. |
| `error` | `string` | Error message when there is a failure. |
| `metadata` | `GoogleCloudApigeeV1SecurityReportMetadata` | Metadata contains information like metrics, dimenstions etc of the security report. |
| `rows` | `array<any>` | Rows of security report result. Each row is a JSON object. Example: {sum(message_count): 1, devel... |
| `state` | `string` | State of retrieving ResultView. |

### `GoogleCloudApigeeV1SecuritySettings`

SecuritySettings reflects the current state of the SecuritySettings feature.

| Property | Type | Description |
|----------|------|-------------|
| `mlRetrainingFeedbackEnabled` | `boolean` | Optional. If true the user consents to the use of ML models for Abuse detection. |
| `name` | `string` | Identifier. Full resource name is always `organizations/{org}/securitySettings`. |

### `GoogleCloudApigeeV1ServiceIssuersMapping`

| Property | Type | Description |
|----------|------|-------------|
| `emailIds` | `array<string>` | List of trusted issuer email ids. |
| `service` | `string` | String indicating the Apigee service name. |

### `GoogleCloudApigeeV1Session`

Session carries the debug session id and its creation time.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | The debug session ID. |
| `timestampMs` | `string` | The first transaction creation timestamp in millisecond, recorded by UAP. |

### `GoogleCloudApigeeV1SetAddonEnablementRequest`

Request for SetAddonEnablement.

| Property | Type | Description |
|----------|------|-------------|
| `analyticsEnabled` | `boolean` | If the Analytics should be enabled in the environment. |
| `apiSecurityEnabled` | `boolean` | If the API Security should be enabled in the environment. |

### `GoogleCloudApigeeV1SetAddonsRequest`

Request for SetAddons.

| Property | Type | Description |
|----------|------|-------------|
| `addonsConfig` | `GoogleCloudApigeeV1AddonsConfig` | Required. Add-on configurations. |

### `GoogleCloudApigeeV1SharedFlow`

The metadata describing a shared flow

| Property | Type | Description |
|----------|------|-------------|
| `latestRevisionId` | `string` | The id of the most recently created revision for this shared flow. |
| `metaData` | `GoogleCloudApigeeV1EntityMetadata` | Metadata describing the shared flow. |
| `name` | `string` | The ID of the shared flow. |
| `revision` | `array<string>` | A list of revisions of this shared flow. |
| `space` | `string` | Optional. The ID of the space associated with this shared flow. Any IAM policies applied to the s... |

### `GoogleCloudApigeeV1SharedFlowRevision`

The metadata describing a shared flow revision.

| Property | Type | Description |
|----------|------|-------------|
| `configurationVersion` | `GoogleCloudApigeeV1ConfigVersion` | The version of the configuration schema to which this shared flow conforms. The only supported va... |
| `contextInfo` | `string` | A textual description of the shared flow revision. |
| `createdAt` | `string` | Time at which this shared flow revision was created, in milliseconds since epoch. |
| `description` | `string` | Description of the shared flow revision. |
| `displayName` | `string` | The human readable name of this shared flow. |
| `entityMetaDataAsProperties` | `object` | A Key-Value map of metadata about this shared flow revision. |
| `lastModifiedAt` | `string` | Time at which this shared flow revision was most recently modified, in milliseconds since epoch. |
| `name` | `string` | The resource ID of the parent shared flow. |
| `policies` | `array<string>` | A list of policy names included in this shared flow revision. |
| `resourceFiles` | `GoogleCloudApigeeV1ResourceFiles` | The resource files included in this shared flow revision. |
| `resources` | `array<string>` | A list of the resources included in this shared flow revision formatted as "{type}://{name}". |
| `revision` | `string` | The resource ID of this revision. |
| `sharedFlows` | `array<string>` | A list of the shared flow names included in this shared flow revision. |
| `type` | `string` | The string "Application" |

### `GoogleCloudApigeeV1Space`

Organization space resource.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Create timestamp of the space. |
| `displayName` | `string` | Optional. Display name of the space. |
| `name` | `string` | Output only. Identifier. Id of the space. This field is used as the resource name, and must follo... |
| `updateTime` | `string` | Output only. Last modified timestamp of the space. |

### `GoogleCloudApigeeV1Stats`

Encapsulates a `stats` response.

| Property | Type | Description |
|----------|------|-------------|
| `environments` | `array<GoogleCloudApigeeV1StatsEnvironmentStats>` | List of query results on the environment level. |
| `hosts` | `array<GoogleCloudApigeeV1StatsHostStats>` | List of query results grouped by host. |
| `metaData` | `GoogleCloudApigeeV1Metadata` | Metadata information. |

### `GoogleCloudApigeeV1StatsEnvironmentStats`

Encapsulates the environment wrapper: ``` "environments": [ { "metrics": [ { "name": "sum(message_count)", "values": [ "2.52056245E8" ] } ], "name": "prod" } ]```

| Property | Type | Description |
|----------|------|-------------|
| `dimensions` | `array<GoogleCloudApigeeV1DimensionMetric>` | List of metrics grouped under dimensions. |
| `metrics` | `array<GoogleCloudApigeeV1Metric>` | In the final response, only one of the following fields will be present based on the dimensions p... |
| `name` | `string` | Name of the environment. |

### `GoogleCloudApigeeV1StatsHostStats`

Encapsulates the hostname wrapper: ``` "hosts": [ { "metrics": [ { "name": "sum(message_count)", "values": [ "2.52056245E8" ] } ], "name": "example.com" } ]```

| Property | Type | Description |
|----------|------|-------------|
| `dimensions` | `array<GoogleCloudApigeeV1DimensionMetric>` | List of metrics grouped under dimensions. |
| `metrics` | `array<GoogleCloudApigeeV1Metric>` | In the final response, only one of the following fields will be present based on the dimensions p... |
| `name` | `string` | Hostname used in query. |

### `GoogleCloudApigeeV1Subscription`

Pub/Sub subscription of an environment.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Full name of the Pub/Sub subcription. Use the following structure in your request: `subscription ... |

### `GoogleCloudApigeeV1SyncAuthorization`

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Entity tag (ETag) used for optimistic concurrency control as a way to help prevent simultaneous u... |
| `identities` | `array<string>` | Required. Array of service accounts to grant access to control plane resources, each specified us... |

### `GoogleCloudApigeeV1TargetServer`

TargetServer configuration. TargetServers are used to decouple a proxy TargetEndpoint HTTPTargetConnections from concrete URLs for backend services.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. A human-readable description of this TargetServer. |
| `host` | `string` | Required. The host name this target connects to. Value must be a valid hostname as described by R... |
| `isEnabled` | `boolean` | Optional. Enabling/disabling a TargetServer is useful when TargetServers are used in load balanci... |
| `name` | `string` | Required. The resource id of this target server. Values must match the regular expression |
| `port` | `integer` | Required. The port number this target connects to on the given host. Value must be between 1 and ... |
| `protocol` | `string` | Immutable. The protocol used by this TargetServer. |
| `sSLInfo` | `GoogleCloudApigeeV1TlsInfo` | Optional. Specifies TLS configuration info for this TargetServer. The JSON name is `sSLInfo` for ... |

### `GoogleCloudApigeeV1TargetServerConfig`

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Whether the target server is enabled. An empty/omitted value for this field should be interpreted... |
| `host` | `string` | Host name of the target server. |
| `name` | `string` | Target server revision name in the following format: `organizations/{org}/environments/{env}/targ... |
| `port` | `integer` | Port number for the target server. |
| `protocol` | `string` | The protocol used by this target server. |
| `tlsInfo` | `GoogleCloudApigeeV1TlsInfoConfig` | TLS settings for the target server. |

### `GoogleCloudApigeeV1TestDatastoreResponse`

The response for TestDatastore

| Property | Type | Description |
|----------|------|-------------|
| `error` | `string` | Output only. Error message of test connection failure |
| `state` | `string` | Output only. It could be `completed` or `failed` |

### `GoogleCloudApigeeV1TlsInfo`

TLS configuration information for virtual hosts and TargetServers.

| Property | Type | Description |
|----------|------|-------------|
| `ciphers` | `array<string>` | The SSL/TLS cipher suites to be used. For programmable proxies, it must be one of the cipher suit... |
| `clientAuthEnabled` | `boolean` | Optional. Enables two-way TLS. |
| `commonName` | `GoogleCloudApigeeV1TlsInfoCommonName` | The TLS Common Name of the certificate. |
| `enabled` | `boolean` | Required. Enables TLS. If false, neither one-way nor two-way TLS will be enabled. |
| `enforce` | `boolean` | TLS is strictly enforced. |
| `ignoreValidationErrors` | `boolean` | If true, Edge ignores TLS certificate errors. Valid when configuring TLS for target servers and t... |
| `keyAlias` | `string` | Required if `client_auth_enabled` is true. The resource ID for the alias containing the private k... |
| `keyStore` | `string` | Required if `client_auth_enabled` is true. The resource ID of the keystore. |
| `protocols` | `array<string>` | The TLS versioins to be used. |
| `trustStore` | `string` | The resource ID of the truststore. |

### `GoogleCloudApigeeV1TlsInfoCommonName`

| Property | Type | Description |
|----------|------|-------------|
| `value` | `string` | The TLS Common Name string of the certificate. |
| `wildcardMatch` | `boolean` | Indicates whether the cert should be matched against as a wildcard cert. |

### `GoogleCloudApigeeV1TlsInfoConfig`

| Property | Type | Description |
|----------|------|-------------|
| `ciphers` | `array<string>` | List of ciphers that are granted access. |
| `clientAuthEnabled` | `boolean` | Flag that specifies whether client-side authentication is enabled for the target server. Enables ... |
| `commonName` | `GoogleCloudApigeeV1CommonNameConfig` | Common name to validate the target server against. |
| `enabled` | `boolean` | Flag that specifies whether one-way TLS is enabled. Set to `true` to enable one-way TLS. |
| `enforce` | `boolean` | Flag that enforces TLS settings |
| `ignoreValidationErrors` | `boolean` | Flag that specifies whether to ignore TLS certificate validation errors. Set to `true` to ignore ... |
| `keyAlias` | `string` | Name of the alias used for client-side authentication in the following format: `organizations/{or... |
| `keyAliasReference` | `GoogleCloudApigeeV1KeyAliasReference` | Reference name and alias pair to use for client-side authentication. |
| `protocols` | `array<string>` | List of TLS protocols that are granted access. |
| `trustStore` | `string` | Name of the keystore or keystore reference containing trusted certificates for the server in the ... |

### `GoogleCloudApigeeV1TraceConfig`

TraceConfig defines the configurations in an environment of distributed trace.

| Property | Type | Description |
|----------|------|-------------|
| `endpoint` | `string` | Required. Endpoint of the exporter. |
| `exporter` | `string` | Required. Exporter that is used to view the distributed trace captured using OpenCensus. An expor... |
| `samplingConfig` | `GoogleCloudApigeeV1TraceSamplingConfig` | Distributed trace configuration for all API proxies in an environment. You can also override the ... |

### `GoogleCloudApigeeV1TraceConfigOverride`

A representation of a configuration override.

| Property | Type | Description |
|----------|------|-------------|
| `apiProxy` | `string` | ID of the API proxy that will have its trace configuration overridden. |
| `name` | `string` | ID of the trace configuration override specified as a system-generated UUID. |
| `samplingConfig` | `GoogleCloudApigeeV1TraceSamplingConfig` | Trace configuration to override. |

### `GoogleCloudApigeeV1TraceSamplingConfig`

TraceSamplingConfig represents the detail settings of distributed tracing. Only the fields that are defined in the distributed trace configuration can be overridden using the distribute trace configuration override APIs.

| Property | Type | Description |
|----------|------|-------------|
| `sampler` | `string` | Sampler of distributed tracing. OFF is the default value. |
| `samplingRate` | `number` | Field sampling rate. This value is only applicable when using the PROBABILITY sampler. The suppor... |

### `GoogleCloudApigeeV1UpdateAppGroupAppKeyRequest`

Request for UpdateAppGroupAppKey

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` | Approve or revoke the consumer key by setting this value to `approve` or `revoke` respectively. T... |
| `apiProducts` | `array<string>` | The list of API products that will be associated with the credential. This list will be appended ... |
| `appGroupAppKey` | `GoogleCloudApigeeV1AppGroupAppKey` | Note that only Scopes and Attributes of the AppGroupAppKey can be amended. Scopes and Attributes ... |

### `GoogleCloudApigeeV1UpdateError`

Details on why a resource update failed in the runtime.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | Status code. |
| `message` | `string` | User-friendly error message. |
| `resource` | `string` | The sub resource specific to this error (e.g. a proxy deployed within the EnvironmentConfig). If ... |
| `type` | `string` | A string that uniquely identifies the type of error. This provides a more reliable means to dedup... |

### `GoogleCloudApigeeV1UpdateSecurityIncidentRequest`

Request for UpdateSecurityIncident.

| Property | Type | Description |
|----------|------|-------------|
| `securityIncident` | `GoogleCloudApigeeV1SecurityIncident` | Required. The security incident to update. Must contain all existing populated fields of the curr... |
| `updateMask` | `string` | Required. The list of fields to update. Allowed fields are: LINT.IfChange(allowed_update_fields_c... |

### `GoogleIamV1AuditConfig`

Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both `allServices` and a specific service, the union of the two AuditConfigs is used for that service: the log_types specified in each AuditConfig are enabled, and the exempted_members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { "audit_configs": [ { "service": "allServices", "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" }, { "log_type": "ADMIN_READ" } ] }, { "service": "sampleservice.googleapis.com", "audit_log_configs": [ { "log_type": "DATA_READ" }, { "log_type": "DATA_WRITE", "exempted_members": [ "user:aliya@example.com" ] } ] } ] } For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com` from DATA_WRITE logging.

| Property | Type | Description |
|----------|------|-------------|
| `auditLogConfigs` | `array<GoogleIamV1AuditLogConfig>` | The configuration for logging of each type of permission. |
| `service` | `string` | Specifies a service that will be enabled for audit logging. For example, `storage.googleapis.com`... |

### `GoogleIamV1AuditLogConfig`

Provides the configuration for logging a type of permissions. Example: { "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.

| Property | Type | Description |
|----------|------|-------------|
| `exemptedMembers` | `array<string>` | Specifies the identities that do not cause logging for this type of permission. Follows the same ... |
| `logType` | `string` | The log type that this config enables. |

### `GoogleIamV1Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `GoogleTypeExpr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `GoogleIamV1Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `auditConfigs` | `array<GoogleIamV1AuditConfig>` | Specifies cloud audit logging configuration for this policy. |
| `bindings` | `array<GoogleIamV1Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `GoogleIamV1SetIamPolicyRequest`

Request message for `SetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `GoogleIamV1Policy` | REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited ... |
| `updateMask` | `string` | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mas... |

### `GoogleIamV1TestIamPermissionsRequest`

Request message for `TestIamPermissions` method.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | The set of permissions to check for the `resource`. Permissions with wildcards (such as `*` or `s... |

### `GoogleIamV1TestIamPermissionsResponse`

Response message for `TestIamPermissions` method.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | A subset of `TestPermissionsRequest.permissions` that the caller is allowed. |

### `GoogleLongrunningListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<GoogleLongrunningOperation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `GoogleLongrunningOperation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `GoogleRpcStatus` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `GoogleProtobufEmpty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `GoogleRpcPreconditionFailure`

Describes what preconditions have failed. For example, if an RPC failed because it required the Terms of Service to be acknowledged, it could list the terms of service violation in the PreconditionFailure message.

| Property | Type | Description |
|----------|------|-------------|
| `violations` | `array<GoogleRpcPreconditionFailureViolation>` | Describes all precondition violations. |

### `GoogleRpcPreconditionFailureViolation`

A message type used to describe a single precondition failure.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | A description of how the precondition failed. Developers can use this description to understand h... |
| `subject` | `string` | The subject, relative to the type, that failed. For example, "google.com/cloud" relative to the "... |
| `type` | `string` | The type of PreconditionFailure. We recommend using a service-specific enum type to define the su... |

### `GoogleRpcStatus`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `GoogleTypeExpr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `GoogleTypeInterval`

Represents a time interval, encoded as a Timestamp start (inclusive) and a Timestamp end (exclusive). The start must be less than or equal to the end. When the start equals the end, the interval is empty (matches no time). When both start and end are unspecified, the interval matches any time.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | Optional. Exclusive end of the interval. If specified, a Timestamp matching this interval will ha... |
| `startTime` | `string` | Optional. Inclusive start of the interval. If specified, a Timestamp matching this interval will ... |

### `GoogleTypeMoney`

Represents an amount of money with its currency type.

| Property | Type | Description |
|----------|------|-------------|
| `currencyCode` | `string` | The three-letter currency code defined in ISO 4217. |
| `nanos` | `integer` | Number of nano (10^-9) units of the amount. The value must be between -999,999,999 and +999,999,9... |
| `units` | `string` | The whole units of the amount. For example if `currencyCode` is `"USD"`, then 1 unit is one US do... |

### `GoogleTypeTimeOfDay`

Represents a time of day. The date and time zone are either not significant or are specified elsewhere. An API may choose to allow leap seconds. Related types are google.type.Date and `google.protobuf.Timestamp`.

| Property | Type | Description |
|----------|------|-------------|
| `hours` | `integer` | Hours of a day in 24 hour format. Must be greater than or equal to 0 and typically must be less t... |
| `minutes` | `integer` | Minutes of an hour. Must be greater than or equal to 0 and less than or equal to 59. |
| `nanos` | `integer` | Fractions of seconds, in nanoseconds. Must be greater than or equal to 0 and less than or equal t... |
| `seconds` | `integer` | Seconds of a minute. Must be greater than or equal to 0 and typically must be less than or equal ... |

