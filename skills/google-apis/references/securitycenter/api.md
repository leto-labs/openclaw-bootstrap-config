# Security Command Center API - API Reference

**Version**: `v1` | **Methods**: 172 | **Schemas**: 362

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `securitycenter.projects.eventThreatDetectionSettings.validateCustomModule` | POST | `v1/{+parent}:validateCustomModule` | Validates the given Event Threat Detection custom module. |
| `securitycenter.projects.eventThreatDetectionSettings.customModules.get` | GET | `v1/{+name}` | Gets an Event Threat Detection custom module. |
| `securitycenter.projects.eventThreatDetectionSettings.customModules.delete` | DELETE | `v1/{+name}` | Deletes the specified Event Threat Detection custom module and all of its descendants in the Reso... |
| `securitycenter.projects.eventThreatDetectionSettings.customModules.list` | GET | `v1/{+parent}/customModules` | Lists all Event Threat Detection custom modules for the given Resource Manager parent. This inclu... |
| `securitycenter.projects.eventThreatDetectionSettings.customModules.patch` | PATCH | `v1/{+name}` | Updates the Event Threat Detection custom module with the given name based on the given update ma... |
| `securitycenter.projects.eventThreatDetectionSettings.customModules.create` | POST | `v1/{+parent}/customModules` | Creates a resident Event Threat Detection custom module at the scope of the given Resource Manage... |
| `securitycenter.projects.eventThreatDetectionSettings.customModules.listDescendant` | GET | `v1/{+parent}/customModules:listDescendant` | Lists all resident Event Threat Detection custom modules under the given Resource Manager parent ... |
| `securitycenter.projects.eventThreatDetectionSettings.effectiveCustomModules.list` | GET | `v1/{+parent}/effectiveCustomModules` | Lists all effective Event Threat Detection custom modules for the given parent. This includes res... |
| `securitycenter.projects.eventThreatDetectionSettings.effectiveCustomModules.get` | GET | `v1/{+name}` | Gets an effective Event Threat Detection custom module at the given level. |
| `securitycenter.projects.securityHealthAnalyticsSettings.effectiveCustomModules.list` | GET | `v1/{+parent}/effectiveCustomModules` | Returns a list of all EffectiveSecurityHealthAnalyticsCustomModules for the given parent. This in... |
| `securitycenter.projects.securityHealthAnalyticsSettings.effectiveCustomModules.get` | GET | `v1/{+name}` | Retrieves an EffectiveSecurityHealthAnalyticsCustomModule. |
| `securitycenter.projects.securityHealthAnalyticsSettings.customModules.list` | GET | `v1/{+parent}/customModules` | Returns a list of all SecurityHealthAnalyticsCustomModules for the given parent. This includes re... |
| `securitycenter.projects.securityHealthAnalyticsSettings.customModules.simulate` | POST | `v1/{+parent}/customModules:simulate` | Simulates a given SecurityHealthAnalyticsCustomModule and Resource. |
| `securitycenter.projects.securityHealthAnalyticsSettings.customModules.listDescendant` | GET | `v1/{+parent}/customModules:listDescendant` | Returns a list of all resident SecurityHealthAnalyticsCustomModules under the given CRM parent an... |
| `securitycenter.projects.securityHealthAnalyticsSettings.customModules.get` | GET | `v1/{+name}` | Retrieves a SecurityHealthAnalyticsCustomModule. |
| `securitycenter.projects.securityHealthAnalyticsSettings.customModules.create` | POST | `v1/{+parent}/customModules` | Creates a resident SecurityHealthAnalyticsCustomModule at the scope of the given CRM parent, and ... |
| `securitycenter.projects.securityHealthAnalyticsSettings.customModules.delete` | DELETE | `v1/{+name}` | Deletes the specified SecurityHealthAnalyticsCustomModule and all of its descendants in the CRM h... |
| `securitycenter.projects.securityHealthAnalyticsSettings.customModules.patch` | PATCH | `v1/{+name}` | Updates the SecurityHealthAnalyticsCustomModule under the given name based on the given update ma... |
| `securitycenter.projects.muteConfigs.patch` | PATCH | `v1/{+name}` | Updates a mute config. |
| `securitycenter.projects.muteConfigs.create` | POST | `v1/{+parent}/muteConfigs` | Creates a mute config. |
| `securitycenter.projects.muteConfigs.delete` | DELETE | `v1/{+name}` | Deletes an existing mute config. |
| `securitycenter.projects.muteConfigs.list` | GET | `v1/{+parent}/muteConfigs` | Lists mute configs. |
| `securitycenter.projects.muteConfigs.get` | GET | `v1/{+name}` | Gets a mute config. |
| `securitycenter.projects.assets.group` | POST | `v1/{+parent}/assets:group` | Filters an organization's assets and groups them by their specified properties. |
| `securitycenter.projects.assets.updateSecurityMarks` | PATCH | `v1/{+name}` | Updates security marks. |
| `securitycenter.projects.assets.list` | GET | `v1/{+parent}/assets` | Lists an organization's assets. |
| `securitycenter.projects.findings.bulkMute` | POST | `v1/{+parent}/findings:bulkMute` | Kicks off an LRO to bulk mute findings for a parent based on a filter. The parent can be either a... |
| `securitycenter.projects.bigQueryExports.get` | GET | `v1/{+name}` | Gets a BigQuery export. |
| `securitycenter.projects.bigQueryExports.delete` | DELETE | `v1/{+name}` | Deletes an existing BigQuery export. |
| `securitycenter.projects.bigQueryExports.list` | GET | `v1/{+parent}/bigQueryExports` | Lists BigQuery exports. Note that when requesting BigQuery exports at a given level all exports u... |
| `securitycenter.projects.bigQueryExports.patch` | PATCH | `v1/{+name}` | Updates a BigQuery export. |
| `securitycenter.projects.bigQueryExports.create` | POST | `v1/{+parent}/bigQueryExports` | Creates a BigQuery export. |
| `securitycenter.projects.locations.muteConfigs.patch` | PATCH | `v1/{+name}` | Updates a mute config. |
| `securitycenter.projects.locations.muteConfigs.delete` | DELETE | `v1/{+name}` | Deletes an existing mute config. |
| `securitycenter.projects.locations.muteConfigs.get` | GET | `v1/{+name}` | Gets a mute config. |
| `securitycenter.projects.notificationConfigs.list` | GET | `v1/{+parent}/notificationConfigs` | Lists notification configs. |
| `securitycenter.projects.notificationConfigs.patch` | PATCH | `v1/{+name}` | Updates a notification config. The following update fields are allowed: description, pubsub_topic... |
| `securitycenter.projects.notificationConfigs.get` | GET | `v1/{+name}` | Gets a notification config. |
| `securitycenter.projects.notificationConfigs.delete` | DELETE | `v1/{+name}` | Deletes a notification config. |
| `securitycenter.projects.notificationConfigs.create` | POST | `v1/{+parent}/notificationConfigs` | Creates a notification config. |
| `securitycenter.projects.sources.list` | GET | `v1/{+parent}/sources` | Lists all sources belonging to an organization. |
| `securitycenter.projects.sources.findings.updateSecurityMarks` | PATCH | `v1/{+name}` | Updates security marks. |
| `securitycenter.projects.sources.findings.setState` | POST | `v1/{+name}:setState` | Updates the state of a finding. |
| `securitycenter.projects.sources.findings.list` | GET | `v1/{+parent}/findings` | Lists an organization or source's findings. To list across all sources provide a `-` as the sourc... |
| `securitycenter.projects.sources.findings.group` | POST | `v1/{+parent}/findings:group` | Filters an organization or source's findings and groups them by their specified properties. To gr... |
| `securitycenter.projects.sources.findings.setMute` | POST | `v1/{+name}:setMute` | Updates the mute state of a finding. |
| `securitycenter.projects.sources.findings.patch` | PATCH | `v1/{+name}` | Creates or updates a finding. The corresponding source must exist for a finding creation to succeed. |
| `securitycenter.projects.sources.findings.externalSystems.patch` | PATCH | `v1/{+name}` | Updates external system. This is for a given finding. |
| `securitycenter.organizations.updateOrganizationSettings` | PATCH | `v1/{+name}` | Updates an organization's settings. |
| `securitycenter.organizations.getOrganizationSettings` | GET | `v1/{+name}` | Gets the settings for an organization. |
| `securitycenter.organizations.eventThreatDetectionSettings.validateCustomModule` | POST | `v1/{+parent}:validateCustomModule` | Validates the given Event Threat Detection custom module. |
| `securitycenter.organizations.eventThreatDetectionSettings.customModules.delete` | DELETE | `v1/{+name}` | Deletes the specified Event Threat Detection custom module and all of its descendants in the Reso... |
| `securitycenter.organizations.eventThreatDetectionSettings.customModules.create` | POST | `v1/{+parent}/customModules` | Creates a resident Event Threat Detection custom module at the scope of the given Resource Manage... |
| `securitycenter.organizations.eventThreatDetectionSettings.customModules.get` | GET | `v1/{+name}` | Gets an Event Threat Detection custom module. |
| `securitycenter.organizations.eventThreatDetectionSettings.customModules.patch` | PATCH | `v1/{+name}` | Updates the Event Threat Detection custom module with the given name based on the given update ma... |
| `securitycenter.organizations.eventThreatDetectionSettings.customModules.list` | GET | `v1/{+parent}/customModules` | Lists all Event Threat Detection custom modules for the given Resource Manager parent. This inclu... |
| `securitycenter.organizations.eventThreatDetectionSettings.customModules.listDescendant` | GET | `v1/{+parent}/customModules:listDescendant` | Lists all resident Event Threat Detection custom modules under the given Resource Manager parent ... |
| `securitycenter.organizations.eventThreatDetectionSettings.effectiveCustomModules.get` | GET | `v1/{+name}` | Gets an effective Event Threat Detection custom module at the given level. |
| `securitycenter.organizations.eventThreatDetectionSettings.effectiveCustomModules.list` | GET | `v1/{+parent}/effectiveCustomModules` | Lists all effective Event Threat Detection custom modules for the given parent. This includes res... |
| `securitycenter.organizations.securityHealthAnalyticsSettings.effectiveCustomModules.get` | GET | `v1/{+name}` | Retrieves an EffectiveSecurityHealthAnalyticsCustomModule. |
| `securitycenter.organizations.securityHealthAnalyticsSettings.effectiveCustomModules.list` | GET | `v1/{+parent}/effectiveCustomModules` | Returns a list of all EffectiveSecurityHealthAnalyticsCustomModules for the given parent. This in... |
| `securitycenter.organizations.securityHealthAnalyticsSettings.customModules.list` | GET | `v1/{+parent}/customModules` | Returns a list of all SecurityHealthAnalyticsCustomModules for the given parent. This includes re... |
| `securitycenter.organizations.securityHealthAnalyticsSettings.customModules.delete` | DELETE | `v1/{+name}` | Deletes the specified SecurityHealthAnalyticsCustomModule and all of its descendants in the CRM h... |
| `securitycenter.organizations.securityHealthAnalyticsSettings.customModules.patch` | PATCH | `v1/{+name}` | Updates the SecurityHealthAnalyticsCustomModule under the given name based on the given update ma... |
| `securitycenter.organizations.securityHealthAnalyticsSettings.customModules.get` | GET | `v1/{+name}` | Retrieves a SecurityHealthAnalyticsCustomModule. |
| `securitycenter.organizations.securityHealthAnalyticsSettings.customModules.simulate` | POST | `v1/{+parent}/customModules:simulate` | Simulates a given SecurityHealthAnalyticsCustomModule and Resource. |
| `securitycenter.organizations.securityHealthAnalyticsSettings.customModules.create` | POST | `v1/{+parent}/customModules` | Creates a resident SecurityHealthAnalyticsCustomModule at the scope of the given CRM parent, and ... |
| `securitycenter.organizations.securityHealthAnalyticsSettings.customModules.listDescendant` | GET | `v1/{+parent}/customModules:listDescendant` | Returns a list of all resident SecurityHealthAnalyticsCustomModules under the given CRM parent an... |
| `securitycenter.organizations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `securitycenter.organizations.operations.list` | GET | `v1/{+name}` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `securitycenter.organizations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `securitycenter.organizations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `securitycenter.organizations.findings.bulkMute` | POST | `v1/{+parent}/findings:bulkMute` | Kicks off an LRO to bulk mute findings for a parent based on a filter. The parent can be either a... |
| `securitycenter.organizations.locations.muteConfigs.get` | GET | `v1/{+name}` | Gets a mute config. |
| `securitycenter.organizations.locations.muteConfigs.patch` | PATCH | `v1/{+name}` | Updates a mute config. |
| `securitycenter.organizations.locations.muteConfigs.delete` | DELETE | `v1/{+name}` | Deletes an existing mute config. |
| `securitycenter.organizations.muteConfigs.get` | GET | `v1/{+name}` | Gets a mute config. |
| `securitycenter.organizations.muteConfigs.create` | POST | `v1/{+parent}/muteConfigs` | Creates a mute config. |
| `securitycenter.organizations.muteConfigs.delete` | DELETE | `v1/{+name}` | Deletes an existing mute config. |
| `securitycenter.organizations.muteConfigs.patch` | PATCH | `v1/{+name}` | Updates a mute config. |
| `securitycenter.organizations.muteConfigs.list` | GET | `v1/{+parent}/muteConfigs` | Lists mute configs. |
| `securitycenter.organizations.notificationConfigs.delete` | DELETE | `v1/{+name}` | Deletes a notification config. |
| `securitycenter.organizations.notificationConfigs.get` | GET | `v1/{+name}` | Gets a notification config. |
| `securitycenter.organizations.notificationConfigs.create` | POST | `v1/{+parent}/notificationConfigs` | Creates a notification config. |
| `securitycenter.organizations.notificationConfigs.patch` | PATCH | `v1/{+name}` | Updates a notification config. The following update fields are allowed: description, pubsub_topic... |
| `securitycenter.organizations.notificationConfigs.list` | GET | `v1/{+parent}/notificationConfigs` | Lists notification configs. |
| `securitycenter.organizations.simulations.get` | GET | `v1/{+name}` | Get the simulation by name or the latest simulation for the given organization. |
| `securitycenter.organizations.simulations.attackExposureResults.attackPaths.list` | GET | `v1/{+parent}/attackPaths` | Lists the attack paths for a set of simulation results or valued resources and filter. |
| `securitycenter.organizations.simulations.attackExposureResults.valuedResources.list` | GET | `v1/{+parent}/valuedResources` | Lists the valued resources for a set of simulation results and filter. |
| `securitycenter.organizations.simulations.attackPaths.list` | GET | `v1/{+parent}/attackPaths` | Lists the attack paths for a set of simulation results or valued resources and filter. |
| `securitycenter.organizations.simulations.valuedResources.list` | GET | `v1/{+parent}/valuedResources` | Lists the valued resources for a set of simulation results and filter. |
| `securitycenter.organizations.simulations.valuedResources.get` | GET | `v1/{+name}` | Get the valued resource by name |
| `securitycenter.organizations.simulations.valuedResources.attackPaths.list` | GET | `v1/{+parent}/attackPaths` | Lists the attack paths for a set of simulation results or valued resources and filter. |
| `securitycenter.organizations.assets.runDiscovery` | POST | `v1/{+parent}/assets:runDiscovery` | Runs asset discovery. The discovery is tracked with a long-running operation. This API can only b... |
| `securitycenter.organizations.assets.updateSecurityMarks` | PATCH | `v1/{+name}` | Updates security marks. |
| `securitycenter.organizations.assets.group` | POST | `v1/{+parent}/assets:group` | Filters an organization's assets and groups them by their specified properties. |
| `securitycenter.organizations.assets.list` | GET | `v1/{+parent}/assets` | Lists an organization's assets. |
| `securitycenter.organizations.bigQueryExports.get` | GET | `v1/{+name}` | Gets a BigQuery export. |
| `securitycenter.organizations.bigQueryExports.delete` | DELETE | `v1/{+name}` | Deletes an existing BigQuery export. |
| `securitycenter.organizations.bigQueryExports.create` | POST | `v1/{+parent}/bigQueryExports` | Creates a BigQuery export. |
| `securitycenter.organizations.bigQueryExports.list` | GET | `v1/{+parent}/bigQueryExports` | Lists BigQuery exports. Note that when requesting BigQuery exports at a given level all exports u... |
| `securitycenter.organizations.bigQueryExports.patch` | PATCH | `v1/{+name}` | Updates a BigQuery export. |
| `securitycenter.organizations.resourceValueConfigs.list` | GET | `v1/{+parent}/resourceValueConfigs` | Lists all ResourceValueConfigs. |
| `securitycenter.organizations.resourceValueConfigs.patch` | PATCH | `v1/{+name}` | Updates an existing ResourceValueConfigs with new rules. |
| `securitycenter.organizations.resourceValueConfigs.get` | GET | `v1/{+name}` | Gets a ResourceValueConfig. |
| `securitycenter.organizations.resourceValueConfigs.batchCreate` | POST | `v1/{+parent}/resourceValueConfigs:batchCreate` | Creates a ResourceValueConfig for an organization. Maps user's tags to difference resource values... |
| `securitycenter.organizations.resourceValueConfigs.delete` | DELETE | `v1/{+name}` | Deletes a ResourceValueConfig. |
| `securitycenter.organizations.sources.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified Source. |
| `securitycenter.organizations.sources.getIamPolicy` | POST | `v1/{+resource}:getIamPolicy` | Gets the access control policy on the specified Source. |
| `securitycenter.organizations.sources.get` | GET | `v1/{+name}` | Gets a source. |
| `securitycenter.organizations.sources.patch` | PATCH | `v1/{+name}` | Updates a source. |
| `securitycenter.organizations.sources.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns the permissions that a caller has on the specified source. |
| `securitycenter.organizations.sources.list` | GET | `v1/{+parent}/sources` | Lists all sources belonging to an organization. |
| `securitycenter.organizations.sources.create` | POST | `v1/{+parent}/sources` | Creates a source. |
| `securitycenter.organizations.sources.findings.patch` | PATCH | `v1/{+name}` | Creates or updates a finding. The corresponding source must exist for a finding creation to succeed. |
| `securitycenter.organizations.sources.findings.setState` | POST | `v1/{+name}:setState` | Updates the state of a finding. |
| `securitycenter.organizations.sources.findings.group` | POST | `v1/{+parent}/findings:group` | Filters an organization or source's findings and groups them by their specified properties. To gr... |
| `securitycenter.organizations.sources.findings.setMute` | POST | `v1/{+name}:setMute` | Updates the mute state of a finding. |
| `securitycenter.organizations.sources.findings.updateSecurityMarks` | PATCH | `v1/{+name}` | Updates security marks. |
| `securitycenter.organizations.sources.findings.list` | GET | `v1/{+parent}/findings` | Lists an organization or source's findings. To list across all sources provide a `-` as the sourc... |
| `securitycenter.organizations.sources.findings.create` | POST | `v1/{+parent}/findings` | Creates a finding. The corresponding source must exist for finding creation to succeed. |
| `securitycenter.organizations.sources.findings.externalSystems.patch` | PATCH | `v1/{+name}` | Updates external system. This is for a given finding. |
| `securitycenter.organizations.valuedResources.list` | GET | `v1/{+parent}/valuedResources` | Lists the valued resources for a set of simulation results and filter. |
| `securitycenter.organizations.attackPaths.list` | GET | `v1/{+parent}/attackPaths` | Lists the attack paths for a set of simulation results or valued resources and filter. |
| `securitycenter.folders.findings.bulkMute` | POST | `v1/{+parent}/findings:bulkMute` | Kicks off an LRO to bulk mute findings for a parent based on a filter. The parent can be either a... |
| `securitycenter.folders.securityHealthAnalyticsSettings.effectiveCustomModules.get` | GET | `v1/{+name}` | Retrieves an EffectiveSecurityHealthAnalyticsCustomModule. |
| `securitycenter.folders.securityHealthAnalyticsSettings.effectiveCustomModules.list` | GET | `v1/{+parent}/effectiveCustomModules` | Returns a list of all EffectiveSecurityHealthAnalyticsCustomModules for the given parent. This in... |
| `securitycenter.folders.securityHealthAnalyticsSettings.customModules.get` | GET | `v1/{+name}` | Retrieves a SecurityHealthAnalyticsCustomModule. |
| `securitycenter.folders.securityHealthAnalyticsSettings.customModules.list` | GET | `v1/{+parent}/customModules` | Returns a list of all SecurityHealthAnalyticsCustomModules for the given parent. This includes re... |
| `securitycenter.folders.securityHealthAnalyticsSettings.customModules.listDescendant` | GET | `v1/{+parent}/customModules:listDescendant` | Returns a list of all resident SecurityHealthAnalyticsCustomModules under the given CRM parent an... |
| `securitycenter.folders.securityHealthAnalyticsSettings.customModules.create` | POST | `v1/{+parent}/customModules` | Creates a resident SecurityHealthAnalyticsCustomModule at the scope of the given CRM parent, and ... |
| `securitycenter.folders.securityHealthAnalyticsSettings.customModules.delete` | DELETE | `v1/{+name}` | Deletes the specified SecurityHealthAnalyticsCustomModule and all of its descendants in the CRM h... |
| `securitycenter.folders.securityHealthAnalyticsSettings.customModules.simulate` | POST | `v1/{+parent}/customModules:simulate` | Simulates a given SecurityHealthAnalyticsCustomModule and Resource. |
| `securitycenter.folders.securityHealthAnalyticsSettings.customModules.patch` | PATCH | `v1/{+name}` | Updates the SecurityHealthAnalyticsCustomModule under the given name based on the given update ma... |
| `securitycenter.folders.locations.muteConfigs.patch` | PATCH | `v1/{+name}` | Updates a mute config. |
| `securitycenter.folders.locations.muteConfigs.get` | GET | `v1/{+name}` | Gets a mute config. |
| `securitycenter.folders.locations.muteConfigs.delete` | DELETE | `v1/{+name}` | Deletes an existing mute config. |
| `securitycenter.folders.notificationConfigs.patch` | PATCH | `v1/{+name}` | Updates a notification config. The following update fields are allowed: description, pubsub_topic... |
| `securitycenter.folders.notificationConfigs.create` | POST | `v1/{+parent}/notificationConfigs` | Creates a notification config. |
| `securitycenter.folders.notificationConfigs.delete` | DELETE | `v1/{+name}` | Deletes a notification config. |
| `securitycenter.folders.notificationConfigs.get` | GET | `v1/{+name}` | Gets a notification config. |
| `securitycenter.folders.notificationConfigs.list` | GET | `v1/{+parent}/notificationConfigs` | Lists notification configs. |
| `securitycenter.folders.muteConfigs.delete` | DELETE | `v1/{+name}` | Deletes an existing mute config. |
| `securitycenter.folders.muteConfigs.patch` | PATCH | `v1/{+name}` | Updates a mute config. |
| `securitycenter.folders.muteConfigs.list` | GET | `v1/{+parent}/muteConfigs` | Lists mute configs. |
| `securitycenter.folders.muteConfigs.create` | POST | `v1/{+parent}/muteConfigs` | Creates a mute config. |
| `securitycenter.folders.muteConfigs.get` | GET | `v1/{+name}` | Gets a mute config. |
| `securitycenter.folders.eventThreatDetectionSettings.validateCustomModule` | POST | `v1/{+parent}:validateCustomModule` | Validates the given Event Threat Detection custom module. |
| `securitycenter.folders.eventThreatDetectionSettings.effectiveCustomModules.get` | GET | `v1/{+name}` | Gets an effective Event Threat Detection custom module at the given level. |
| `securitycenter.folders.eventThreatDetectionSettings.effectiveCustomModules.list` | GET | `v1/{+parent}/effectiveCustomModules` | Lists all effective Event Threat Detection custom modules for the given parent. This includes res... |
| `securitycenter.folders.eventThreatDetectionSettings.customModules.list` | GET | `v1/{+parent}/customModules` | Lists all Event Threat Detection custom modules for the given Resource Manager parent. This inclu... |
| `securitycenter.folders.eventThreatDetectionSettings.customModules.delete` | DELETE | `v1/{+name}` | Deletes the specified Event Threat Detection custom module and all of its descendants in the Reso... |
| `securitycenter.folders.eventThreatDetectionSettings.customModules.create` | POST | `v1/{+parent}/customModules` | Creates a resident Event Threat Detection custom module at the scope of the given Resource Manage... |
| `securitycenter.folders.eventThreatDetectionSettings.customModules.listDescendant` | GET | `v1/{+parent}/customModules:listDescendant` | Lists all resident Event Threat Detection custom modules under the given Resource Manager parent ... |
| `securitycenter.folders.eventThreatDetectionSettings.customModules.patch` | PATCH | `v1/{+name}` | Updates the Event Threat Detection custom module with the given name based on the given update ma... |
| `securitycenter.folders.eventThreatDetectionSettings.customModules.get` | GET | `v1/{+name}` | Gets an Event Threat Detection custom module. |
| `securitycenter.folders.sources.list` | GET | `v1/{+parent}/sources` | Lists all sources belonging to an organization. |
| `securitycenter.folders.sources.findings.updateSecurityMarks` | PATCH | `v1/{+name}` | Updates security marks. |
| `securitycenter.folders.sources.findings.list` | GET | `v1/{+parent}/findings` | Lists an organization or source's findings. To list across all sources provide a `-` as the sourc... |
| `securitycenter.folders.sources.findings.patch` | PATCH | `v1/{+name}` | Creates or updates a finding. The corresponding source must exist for a finding creation to succeed. |
| `securitycenter.folders.sources.findings.setState` | POST | `v1/{+name}:setState` | Updates the state of a finding. |
| `securitycenter.folders.sources.findings.group` | POST | `v1/{+parent}/findings:group` | Filters an organization or source's findings and groups them by their specified properties. To gr... |
| `securitycenter.folders.sources.findings.setMute` | POST | `v1/{+name}:setMute` | Updates the mute state of a finding. |
| `securitycenter.folders.sources.findings.externalSystems.patch` | PATCH | `v1/{+name}` | Updates external system. This is for a given finding. |
| `securitycenter.folders.bigQueryExports.list` | GET | `v1/{+parent}/bigQueryExports` | Lists BigQuery exports. Note that when requesting BigQuery exports at a given level all exports u... |
| `securitycenter.folders.bigQueryExports.get` | GET | `v1/{+name}` | Gets a BigQuery export. |
| `securitycenter.folders.bigQueryExports.create` | POST | `v1/{+parent}/bigQueryExports` | Creates a BigQuery export. |
| `securitycenter.folders.bigQueryExports.patch` | PATCH | `v1/{+name}` | Updates a BigQuery export. |
| `securitycenter.folders.bigQueryExports.delete` | DELETE | `v1/{+name}` | Deletes an existing BigQuery export. |
| `securitycenter.folders.assets.list` | GET | `v1/{+parent}/assets` | Lists an organization's assets. |
| `securitycenter.folders.assets.group` | POST | `v1/{+parent}/assets:group` | Filters an organization's assets and groups them by their specified properties. |
| `securitycenter.folders.assets.updateSecurityMarks` | PATCH | `v1/{+name}` | Updates security marks. |

### `securitycenter.projects.eventThreatDetectionSettings.validateCustomModule`

**POST** `v1/{+parent}:validateCustomModule`

Validates the given Event Threat Detection custom module.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the parent to validate the Custom Module under. Its format is: * `organizations/{organizat... |

**Request body**: `ValidateEventThreatDetectionCustomModuleRequest`

**Response**: `ValidateEventThreatDetectionCustomModuleResponse`

```typescript
const res = await securitycenter.eventThreatDetectionSettings.validateCustomModule({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.projects.eventThreatDetectionSettings.customModules.get`

**GET** `v1/{+name}`

Gets an Event Threat Detection custom module.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the custom module to get. Its format is: * `organizations/{organization}/eventThreatDetectionSettin... |

**Response**: `EventThreatDetectionCustomModule`

```typescript
const res = await securitycenter.customModules.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.projects.eventThreatDetectionSettings.customModules.delete`

**DELETE** `v1/{+name}`

Deletes the specified Event Threat Detection custom module and all of its descendants in the Resource Manager hierarchy. This method is only supported for resident custom modules.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the custom module to delete. Its format is: * `organizations/{organization}/eventThreatDetectionSet... |

**Response**: `Empty`

```typescript
const res = await securitycenter.customModules.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.projects.eventThreatDetectionSettings.customModules.list`

**GET** `v1/{+parent}/customModules`

Lists all Event Threat Detection custom modules for the given Resource Manager parent. This includes resident modules defined at the scope of the parent along with modules inherited from ancestors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the parent to list custom modules under. Its format is: * `organizations/{organization}/eventThreat... |
| `pageSize` | `integer` | query | No | The maximum number of modules to return. The service may return fewer than this value. If unspecified, at most 10 con... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListEventThreatDetectionCustomModules` call. Provide this to retrieve the sub... |

**Response**: `ListEventThreatDetectionCustomModulesResponse`

```typescript
const res = await securitycenter.customModules.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.projects.eventThreatDetectionSettings.customModules.patch`

**PATCH** `v1/{+name}`

Updates the Event Threat Detection custom module with the given name based on the given update mask. Updating the enablement state is supported for both resident and inherited modules (though resident modules cannot have an enablement state of "inherited"). Updating the display name or configuration of a module is supported for resident modules only. The type of a module cannot be changed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The resource name of the Event Threat Detection custom module. Its format is: * `organizations/{organizati... |
| `updateMask` | `string` | query | No | The list of fields to be updated. If empty all mutable fields will be updated. |

**Request body**: `EventThreatDetectionCustomModule`

**Response**: `EventThreatDetectionCustomModule`

```typescript
const res = await securitycenter.customModules.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.projects.eventThreatDetectionSettings.customModules.create`

**POST** `v1/{+parent}/customModules`

Creates a resident Event Threat Detection custom module at the scope of the given Resource Manager parent, and also creates inherited custom modules for all descendants of the given parent. These modules are enabled by default.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The new custom module's parent. Its format is: * `organizations/{organization}/eventThreatDetectionSettings... |

**Request body**: `EventThreatDetectionCustomModule`

**Response**: `EventThreatDetectionCustomModule`

```typescript
const res = await securitycenter.customModules.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.projects.eventThreatDetectionSettings.customModules.listDescendant`

**GET** `v1/{+parent}/customModules:listDescendant`

Lists all resident Event Threat Detection custom modules under the given Resource Manager parent and its descendants.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the parent to list custom modules under. Its format is: * `organizations/{organization}/eventThreat... |
| `pageSize` | `integer` | query | No | The maximum number of modules to return. The service may return fewer than this value. If unspecified, at most 10 con... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListDescendantEventThreatDetectionCustomModules` call. Provide this to retrie... |

**Response**: `ListDescendantEventThreatDetectionCustomModulesResponse`

```typescript
const res = await securitycenter.customModules.listDescendant({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.projects.eventThreatDetectionSettings.effectiveCustomModules.list`

**GET** `v1/{+parent}/effectiveCustomModules`

Lists all effective Event Threat Detection custom modules for the given parent. This includes resident modules defined at the scope of the parent along with modules inherited from its ancestors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the parent to list custom modules for. Its format is: * `organizations/{organization}/eventThreatDe... |
| `pageSize` | `integer` | query | No | The maximum number of modules to return. The service may return fewer than this value. If unspecified, at most 10 con... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListEffectiveEventThreatDetectionCustomModules` call. Provide this to retriev... |

**Response**: `ListEffectiveEventThreatDetectionCustomModulesResponse`

```typescript
const res = await securitycenter.effectiveCustomModules.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.projects.eventThreatDetectionSettings.effectiveCustomModules.get`

**GET** `v1/{+name}`

Gets an effective Event Threat Detection custom module at the given level.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the effective Event Threat Detection custom module. Its format is: * `organizations/{o... |

**Response**: `EffectiveEventThreatDetectionCustomModule`

```typescript
const res = await securitycenter.effectiveCustomModules.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.projects.securityHealthAnalyticsSettings.effectiveCustomModules.list`

**GET** `v1/{+parent}/effectiveCustomModules`

Returns a list of all EffectiveSecurityHealthAnalyticsCustomModules for the given parent. This includes resident modules defined at the scope of the parent, and inherited modules, inherited from CRM ancestors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of parent to list effective custom modules. Its format is `organizations/{organization}/securityHealth... |
| `pageSize` | `integer` | query | No | The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000. |
| `pageToken` | `string` | query | No | The value returned by the last call indicating a continuation |

**Response**: `ListEffectiveSecurityHealthAnalyticsCustomModulesResponse`

```typescript
const res = await securitycenter.effectiveCustomModules.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.projects.securityHealthAnalyticsSettings.effectiveCustomModules.get`

**GET** `v1/{+name}`

Retrieves an EffectiveSecurityHealthAnalyticsCustomModule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the effective custom module to get. Its format is `organizations/{organization}/securityHealthAnaly... |

**Response**: `GoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule`

```typescript
const res = await securitycenter.effectiveCustomModules.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.projects.securityHealthAnalyticsSettings.customModules.list`

**GET** `v1/{+parent}/customModules`

Returns a list of all SecurityHealthAnalyticsCustomModules for the given parent. This includes resident modules defined at the scope of the parent, and inherited modules, inherited from CRM ancestors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of parent to list custom modules. Its format is `organizations/{organization}/securityHealthAnalyticsS... |
| `pageSize` | `integer` | query | No | The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000. |
| `pageToken` | `string` | query | No | The value returned by the last call indicating a continuation |

**Response**: `ListSecurityHealthAnalyticsCustomModulesResponse`

```typescript
const res = await securitycenter.customModules.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.projects.securityHealthAnalyticsSettings.customModules.simulate`

**POST** `v1/{+parent}/customModules:simulate`

Simulates a given SecurityHealthAnalyticsCustomModule and Resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The relative resource name of the organization, project, or folder. For more information about relative res... |

**Request body**: `SimulateSecurityHealthAnalyticsCustomModuleRequest`

**Response**: `SimulateSecurityHealthAnalyticsCustomModuleResponse`

```typescript
const res = await securitycenter.customModules.simulate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.projects.securityHealthAnalyticsSettings.customModules.listDescendant`

**GET** `v1/{+parent}/customModules:listDescendant`

Returns a list of all resident SecurityHealthAnalyticsCustomModules under the given CRM parent and all of the parent’s CRM descendants.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of parent to list descendant custom modules. Its format is `organizations/{organization}/securityHealt... |
| `pageSize` | `integer` | query | No | The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000. |
| `pageToken` | `string` | query | No | The value returned by the last call indicating a continuation |

**Response**: `ListDescendantSecurityHealthAnalyticsCustomModulesResponse`

```typescript
const res = await securitycenter.customModules.listDescendant({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.projects.securityHealthAnalyticsSettings.customModules.get`

**GET** `v1/{+name}`

Retrieves a SecurityHealthAnalyticsCustomModule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the custom module to get. Its format is `organizations/{organization}/securityHealthAnalyticsSettin... |

**Response**: `GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule`

```typescript
const res = await securitycenter.customModules.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.projects.securityHealthAnalyticsSettings.customModules.create`

**POST** `v1/{+parent}/customModules`

Creates a resident SecurityHealthAnalyticsCustomModule at the scope of the given CRM parent, and also creates inherited SecurityHealthAnalyticsCustomModules for all CRM descendants of the given parent. These modules are enabled by default.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the new custom module's parent. Its format is `organizations/{organization}/securityHealth... |

**Request body**: `GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule`

**Response**: `GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule`

```typescript
const res = await securitycenter.customModules.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.projects.securityHealthAnalyticsSettings.customModules.delete`

**DELETE** `v1/{+name}`

Deletes the specified SecurityHealthAnalyticsCustomModule and all of its descendants in the CRM hierarchy. This method is only supported for resident custom modules.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the custom module to delete. Its format is `organizations/{organization}/securityHealthAnalyticsSet... |

**Response**: `Empty`

```typescript
const res = await securitycenter.customModules.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.projects.securityHealthAnalyticsSettings.customModules.patch`

**PATCH** `v1/{+name}`

Updates the SecurityHealthAnalyticsCustomModule under the given name based on the given update mask. Updating the enablement state is supported on both resident and inherited modules (though resident modules cannot have an enablement state of "inherited"). Updating the display name and custom config of a module is supported on resident modules only.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The resource name of the custom module. Its format is "organizations/{organization}/securityHealthAnalytic... |
| `updateMask` | `string` | query | No | The list of fields to be updated. The only fields that can be updated are `enablement_state` and `custom_config`. If ... |

**Request body**: `GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule`

**Response**: `GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule`

```typescript
const res = await securitycenter.customModules.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.projects.muteConfigs.patch`

**PATCH** `v1/{+name}`

Updates a mute config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | This field will be ignored if provided on config creation. Format `organizations/{organization}/muteConfigs/{mute_con... |
| `updateMask` | `string` | query | No | The list of fields to be updated. If empty all mutable fields will be updated. |

**Request body**: `GoogleCloudSecuritycenterV1MuteConfig`

**Response**: `GoogleCloudSecuritycenterV1MuteConfig`

```typescript
const res = await securitycenter.muteConfigs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.projects.muteConfigs.create`

**POST** `v1/{+parent}/muteConfigs`

Creates a mute config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the new mute configs's parent. Its format is `organizations/[organization_id]`, `folders/[... |
| `muteConfigId` | `string` | query | No | Required. Unique identifier provided by the client within the parent scope. It must consist of only lowercase letters... |

**Request body**: `GoogleCloudSecuritycenterV1MuteConfig`

**Response**: `GoogleCloudSecuritycenterV1MuteConfig`

```typescript
const res = await securitycenter.muteConfigs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.projects.muteConfigs.delete`

**DELETE** `v1/{+name}`

Deletes an existing mute config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the mute config to delete. Its format is `organizations/{organization}/muteConfigs/{config_id}`, `f... |

**Response**: `Empty`

```typescript
const res = await securitycenter.muteConfigs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.projects.muteConfigs.list`

**GET** `v1/{+parent}/muteConfigs`

Lists mute configs.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns the collection of mute configs. Its format is `organizations/[organization_id]`, `fo... |
| `pageSize` | `integer` | query | No | The maximum number of configs to return. The service may return fewer than this value. If unspecified, at most 10 con... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListMuteConfigs` call. Provide this to retrieve the subsequent page. When pag... |

**Response**: `ListMuteConfigsResponse`

```typescript
const res = await securitycenter.muteConfigs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.projects.muteConfigs.get`

**GET** `v1/{+name}`

Gets a mute config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the mute config to retrieve. Its format is `organizations/{organization}/muteConfigs/{config_id}`, ... |

**Response**: `GoogleCloudSecuritycenterV1MuteConfig`

```typescript
const res = await securitycenter.muteConfigs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.projects.assets.group`

**POST** `v1/{+parent}/assets:group`

Filters an organization's assets and groups them by their specified properties.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent to group the assets by. Its format is `organizations/[organization_id]`, `folders/[f... |

**Request body**: `GroupAssetsRequest`

**Response**: `GroupAssetsResponse`

```typescript
const res = await securitycenter.assets.group({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.projects.assets.updateSecurityMarks`

**PATCH** `v1/{+name}`

Updates security marks.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The relative resource name of the SecurityMarks. See: https://cloud.google.com/apis/design/resource_names#relative_re... |
| `startTime` | `string` | query | No | The time at which the updated SecurityMarks take effect. If not set uses current server time. Updates will be applied... |
| `updateMask` | `string` | query | No | The FieldMask to use when updating the security marks resource. The field mask must not contain duplicate fields. If ... |

**Request body**: `SecurityMarks`

**Response**: `SecurityMarks`

```typescript
const res = await securitycenter.assets.updateSecurityMarks({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.projects.assets.list`

**GET** `v1/{+parent}/assets`

Lists an organization's assets.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent resource that contains the assets. The value that you can specify on parent depends ... |
| `compareDuration` | `string` | query | No | When compare_duration is set, the ListAssetsResult's "state_change" attribute is updated to indicate whether the asse... |
| `fieldMask` | `string` | query | No | A field mask to specify the ListAssetsResult fields to be listed in the response. An empty field mask will list all f... |
| `filter` | `string` | query | No | Expression that defines the filter to apply across assets. The expression is a list of zero or more restrictions comb... |
| `orderBy` | `string` | query | No | Expression that defines what fields and order to use for sorting. The string value should follow SQL syntax: comma se... |
| `pageSize` | `integer` | query | No | The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000. |
| `pageToken` | `string` | query | No | The value returned by the last `ListAssetsResponse`; indicates that this is a continuation of a prior `ListAssets` ca... |
| `readTime` | `string` | query | No | Time used as a reference point when filtering assets. The filter is limited to assets existing at the supplied time a... |

**Response**: `ListAssetsResponse`

```typescript
const res = await securitycenter.assets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.projects.findings.bulkMute`

**POST** `v1/{+parent}/findings:bulkMute`

Kicks off an LRO to bulk mute findings for a parent based on a filter. The parent can be either an organization, folder or project. The findings matched by the filter will be muted after the LRO is done.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, at which bulk action needs to be applied. Its format is `organizations/[organization_id]`, `fol... |

**Request body**: `BulkMuteFindingsRequest`

**Response**: `Operation`

```typescript
const res = await securitycenter.findings.bulkMute({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.projects.bigQueryExports.get`

**GET** `v1/{+name}`

Gets a BigQuery export.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the BigQuery export to retrieve. Its format is `organizations/{organization}/bigQueryExports/{expor... |

**Response**: `GoogleCloudSecuritycenterV1BigQueryExport`

```typescript
const res = await securitycenter.bigQueryExports.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.projects.bigQueryExports.delete`

**DELETE** `v1/{+name}`

Deletes an existing BigQuery export.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the BigQuery export to delete. Its format is `organizations/{organization}/bigQueryExports/{exp... |

**Response**: `Empty`

```typescript
const res = await securitycenter.bigQueryExports.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.projects.bigQueryExports.list`

**GET** `v1/{+parent}/bigQueryExports`

Lists BigQuery exports. Note that when requesting BigQuery exports at a given level all exports under that level are also returned e.g. if requesting BigQuery exports under a folder, then all BigQuery exports immediately under the folder plus the ones created under the projects within the folder are returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns the collection of BigQuery exports. Its format is `organizations/[organization_id]`,... |
| `pageSize` | `integer` | query | No | The maximum number of configs to return. The service may return fewer than this value. If unspecified, at most 10 con... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListBigQueryExports` call. Provide this to retrieve the subsequent page. When... |

**Response**: `ListBigQueryExportsResponse`

```typescript
const res = await securitycenter.bigQueryExports.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.projects.bigQueryExports.patch`

**PATCH** `v1/{+name}`

Updates a BigQuery export.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The relative resource name of this export. See: https://cloud.google.com/apis/design/resource_names#relative_resource... |
| `updateMask` | `string` | query | No | The list of fields to be updated. If empty all mutable fields will be updated. |

**Request body**: `GoogleCloudSecuritycenterV1BigQueryExport`

**Response**: `GoogleCloudSecuritycenterV1BigQueryExport`

```typescript
const res = await securitycenter.bigQueryExports.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.projects.bigQueryExports.create`

**POST** `v1/{+parent}/bigQueryExports`

Creates a BigQuery export.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent resource of the new BigQuery export. Its format is `organizations/[organization_id]`... |
| `bigQueryExportId` | `string` | query | No | Required. Unique identifier provided by the client within the parent scope. It must consist of only lowercase letters... |

**Request body**: `GoogleCloudSecuritycenterV1BigQueryExport`

**Response**: `GoogleCloudSecuritycenterV1BigQueryExport`

```typescript
const res = await securitycenter.bigQueryExports.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.projects.locations.muteConfigs.patch`

**PATCH** `v1/{+name}`

Updates a mute config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | This field will be ignored if provided on config creation. Format `organizations/{organization}/muteConfigs/{mute_con... |
| `updateMask` | `string` | query | No | The list of fields to be updated. If empty all mutable fields will be updated. |

**Request body**: `GoogleCloudSecuritycenterV1MuteConfig`

**Response**: `GoogleCloudSecuritycenterV1MuteConfig`

```typescript
const res = await securitycenter.muteConfigs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.projects.locations.muteConfigs.delete`

**DELETE** `v1/{+name}`

Deletes an existing mute config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the mute config to delete. Its format is `organizations/{organization}/muteConfigs/{config_id}`, `f... |

**Response**: `Empty`

```typescript
const res = await securitycenter.muteConfigs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.projects.locations.muteConfigs.get`

**GET** `v1/{+name}`

Gets a mute config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the mute config to retrieve. Its format is `organizations/{organization}/muteConfigs/{config_id}`, ... |

**Response**: `GoogleCloudSecuritycenterV1MuteConfig`

```typescript
const res = await securitycenter.muteConfigs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.projects.notificationConfigs.list`

**GET** `v1/{+parent}/notificationConfigs`

Lists notification configs.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent in which to list the notification configurations. Its format is "organizations/[orga... |
| `pageSize` | `integer` | query | No | The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000. |
| `pageToken` | `string` | query | No | The value returned by the last `ListNotificationConfigsResponse`; indicates that this is a continuation of a prior `L... |

**Response**: `ListNotificationConfigsResponse`

```typescript
const res = await securitycenter.notificationConfigs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.projects.notificationConfigs.patch`

**PATCH** `v1/{+name}`

Updates a notification config. The following update fields are allowed: description, pubsub_topic, streaming_config.filter

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The relative resource name of this notification config. See: https://cloud.google.com/apis/design/resource_names#rela... |
| `updateMask` | `string` | query | No | The FieldMask to use when updating the notification config. If empty all mutable fields will be updated. |

**Request body**: `NotificationConfig`

**Response**: `NotificationConfig`

```typescript
const res = await securitycenter.notificationConfigs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.projects.notificationConfigs.get`

**GET** `v1/{+name}`

Gets a notification config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the notification config to get. Its format is `organizations/[organization_id]/notificationConfigs/... |

**Response**: `NotificationConfig`

```typescript
const res = await securitycenter.notificationConfigs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.projects.notificationConfigs.delete`

**DELETE** `v1/{+name}`

Deletes a notification config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the notification config to delete. Its format is `organizations/[organization_id]/notificationConfi... |

**Response**: `Empty`

```typescript
const res = await securitycenter.notificationConfigs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.projects.notificationConfigs.create`

**POST** `v1/{+parent}/notificationConfigs`

Creates a notification config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the new notification config's parent. Its format is `organizations/[organization_id]`, `fo... |
| `configId` | `string` | query | No | Required. Unique identifier provided by the client within the parent scope. It must be between 1 and 128 characters a... |

**Request body**: `NotificationConfig`

**Response**: `NotificationConfig`

```typescript
const res = await securitycenter.notificationConfigs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.projects.sources.list`

**GET** `v1/{+parent}/sources`

Lists all sources belonging to an organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the parent of sources to list. Its format should be `organizations/[organization_id]`, `fo... |
| `pageSize` | `integer` | query | No | The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000. |
| `pageToken` | `string` | query | No | The value returned by the last `ListSourcesResponse`; indicates that this is a continuation of a prior `ListSources` ... |

**Response**: `ListSourcesResponse`

```typescript
const res = await securitycenter.sources.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.projects.sources.findings.updateSecurityMarks`

**PATCH** `v1/{+name}`

Updates security marks.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The relative resource name of the SecurityMarks. See: https://cloud.google.com/apis/design/resource_names#relative_re... |
| `startTime` | `string` | query | No | The time at which the updated SecurityMarks take effect. If not set uses current server time. Updates will be applied... |
| `updateMask` | `string` | query | No | The FieldMask to use when updating the security marks resource. The field mask must not contain duplicate fields. If ... |

**Request body**: `SecurityMarks`

**Response**: `SecurityMarks`

```typescript
const res = await securitycenter.findings.updateSecurityMarks({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.projects.sources.findings.setState`

**POST** `v1/{+name}:setState`

Updates the state of a finding.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The [relative resource name](https://cloud.google.com/apis/design/resource_names#relative_resource_name) of... |

**Request body**: `SetFindingStateRequest`

**Response**: `Finding`

```typescript
const res = await securitycenter.findings.setState({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.projects.sources.findings.list`

**GET** `v1/{+parent}/findings`

Lists an organization or source's findings. To list across all sources provide a `-` as the source id. Example: /v1/organizations/{organization_id}/sources/-/findings

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the source the findings belong to. Its format is `organizations/[organization_id]/sources/[source_i... |
| `compareDuration` | `string` | query | No | When compare_duration is set, the ListFindingsResult's "state_change" attribute is updated to indicate whether the fi... |
| `fieldMask` | `string` | query | No | A field mask to specify the Finding fields to be listed in the response. An empty field mask will list all fields. |
| `filter` | `string` | query | No | Expression that defines the filter to apply across findings. The expression is a list of one or more restrictions com... |
| `orderBy` | `string` | query | No | Expression that defines what fields and order to use for sorting. The string value should follow SQL syntax: comma se... |
| `pageSize` | `integer` | query | No | The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000. |
| `pageToken` | `string` | query | No | The value returned by the last `ListFindingsResponse`; indicates that this is a continuation of a prior `ListFindings... |
| `readTime` | `string` | query | No | Time used as a reference point when filtering findings. The filter is limited to findings existing at the supplied ti... |

**Response**: `ListFindingsResponse`

```typescript
const res = await securitycenter.findings.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.projects.sources.findings.group`

**POST** `v1/{+parent}/findings:group`

Filters an organization or source's findings and groups them by their specified properties. To group across all sources provide a `-` as the source id. Example: /v1/organizations/{organization_id}/sources/-/findings, /v1/folders/{folder_id}/sources/-/findings, /v1/projects/{project_id}/sources/-/findings

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the source to groupBy. Its format is `organizations/[organization_id]/sources/[source_id]`, `folder... |

**Request body**: `GroupFindingsRequest`

**Response**: `GroupFindingsResponse`

```typescript
const res = await securitycenter.findings.group({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.projects.sources.findings.setMute`

**POST** `v1/{+name}:setMute`

Updates the mute state of a finding.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The [relative resource name](https://cloud.google.com/apis/design/resource_names#relative_resource_name) of... |

**Request body**: `SetMuteRequest`

**Response**: `Finding`

```typescript
const res = await securitycenter.findings.setMute({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.projects.sources.findings.patch`

**PATCH** `v1/{+name}`

Creates or updates a finding. The corresponding source must exist for a finding creation to succeed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The [relative resource name](https://cloud.google.com/apis/design/resource_names#relative_resource_name) of the findi... |
| `updateMask` | `string` | query | No | The FieldMask to use when updating the finding resource. This field should not be specified when creating a finding. ... |

**Request body**: `Finding`

**Response**: `Finding`

```typescript
const res = await securitycenter.findings.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.projects.sources.findings.externalSystems.patch`

**PATCH** `v1/{+name}`

Updates external system. This is for a given finding.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Full resource name of the external system, for example: "organizations/1234/sources/5678/findings/123456/externalSyst... |
| `updateMask` | `string` | query | No | The FieldMask to use when updating the external system resource. If empty all mutable fields will be updated. |

**Request body**: `GoogleCloudSecuritycenterV1ExternalSystem`

**Response**: `GoogleCloudSecuritycenterV1ExternalSystem`

```typescript
const res = await securitycenter.externalSystems.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.updateOrganizationSettings`

**PATCH** `v1/{+name}`

Updates an organization's settings.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The relative resource name of the settings. See: https://cloud.google.com/apis/design/resource_names#relative_resourc... |
| `updateMask` | `string` | query | No | The FieldMask to use when updating the settings resource. If empty all mutable fields will be updated. |

**Request body**: `OrganizationSettings`

**Response**: `OrganizationSettings`

```typescript
const res = await securitycenter.organizations.updateOrganizationSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.getOrganizationSettings`

**GET** `v1/{+name}`

Gets the settings for an organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the organization to get organization settings for. Its format is `organizations/[organization_id]/o... |

**Response**: `OrganizationSettings`

```typescript
const res = await securitycenter.organizations.getOrganizationSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.eventThreatDetectionSettings.validateCustomModule`

**POST** `v1/{+parent}:validateCustomModule`

Validates the given Event Threat Detection custom module.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the parent to validate the Custom Module under. Its format is: * `organizations/{organizat... |

**Request body**: `ValidateEventThreatDetectionCustomModuleRequest`

**Response**: `ValidateEventThreatDetectionCustomModuleResponse`

```typescript
const res = await securitycenter.eventThreatDetectionSettings.validateCustomModule({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.eventThreatDetectionSettings.customModules.delete`

**DELETE** `v1/{+name}`

Deletes the specified Event Threat Detection custom module and all of its descendants in the Resource Manager hierarchy. This method is only supported for resident custom modules.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the custom module to delete. Its format is: * `organizations/{organization}/eventThreatDetectionSet... |

**Response**: `Empty`

```typescript
const res = await securitycenter.customModules.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.eventThreatDetectionSettings.customModules.create`

**POST** `v1/{+parent}/customModules`

Creates a resident Event Threat Detection custom module at the scope of the given Resource Manager parent, and also creates inherited custom modules for all descendants of the given parent. These modules are enabled by default.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The new custom module's parent. Its format is: * `organizations/{organization}/eventThreatDetectionSettings... |

**Request body**: `EventThreatDetectionCustomModule`

**Response**: `EventThreatDetectionCustomModule`

```typescript
const res = await securitycenter.customModules.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.eventThreatDetectionSettings.customModules.get`

**GET** `v1/{+name}`

Gets an Event Threat Detection custom module.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the custom module to get. Its format is: * `organizations/{organization}/eventThreatDetectionSettin... |

**Response**: `EventThreatDetectionCustomModule`

```typescript
const res = await securitycenter.customModules.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.eventThreatDetectionSettings.customModules.patch`

**PATCH** `v1/{+name}`

Updates the Event Threat Detection custom module with the given name based on the given update mask. Updating the enablement state is supported for both resident and inherited modules (though resident modules cannot have an enablement state of "inherited"). Updating the display name or configuration of a module is supported for resident modules only. The type of a module cannot be changed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The resource name of the Event Threat Detection custom module. Its format is: * `organizations/{organizati... |
| `updateMask` | `string` | query | No | The list of fields to be updated. If empty all mutable fields will be updated. |

**Request body**: `EventThreatDetectionCustomModule`

**Response**: `EventThreatDetectionCustomModule`

```typescript
const res = await securitycenter.customModules.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.eventThreatDetectionSettings.customModules.list`

**GET** `v1/{+parent}/customModules`

Lists all Event Threat Detection custom modules for the given Resource Manager parent. This includes resident modules defined at the scope of the parent along with modules inherited from ancestors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the parent to list custom modules under. Its format is: * `organizations/{organization}/eventThreat... |
| `pageSize` | `integer` | query | No | The maximum number of modules to return. The service may return fewer than this value. If unspecified, at most 10 con... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListEventThreatDetectionCustomModules` call. Provide this to retrieve the sub... |

**Response**: `ListEventThreatDetectionCustomModulesResponse`

```typescript
const res = await securitycenter.customModules.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.eventThreatDetectionSettings.customModules.listDescendant`

**GET** `v1/{+parent}/customModules:listDescendant`

Lists all resident Event Threat Detection custom modules under the given Resource Manager parent and its descendants.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the parent to list custom modules under. Its format is: * `organizations/{organization}/eventThreat... |
| `pageSize` | `integer` | query | No | The maximum number of modules to return. The service may return fewer than this value. If unspecified, at most 10 con... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListDescendantEventThreatDetectionCustomModules` call. Provide this to retrie... |

**Response**: `ListDescendantEventThreatDetectionCustomModulesResponse`

```typescript
const res = await securitycenter.customModules.listDescendant({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.eventThreatDetectionSettings.effectiveCustomModules.get`

**GET** `v1/{+name}`

Gets an effective Event Threat Detection custom module at the given level.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the effective Event Threat Detection custom module. Its format is: * `organizations/{o... |

**Response**: `EffectiveEventThreatDetectionCustomModule`

```typescript
const res = await securitycenter.effectiveCustomModules.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.eventThreatDetectionSettings.effectiveCustomModules.list`

**GET** `v1/{+parent}/effectiveCustomModules`

Lists all effective Event Threat Detection custom modules for the given parent. This includes resident modules defined at the scope of the parent along with modules inherited from its ancestors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the parent to list custom modules for. Its format is: * `organizations/{organization}/eventThreatDe... |
| `pageSize` | `integer` | query | No | The maximum number of modules to return. The service may return fewer than this value. If unspecified, at most 10 con... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListEffectiveEventThreatDetectionCustomModules` call. Provide this to retriev... |

**Response**: `ListEffectiveEventThreatDetectionCustomModulesResponse`

```typescript
const res = await securitycenter.effectiveCustomModules.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.securityHealthAnalyticsSettings.effectiveCustomModules.get`

**GET** `v1/{+name}`

Retrieves an EffectiveSecurityHealthAnalyticsCustomModule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the effective custom module to get. Its format is `organizations/{organization}/securityHealthAnaly... |

**Response**: `GoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule`

```typescript
const res = await securitycenter.effectiveCustomModules.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.securityHealthAnalyticsSettings.effectiveCustomModules.list`

**GET** `v1/{+parent}/effectiveCustomModules`

Returns a list of all EffectiveSecurityHealthAnalyticsCustomModules for the given parent. This includes resident modules defined at the scope of the parent, and inherited modules, inherited from CRM ancestors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of parent to list effective custom modules. Its format is `organizations/{organization}/securityHealth... |
| `pageSize` | `integer` | query | No | The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000. |
| `pageToken` | `string` | query | No | The value returned by the last call indicating a continuation |

**Response**: `ListEffectiveSecurityHealthAnalyticsCustomModulesResponse`

```typescript
const res = await securitycenter.effectiveCustomModules.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.securityHealthAnalyticsSettings.customModules.list`

**GET** `v1/{+parent}/customModules`

Returns a list of all SecurityHealthAnalyticsCustomModules for the given parent. This includes resident modules defined at the scope of the parent, and inherited modules, inherited from CRM ancestors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of parent to list custom modules. Its format is `organizations/{organization}/securityHealthAnalyticsS... |
| `pageSize` | `integer` | query | No | The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000. |
| `pageToken` | `string` | query | No | The value returned by the last call indicating a continuation |

**Response**: `ListSecurityHealthAnalyticsCustomModulesResponse`

```typescript
const res = await securitycenter.customModules.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.securityHealthAnalyticsSettings.customModules.delete`

**DELETE** `v1/{+name}`

Deletes the specified SecurityHealthAnalyticsCustomModule and all of its descendants in the CRM hierarchy. This method is only supported for resident custom modules.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the custom module to delete. Its format is `organizations/{organization}/securityHealthAnalyticsSet... |

**Response**: `Empty`

```typescript
const res = await securitycenter.customModules.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.securityHealthAnalyticsSettings.customModules.patch`

**PATCH** `v1/{+name}`

Updates the SecurityHealthAnalyticsCustomModule under the given name based on the given update mask. Updating the enablement state is supported on both resident and inherited modules (though resident modules cannot have an enablement state of "inherited"). Updating the display name and custom config of a module is supported on resident modules only.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The resource name of the custom module. Its format is "organizations/{organization}/securityHealthAnalytic... |
| `updateMask` | `string` | query | No | The list of fields to be updated. The only fields that can be updated are `enablement_state` and `custom_config`. If ... |

**Request body**: `GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule`

**Response**: `GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule`

```typescript
const res = await securitycenter.customModules.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.securityHealthAnalyticsSettings.customModules.get`

**GET** `v1/{+name}`

Retrieves a SecurityHealthAnalyticsCustomModule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the custom module to get. Its format is `organizations/{organization}/securityHealthAnalyticsSettin... |

**Response**: `GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule`

```typescript
const res = await securitycenter.customModules.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.securityHealthAnalyticsSettings.customModules.simulate`

**POST** `v1/{+parent}/customModules:simulate`

Simulates a given SecurityHealthAnalyticsCustomModule and Resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The relative resource name of the organization, project, or folder. For more information about relative res... |

**Request body**: `SimulateSecurityHealthAnalyticsCustomModuleRequest`

**Response**: `SimulateSecurityHealthAnalyticsCustomModuleResponse`

```typescript
const res = await securitycenter.customModules.simulate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.securityHealthAnalyticsSettings.customModules.create`

**POST** `v1/{+parent}/customModules`

Creates a resident SecurityHealthAnalyticsCustomModule at the scope of the given CRM parent, and also creates inherited SecurityHealthAnalyticsCustomModules for all CRM descendants of the given parent. These modules are enabled by default.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the new custom module's parent. Its format is `organizations/{organization}/securityHealth... |

**Request body**: `GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule`

**Response**: `GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule`

```typescript
const res = await securitycenter.customModules.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.securityHealthAnalyticsSettings.customModules.listDescendant`

**GET** `v1/{+parent}/customModules:listDescendant`

Returns a list of all resident SecurityHealthAnalyticsCustomModules under the given CRM parent and all of the parent’s CRM descendants.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of parent to list descendant custom modules. Its format is `organizations/{organization}/securityHealt... |
| `pageSize` | `integer` | query | No | The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000. |
| `pageToken` | `string` | query | No | The value returned by the last call indicating a continuation |

**Response**: `ListDescendantSecurityHealthAnalyticsCustomModulesResponse`

```typescript
const res = await securitycenter.customModules.listDescendant({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await securitycenter.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.operations.list`

**GET** `v1/{+name}`

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
const res = await securitycenter.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await securitycenter.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Response**: `Empty`

```typescript
const res = await securitycenter.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.findings.bulkMute`

**POST** `v1/{+parent}/findings:bulkMute`

Kicks off an LRO to bulk mute findings for a parent based on a filter. The parent can be either an organization, folder or project. The findings matched by the filter will be muted after the LRO is done.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, at which bulk action needs to be applied. Its format is `organizations/[organization_id]`, `fol... |

**Request body**: `BulkMuteFindingsRequest`

**Response**: `Operation`

```typescript
const res = await securitycenter.findings.bulkMute({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.locations.muteConfigs.get`

**GET** `v1/{+name}`

Gets a mute config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the mute config to retrieve. Its format is `organizations/{organization}/muteConfigs/{config_id}`, ... |

**Response**: `GoogleCloudSecuritycenterV1MuteConfig`

```typescript
const res = await securitycenter.muteConfigs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.locations.muteConfigs.patch`

**PATCH** `v1/{+name}`

Updates a mute config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | This field will be ignored if provided on config creation. Format `organizations/{organization}/muteConfigs/{mute_con... |
| `updateMask` | `string` | query | No | The list of fields to be updated. If empty all mutable fields will be updated. |

**Request body**: `GoogleCloudSecuritycenterV1MuteConfig`

**Response**: `GoogleCloudSecuritycenterV1MuteConfig`

```typescript
const res = await securitycenter.muteConfigs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.locations.muteConfigs.delete`

**DELETE** `v1/{+name}`

Deletes an existing mute config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the mute config to delete. Its format is `organizations/{organization}/muteConfigs/{config_id}`, `f... |

**Response**: `Empty`

```typescript
const res = await securitycenter.muteConfigs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.muteConfigs.get`

**GET** `v1/{+name}`

Gets a mute config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the mute config to retrieve. Its format is `organizations/{organization}/muteConfigs/{config_id}`, ... |

**Response**: `GoogleCloudSecuritycenterV1MuteConfig`

```typescript
const res = await securitycenter.muteConfigs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.muteConfigs.create`

**POST** `v1/{+parent}/muteConfigs`

Creates a mute config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the new mute configs's parent. Its format is `organizations/[organization_id]`, `folders/[... |
| `muteConfigId` | `string` | query | No | Required. Unique identifier provided by the client within the parent scope. It must consist of only lowercase letters... |

**Request body**: `GoogleCloudSecuritycenterV1MuteConfig`

**Response**: `GoogleCloudSecuritycenterV1MuteConfig`

```typescript
const res = await securitycenter.muteConfigs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.muteConfigs.delete`

**DELETE** `v1/{+name}`

Deletes an existing mute config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the mute config to delete. Its format is `organizations/{organization}/muteConfigs/{config_id}`, `f... |

**Response**: `Empty`

```typescript
const res = await securitycenter.muteConfigs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.muteConfigs.patch`

**PATCH** `v1/{+name}`

Updates a mute config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | This field will be ignored if provided on config creation. Format `organizations/{organization}/muteConfigs/{mute_con... |
| `updateMask` | `string` | query | No | The list of fields to be updated. If empty all mutable fields will be updated. |

**Request body**: `GoogleCloudSecuritycenterV1MuteConfig`

**Response**: `GoogleCloudSecuritycenterV1MuteConfig`

```typescript
const res = await securitycenter.muteConfigs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.muteConfigs.list`

**GET** `v1/{+parent}/muteConfigs`

Lists mute configs.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns the collection of mute configs. Its format is `organizations/[organization_id]`, `fo... |
| `pageSize` | `integer` | query | No | The maximum number of configs to return. The service may return fewer than this value. If unspecified, at most 10 con... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListMuteConfigs` call. Provide this to retrieve the subsequent page. When pag... |

**Response**: `ListMuteConfigsResponse`

```typescript
const res = await securitycenter.muteConfigs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.notificationConfigs.delete`

**DELETE** `v1/{+name}`

Deletes a notification config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the notification config to delete. Its format is `organizations/[organization_id]/notificationConfi... |

**Response**: `Empty`

```typescript
const res = await securitycenter.notificationConfigs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.notificationConfigs.get`

**GET** `v1/{+name}`

Gets a notification config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the notification config to get. Its format is `organizations/[organization_id]/notificationConfigs/... |

**Response**: `NotificationConfig`

```typescript
const res = await securitycenter.notificationConfigs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.notificationConfigs.create`

**POST** `v1/{+parent}/notificationConfigs`

Creates a notification config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the new notification config's parent. Its format is `organizations/[organization_id]`, `fo... |
| `configId` | `string` | query | No | Required. Unique identifier provided by the client within the parent scope. It must be between 1 and 128 characters a... |

**Request body**: `NotificationConfig`

**Response**: `NotificationConfig`

```typescript
const res = await securitycenter.notificationConfigs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.notificationConfigs.patch`

**PATCH** `v1/{+name}`

Updates a notification config. The following update fields are allowed: description, pubsub_topic, streaming_config.filter

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The relative resource name of this notification config. See: https://cloud.google.com/apis/design/resource_names#rela... |
| `updateMask` | `string` | query | No | The FieldMask to use when updating the notification config. If empty all mutable fields will be updated. |

**Request body**: `NotificationConfig`

**Response**: `NotificationConfig`

```typescript
const res = await securitycenter.notificationConfigs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.notificationConfigs.list`

**GET** `v1/{+parent}/notificationConfigs`

Lists notification configs.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent in which to list the notification configurations. Its format is "organizations/[orga... |
| `pageSize` | `integer` | query | No | The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000. |
| `pageToken` | `string` | query | No | The value returned by the last `ListNotificationConfigsResponse`; indicates that this is a continuation of a prior `L... |

**Response**: `ListNotificationConfigsResponse`

```typescript
const res = await securitycenter.notificationConfigs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.simulations.get`

**GET** `v1/{+name}`

Get the simulation by name or the latest simulation for the given organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The organization name or simulation name of this simulation Valid format: `organizations/{organization}/sim... |

**Response**: `Simulation`

```typescript
const res = await securitycenter.simulations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.simulations.attackExposureResults.attackPaths.list`

**GET** `v1/{+parent}/attackPaths`

Lists the attack paths for a set of simulation results or valued resources and filter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of parent to list attack paths. Valid formats: `organizations/{organization}`, `organizations/{organiz... |
| `filter` | `string` | query | No | The filter expression that filters the attack path in the response. Supported fields: * `valued_resources` supports = |
| `pageSize` | `integer` | query | No | The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000. |
| `pageToken` | `string` | query | No | The value returned by the last `ListAttackPathsResponse`; indicates that this is a continuation of a prior `ListAttac... |

**Response**: `ListAttackPathsResponse`

```typescript
const res = await securitycenter.attackPaths.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.simulations.attackExposureResults.valuedResources.list`

**GET** `v1/{+parent}/valuedResources`

Lists the valued resources for a set of simulation results and filter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of parent to list valued resources. Valid formats: `organizations/{organization}`, `organizations/{org... |
| `filter` | `string` | query | No | The filter expression that filters the valued resources in the response. Supported fields: * `resource_value` support... |
| `orderBy` | `string` | query | No | Optional. The fields by which to order the valued resources response. Supported fields: * `exposed_score` * `resource... |
| `pageSize` | `integer` | query | No | The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000. |
| `pageToken` | `string` | query | No | The value returned by the last `ListValuedResourcesResponse`; indicates that this is a continuation of a prior `ListV... |

**Response**: `ListValuedResourcesResponse`

```typescript
const res = await securitycenter.valuedResources.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.simulations.attackPaths.list`

**GET** `v1/{+parent}/attackPaths`

Lists the attack paths for a set of simulation results or valued resources and filter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of parent to list attack paths. Valid formats: `organizations/{organization}`, `organizations/{organiz... |
| `filter` | `string` | query | No | The filter expression that filters the attack path in the response. Supported fields: * `valued_resources` supports = |
| `pageSize` | `integer` | query | No | The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000. |
| `pageToken` | `string` | query | No | The value returned by the last `ListAttackPathsResponse`; indicates that this is a continuation of a prior `ListAttac... |

**Response**: `ListAttackPathsResponse`

```typescript
const res = await securitycenter.attackPaths.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.simulations.valuedResources.list`

**GET** `v1/{+parent}/valuedResources`

Lists the valued resources for a set of simulation results and filter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of parent to list valued resources. Valid formats: `organizations/{organization}`, `organizations/{org... |
| `filter` | `string` | query | No | The filter expression that filters the valued resources in the response. Supported fields: * `resource_value` support... |
| `orderBy` | `string` | query | No | Optional. The fields by which to order the valued resources response. Supported fields: * `exposed_score` * `resource... |
| `pageSize` | `integer` | query | No | The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000. |
| `pageToken` | `string` | query | No | The value returned by the last `ListValuedResourcesResponse`; indicates that this is a continuation of a prior `ListV... |

**Response**: `ListValuedResourcesResponse`

```typescript
const res = await securitycenter.valuedResources.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.simulations.valuedResources.get`

**GET** `v1/{+name}`

Get the valued resource by name

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of this valued resource Valid format: `organizations/{organization}/simulations/{simulation}/value... |

**Response**: `ValuedResource`

```typescript
const res = await securitycenter.valuedResources.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.simulations.valuedResources.attackPaths.list`

**GET** `v1/{+parent}/attackPaths`

Lists the attack paths for a set of simulation results or valued resources and filter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of parent to list attack paths. Valid formats: `organizations/{organization}`, `organizations/{organiz... |
| `filter` | `string` | query | No | The filter expression that filters the attack path in the response. Supported fields: * `valued_resources` supports = |
| `pageSize` | `integer` | query | No | The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000. |
| `pageToken` | `string` | query | No | The value returned by the last `ListAttackPathsResponse`; indicates that this is a continuation of a prior `ListAttac... |

**Response**: `ListAttackPathsResponse`

```typescript
const res = await securitycenter.attackPaths.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.assets.runDiscovery`

**POST** `v1/{+parent}/assets:runDiscovery`

Runs asset discovery. The discovery is tracked with a long-running operation. This API can only be called with limited frequency for an organization. If it is called too frequently the caller will receive a TOO_MANY_REQUESTS error.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the organization to run asset discovery for. Its format is `organizations/[organization_id]`. |

**Request body**: `RunAssetDiscoveryRequest`

**Response**: `Operation`

```typescript
const res = await securitycenter.assets.runDiscovery({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.assets.updateSecurityMarks`

**PATCH** `v1/{+name}`

Updates security marks.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The relative resource name of the SecurityMarks. See: https://cloud.google.com/apis/design/resource_names#relative_re... |
| `startTime` | `string` | query | No | The time at which the updated SecurityMarks take effect. If not set uses current server time. Updates will be applied... |
| `updateMask` | `string` | query | No | The FieldMask to use when updating the security marks resource. The field mask must not contain duplicate fields. If ... |

**Request body**: `SecurityMarks`

**Response**: `SecurityMarks`

```typescript
const res = await securitycenter.assets.updateSecurityMarks({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.assets.group`

**POST** `v1/{+parent}/assets:group`

Filters an organization's assets and groups them by their specified properties.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent to group the assets by. Its format is `organizations/[organization_id]`, `folders/[f... |

**Request body**: `GroupAssetsRequest`

**Response**: `GroupAssetsResponse`

```typescript
const res = await securitycenter.assets.group({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.assets.list`

**GET** `v1/{+parent}/assets`

Lists an organization's assets.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent resource that contains the assets. The value that you can specify on parent depends ... |
| `compareDuration` | `string` | query | No | When compare_duration is set, the ListAssetsResult's "state_change" attribute is updated to indicate whether the asse... |
| `fieldMask` | `string` | query | No | A field mask to specify the ListAssetsResult fields to be listed in the response. An empty field mask will list all f... |
| `filter` | `string` | query | No | Expression that defines the filter to apply across assets. The expression is a list of zero or more restrictions comb... |
| `orderBy` | `string` | query | No | Expression that defines what fields and order to use for sorting. The string value should follow SQL syntax: comma se... |
| `pageSize` | `integer` | query | No | The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000. |
| `pageToken` | `string` | query | No | The value returned by the last `ListAssetsResponse`; indicates that this is a continuation of a prior `ListAssets` ca... |
| `readTime` | `string` | query | No | Time used as a reference point when filtering assets. The filter is limited to assets existing at the supplied time a... |

**Response**: `ListAssetsResponse`

```typescript
const res = await securitycenter.assets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.bigQueryExports.get`

**GET** `v1/{+name}`

Gets a BigQuery export.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the BigQuery export to retrieve. Its format is `organizations/{organization}/bigQueryExports/{expor... |

**Response**: `GoogleCloudSecuritycenterV1BigQueryExport`

```typescript
const res = await securitycenter.bigQueryExports.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.bigQueryExports.delete`

**DELETE** `v1/{+name}`

Deletes an existing BigQuery export.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the BigQuery export to delete. Its format is `organizations/{organization}/bigQueryExports/{exp... |

**Response**: `Empty`

```typescript
const res = await securitycenter.bigQueryExports.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.bigQueryExports.create`

**POST** `v1/{+parent}/bigQueryExports`

Creates a BigQuery export.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent resource of the new BigQuery export. Its format is `organizations/[organization_id]`... |
| `bigQueryExportId` | `string` | query | No | Required. Unique identifier provided by the client within the parent scope. It must consist of only lowercase letters... |

**Request body**: `GoogleCloudSecuritycenterV1BigQueryExport`

**Response**: `GoogleCloudSecuritycenterV1BigQueryExport`

```typescript
const res = await securitycenter.bigQueryExports.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.bigQueryExports.list`

**GET** `v1/{+parent}/bigQueryExports`

Lists BigQuery exports. Note that when requesting BigQuery exports at a given level all exports under that level are also returned e.g. if requesting BigQuery exports under a folder, then all BigQuery exports immediately under the folder plus the ones created under the projects within the folder are returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns the collection of BigQuery exports. Its format is `organizations/[organization_id]`,... |
| `pageSize` | `integer` | query | No | The maximum number of configs to return. The service may return fewer than this value. If unspecified, at most 10 con... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListBigQueryExports` call. Provide this to retrieve the subsequent page. When... |

**Response**: `ListBigQueryExportsResponse`

```typescript
const res = await securitycenter.bigQueryExports.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.bigQueryExports.patch`

**PATCH** `v1/{+name}`

Updates a BigQuery export.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The relative resource name of this export. See: https://cloud.google.com/apis/design/resource_names#relative_resource... |
| `updateMask` | `string` | query | No | The list of fields to be updated. If empty all mutable fields will be updated. |

**Request body**: `GoogleCloudSecuritycenterV1BigQueryExport`

**Response**: `GoogleCloudSecuritycenterV1BigQueryExport`

```typescript
const res = await securitycenter.bigQueryExports.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.resourceValueConfigs.list`

**GET** `v1/{+parent}/resourceValueConfigs`

Lists all ResourceValueConfigs.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns the collection of resource value configs. Its format is `organizations/[organization... |
| `pageSize` | `integer` | query | No | The number of results to return. The service may return fewer than this value. If unspecified, at most 10 configs wil... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListResourceValueConfigs` call. Provide this to retrieve the subsequent page.... |

**Response**: `ListResourceValueConfigsResponse`

```typescript
const res = await securitycenter.resourceValueConfigs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.resourceValueConfigs.patch`

**PATCH** `v1/{+name}`

Updates an existing ResourceValueConfigs with new rules.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Name for the resource value configuration |
| `updateMask` | `string` | query | No | The list of fields to be updated. If empty all mutable fields will be updated. |

**Request body**: `GoogleCloudSecuritycenterV1ResourceValueConfig`

**Response**: `GoogleCloudSecuritycenterV1ResourceValueConfig`

```typescript
const res = await securitycenter.resourceValueConfigs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.resourceValueConfigs.get`

**GET** `v1/{+name}`

Gets a ResourceValueConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource value config to retrieve. Its format is `organizations/{organization}/resourceValueCon... |

**Response**: `GoogleCloudSecuritycenterV1ResourceValueConfig`

```typescript
const res = await securitycenter.resourceValueConfigs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.resourceValueConfigs.batchCreate`

**POST** `v1/{+parent}/resourceValueConfigs:batchCreate`

Creates a ResourceValueConfig for an organization. Maps user's tags to difference resource values for use by the attack path simulation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the new ResourceValueConfig's parent. The parent field in the CreateResourceValueConfigReq... |

**Request body**: `BatchCreateResourceValueConfigsRequest`

**Response**: `BatchCreateResourceValueConfigsResponse`

```typescript
const res = await securitycenter.resourceValueConfigs.batchCreate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.resourceValueConfigs.delete`

**DELETE** `v1/{+name}`

Deletes a ResourceValueConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the ResourceValueConfig to delete |

**Response**: `Empty`

```typescript
const res = await securitycenter.resourceValueConfigs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.sources.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified Source.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await securitycenter.sources.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.sources.getIamPolicy`

**POST** `v1/{+resource}:getIamPolicy`

Gets the access control policy on the specified Source.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await securitycenter.sources.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.sources.get`

**GET** `v1/{+name}`

Gets a source.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Relative resource name of the source. Its format is `organizations/[organization_id]/source/[source_id]`. |

**Response**: `Source`

```typescript
const res = await securitycenter.sources.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.sources.patch`

**PATCH** `v1/{+name}`

Updates a source.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The relative resource name of this source. See: https://cloud.google.com/apis/design/resource_names#relative_resource... |
| `updateMask` | `string` | query | No | The FieldMask to use when updating the source resource. If empty all mutable fields will be updated. |

**Request body**: `Source`

**Response**: `Source`

```typescript
const res = await securitycenter.sources.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.sources.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns the permissions that a caller has on the specified source.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await securitycenter.sources.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.sources.list`

**GET** `v1/{+parent}/sources`

Lists all sources belonging to an organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the parent of sources to list. Its format should be `organizations/[organization_id]`, `fo... |
| `pageSize` | `integer` | query | No | The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000. |
| `pageToken` | `string` | query | No | The value returned by the last `ListSourcesResponse`; indicates that this is a continuation of a prior `ListSources` ... |

**Response**: `ListSourcesResponse`

```typescript
const res = await securitycenter.sources.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.sources.create`

**POST** `v1/{+parent}/sources`

Creates a source.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the new source's parent. Its format should be `organizations/[organization_id]`. |

**Request body**: `Source`

**Response**: `Source`

```typescript
const res = await securitycenter.sources.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.sources.findings.patch`

**PATCH** `v1/{+name}`

Creates or updates a finding. The corresponding source must exist for a finding creation to succeed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The [relative resource name](https://cloud.google.com/apis/design/resource_names#relative_resource_name) of the findi... |
| `updateMask` | `string` | query | No | The FieldMask to use when updating the finding resource. This field should not be specified when creating a finding. ... |

**Request body**: `Finding`

**Response**: `Finding`

```typescript
const res = await securitycenter.findings.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.sources.findings.setState`

**POST** `v1/{+name}:setState`

Updates the state of a finding.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The [relative resource name](https://cloud.google.com/apis/design/resource_names#relative_resource_name) of... |

**Request body**: `SetFindingStateRequest`

**Response**: `Finding`

```typescript
const res = await securitycenter.findings.setState({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.sources.findings.group`

**POST** `v1/{+parent}/findings:group`

Filters an organization or source's findings and groups them by their specified properties. To group across all sources provide a `-` as the source id. Example: /v1/organizations/{organization_id}/sources/-/findings, /v1/folders/{folder_id}/sources/-/findings, /v1/projects/{project_id}/sources/-/findings

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the source to groupBy. Its format is `organizations/[organization_id]/sources/[source_id]`, `folder... |

**Request body**: `GroupFindingsRequest`

**Response**: `GroupFindingsResponse`

```typescript
const res = await securitycenter.findings.group({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.sources.findings.setMute`

**POST** `v1/{+name}:setMute`

Updates the mute state of a finding.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The [relative resource name](https://cloud.google.com/apis/design/resource_names#relative_resource_name) of... |

**Request body**: `SetMuteRequest`

**Response**: `Finding`

```typescript
const res = await securitycenter.findings.setMute({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.sources.findings.updateSecurityMarks`

**PATCH** `v1/{+name}`

Updates security marks.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The relative resource name of the SecurityMarks. See: https://cloud.google.com/apis/design/resource_names#relative_re... |
| `startTime` | `string` | query | No | The time at which the updated SecurityMarks take effect. If not set uses current server time. Updates will be applied... |
| `updateMask` | `string` | query | No | The FieldMask to use when updating the security marks resource. The field mask must not contain duplicate fields. If ... |

**Request body**: `SecurityMarks`

**Response**: `SecurityMarks`

```typescript
const res = await securitycenter.findings.updateSecurityMarks({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.sources.findings.list`

**GET** `v1/{+parent}/findings`

Lists an organization or source's findings. To list across all sources provide a `-` as the source id. Example: /v1/organizations/{organization_id}/sources/-/findings

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the source the findings belong to. Its format is `organizations/[organization_id]/sources/[source_i... |
| `compareDuration` | `string` | query | No | When compare_duration is set, the ListFindingsResult's "state_change" attribute is updated to indicate whether the fi... |
| `fieldMask` | `string` | query | No | A field mask to specify the Finding fields to be listed in the response. An empty field mask will list all fields. |
| `filter` | `string` | query | No | Expression that defines the filter to apply across findings. The expression is a list of one or more restrictions com... |
| `orderBy` | `string` | query | No | Expression that defines what fields and order to use for sorting. The string value should follow SQL syntax: comma se... |
| `pageSize` | `integer` | query | No | The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000. |
| `pageToken` | `string` | query | No | The value returned by the last `ListFindingsResponse`; indicates that this is a continuation of a prior `ListFindings... |
| `readTime` | `string` | query | No | Time used as a reference point when filtering findings. The filter is limited to findings existing at the supplied ti... |

**Response**: `ListFindingsResponse`

```typescript
const res = await securitycenter.findings.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.sources.findings.create`

**POST** `v1/{+parent}/findings`

Creates a finding. The corresponding source must exist for finding creation to succeed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the new finding's parent. Its format should be `organizations/[organization_id]/sources/[s... |
| `findingId` | `string` | query | No | Required. Unique identifier provided by the client within the parent scope. It must be alphanumeric and less than or ... |

**Request body**: `Finding`

**Response**: `Finding`

```typescript
const res = await securitycenter.findings.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.sources.findings.externalSystems.patch`

**PATCH** `v1/{+name}`

Updates external system. This is for a given finding.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Full resource name of the external system, for example: "organizations/1234/sources/5678/findings/123456/externalSyst... |
| `updateMask` | `string` | query | No | The FieldMask to use when updating the external system resource. If empty all mutable fields will be updated. |

**Request body**: `GoogleCloudSecuritycenterV1ExternalSystem`

**Response**: `GoogleCloudSecuritycenterV1ExternalSystem`

```typescript
const res = await securitycenter.externalSystems.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.valuedResources.list`

**GET** `v1/{+parent}/valuedResources`

Lists the valued resources for a set of simulation results and filter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of parent to list valued resources. Valid formats: `organizations/{organization}`, `organizations/{org... |
| `filter` | `string` | query | No | The filter expression that filters the valued resources in the response. Supported fields: * `resource_value` support... |
| `orderBy` | `string` | query | No | Optional. The fields by which to order the valued resources response. Supported fields: * `exposed_score` * `resource... |
| `pageSize` | `integer` | query | No | The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000. |
| `pageToken` | `string` | query | No | The value returned by the last `ListValuedResourcesResponse`; indicates that this is a continuation of a prior `ListV... |

**Response**: `ListValuedResourcesResponse`

```typescript
const res = await securitycenter.valuedResources.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.organizations.attackPaths.list`

**GET** `v1/{+parent}/attackPaths`

Lists the attack paths for a set of simulation results or valued resources and filter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of parent to list attack paths. Valid formats: `organizations/{organization}`, `organizations/{organiz... |
| `filter` | `string` | query | No | The filter expression that filters the attack path in the response. Supported fields: * `valued_resources` supports = |
| `pageSize` | `integer` | query | No | The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000. |
| `pageToken` | `string` | query | No | The value returned by the last `ListAttackPathsResponse`; indicates that this is a continuation of a prior `ListAttac... |

**Response**: `ListAttackPathsResponse`

```typescript
const res = await securitycenter.attackPaths.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.findings.bulkMute`

**POST** `v1/{+parent}/findings:bulkMute`

Kicks off an LRO to bulk mute findings for a parent based on a filter. The parent can be either an organization, folder or project. The findings matched by the filter will be muted after the LRO is done.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, at which bulk action needs to be applied. Its format is `organizations/[organization_id]`, `fol... |

**Request body**: `BulkMuteFindingsRequest`

**Response**: `Operation`

```typescript
const res = await securitycenter.findings.bulkMute({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.securityHealthAnalyticsSettings.effectiveCustomModules.get`

**GET** `v1/{+name}`

Retrieves an EffectiveSecurityHealthAnalyticsCustomModule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the effective custom module to get. Its format is `organizations/{organization}/securityHealthAnaly... |

**Response**: `GoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule`

```typescript
const res = await securitycenter.effectiveCustomModules.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.securityHealthAnalyticsSettings.effectiveCustomModules.list`

**GET** `v1/{+parent}/effectiveCustomModules`

Returns a list of all EffectiveSecurityHealthAnalyticsCustomModules for the given parent. This includes resident modules defined at the scope of the parent, and inherited modules, inherited from CRM ancestors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of parent to list effective custom modules. Its format is `organizations/{organization}/securityHealth... |
| `pageSize` | `integer` | query | No | The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000. |
| `pageToken` | `string` | query | No | The value returned by the last call indicating a continuation |

**Response**: `ListEffectiveSecurityHealthAnalyticsCustomModulesResponse`

```typescript
const res = await securitycenter.effectiveCustomModules.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.securityHealthAnalyticsSettings.customModules.get`

**GET** `v1/{+name}`

Retrieves a SecurityHealthAnalyticsCustomModule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the custom module to get. Its format is `organizations/{organization}/securityHealthAnalyticsSettin... |

**Response**: `GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule`

```typescript
const res = await securitycenter.customModules.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.securityHealthAnalyticsSettings.customModules.list`

**GET** `v1/{+parent}/customModules`

Returns a list of all SecurityHealthAnalyticsCustomModules for the given parent. This includes resident modules defined at the scope of the parent, and inherited modules, inherited from CRM ancestors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of parent to list custom modules. Its format is `organizations/{organization}/securityHealthAnalyticsS... |
| `pageSize` | `integer` | query | No | The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000. |
| `pageToken` | `string` | query | No | The value returned by the last call indicating a continuation |

**Response**: `ListSecurityHealthAnalyticsCustomModulesResponse`

```typescript
const res = await securitycenter.customModules.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.securityHealthAnalyticsSettings.customModules.listDescendant`

**GET** `v1/{+parent}/customModules:listDescendant`

Returns a list of all resident SecurityHealthAnalyticsCustomModules under the given CRM parent and all of the parent’s CRM descendants.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of parent to list descendant custom modules. Its format is `organizations/{organization}/securityHealt... |
| `pageSize` | `integer` | query | No | The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000. |
| `pageToken` | `string` | query | No | The value returned by the last call indicating a continuation |

**Response**: `ListDescendantSecurityHealthAnalyticsCustomModulesResponse`

```typescript
const res = await securitycenter.customModules.listDescendant({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.securityHealthAnalyticsSettings.customModules.create`

**POST** `v1/{+parent}/customModules`

Creates a resident SecurityHealthAnalyticsCustomModule at the scope of the given CRM parent, and also creates inherited SecurityHealthAnalyticsCustomModules for all CRM descendants of the given parent. These modules are enabled by default.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the new custom module's parent. Its format is `organizations/{organization}/securityHealth... |

**Request body**: `GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule`

**Response**: `GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule`

```typescript
const res = await securitycenter.customModules.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.securityHealthAnalyticsSettings.customModules.delete`

**DELETE** `v1/{+name}`

Deletes the specified SecurityHealthAnalyticsCustomModule and all of its descendants in the CRM hierarchy. This method is only supported for resident custom modules.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the custom module to delete. Its format is `organizations/{organization}/securityHealthAnalyticsSet... |

**Response**: `Empty`

```typescript
const res = await securitycenter.customModules.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.securityHealthAnalyticsSettings.customModules.simulate`

**POST** `v1/{+parent}/customModules:simulate`

Simulates a given SecurityHealthAnalyticsCustomModule and Resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The relative resource name of the organization, project, or folder. For more information about relative res... |

**Request body**: `SimulateSecurityHealthAnalyticsCustomModuleRequest`

**Response**: `SimulateSecurityHealthAnalyticsCustomModuleResponse`

```typescript
const res = await securitycenter.customModules.simulate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.securityHealthAnalyticsSettings.customModules.patch`

**PATCH** `v1/{+name}`

Updates the SecurityHealthAnalyticsCustomModule under the given name based on the given update mask. Updating the enablement state is supported on both resident and inherited modules (though resident modules cannot have an enablement state of "inherited"). Updating the display name and custom config of a module is supported on resident modules only.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The resource name of the custom module. Its format is "organizations/{organization}/securityHealthAnalytic... |
| `updateMask` | `string` | query | No | The list of fields to be updated. The only fields that can be updated are `enablement_state` and `custom_config`. If ... |

**Request body**: `GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule`

**Response**: `GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule`

```typescript
const res = await securitycenter.customModules.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.locations.muteConfigs.patch`

**PATCH** `v1/{+name}`

Updates a mute config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | This field will be ignored if provided on config creation. Format `organizations/{organization}/muteConfigs/{mute_con... |
| `updateMask` | `string` | query | No | The list of fields to be updated. If empty all mutable fields will be updated. |

**Request body**: `GoogleCloudSecuritycenterV1MuteConfig`

**Response**: `GoogleCloudSecuritycenterV1MuteConfig`

```typescript
const res = await securitycenter.muteConfigs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.locations.muteConfigs.get`

**GET** `v1/{+name}`

Gets a mute config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the mute config to retrieve. Its format is `organizations/{organization}/muteConfigs/{config_id}`, ... |

**Response**: `GoogleCloudSecuritycenterV1MuteConfig`

```typescript
const res = await securitycenter.muteConfigs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.locations.muteConfigs.delete`

**DELETE** `v1/{+name}`

Deletes an existing mute config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the mute config to delete. Its format is `organizations/{organization}/muteConfigs/{config_id}`, `f... |

**Response**: `Empty`

```typescript
const res = await securitycenter.muteConfigs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.notificationConfigs.patch`

**PATCH** `v1/{+name}`

Updates a notification config. The following update fields are allowed: description, pubsub_topic, streaming_config.filter

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The relative resource name of this notification config. See: https://cloud.google.com/apis/design/resource_names#rela... |
| `updateMask` | `string` | query | No | The FieldMask to use when updating the notification config. If empty all mutable fields will be updated. |

**Request body**: `NotificationConfig`

**Response**: `NotificationConfig`

```typescript
const res = await securitycenter.notificationConfigs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.notificationConfigs.create`

**POST** `v1/{+parent}/notificationConfigs`

Creates a notification config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the new notification config's parent. Its format is `organizations/[organization_id]`, `fo... |
| `configId` | `string` | query | No | Required. Unique identifier provided by the client within the parent scope. It must be between 1 and 128 characters a... |

**Request body**: `NotificationConfig`

**Response**: `NotificationConfig`

```typescript
const res = await securitycenter.notificationConfigs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.notificationConfigs.delete`

**DELETE** `v1/{+name}`

Deletes a notification config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the notification config to delete. Its format is `organizations/[organization_id]/notificationConfi... |

**Response**: `Empty`

```typescript
const res = await securitycenter.notificationConfigs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.notificationConfigs.get`

**GET** `v1/{+name}`

Gets a notification config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the notification config to get. Its format is `organizations/[organization_id]/notificationConfigs/... |

**Response**: `NotificationConfig`

```typescript
const res = await securitycenter.notificationConfigs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.notificationConfigs.list`

**GET** `v1/{+parent}/notificationConfigs`

Lists notification configs.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent in which to list the notification configurations. Its format is "organizations/[orga... |
| `pageSize` | `integer` | query | No | The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000. |
| `pageToken` | `string` | query | No | The value returned by the last `ListNotificationConfigsResponse`; indicates that this is a continuation of a prior `L... |

**Response**: `ListNotificationConfigsResponse`

```typescript
const res = await securitycenter.notificationConfigs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.muteConfigs.delete`

**DELETE** `v1/{+name}`

Deletes an existing mute config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the mute config to delete. Its format is `organizations/{organization}/muteConfigs/{config_id}`, `f... |

**Response**: `Empty`

```typescript
const res = await securitycenter.muteConfigs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.muteConfigs.patch`

**PATCH** `v1/{+name}`

Updates a mute config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | This field will be ignored if provided on config creation. Format `organizations/{organization}/muteConfigs/{mute_con... |
| `updateMask` | `string` | query | No | The list of fields to be updated. If empty all mutable fields will be updated. |

**Request body**: `GoogleCloudSecuritycenterV1MuteConfig`

**Response**: `GoogleCloudSecuritycenterV1MuteConfig`

```typescript
const res = await securitycenter.muteConfigs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.muteConfigs.list`

**GET** `v1/{+parent}/muteConfigs`

Lists mute configs.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns the collection of mute configs. Its format is `organizations/[organization_id]`, `fo... |
| `pageSize` | `integer` | query | No | The maximum number of configs to return. The service may return fewer than this value. If unspecified, at most 10 con... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListMuteConfigs` call. Provide this to retrieve the subsequent page. When pag... |

**Response**: `ListMuteConfigsResponse`

```typescript
const res = await securitycenter.muteConfigs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.muteConfigs.create`

**POST** `v1/{+parent}/muteConfigs`

Creates a mute config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the new mute configs's parent. Its format is `organizations/[organization_id]`, `folders/[... |
| `muteConfigId` | `string` | query | No | Required. Unique identifier provided by the client within the parent scope. It must consist of only lowercase letters... |

**Request body**: `GoogleCloudSecuritycenterV1MuteConfig`

**Response**: `GoogleCloudSecuritycenterV1MuteConfig`

```typescript
const res = await securitycenter.muteConfigs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.muteConfigs.get`

**GET** `v1/{+name}`

Gets a mute config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the mute config to retrieve. Its format is `organizations/{organization}/muteConfigs/{config_id}`, ... |

**Response**: `GoogleCloudSecuritycenterV1MuteConfig`

```typescript
const res = await securitycenter.muteConfigs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.eventThreatDetectionSettings.validateCustomModule`

**POST** `v1/{+parent}:validateCustomModule`

Validates the given Event Threat Detection custom module.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the parent to validate the Custom Module under. Its format is: * `organizations/{organizat... |

**Request body**: `ValidateEventThreatDetectionCustomModuleRequest`

**Response**: `ValidateEventThreatDetectionCustomModuleResponse`

```typescript
const res = await securitycenter.eventThreatDetectionSettings.validateCustomModule({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.eventThreatDetectionSettings.effectiveCustomModules.get`

**GET** `v1/{+name}`

Gets an effective Event Threat Detection custom module at the given level.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the effective Event Threat Detection custom module. Its format is: * `organizations/{o... |

**Response**: `EffectiveEventThreatDetectionCustomModule`

```typescript
const res = await securitycenter.effectiveCustomModules.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.eventThreatDetectionSettings.effectiveCustomModules.list`

**GET** `v1/{+parent}/effectiveCustomModules`

Lists all effective Event Threat Detection custom modules for the given parent. This includes resident modules defined at the scope of the parent along with modules inherited from its ancestors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the parent to list custom modules for. Its format is: * `organizations/{organization}/eventThreatDe... |
| `pageSize` | `integer` | query | No | The maximum number of modules to return. The service may return fewer than this value. If unspecified, at most 10 con... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListEffectiveEventThreatDetectionCustomModules` call. Provide this to retriev... |

**Response**: `ListEffectiveEventThreatDetectionCustomModulesResponse`

```typescript
const res = await securitycenter.effectiveCustomModules.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.eventThreatDetectionSettings.customModules.list`

**GET** `v1/{+parent}/customModules`

Lists all Event Threat Detection custom modules for the given Resource Manager parent. This includes resident modules defined at the scope of the parent along with modules inherited from ancestors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the parent to list custom modules under. Its format is: * `organizations/{organization}/eventThreat... |
| `pageSize` | `integer` | query | No | The maximum number of modules to return. The service may return fewer than this value. If unspecified, at most 10 con... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListEventThreatDetectionCustomModules` call. Provide this to retrieve the sub... |

**Response**: `ListEventThreatDetectionCustomModulesResponse`

```typescript
const res = await securitycenter.customModules.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.eventThreatDetectionSettings.customModules.delete`

**DELETE** `v1/{+name}`

Deletes the specified Event Threat Detection custom module and all of its descendants in the Resource Manager hierarchy. This method is only supported for resident custom modules.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the custom module to delete. Its format is: * `organizations/{organization}/eventThreatDetectionSet... |

**Response**: `Empty`

```typescript
const res = await securitycenter.customModules.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.eventThreatDetectionSettings.customModules.create`

**POST** `v1/{+parent}/customModules`

Creates a resident Event Threat Detection custom module at the scope of the given Resource Manager parent, and also creates inherited custom modules for all descendants of the given parent. These modules are enabled by default.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The new custom module's parent. Its format is: * `organizations/{organization}/eventThreatDetectionSettings... |

**Request body**: `EventThreatDetectionCustomModule`

**Response**: `EventThreatDetectionCustomModule`

```typescript
const res = await securitycenter.customModules.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.eventThreatDetectionSettings.customModules.listDescendant`

**GET** `v1/{+parent}/customModules:listDescendant`

Lists all resident Event Threat Detection custom modules under the given Resource Manager parent and its descendants.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the parent to list custom modules under. Its format is: * `organizations/{organization}/eventThreat... |
| `pageSize` | `integer` | query | No | The maximum number of modules to return. The service may return fewer than this value. If unspecified, at most 10 con... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListDescendantEventThreatDetectionCustomModules` call. Provide this to retrie... |

**Response**: `ListDescendantEventThreatDetectionCustomModulesResponse`

```typescript
const res = await securitycenter.customModules.listDescendant({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.eventThreatDetectionSettings.customModules.patch`

**PATCH** `v1/{+name}`

Updates the Event Threat Detection custom module with the given name based on the given update mask. Updating the enablement state is supported for both resident and inherited modules (though resident modules cannot have an enablement state of "inherited"). Updating the display name or configuration of a module is supported for resident modules only. The type of a module cannot be changed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The resource name of the Event Threat Detection custom module. Its format is: * `organizations/{organizati... |
| `updateMask` | `string` | query | No | The list of fields to be updated. If empty all mutable fields will be updated. |

**Request body**: `EventThreatDetectionCustomModule`

**Response**: `EventThreatDetectionCustomModule`

```typescript
const res = await securitycenter.customModules.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.eventThreatDetectionSettings.customModules.get`

**GET** `v1/{+name}`

Gets an Event Threat Detection custom module.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the custom module to get. Its format is: * `organizations/{organization}/eventThreatDetectionSettin... |

**Response**: `EventThreatDetectionCustomModule`

```typescript
const res = await securitycenter.customModules.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.sources.list`

**GET** `v1/{+parent}/sources`

Lists all sources belonging to an organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the parent of sources to list. Its format should be `organizations/[organization_id]`, `fo... |
| `pageSize` | `integer` | query | No | The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000. |
| `pageToken` | `string` | query | No | The value returned by the last `ListSourcesResponse`; indicates that this is a continuation of a prior `ListSources` ... |

**Response**: `ListSourcesResponse`

```typescript
const res = await securitycenter.sources.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.sources.findings.updateSecurityMarks`

**PATCH** `v1/{+name}`

Updates security marks.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The relative resource name of the SecurityMarks. See: https://cloud.google.com/apis/design/resource_names#relative_re... |
| `startTime` | `string` | query | No | The time at which the updated SecurityMarks take effect. If not set uses current server time. Updates will be applied... |
| `updateMask` | `string` | query | No | The FieldMask to use when updating the security marks resource. The field mask must not contain duplicate fields. If ... |

**Request body**: `SecurityMarks`

**Response**: `SecurityMarks`

```typescript
const res = await securitycenter.findings.updateSecurityMarks({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.sources.findings.list`

**GET** `v1/{+parent}/findings`

Lists an organization or source's findings. To list across all sources provide a `-` as the source id. Example: /v1/organizations/{organization_id}/sources/-/findings

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the source the findings belong to. Its format is `organizations/[organization_id]/sources/[source_i... |
| `compareDuration` | `string` | query | No | When compare_duration is set, the ListFindingsResult's "state_change" attribute is updated to indicate whether the fi... |
| `fieldMask` | `string` | query | No | A field mask to specify the Finding fields to be listed in the response. An empty field mask will list all fields. |
| `filter` | `string` | query | No | Expression that defines the filter to apply across findings. The expression is a list of one or more restrictions com... |
| `orderBy` | `string` | query | No | Expression that defines what fields and order to use for sorting. The string value should follow SQL syntax: comma se... |
| `pageSize` | `integer` | query | No | The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000. |
| `pageToken` | `string` | query | No | The value returned by the last `ListFindingsResponse`; indicates that this is a continuation of a prior `ListFindings... |
| `readTime` | `string` | query | No | Time used as a reference point when filtering findings. The filter is limited to findings existing at the supplied ti... |

**Response**: `ListFindingsResponse`

```typescript
const res = await securitycenter.findings.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.sources.findings.patch`

**PATCH** `v1/{+name}`

Creates or updates a finding. The corresponding source must exist for a finding creation to succeed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The [relative resource name](https://cloud.google.com/apis/design/resource_names#relative_resource_name) of the findi... |
| `updateMask` | `string` | query | No | The FieldMask to use when updating the finding resource. This field should not be specified when creating a finding. ... |

**Request body**: `Finding`

**Response**: `Finding`

```typescript
const res = await securitycenter.findings.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.sources.findings.setState`

**POST** `v1/{+name}:setState`

Updates the state of a finding.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The [relative resource name](https://cloud.google.com/apis/design/resource_names#relative_resource_name) of... |

**Request body**: `SetFindingStateRequest`

**Response**: `Finding`

```typescript
const res = await securitycenter.findings.setState({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.sources.findings.group`

**POST** `v1/{+parent}/findings:group`

Filters an organization or source's findings and groups them by their specified properties. To group across all sources provide a `-` as the source id. Example: /v1/organizations/{organization_id}/sources/-/findings, /v1/folders/{folder_id}/sources/-/findings, /v1/projects/{project_id}/sources/-/findings

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the source to groupBy. Its format is `organizations/[organization_id]/sources/[source_id]`, `folder... |

**Request body**: `GroupFindingsRequest`

**Response**: `GroupFindingsResponse`

```typescript
const res = await securitycenter.findings.group({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.sources.findings.setMute`

**POST** `v1/{+name}:setMute`

Updates the mute state of a finding.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The [relative resource name](https://cloud.google.com/apis/design/resource_names#relative_resource_name) of... |

**Request body**: `SetMuteRequest`

**Response**: `Finding`

```typescript
const res = await securitycenter.findings.setMute({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.sources.findings.externalSystems.patch`

**PATCH** `v1/{+name}`

Updates external system. This is for a given finding.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Full resource name of the external system, for example: "organizations/1234/sources/5678/findings/123456/externalSyst... |
| `updateMask` | `string` | query | No | The FieldMask to use when updating the external system resource. If empty all mutable fields will be updated. |

**Request body**: `GoogleCloudSecuritycenterV1ExternalSystem`

**Response**: `GoogleCloudSecuritycenterV1ExternalSystem`

```typescript
const res = await securitycenter.externalSystems.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.bigQueryExports.list`

**GET** `v1/{+parent}/bigQueryExports`

Lists BigQuery exports. Note that when requesting BigQuery exports at a given level all exports under that level are also returned e.g. if requesting BigQuery exports under a folder, then all BigQuery exports immediately under the folder plus the ones created under the projects within the folder are returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns the collection of BigQuery exports. Its format is `organizations/[organization_id]`,... |
| `pageSize` | `integer` | query | No | The maximum number of configs to return. The service may return fewer than this value. If unspecified, at most 10 con... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListBigQueryExports` call. Provide this to retrieve the subsequent page. When... |

**Response**: `ListBigQueryExportsResponse`

```typescript
const res = await securitycenter.bigQueryExports.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.bigQueryExports.get`

**GET** `v1/{+name}`

Gets a BigQuery export.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the BigQuery export to retrieve. Its format is `organizations/{organization}/bigQueryExports/{expor... |

**Response**: `GoogleCloudSecuritycenterV1BigQueryExport`

```typescript
const res = await securitycenter.bigQueryExports.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.bigQueryExports.create`

**POST** `v1/{+parent}/bigQueryExports`

Creates a BigQuery export.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent resource of the new BigQuery export. Its format is `organizations/[organization_id]`... |
| `bigQueryExportId` | `string` | query | No | Required. Unique identifier provided by the client within the parent scope. It must consist of only lowercase letters... |

**Request body**: `GoogleCloudSecuritycenterV1BigQueryExport`

**Response**: `GoogleCloudSecuritycenterV1BigQueryExport`

```typescript
const res = await securitycenter.bigQueryExports.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.bigQueryExports.patch`

**PATCH** `v1/{+name}`

Updates a BigQuery export.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The relative resource name of this export. See: https://cloud.google.com/apis/design/resource_names#relative_resource... |
| `updateMask` | `string` | query | No | The list of fields to be updated. If empty all mutable fields will be updated. |

**Request body**: `GoogleCloudSecuritycenterV1BigQueryExport`

**Response**: `GoogleCloudSecuritycenterV1BigQueryExport`

```typescript
const res = await securitycenter.bigQueryExports.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.bigQueryExports.delete`

**DELETE** `v1/{+name}`

Deletes an existing BigQuery export.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the BigQuery export to delete. Its format is `organizations/{organization}/bigQueryExports/{exp... |

**Response**: `Empty`

```typescript
const res = await securitycenter.bigQueryExports.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.assets.list`

**GET** `v1/{+parent}/assets`

Lists an organization's assets.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent resource that contains the assets. The value that you can specify on parent depends ... |
| `compareDuration` | `string` | query | No | When compare_duration is set, the ListAssetsResult's "state_change" attribute is updated to indicate whether the asse... |
| `fieldMask` | `string` | query | No | A field mask to specify the ListAssetsResult fields to be listed in the response. An empty field mask will list all f... |
| `filter` | `string` | query | No | Expression that defines the filter to apply across assets. The expression is a list of zero or more restrictions comb... |
| `orderBy` | `string` | query | No | Expression that defines what fields and order to use for sorting. The string value should follow SQL syntax: comma se... |
| `pageSize` | `integer` | query | No | The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000. |
| `pageToken` | `string` | query | No | The value returned by the last `ListAssetsResponse`; indicates that this is a continuation of a prior `ListAssets` ca... |
| `readTime` | `string` | query | No | Time used as a reference point when filtering assets. The filter is limited to assets existing at the supplied time a... |

**Response**: `ListAssetsResponse`

```typescript
const res = await securitycenter.assets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.assets.group`

**POST** `v1/{+parent}/assets:group`

Filters an organization's assets and groups them by their specified properties.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent to group the assets by. Its format is `organizations/[organization_id]`, `folders/[f... |

**Request body**: `GroupAssetsRequest`

**Response**: `GroupAssetsResponse`

```typescript
const res = await securitycenter.assets.group({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securitycenter.folders.assets.updateSecurityMarks`

**PATCH** `v1/{+name}`

Updates security marks.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The relative resource name of the SecurityMarks. See: https://cloud.google.com/apis/design/resource_names#relative_re... |
| `startTime` | `string` | query | No | The time at which the updated SecurityMarks take effect. If not set uses current server time. Updates will be applied... |
| `updateMask` | `string` | query | No | The FieldMask to use when updating the security marks resource. The field mask must not contain duplicate fields. If ... |

**Request body**: `SecurityMarks`

**Response**: `SecurityMarks`

```typescript
const res = await securitycenter.assets.updateSecurityMarks({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `Access`

Represents an access event.

| Property | Type | Description |
|----------|------|-------------|
| `callerIp` | `string` | Caller's IP address, such as "1.1.1.1". |
| `callerIpGeo` | `Geolocation` | The caller IP's geolocation, which identifies where the call came from. |
| `methodName` | `string` | The method that the service account called, e.g. "SetIamPolicy". |
| `principalEmail` | `string` | Associated email, such as "foo@google.com". The email address of the authenticated user or a serv... |
| `principalSubject` | `string` | A string that represents the principal_subject that is associated with the identity. Unlike `prin... |
| `serviceAccountDelegationInfo` | `array<ServiceAccountDelegationInfo>` | The identity delegation history of an authenticated service account that made the request. The `s... |
| `serviceAccountKeyName` | `string` | The name of the service account key that was used to create or exchange credentials when authenti... |
| `serviceName` | `string` | This is the API service that the service account made a call to, e.g. "iam.googleapis.com" |
| `userAgent` | `string` | The caller's user agent string associated with the finding. |
| `userAgentFamily` | `string` | Type of user agent associated with the finding. For example, an operating system shell or an embe... |
| `userName` | `string` | A string that represents a username. The username provided depends on the type of the finding and... |

### `AccessReview`

Conveys information about a Kubernetes access review (such as one returned by a [`kubectl auth can-i`](https://kubernetes.io/docs/reference/access-authn-authz/authorization/#checking-api-access) command) that was involved in a finding.

| Property | Type | Description |
|----------|------|-------------|
| `group` | `string` | The API group of the resource. "*" means all. |
| `name` | `string` | The name of the resource being requested. Empty means all. |
| `ns` | `string` | Namespace of the action being requested. Currently, there is no distinction between no namespace ... |
| `resource` | `string` | The optional resource type requested. "*" means all. |
| `subresource` | `string` | The optional subresource type. |
| `verb` | `string` | A Kubernetes resource API verb, like get, list, watch, create, update, delete, proxy. "*" means all. |
| `version` | `string` | The API version of the resource. "*" means all. |

### `AdaptiveProtection`

Information about [Google Cloud Armor Adaptive Protection](https://cloud.google.com/armor/docs/cloud-armor-overview#google-cloud-armor-adaptive-protection).

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | A score of 0 means that there is low confidence that the detected event is an actual attack. A sc... |

### `AdcApplication`

Represents an ADC application associated with the finding.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `GoogleCloudSecuritycenterV1ResourceApplicationAttributes` | Consumer provided attributes for the AppHub application. |
| `name` | `string` | The resource name of an ADC Application. Format: projects/{project}/locations/{location}/spaces/{... |

### `AdcApplicationTemplateRevision`

Represents an ADC template associated with the finding.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The resource name of an ADC Application Template Revision. Format: projects/{project}/locations/{... |

### `AdcSharedTemplateRevision`

Represents an ADC shared template associated with the finding.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The resource name of an ADC Shared Template Revision. Format: projects/{project}/locations/{locat... |

### `AffectedResources`

Details about resources affected by this finding.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `string` | The count of resources affected by the finding. |

### `AiModel`

Contains information about the AI model associated with the finding.

| Property | Type | Description |
|----------|------|-------------|
| `deploymentPlatform` | `string` | The platform on which the model is deployed. |
| `displayName` | `string` | The user defined display name of model. Ex. baseline-classification-model |
| `domain` | `string` | The domain of the model, for example, “image-classification”. |
| `library` | `string` | The name of the model library, for example, “transformers”. |
| `location` | `string` | The region in which the model is used, for example, “us-central1”. |
| `name` | `string` | The name of the AI model, for example, "gemini:1.0.0". |
| `publisher` | `string` | The publisher of the model, for example, “google” or “nvidia”. |
| `usageCategory` | `string` | The purpose of the model, for example, "Inteference" or "Training". |

### `Allowed`

Allowed IP rule.

| Property | Type | Description |
|----------|------|-------------|
| `ipRules` | `array<IpRule>` | Optional. Optional list of allowed IP rules. |

### `Application`

Represents an application associated with a finding.

| Property | Type | Description |
|----------|------|-------------|
| `baseUri` | `string` | The base URI that identifies the network location of the application in which the vulnerability w... |
| `fullUri` | `string` | The full URI with payload that can be used to reproduce the vulnerability. For example, `http://e... |

### `ArtifactGuardPolicies`

Represents the result of evaluating artifact guard policies.

| Property | Type | Description |
|----------|------|-------------|
| `failingPolicies` | `array<ArtifactGuardPolicy>` | A list of failing policies. |
| `resourceId` | `string` | The ID of the resource that has policies configured for it. |

### `ArtifactGuardPolicy`

Represents an artifact guard policy.

| Property | Type | Description |
|----------|------|-------------|
| `failureReason` | `string` | The reason for the policy failure, for example, "severity=HIGH AND max_vuln_count=2". |
| `policyId` | `string` | The ID of the failing policy, for example, "organizations/3392779/locations/global/policies/prod-... |
| `type` | `string` | The type of the policy evaluation. |

### `Asset`

Security Command Center representation of a Google Cloud resource. The Asset is a Security Command Center resource that captures information about a single Google Cloud resource. All modifications to an Asset are only within the context of Security Command Center and don't affect the referenced Google Cloud resource.

| Property | Type | Description |
|----------|------|-------------|
| `canonicalName` | `string` | The canonical name of the resource. It's either "organizations/{organization_id}/assets/{asset_id... |
| `createTime` | `string` | The time at which the asset was created in Security Command Center. |
| `iamPolicy` | `IamPolicy` | Cloud IAM Policy information associated with the Google Cloud resource described by the Security ... |
| `name` | `string` | The relative resource name of this asset. See: https://cloud.google.com/apis/design/resource_name... |
| `resourceProperties` | `object` | Resource managed properties. These properties are managed and defined by the Google Cloud resourc... |
| `securityCenterProperties` | `SecurityCenterProperties` | Security Command Center managed properties. These properties are managed by Security Command Cent... |
| `securityMarks` | `SecurityMarks` | User specified security marks. These marks are entirely managed by the user and come from the Sec... |
| `updateTime` | `string` | The time at which the asset was last updated or added in Cloud SCC. |

### `AssetDiscoveryConfig`

The configuration used for Asset Discovery runs.

| Property | Type | Description |
|----------|------|-------------|
| `folderIds` | `array<string>` | The folder ids to use for filtering asset discovery. It consists of only digits, e.g., 756619654966. |
| `inclusionMode` | `string` | The mode to use for filtering asset discovery. |
| `projectIds` | `array<string>` | The project ids to use for filtering asset discovery. |

### `Attack`

Information about DDoS attack volume and classification.

| Property | Type | Description |
|----------|------|-------------|
| `classification` | `string` | Type of attack, for example, 'SYN-flood', 'NTP-udp', or 'CHARGEN-udp'. |
| `volumeBps` | `integer` | Total BPS (bytes per second) volume of attack. Deprecated - refer to volume_bps_long instead. |
| `volumeBpsLong` | `string` | Total BPS (bytes per second) volume of attack. |
| `volumePps` | `integer` | Total PPS (packets per second) volume of attack. Deprecated - refer to volume_pps_long instead. |
| `volumePpsLong` | `string` | Total PPS (packets per second) volume of attack. |

### `AttackExposure`

An attack exposure contains the results of an attack path simulation run.

| Property | Type | Description |
|----------|------|-------------|
| `attackExposureResult` | `string` | The resource name of the attack path simulation result that contains the details regarding this a... |
| `exposedHighValueResourcesCount` | `integer` | The number of high value resources that are exposed as a result of this finding. |
| `exposedLowValueResourcesCount` | `integer` | The number of high value resources that are exposed as a result of this finding. |
| `exposedMediumValueResourcesCount` | `integer` | The number of medium value resources that are exposed as a result of this finding. |
| `latestCalculationTime` | `string` | The most recent time the attack exposure was updated on this finding. |
| `score` | `number` | A number between 0 (inclusive) and infinity that represents how important this finding is to reme... |
| `state` | `string` | What state this AttackExposure is in. This captures whether or not an attack exposure has been ca... |

### `AttackPath`

A path that an attacker could take to reach an exposed resource.

| Property | Type | Description |
|----------|------|-------------|
| `edges` | `array<AttackPathEdge>` | A list of the edges between nodes in this attack path. |
| `name` | `string` | The attack path name, for example, `organizations/12/simulation/34/valuedResources/56/attackPaths... |
| `pathNodes` | `array<AttackPathNode>` | A list of nodes that exist in this attack path. |

### `AttackPathEdge`

Represents a connection between a source node and a destination node in this attack path.

| Property | Type | Description |
|----------|------|-------------|
| `destination` | `string` | The attack node uuid of the destination node. |
| `source` | `string` | The attack node uuid of the source node. |

### `AttackPathNode`

Represents one point that an attacker passes through in this attack path.

| Property | Type | Description |
|----------|------|-------------|
| `associatedFindings` | `array<PathNodeAssociatedFinding>` | The findings associated with this node in the attack path. |
| `attackSteps` | `array<AttackStepNode>` | A list of attack step nodes that exist in this attack path node. |
| `displayName` | `string` | Human-readable name of this resource. |
| `resource` | `string` | The name of the resource at this point in the attack path. The format of the name follows the Clo... |
| `resourceType` | `string` | The [supported resource type](https://cloud.google.com/asset-inventory/docs/supported-asset-types) |
| `uuid` | `string` | Unique id of the attack path node. |

### `AttackStepNode`

Detailed steps the attack can take between path nodes.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Attack step description |
| `displayName` | `string` | User friendly name of the attack step |
| `labels` | `object` | Attack step labels for metadata |
| `type` | `string` | Attack step type. Can be either AND, OR or DEFENSE |
| `uuid` | `string` | Unique ID for one Node |

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

### `AwsAccount`

An AWS account that is a member of an organization.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | The unique identifier (ID) of the account, containing exactly 12 digits. |
| `name` | `string` | The friendly name of this account. |

### `AwsMetadata`

AWS metadata associated with the resource, only applicable if the finding's cloud provider is Amazon Web Services.

| Property | Type | Description |
|----------|------|-------------|
| `account` | `AwsAccount` | The AWS account associated with the resource. |
| `organization` | `AwsOrganization` | The AWS organization associated with the resource. |
| `organizationalUnits` | `array<AwsOrganizationalUnit>` | A list of AWS organizational units associated with the resource, ordered from lowest level (close... |

### `AwsOrganization`

An organization is a collection of accounts that are centrally managed together using consolidated billing, organized hierarchically with organizational units (OUs), and controlled with policies.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | The unique identifier (ID) for the organization. The regex pattern for an organization ID string ... |

### `AwsOrganizationalUnit`

An Organizational Unit (OU) is a container of AWS accounts within a root of an organization. Policies that are attached to an OU apply to all accounts contained in that OU and in any child OUs.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | The unique identifier (ID) associated with this OU. The regex pattern for an organizational unit ... |
| `name` | `string` | The friendly name of the OU. |

### `AzureManagementGroup`

Represents an Azure management group.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The display name of the Azure management group. |
| `id` | `string` | The UUID of the Azure management group, for example, `20000000-0001-0000-0000-000000000000`. |

### `AzureMetadata`

Azure metadata associated with the resource, only applicable if the finding's cloud provider is Microsoft Azure.

| Property | Type | Description |
|----------|------|-------------|
| `managementGroups` | `array<AzureManagementGroup>` | A list of Azure management groups associated with the resource, ordered from lowest level (closes... |
| `resourceGroup` | `AzureResourceGroup` | The Azure resource group associated with the resource. |
| `subscription` | `AzureSubscription` | The Azure subscription associated with the resource. |
| `tenant` | `AzureTenant` | The Azure Entra tenant associated with the resource. |

### `AzureResourceGroup`

Represents an Azure resource group.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | The ID of the Azure resource group. |
| `name` | `string` | The name of the Azure resource group. This is not a UUID. |

### `AzureSubscription`

Represents an Azure subscription.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The display name of the Azure subscription. |
| `id` | `string` | The UUID of the Azure subscription, for example, `291bba3f-e0a5-47bc-a099-3bdcb2a50a05`. |

### `AzureTenant`

Represents a Microsoft Entra tenant.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The display name of the Azure tenant. |
| `id` | `string` | The ID of the Microsoft Entra tenant, for example, "a11aaa11-aa11-1aa1-11aa-1aaa11a". |

### `BackupDisasterRecovery`

Information related to Google Cloud Backup and DR Service findings.

| Property | Type | Description |
|----------|------|-------------|
| `appliance` | `string` | The name of the Backup and DR appliance that captures, moves, and manages the lifecycle of backup... |
| `applications` | `array<string>` | The names of Backup and DR applications. An application is a VM, database, or file system on a ma... |
| `backupCreateTime` | `string` | The timestamp at which the Backup and DR backup was created. |
| `backupTemplate` | `string` | The name of a Backup and DR template which comprises one or more backup policies. See the [Backup... |
| `backupType` | `string` | The backup type of the Backup and DR image. For example, `Snapshot`, `Remote Snapshot`, `OnVault`. |
| `host` | `string` | The name of a Backup and DR host, which is managed by the backup and recovery appliance and known... |
| `policies` | `array<string>` | The names of Backup and DR policies that are associated with a template and that define when to r... |
| `policyOptions` | `array<string>` | The names of Backup and DR advanced policy options of a policy applying to an application. See th... |
| `profile` | `string` | The name of the Backup and DR resource profile that specifies the storage media for backups of ap... |
| `storagePool` | `string` | The name of the Backup and DR storage pool that the backup and recovery appliance is storing data... |

### `BatchCreateResourceValueConfigsRequest`

Request message to create multiple resource value configs

| Property | Type | Description |
|----------|------|-------------|
| `requests` | `array<CreateResourceValueConfigRequest>` | Required. The resource value configs to be created. |

### `BatchCreateResourceValueConfigsResponse`

Response message for BatchCreateResourceValueConfigs

| Property | Type | Description |
|----------|------|-------------|
| `resourceValueConfigs` | `array<GoogleCloudSecuritycenterV1ResourceValueConfig>` | The resource value configs created |

### `BigQueryDestination`

The destination BigQuery dataset to export findings to.

| Property | Type | Description |
|----------|------|-------------|
| `dataset` | `string` | Required. The relative resource name of the destination dataset, in the form projects/{projectId}... |

### `Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `BulkMuteFindingsRequest`

Request message for bulk findings update. Note: 1. If multiple bulk update requests match the same resource, the order in which they get executed is not defined. 2. Once a bulk operation is started, there is no way to stop it.

| Property | Type | Description |
|----------|------|-------------|
| `filter` | `string` | Expression that identifies findings that should be updated. The expression is a list of zero or m... |
| `muteAnnotation` | `string` | This can be a mute configuration name or any identifier for mute/unmute of findings based on the ... |
| `muteState` | `string` | Optional. All findings matching the given filter will have their mute state set to this value. Th... |

### `Chokepoint`

Contains details about a chokepoint, which is a resource or resource group where high-risk attack paths converge, based on [attack path simulations] (https://cloud.google.com/security-command-center/docs/attack-exposure-learn#attack_path_simulations).

| Property | Type | Description |
|----------|------|-------------|
| `relatedFindings` | `array<string>` | List of resource names of findings associated with this chokepoint. For example, organizations/12... |

### `CloudArmor`

Fields related to Google Cloud Armor findings.

| Property | Type | Description |
|----------|------|-------------|
| `adaptiveProtection` | `AdaptiveProtection` | Information about potential Layer 7 DDoS attacks identified by [Google Cloud Armor Adaptive Prote... |
| `attack` | `Attack` | Information about DDoS attack volume and classification. |
| `duration` | `string` | Duration of attack from the start until the current moment (updated every 5 minutes). |
| `requests` | `Requests` | Information about incoming requests evaluated by [Google Cloud Armor security policies](https://c... |
| `securityPolicy` | `SecurityPolicy` | Information about the [Google Cloud Armor security policy](https://cloud.google.com/armor/docs/se... |
| `threatVector` | `string` | Distinguish between volumetric & protocol DDoS attack and application layer attacks. For example,... |

### `CloudControl`

CloudControl associated with the finding.

| Property | Type | Description |
|----------|------|-------------|
| `cloudControlName` | `string` | Name of the CloudControl associated with the finding. |
| `policyType` | `string` | Policy type of the CloudControl |
| `type` | `string` | Type of cloud control. |
| `version` | `integer` | Version of the Cloud Control |

### `CloudDlpDataProfile`

The [data profile](https://cloud.google.com/dlp/docs/data-profiles) associated with the finding.

| Property | Type | Description |
|----------|------|-------------|
| `dataProfile` | `string` | Name of the data profile, for example, `projects/123/locations/europe/tableProfiles/8383929`. |
| `infoTypes` | `array<InfoType>` | Type of information detected by SDP. Info type includes name, version and sensitivity of the dete... |
| `parentType` | `string` | The resource hierarchy level at which the data profile was generated. |

### `CloudDlpInspection`

Details about the Cloud Data Loss Prevention (Cloud DLP) [inspection job](https://cloud.google.com/dlp/docs/concepts-job-triggers) that produced the finding.

| Property | Type | Description |
|----------|------|-------------|
| `fullScan` | `boolean` | Whether Cloud DLP scanned the complete resource or a sampled subset. |
| `infoType` | `string` | The type of information (or *[infoType](https://cloud.google.com/dlp/docs/infotypes-reference)*) ... |
| `infoTypeCount` | `string` | The number of times Cloud DLP found this infoType within this job and resource. |
| `inspectJob` | `string` | Name of the inspection job, for example, `projects/123/locations/europe/dlpJobs/i-8383929`. |

### `CloudLoggingEntry`

Metadata taken from a [Cloud Logging LogEntry](https://cloud.google.com/logging/docs/reference/v2/rest/v2/LogEntry)

| Property | Type | Description |
|----------|------|-------------|
| `insertId` | `string` | A unique identifier for the log entry. |
| `logId` | `string` | The type of the log (part of `log_name`. `log_name` is the resource name of the log to which this... |
| `resourceContainer` | `string` | The organization, folder, or project of the monitored resource that produced this log entry. |
| `timestamp` | `string` | The time the event described by the log entry occurred. |

### `Compliance`

Contains compliance information about a security standard indicating unmet recommendations.

| Property | Type | Description |
|----------|------|-------------|
| `ids` | `array<string>` | Policies within the standard or benchmark, for example, A.12.4.1 |
| `standard` | `string` | Industry-wide compliance standards or benchmarks, such as CIS, PCI, and OWASP. |
| `version` | `string` | Version of the standard or benchmark, for example, 1.1 |

### `ComplianceDetails`

Compliance Details associated with the finding.

| Property | Type | Description |
|----------|------|-------------|
| `cloudControl` | `CloudControl` | CloudControl associated with the finding |
| `cloudControlDeploymentNames` | `array<string>` | Cloud Control Deployments associated with the finding. For example, organizations/123/locations/g... |
| `frameworks` | `array<Framework>` | Details of Frameworks associated with the finding |

### `Connection`

Contains information about the IP connection associated with the finding.

| Property | Type | Description |
|----------|------|-------------|
| `destinationIp` | `string` | Destination IP address. Not present for sockets that are listening and not connected. |
| `destinationPort` | `integer` | Destination port. Not present for sockets that are listening and not connected. |
| `protocol` | `string` | IANA Internet Protocol Number such as TCP(6) and UDP(17). |
| `sourceIp` | `string` | Source IP address. |
| `sourcePort` | `integer` | Source port. |

### `Contact`

The email address of a contact.

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | An email address. For example, "`person123@company.com`". |

### `ContactDetails`

Details about specific contacts

| Property | Type | Description |
|----------|------|-------------|
| `contacts` | `array<Contact>` | A list of contacts |

### `Container`

Container associated with the finding.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | The time that the container was created. |
| `imageId` | `string` | Optional container image ID, if provided by the container runtime. Uniquely identifies the contai... |
| `labels` | `array<Label>` | Container labels, as provided by the container runtime. |
| `name` | `string` | Name of the container. |
| `uri` | `string` | Container image URI provided when configuring a pod or container. This string can identify a cont... |

### `Control`

Compliance control associated with the finding.

| Property | Type | Description |
|----------|------|-------------|
| `controlName` | `string` | Name of the Control |
| `displayName` | `string` | Display name of the control. For example, AU-02. |

### `CreateResourceValueConfigRequest`

Request message to create single resource value config

| Property | Type | Description |
|----------|------|-------------|
| `parent` | `string` | Required. Resource name of the new ResourceValueConfig's parent. |
| `resourceValueConfig` | `GoogleCloudSecuritycenterV1ResourceValueConfig` | Required. The resource value config being created. |

### `CustomModuleValidationError`

An error encountered while validating the uploaded configuration of an Event Threat Detection Custom Module.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | A description of the error, suitable for human consumption. Required. |
| `end` | `Position` | The end position of the error in the uploaded text version of the module. This field may be omitt... |
| `fieldPath` | `string` | The path, in RFC 8901 JSON Pointer format, to the field that failed validation. This may be left ... |
| `start` | `Position` | The initial position of the error in the uploaded text version of the module. This field may be o... |

### `CustomModuleValidationErrors`

A list of zero or more errors encountered while validating the uploaded configuration of an Event Threat Detection Custom Module.

| Property | Type | Description |
|----------|------|-------------|
| `errors` | `array<CustomModuleValidationError>` | The list of errors. |

### `Cve`

CVE stands for Common Vulnerabilities and Exposures. Information from the [CVE record](https://www.cve.org/ResourcesSupport/Glossary) that describes this vulnerability.

| Property | Type | Description |
|----------|------|-------------|
| `cvssv3` | `Cvssv3` | Describe Common Vulnerability Scoring System specified at https://www.first.org/cvss/v3.1/specifi... |
| `exploitReleaseDate` | `string` | Date the first publicly available exploit or PoC was released. |
| `exploitationActivity` | `string` | The exploitation activity of the vulnerability in the wild. |
| `firstExploitationDate` | `string` | Date of the earliest known exploitation. |
| `id` | `string` | The unique identifier for the vulnerability. e.g. CVE-2021-34527 |
| `impact` | `string` | The potential impact of the vulnerability if it was to be exploited. |
| `observedInTheWild` | `boolean` | Whether or not the vulnerability has been observed in the wild. |
| `references` | `array<Reference>` | Additional information about the CVE. e.g. https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202... |
| `upstreamFixAvailable` | `boolean` | Whether upstream fix is available for the CVE. |
| `zeroDay` | `boolean` | Whether or not the vulnerability was zero day when the finding was published. |

### `Cvssv3`

Common Vulnerability Scoring System version 3.

| Property | Type | Description |
|----------|------|-------------|
| `attackComplexity` | `string` | This metric describes the conditions beyond the attacker's control that must exist in order to ex... |
| `attackVector` | `string` | Base Metrics Represents the intrinsic characteristics of a vulnerability that are constant over t... |
| `availabilityImpact` | `string` | This metric measures the impact to the availability of the impacted component resulting from a su... |
| `baseScore` | `number` | The base score is a function of the base metric scores. |
| `confidentialityImpact` | `string` | This metric measures the impact to the confidentiality of the information resources managed by a ... |
| `integrityImpact` | `string` | This metric measures the impact to integrity of a successfully exploited vulnerability. |
| `privilegesRequired` | `string` | This metric describes the level of privileges an attacker must possess before successfully exploi... |
| `scope` | `string` | The Scope metric captures whether a vulnerability in one vulnerable component impacts resources i... |
| `userInteraction` | `string` | This metric captures the requirement for a human user, other than the attacker, to participate in... |

### `Cwe`

CWE stands for Common Weakness Enumeration. Information about this weakness, as described by [CWE](https://cwe.mitre.org/).

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | The CWE identifier, e.g. CWE-94 |
| `references` | `array<Reference>` | Any reference to the details on the CWE, for example, https://cwe.mitre.org/data/definitions/94.html |

### `DataAccessEvent`

Details about a data access attempt made by a principal not authorized under applicable data security policy.

| Property | Type | Description |
|----------|------|-------------|
| `eventId` | `string` | Unique identifier for data access event. |
| `eventTime` | `string` | Timestamp of data access event. |
| `operation` | `string` | The operation performed by the principal to access the data. |
| `principalEmail` | `string` | The email address of the principal that accessed the data. The principal could be a user account,... |

### `DataFlowEvent`

Details about a data flow event, in which either the data is moved to or is accessed from a non-compliant geo-location, as defined in the applicable data security policy.

| Property | Type | Description |
|----------|------|-------------|
| `eventId` | `string` | Unique identifier for data flow event. |
| `eventTime` | `string` | Timestamp of data flow event. |
| `operation` | `string` | The operation performed by the principal for the data flow event. |
| `principalEmail` | `string` | The email address of the principal that initiated the data flow event. The principal could be a u... |
| `violatedLocation` | `string` | Non-compliant location of the principal or the data destination. |

### `DataRetentionDeletionEvent`

Details about data retention deletion violations, in which the data is non-compliant based on their retention or deletion time, as defined in the applicable data security policy. The Data Retention Deletion (DRD) control is a control of the DSPM (Data Security Posture Management) suite that enables organizations to manage data retention and deletion policies in compliance with regulations, such as GDPR and CRPA. DRD supports two primary policy types: maximum storage length (max TTL) and minimum storage length (min TTL). Both are aimed at helping organizations meet regulatory and data management commitments.

| Property | Type | Description |
|----------|------|-------------|
| `dataObjectCount` | `string` | Number of objects that violated the policy for this resource. If the number is less than 1,000, t... |
| `eventDetectionTime` | `string` | Timestamp indicating when the event was detected. |
| `eventType` | `string` | Type of the DRD event. |
| `maxRetentionAllowed` | `string` | Maximum duration of retention allowed from the DRD control. This comes from the DRD control where... |

### `Database`

Represents database access information, such as queries. A database may be a sub-resource of an instance (as in the case of Cloud SQL instances or Cloud Spanner instances), or the database instance itself. Some database resources might not have the [full resource name](https://google.aip.dev/122#full-resource-names) populated because these resource types, such as Cloud SQL databases, are not yet supported by Cloud Asset Inventory. In these cases only the display name is provided.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The human-readable name of the database that the user connected to. |
| `grantees` | `array<string>` | The target usernames, roles, or groups of an SQL privilege grant, which is not an IAM policy change. |
| `name` | `string` | Some database resources may not have the [full resource name](https://google.aip.dev/122#full-res... |
| `query` | `string` | The SQL statement that is associated with the database access. |
| `userName` | `string` | The username used to connect to the database. The username might not be an IAM principal and does... |
| `version` | `string` | The version of the database, for example, POSTGRES_14. See [the complete list](https://cloud.goog... |

### `Dataset`

Vertex AI dataset associated with the finding.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The user defined display name of dataset, e.g. plants-dataset |
| `name` | `string` | Resource name of the dataset, e.g. projects/{project}/locations/{location}/datasets/2094040236064... |
| `source` | `string` | Data source, such as BigQuery source URI, e.g. bq://scc-nexus-test.AIPPtest.gsod |

### `Denied`

Denied IP rule.

| Property | Type | Description |
|----------|------|-------------|
| `ipRules` | `array<IpRule>` | Optional. Optional list of denied IP rules. |

### `Detection`

Memory hash detection contributing to the binary family match.

| Property | Type | Description |
|----------|------|-------------|
| `binary` | `string` | The name of the binary associated with the memory hash signature detection. |
| `percentPagesMatched` | `number` | The percentage of memory page hashes in the signature that were matched. |

### `Disk`

Contains information about the disk associated with the finding.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The name of the disk, for example, "https://www.googleapis.com/compute/v1/projects/{project-id}/z... |

### `DiskPath`

Path of the file in terms of underlying disk/partition identifiers.

| Property | Type | Description |
|----------|------|-------------|
| `partitionUuid` | `string` | UUID of the partition (format https://wiki.archlinux.org/title/persistent_block_device_naming#by-... |
| `relativePath` | `string` | Relative path of the file in the partition as a JSON encoded string. Example: /home/user1/executa... |

### `DynamicMuteRecord`

The record of a dynamic mute rule that matches the finding.

| Property | Type | Description |
|----------|------|-------------|
| `matchTime` | `string` | When the dynamic mute rule first matched the finding. |
| `muteConfig` | `string` | The relative resource name of the mute rule, represented by a mute config, that created this reco... |

### `EffectiveEventThreatDetectionCustomModule`

An EffectiveEventThreatDetectionCustomModule is the representation of an Event Threat Detection custom module at a specified level of the resource hierarchy: organization, folder, or project. If a custom module is inherited from a parent organization or folder, the value of the `enablement_state` property in EffectiveEventThreatDetectionCustomModule is set to the value that is effective in the parent, instead of `INHERITED`. For example, if the module is enabled in a parent organization or folder, the effective `enablement_state` for the module in all child folders or projects is also `enabled`. EffectiveEventThreatDetectionCustomModule is read-only.

| Property | Type | Description |
|----------|------|-------------|
| `cloudProvider` | `string` | The cloud provider of the custom module. |
| `config` | `object` | Output only. Config for the effective module. |
| `description` | `string` | Output only. The description for the module. |
| `displayName` | `string` | Output only. The human readable name to be displayed for the module. |
| `enablementState` | `string` | Output only. The effective state of enablement for the module at the given level of the hierarchy. |
| `name` | `string` | Output only. The resource name of the effective ETD custom module. Its format is: * `organization... |
| `type` | `string` | Output only. Type for the module. e.g. CONFIGURABLE_BAD_IP. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `EnvironmentVariable`

A name-value pair representing an environment variable used in an operating system process.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Environment variable name as a JSON encoded string. |
| `val` | `string` | Environment variable value as a JSON encoded string. |

### `EventThreatDetectionCustomModule`

Represents an instance of an Event Threat Detection custom module, including its full module name, display name, enablement state, and last updated time. You can create a custom module at the organization, folder, or project level. Custom modules that you create at the organization or folder level are inherited by child folders and projects.

| Property | Type | Description |
|----------|------|-------------|
| `ancestorModule` | `string` | Output only. The closest ancestor module that this module inherits the enablement state from. The... |
| `cloudProvider` | `string` | The cloud provider of the custom module. |
| `config` | `object` | Config for the module. For the resident module, its config value is defined at this level. For th... |
| `description` | `string` | The description for the module. |
| `displayName` | `string` | The human readable name to be displayed for the module. |
| `enablementState` | `string` | The state of enablement for the module at the given level of the hierarchy. |
| `lastEditor` | `string` | Output only. The editor the module was last updated by. |
| `name` | `string` | Immutable. The resource name of the Event Threat Detection custom module. Its format is: * `organ... |
| `type` | `string` | Type for the module. e.g. CONFIGURABLE_BAD_IP. |
| `updateTime` | `string` | Output only. The time the module was last updated. |

### `ExfilResource`

Resource where data was exfiltrated from or exfiltrated to.

| Property | Type | Description |
|----------|------|-------------|
| `components` | `array<string>` | Subcomponents of the asset that was exfiltrated, like URIs used during exfiltration, table names,... |
| `name` | `string` | The resource's [full resource name](https://cloud.google.com/apis/design/resource_names#full_reso... |

### `Exfiltration`

Exfiltration represents a data exfiltration attempt from one or more sources to one or more targets. The `sources` attribute lists the sources of the exfiltrated data. The `targets` attribute lists the destinations the data was copied to.

| Property | Type | Description |
|----------|------|-------------|
| `sources` | `array<ExfilResource>` | If there are multiple sources, then the data is considered "joined" between them. For instance, B... |
| `targets` | `array<ExfilResource>` | If there are multiple targets, each target would get a complete copy of the "joined" source data. |
| `totalExfiltratedBytes` | `string` | Total exfiltrated bytes processed for the entire job. |

### `ExportFindingsMetadata`

The LRO metadata for a ExportFindings request.

| Property | Type | Description |
|----------|------|-------------|
| `bigQueryDestination` | `BigQueryDestination` | Required. The destination BigQuery dataset to export findings to. |
| `exportStartTime` | `string` | Optional. Timestamp at which export was started |

### `ExportFindingsResponse`

The response to a ExportFindings request. Contains the LRO information.

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `ExternalExposure`

Details about the externally exposed resource associated with the finding.

| Property | Type | Description |
|----------|------|-------------|
| `backendService` | `string` | The full resource name of load balancer backend service, for example, "//compute.googleapis.com/p... |
| `exposedEndpoint` | `string` | The resource which is running the exposed service, for example, "//compute.googleapis.com/project... |
| `exposedService` | `string` | The name and version of the service, for example, "Jupyter Notebook 6.14.0". |
| `forwardingRule` | `string` | The full resource name of the forwarding rule, for example, "//compute.googleapis.com/projects/{p... |
| `instanceGroup` | `string` | The full resource name of the instance group, for example, "//compute.googleapis.com/projects/{pr... |
| `loadBalancerFirewallPolicy` | `string` | The full resource name of the load balancer firewall policy, for example, "//compute.googleapis.c... |
| `networkEndpointGroup` | `string` | The full resource name of the network endpoint group, for example, "//compute.googleapis.com/proj... |
| `privateIpAddress` | `string` | Private IP address of the exposed endpoint. |
| `privatePort` | `string` | Port number associated with private IP address. |
| `publicIpAddress` | `string` | Public IP address of the exposed endpoint. |
| `publicPort` | `string` | Public port number of the exposed endpoint. |
| `serviceFirewallPolicy` | `string` | The full resource name of the firewall policy of the exposed service, for example, "//compute.goo... |

### `File`

File information about the related binary/library used by an executable, or the script used by a script interpreter

| Property | Type | Description |
|----------|------|-------------|
| `contents` | `string` | Prefix of the file contents as a JSON-encoded string. |
| `diskPath` | `DiskPath` | Path of the file in terms of underlying disk/partition identifiers. |
| `fileLoadState` | `string` | The load state of the file. |
| `hashedSize` | `string` | The length in bytes of the file prefix that was hashed. If hashed_size == size, any hashes report... |
| `operations` | `array<FileOperation>` | Operation(s) performed on a file. |
| `partiallyHashed` | `boolean` | True when the hash covers only a prefix of the file. |
| `path` | `string` | Absolute path of the file as a JSON encoded string. |
| `sha256` | `string` | SHA256 hash of the first hashed_size bytes of the file encoded as a hex string. If hashed_size ==... |
| `size` | `string` | Size of the file in bytes. |

### `FileOperation`

Operation(s) performed on a file.

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | The type of the operation |

### `Finding`

Security Command Center finding. A finding is a record of assessment data like security, risk, health, or privacy, that is ingested into Security Command Center for presentation, notification, analysis, policy testing, and enforcement. For example, a cross-site scripting (XSS) vulnerability in an App Engine application is a finding.

| Property | Type | Description |
|----------|------|-------------|
| `access` | `Access` | Access details associated with the finding, such as more information on the caller, which method ... |
| `affectedResources` | `AffectedResources` | AffectedResources associated with the finding. |
| `aiModel` | `AiModel` | The AI model associated with the finding. |
| `application` | `Application` | Represents an application associated with the finding. |
| `artifactGuardPolicies` | `ArtifactGuardPolicies` | ArtifactGuardPolicies associated with the finding. |
| `attackExposure` | `AttackExposure` | The results of an attack path simulation relevant to this finding. |
| `backupDisasterRecovery` | `BackupDisasterRecovery` | Fields related to Backup and DR findings. |
| `canonicalName` | `string` | The canonical name of the finding. It's either "organizations/{organization_id}/sources/{source_i... |
| `category` | `string` | The additional taxonomy group within findings from a given source. This field is immutable after ... |
| `chokepoint` | `Chokepoint` | Contains details about a chokepoint, which is a resource or resource group where high-risk attack... |
| `cloudArmor` | `CloudArmor` | Fields related to Cloud Armor findings. |
| `cloudDlpDataProfile` | `CloudDlpDataProfile` | Cloud DLP data profile that is associated with the finding. |
| `cloudDlpInspection` | `CloudDlpInspection` | Cloud Data Loss Prevention (Cloud DLP) inspection results that are associated with the finding. |
| `complianceDetails` | `ComplianceDetails` | Details about the compliance implications of the finding. |
| `compliances` | `array<Compliance>` | Contains compliance information for security standards associated to the finding. |
| `connections` | `array<Connection>` | Contains information about the IP connection associated with the finding. |
| `contacts` | `object` | Output only. Map containing the points of contact for the given finding. The key represents the t... |
| `containers` | `array<Container>` | Containers associated with the finding. This field provides information for both Kubernetes and n... |
| `createTime` | `string` | The time at which the finding was created in Security Command Center. |
| `dataAccessEvents` | `array<DataAccessEvent>` | Data access events associated with the finding. |
| `dataFlowEvents` | `array<DataFlowEvent>` | Data flow events associated with the finding. |
| `dataRetentionDeletionEvents` | `array<DataRetentionDeletionEvent>` | Data retention deletion events associated with the finding. |
| `database` | `Database` | Database associated with the finding. |
| `description` | `string` | Contains more details about the finding. |
| `disk` | `Disk` | Disk associated with the finding. |
| `eventTime` | `string` | The time the finding was first detected. If an existing finding is updated, then this is the time... |
| `exfiltration` | `Exfiltration` | Represents exfiltrations associated with the finding. |
| `externalExposure` | `ExternalExposure` | External exposure associated with the finding. |
| `externalSystems` | `object` | Output only. Third party SIEM/SOAR fields within SCC, contains external system information and ex... |
| `externalUri` | `string` | The URI that, if available, points to a web page outside of Security Command Center where additio... |
| `files` | `array<File>` | File associated with the finding. |
| `findingClass` | `string` | The class of the finding. |
| `groupMemberships` | `array<GroupMembership>` | Contains details about groups of which this finding is a member. A group is a collection of findi... |
| `iamBindings` | `array<IamBinding>` | Represents IAM bindings associated with the finding. |
| `indicator` | `Indicator` | Represents what's commonly known as an *indicator of compromise* (IoC) in computer forensics. Thi... |
| `ipRules` | `IpRules` | IP rules associated with the finding. |
| `job` | `Job` | Job associated with the finding. |
| `kernelRootkit` | `KernelRootkit` | Signature of the kernel rootkit. |
| `kubernetes` | `Kubernetes` | Kubernetes resources associated with the finding. |
| `loadBalancers` | `array<LoadBalancer>` | The load balancers associated with the finding. |
| `logEntries` | `array<LogEntry>` | Log entries that are relevant to the finding. |
| `mitreAttack` | `MitreAttack` | MITRE ATT&CK tactics and techniques related to this finding. See: https://attack.mitre.org |
| `moduleName` | `string` | Unique identifier of the module which generated the finding. Example: folders/598186756061/securi... |
| `mute` | `string` | Indicates the mute state of a finding (either muted, unmuted or undefined). Unlike other attribut... |
| `muteInfo` | `MuteInfo` | Output only. The mute information regarding this finding. |
| `muteInitiator` | `string` | Records additional information about the mute operation, for example, the [mute configuration](/s... |
| `muteUpdateTime` | `string` | Output only. The most recent time this finding was muted or unmuted. |
| `name` | `string` | The [relative resource name](https://cloud.google.com/apis/design/resource_names#relative_resourc... |
| `networks` | `array<Network>` | Represents the VPC networks that the resource is attached to. |
| `nextSteps` | `string` | Steps to address the finding. |
| `notebook` | `Notebook` | Notebook associated with the finding. |
| `orgPolicies` | `array<OrgPolicy>` | Contains information about the org policies associated with the finding. |
| `parent` | `string` | The relative resource name of the source the finding belongs to. See: https://cloud.google.com/ap... |
| `parentDisplayName` | `string` | Output only. The human readable display name of the finding source such as "Event Threat Detectio... |
| `processes` | `array<Process>` | Represents operating system processes associated with the Finding. |
| `resourceName` | `string` | For findings on Google Cloud resources, the full resource name of the Google Cloud resource this ... |
| `secret` | `Secret` | Secret associated with the finding. |
| `securityMarks` | `SecurityMarks` | Output only. User specified security marks. These marks are entirely managed by the user and come... |
| `securityPosture` | `SecurityPosture` | The security posture associated with the finding. |
| `severity` | `string` | The severity of the finding. This field is managed by the source that writes the finding. |
| `sourceProperties` | `object` | Source specific properties. These properties are managed by the source that writes the finding. T... |
| `state` | `string` | The state of the finding. |
| `toxicCombination` | `ToxicCombination` | Contains details about a group of security issues that, when the issues occur together, represent... |
| `vertexAi` | `VertexAi` | VertexAi associated with the finding. |
| `vulnerability` | `Vulnerability` | Represents vulnerability-specific fields like CVE and CVSS scores. CVE stands for Common Vulnerab... |

### `Folder`

Message that contains the resource name and display name of a folder resource.

| Property | Type | Description |
|----------|------|-------------|
| `resourceFolder` | `string` | Full resource name of this folder. See: https://cloud.google.com/apis/design/resource_names#full_... |
| `resourceFolderDisplayName` | `string` | The user defined display name for this folder. |

### `Framework`

Compliance framework associated with the finding.

| Property | Type | Description |
|----------|------|-------------|
| `category` | `array<string>` | Category of the framework associated with the finding. E.g. Security Benchmark, or Assured Workloads |
| `controls` | `array<Control>` | The controls associated with the framework. |
| `displayName` | `string` | Display name of the framework. For a standard framework, this will look like e.g. PCI DSS 3.2.1, ... |
| `name` | `string` | Name of the framework associated with the finding |
| `type` | `string` | Type of the framework associated with the finding, to specify whether the framework is built-in (... |

### `GcpMetadata`

Google Cloud metadata associated with the resource. Only applicable if the finding's cloud provider is Google Cloud.

| Property | Type | Description |
|----------|------|-------------|
| `folders` | `array<GoogleCloudSecuritycenterV2Folder>` | Output only. Contains a Folder message for each folder in the assets ancestry. The first folder i... |
| `organization` | `string` | The name of the organization that the resource belongs to. |
| `parent` | `string` | The full resource name of resource's parent. |
| `parentDisplayName` | `string` | The human readable name of resource's parent. |
| `project` | `string` | The full resource name of project that the resource belongs to. |
| `projectDisplayName` | `string` | The project ID that the resource belongs to. |

### `Geolocation`

Represents a geographical location for a given access.

| Property | Type | Description |
|----------|------|-------------|
| `regionCode` | `string` | A CLDR. |

### `GetIamPolicyRequest`

Request message for `GetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `options` | `GetPolicyOptions` | OPTIONAL: A `GetPolicyOptions` object for specifying options to `GetIamPolicy`. |

### `GetPolicyOptions`

Encapsulates settings provided to GetIamPolicy.

| Property | Type | Description |
|----------|------|-------------|
| `requestedPolicyVersion` | `integer` | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, ... |

### `GoogleCloudSecuritycenterV1BigQueryExport`

Configures how to deliver Findings to BigQuery Instance.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time at which the BigQuery export was created. This field is set by the server a... |
| `dataset` | `string` | The dataset to write findings' updates to. Its format is "projects/[project_id]/datasets/[bigquer... |
| `description` | `string` | The description of the export (max of 1024 characters). |
| `filter` | `string` | Expression that defines the filter to apply across create/update events of findings. The expressi... |
| `mostRecentEditor` | `string` | Output only. Email address of the user who last edited the BigQuery export. This field is set by ... |
| `name` | `string` | The relative resource name of this export. See: https://cloud.google.com/apis/design/resource_nam... |
| `principal` | `string` | Output only. The service account that needs permission to create table and upload data to the Big... |
| `updateTime` | `string` | Output only. The most recent time at which the BigQuery export was updated. This field is set by ... |

### `GoogleCloudSecuritycenterV1Binding`

Represents a Kubernetes RoleBinding or ClusterRoleBinding.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Name for the binding. |
| `ns` | `string` | Namespace for the binding. |
| `role` | `Role` | The Role or ClusterRole referenced by the binding. |
| `subjects` | `array<Subject>` | Represents one or more subjects that are bound to the role. Not always available for PATCH requests. |

### `GoogleCloudSecuritycenterV1BulkMuteFindingsResponse`

The response to a BulkMute request. Contains the LRO information.

### `GoogleCloudSecuritycenterV1CustomConfig`

Defines the properties in a custom module configuration for Security Health Analytics. Use the custom module configuration to create custom detectors that generate custom findings for resources that you specify.

| Property | Type | Description |
|----------|------|-------------|
| `customOutput` | `GoogleCloudSecuritycenterV1CustomOutputSpec` | Custom output properties. |
| `description` | `string` | Text that describes the vulnerability or misconfiguration that the custom module detects. This ex... |
| `predicate` | `Expr` | The CEL expression to evaluate to produce findings. When the expression evaluates to true against... |
| `recommendation` | `string` | An explanation of the recommended steps that security teams can take to resolve the detected issu... |
| `resourceSelector` | `GoogleCloudSecuritycenterV1ResourceSelector` | The resource types that the custom module operates on. Each custom module can specify up to 5 res... |
| `severity` | `string` | The severity to assign to findings generated by the module. |

### `GoogleCloudSecuritycenterV1CustomOutputSpec`

A set of optional name-value pairs that define custom source properties to return with each finding that is generated by the custom module. The custom source properties that are defined here are included in the finding JSON under `sourceProperties`.

| Property | Type | Description |
|----------|------|-------------|
| `properties` | `array<GoogleCloudSecuritycenterV1Property>` | A list of custom output properties to add to the finding. |

### `GoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule`

An EffectiveSecurityHealthAnalyticsCustomModule is the representation of a Security Health Analytics custom module at a specified level of the resource hierarchy: organization, folder, or project. If a custom module is inherited from a parent organization or folder, the value of the `enablementState` property in EffectiveSecurityHealthAnalyticsCustomModule is set to the value that is effective in the parent, instead of `INHERITED`. For example, if the module is enabled in a parent organization or folder, the effective enablement_state for the module in all child folders or projects is also `enabled`. EffectiveSecurityHealthAnalyticsCustomModule is read-only.

| Property | Type | Description |
|----------|------|-------------|
| `cloudProvider` | `string` | The cloud provider of the custom module. |
| `customConfig` | `GoogleCloudSecuritycenterV1CustomConfig` | Output only. The user-specified configuration for the module. |
| `displayName` | `string` | Output only. The display name for the custom module. The name must be between 1 and 128 character... |
| `enablementState` | `string` | Output only. The effective state of enablement for the module at the given level of the hierarchy. |
| `name` | `string` | Output only. The resource name of the custom module. Its format is "organizations/{organization}/... |

### `GoogleCloudSecuritycenterV1ExternalSystem`

Representation of third party SIEM/SOAR fields within SCC.

| Property | Type | Description |
|----------|------|-------------|
| `assignees` | `array<string>` | References primary/secondary etc assignees in the external system. |
| `caseCloseTime` | `string` | The time when the case was closed, as reported by the external system. |
| `caseCreateTime` | `string` | The time when the case was created, as reported by the external system. |
| `casePriority` | `string` | The priority of the finding's corresponding case in the external system. |
| `caseSla` | `string` | The SLA of the finding's corresponding case in the external system. |
| `caseUri` | `string` | The link to the finding's corresponding case in the external system. |
| `externalSystemUpdateTime` | `string` | The time when the case was last updated, as reported by the external system. |
| `externalUid` | `string` | The identifier that's used to track the finding's corresponding case in the external system. |
| `name` | `string` | Full resource name of the external system, for example: "organizations/1234/sources/5678/findings... |
| `status` | `string` | The most recent status of the finding's corresponding case, as reported by the external system. |
| `ticketInfo` | `TicketInfo` | Information about the ticket, if any, that is being used to track the resolution of the issue tha... |

### `GoogleCloudSecuritycenterV1MuteConfig`

A mute config is a Cloud SCC resource that contains the configuration to mute create/update events of findings.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time at which the mute config was created. This field is set by the server and w... |
| `description` | `string` | A description of the mute config. |
| `displayName` | `string` | The human readable name to be displayed for the mute config. |
| `expiryTime` | `string` | Optional. The expiry of the mute config. Only applicable for dynamic configs. If the expiry is se... |
| `filter` | `string` | Required. An expression that defines the filter to apply across create/update events of findings.... |
| `mostRecentEditor` | `string` | Output only. Email address of the user who last edited the mute config. This field is set by the ... |
| `name` | `string` | This field will be ignored if provided on config creation. Format `organizations/{organization}/m... |
| `type` | `string` | Optional. The type of the mute config, which determines what type of mute state the config affect... |
| `updateTime` | `string` | Output only. The most recent time at which the mute config was updated. This field is set by the ... |

### `GoogleCloudSecuritycenterV1NotificationMessage`

Cloud SCC's Notification

| Property | Type | Description |
|----------|------|-------------|
| `finding` | `Finding` | If it's a Finding based notification config, this field will be populated. |
| `notificationConfigName` | `string` | Name of the notification config that generated current notification. |
| `resource` | `GoogleCloudSecuritycenterV1Resource` | The Cloud resource tied to this notification's Finding. |

### `GoogleCloudSecuritycenterV1Property`

An individual name-value pair that defines a custom source property.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Name of the property for the custom output. |
| `valueExpression` | `Expr` | The CEL expression for the custom output. A resource property can be specified to return the valu... |

### `GoogleCloudSecuritycenterV1Resource`

Information related to the Google Cloud resource.

| Property | Type | Description |
|----------|------|-------------|
| `adcApplication` | `AdcApplication` | The ADC application associated with the finding. |
| `adcApplicationTemplate` | `AdcApplicationTemplateRevision` | The ADC template associated with the finding. |
| `adcSharedTemplate` | `AdcSharedTemplateRevision` | The ADC shared template associated with the finding. |
| `application` | `GoogleCloudSecuritycenterV1ResourceApplication` | The App Hub application this resource belongs to. |
| `awsMetadata` | `AwsMetadata` | The AWS metadata associated with the finding. |
| `azureMetadata` | `AzureMetadata` | The Azure metadata associated with the finding. |
| `cloudProvider` | `string` | Indicates which cloud provider the resource resides in. |
| `displayName` | `string` | The human readable name of the resource. |
| `folders` | `array<Folder>` | Output only. Contains a Folder message for each folder in the assets ancestry. The first folder i... |
| `location` | `string` | The region or location of the service (if applicable). |
| `name` | `string` | The full resource name of the resource. See: https://cloud.google.com/apis/design/resource_names#... |
| `organization` | `string` | Indicates which organization or tenant in the cloud provider the finding applies to. |
| `parent` | `string` | The full resource name of resource's parent. |
| `parentDisplayName` | `string` | The human readable name of resource's parent. |
| `project` | `string` | The full resource name of project that the resource belongs to. |
| `projectDisplayName` | `string` | The project ID that the resource belongs to. |
| `resourcePath` | `ResourcePath` | Provides the path to the resource within the resource hierarchy. |
| `resourcePathString` | `string` | A string representation of the resource path. For Google Cloud, it has the format of `organizatio... |
| `service` | `string` | The parent service or product from which the resource is provided, for example, GKE or SNS. |
| `type` | `string` | The full resource type of the resource. |

### `GoogleCloudSecuritycenterV1ResourceApplication`

The App Hub Application associated with the finding's resource.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `GoogleCloudSecuritycenterV1ResourceApplicationAttributes` | Consumer provided attributes for the application |
| `name` | `string` | The resource name of an Application. Format: `projects/{host-project-id}/locations/{location}/app... |

### `GoogleCloudSecuritycenterV1ResourceApplicationAttributes`

Consumer provided attributes for the application

| Property | Type | Description |
|----------|------|-------------|
| `businessOwners` | `array<GoogleCloudSecuritycenterV1ResourceApplicationAttributesContactInfo>` | Business team that ensures user needs are met and value is delivered |
| `criticality` | `GoogleCloudSecuritycenterV1ResourceApplicationAttributesCriticality` | User-defined criticality information. |
| `developerOwners` | `array<GoogleCloudSecuritycenterV1ResourceApplicationAttributesContactInfo>` | Developer team that owns development and coding. |
| `environment` | `GoogleCloudSecuritycenterV1ResourceApplicationAttributesEnvironment` | User-defined environment information. |
| `operatorOwners` | `array<GoogleCloudSecuritycenterV1ResourceApplicationAttributesContactInfo>` | Operator team that ensures runtime and operations. |

### `GoogleCloudSecuritycenterV1ResourceApplicationAttributesContactInfo`

Contact information of stakeholders.

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | Email address of the contacts. |

### `GoogleCloudSecuritycenterV1ResourceApplicationAttributesCriticality`

Criticality of the Application, Service, or Workload

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | Criticality Type. |

### `GoogleCloudSecuritycenterV1ResourceApplicationAttributesEnvironment`

Environment of the Application, Service, or Workload

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | Environment Type. |

### `GoogleCloudSecuritycenterV1ResourceSelector`

Resource for selecting resource type.

| Property | Type | Description |
|----------|------|-------------|
| `resourceTypes` | `array<string>` | The resource types to run the detector on. |

### `GoogleCloudSecuritycenterV1ResourceValueConfig`

A resource value configuration (RVC) is a mapping configuration of user's resources to resource values. Used in Attack path simulations.

| Property | Type | Description |
|----------|------|-------------|
| `cloudProvider` | `string` | Cloud provider this configuration applies to |
| `createTime` | `string` | Output only. Timestamp this resource value configuration was created. |
| `description` | `string` | Description of the resource value configuration. |
| `name` | `string` | Name for the resource value configuration |
| `resourceLabelsSelector` | `object` | List of resource labels to search for, evaluated with `AND`. For example, `"resource_labels_selec... |
| `resourceType` | `string` | Apply resource_value only to resources that match resource_type. resource_type will be checked wi... |
| `resourceValue` | `string` | Required. Resource value level this expression represents |
| `scope` | `string` | Project or folder to scope this configuration to. For example, "project/456" would apply this con... |
| `sensitiveDataProtectionMapping` | `GoogleCloudSecuritycenterV1SensitiveDataProtectionMapping` | A mapping of the sensitivity on Sensitive Data Protection finding to resource values. This mappin... |
| `tagValues` | `array<string>` | Required. Tag values combined with `AND` to check against. For Google Cloud resources, they are t... |
| `updateTime` | `string` | Output only. Timestamp this resource value configuration was last updated. |

### `GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse`

Response of asset discovery run

| Property | Type | Description |
|----------|------|-------------|
| `duration` | `string` | The duration between asset discovery run start and end |
| `state` | `string` | The state of an asset discovery run. |

### `GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule`

Represents an instance of a Security Health Analytics custom module, including its full module name, display name, enablement state, and last updated time. You can create a custom module at the organization, folder, or project level. Custom modules that you create at the organization or folder level are inherited by the child folders and projects.

| Property | Type | Description |
|----------|------|-------------|
| `ancestorModule` | `string` | Output only. If empty, indicates that the custom module was created in the organization, folder, ... |
| `cloudProvider` | `string` | The cloud provider of the custom module. |
| `customConfig` | `GoogleCloudSecuritycenterV1CustomConfig` | The user specified custom configuration for the module. |
| `displayName` | `string` | The display name of the Security Health Analytics custom module. This display name becomes the fi... |
| `enablementState` | `string` | The enablement state of the custom module. |
| `lastEditor` | `string` | Output only. The editor that last updated the custom module. |
| `name` | `string` | Immutable. The resource name of the custom module. Its format is "organizations/{organization}/se... |
| `updateTime` | `string` | Output only. The time at which the custom module was last updated. |

### `GoogleCloudSecuritycenterV1SensitiveDataProtectionMapping`

Resource value mapping for Sensitive Data Protection findings. If any of these mappings have a resource value that is not unspecified, the resource_value field will be ignored when reading this configuration.

| Property | Type | Description |
|----------|------|-------------|
| `highSensitivityMapping` | `string` | Resource value mapping for high-sensitivity Sensitive Data Protection findings |
| `mediumSensitivityMapping` | `string` | Resource value mapping for medium-sensitivity Sensitive Data Protection findings |

### `GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse`

Response of asset discovery run

| Property | Type | Description |
|----------|------|-------------|
| `duration` | `string` | The duration between asset discovery run start and end |
| `state` | `string` | The state of an asset discovery run. |

### `GoogleCloudSecuritycenterV1p1beta1Finding`

Security Command Center finding. A finding is a record of assessment data (security, risk, health or privacy) ingested into Security Command Center for presentation, notification, analysis, policy testing, and enforcement. For example, an XSS vulnerability in an App Engine application is a finding.

| Property | Type | Description |
|----------|------|-------------|
| `canonicalName` | `string` | The canonical name of the finding. It's either "organizations/{organization_id}/sources/{source_i... |
| `category` | `string` | The additional taxonomy group within findings from a given source. This field is immutable after ... |
| `createTime` | `string` | The time at which the finding was created in Security Command Center. |
| `eventTime` | `string` | The time at which the event took place, or when an update to the finding occurred. For example, i... |
| `externalUri` | `string` | The URI that, if available, points to a web page outside of Security Command Center where additio... |
| `name` | `string` | The relative resource name of this finding. See: https://cloud.google.com/apis/design/resource_na... |
| `parent` | `string` | The relative resource name of the source the finding belongs to. See: https://cloud.google.com/ap... |
| `resourceName` | `string` | For findings on Google Cloud resources, the full resource name of the Google Cloud resource this ... |
| `securityMarks` | `GoogleCloudSecuritycenterV1p1beta1SecurityMarks` | Output only. User specified security marks. These marks are entirely managed by the user and come... |
| `severity` | `string` | The severity of the finding. This field is managed by the source that writes the finding. |
| `sourceProperties` | `object` | Source specific properties. These properties are managed by the source that writes the finding. T... |
| `state` | `string` | The state of the finding. |

### `GoogleCloudSecuritycenterV1p1beta1Folder`

Message that contains the resource name and display name of a folder resource.

| Property | Type | Description |
|----------|------|-------------|
| `resourceFolder` | `string` | Full resource name of this folder. See: https://cloud.google.com/apis/design/resource_names#full_... |
| `resourceFolderDisplayName` | `string` | The user defined display name for this folder. |

### `GoogleCloudSecuritycenterV1p1beta1NotificationMessage`

Security Command Center's Notification

| Property | Type | Description |
|----------|------|-------------|
| `finding` | `GoogleCloudSecuritycenterV1p1beta1Finding` | If it's a Finding based notification config, this field will be populated. |
| `notificationConfigName` | `string` | Name of the notification config that generated current notification. |
| `resource` | `GoogleCloudSecuritycenterV1p1beta1Resource` | The Cloud resource tied to the notification. |

### `GoogleCloudSecuritycenterV1p1beta1Resource`

Information related to the Google Cloud resource.

| Property | Type | Description |
|----------|------|-------------|
| `folders` | `array<GoogleCloudSecuritycenterV1p1beta1Folder>` | Output only. Contains a Folder message for each folder in the assets ancestry. The first folder i... |
| `name` | `string` | The full resource name of the resource. See: https://cloud.google.com/apis/design/resource_names#... |
| `parent` | `string` | The full resource name of resource's parent. |
| `parentDisplayName` | `string` | The human readable name of resource's parent. |
| `project` | `string` | The full resource name of project that the resource belongs to. |
| `projectDisplayName` | `string` | The project id that the resource belongs to. |

### `GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse`

Response of asset discovery run

| Property | Type | Description |
|----------|------|-------------|
| `duration` | `string` | The duration between asset discovery run start and end |
| `state` | `string` | The state of an asset discovery run. |

### `GoogleCloudSecuritycenterV1p1beta1SecurityMarks`

User specified security marks that are attached to the parent Security Command Center resource. Security marks are scoped within a Security Command Center organization -- they can be modified and viewed by all users who have proper permissions on the organization.

| Property | Type | Description |
|----------|------|-------------|
| `canonicalName` | `string` | The canonical name of the marks. Examples: "organizations/{organization_id}/assets/{asset_id}/sec... |
| `marks` | `object` | Mutable user specified security marks belonging to the parent resource. Constraints are as follow... |
| `name` | `string` | The relative resource name of the SecurityMarks. See: https://cloud.google.com/apis/design/resour... |

### `GoogleCloudSecuritycenterV2Access`

Represents an access event.

| Property | Type | Description |
|----------|------|-------------|
| `callerIp` | `string` | Caller's IP address, such as "1.1.1.1". |
| `callerIpGeo` | `GoogleCloudSecuritycenterV2Geolocation` | The caller IP's geolocation, which identifies where the call came from. |
| `methodName` | `string` | The method that the service account called, e.g. "SetIamPolicy". |
| `principalEmail` | `string` | Associated email, such as "foo@google.com". The email address of the authenticated user or a serv... |
| `principalSubject` | `string` | A string that represents the principal_subject that is associated with the identity. Unlike `prin... |
| `serviceAccountDelegationInfo` | `array<GoogleCloudSecuritycenterV2ServiceAccountDelegationInfo>` | The identity delegation history of an authenticated service account that made the request. The `s... |
| `serviceAccountKeyName` | `string` | The name of the service account key that was used to create or exchange credentials when authenti... |
| `serviceName` | `string` | This is the API service that the service account made a call to, e.g. "iam.googleapis.com" |
| `userAgent` | `string` | The caller's user agent string associated with the finding. |
| `userAgentFamily` | `string` | Type of user agent associated with the finding. For example, an operating system shell or an embe... |
| `userName` | `string` | A string that represents a username. The username provided depends on the type of the finding and... |

### `GoogleCloudSecuritycenterV2AccessReview`

Conveys information about a Kubernetes access review (such as one returned by a [`kubectl auth can-i`](https://kubernetes.io/docs/reference/access-authn-authz/authorization/#checking-api-access) command) that was involved in a finding.

| Property | Type | Description |
|----------|------|-------------|
| `group` | `string` | The API group of the resource. "*" means all. |
| `name` | `string` | The name of the resource being requested. Empty means all. |
| `ns` | `string` | Namespace of the action being requested. Currently, there is no distinction between no namespace ... |
| `resource` | `string` | The optional resource type requested. "*" means all. |
| `subresource` | `string` | The optional subresource type. |
| `verb` | `string` | A Kubernetes resource API verb, like get, list, watch, create, update, delete, proxy. "*" means all. |
| `version` | `string` | The API version of the resource. "*" means all. |

### `GoogleCloudSecuritycenterV2AdaptiveProtection`

Information about [Google Cloud Armor Adaptive Protection](https://cloud.google.com/armor/docs/cloud-armor-overview#google-cloud-armor-adaptive-protection).

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | A score of 0 means that there is low confidence that the detected event is an actual attack. A sc... |

### `GoogleCloudSecuritycenterV2AdcApplication`

Represents an ADC application associated with the finding.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `GoogleCloudSecuritycenterV2ResourceApplicationAttributes` | Consumer provided attributes for the AppHub application. |
| `name` | `string` | The resource name of an ADC Application. Format: projects/{project}/locations/{location}/spaces/{... |

### `GoogleCloudSecuritycenterV2AdcApplicationTemplateRevision`

Represents an ADC template associated with the finding.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The resource name of an ADC Application Template Revision. Format: projects/{project}/locations/{... |

### `GoogleCloudSecuritycenterV2AdcSharedTemplateRevision`

Represents an ADC shared template associated with the finding.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The resource name of an ADC Shared Template Revision. Format: projects/{project}/locations/{locat... |

### `GoogleCloudSecuritycenterV2AffectedResources`

Details about resources affected by this finding.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `string` | The count of resources affected by the finding. |

### `GoogleCloudSecuritycenterV2AiModel`

Contains information about the AI model associated with the finding.

| Property | Type | Description |
|----------|------|-------------|
| `deploymentPlatform` | `string` | The platform on which the model is deployed. |
| `displayName` | `string` | The user defined display name of model. Ex. baseline-classification-model |
| `domain` | `string` | The domain of the model, for example, “image-classification”. |
| `library` | `string` | The name of the model library, for example, “transformers”. |
| `location` | `string` | The region in which the model is used, for example, “us-central1”. |
| `name` | `string` | The name of the AI model, for example, "gemini:1.0.0". |
| `publisher` | `string` | The publisher of the model, for example, “google” or “nvidia”. |
| `usageCategory` | `string` | The purpose of the model, for example, "Inteference" or "Training". |

### `GoogleCloudSecuritycenterV2Allowed`

Allowed IP rule.

| Property | Type | Description |
|----------|------|-------------|
| `ipRules` | `array<GoogleCloudSecuritycenterV2IpRule>` | Optional. Optional list of allowed IP rules. |

### `GoogleCloudSecuritycenterV2Application`

Represents an application associated with a finding.

| Property | Type | Description |
|----------|------|-------------|
| `baseUri` | `string` | The base URI that identifies the network location of the application in which the vulnerability w... |
| `fullUri` | `string` | The full URI with payload that could be used to reproduce the vulnerability. For example, `http:/... |

### `GoogleCloudSecuritycenterV2ArtifactGuardPolicies`

Represents the result of evaluating artifact guard policies.

| Property | Type | Description |
|----------|------|-------------|
| `failingPolicies` | `array<GoogleCloudSecuritycenterV2ArtifactGuardPolicy>` | A list of failing policies. |
| `resourceId` | `string` | The ID of the resource that has policies configured for it. |

### `GoogleCloudSecuritycenterV2ArtifactGuardPolicy`

Represents an artifact guard policy.

| Property | Type | Description |
|----------|------|-------------|
| `failureReason` | `string` | The reason for the policy failure, for example, "severity=HIGH AND max_vuln_count=2". |
| `policyId` | `string` | The ID of the failing policy, for example, "organizations/3392779/locations/global/policies/prod-... |
| `type` | `string` | The type of the policy evaluation. |

### `GoogleCloudSecuritycenterV2Attack`

Information about DDoS attack volume and classification.

| Property | Type | Description |
|----------|------|-------------|
| `classification` | `string` | Type of attack, for example, 'SYN-flood', 'NTP-udp', or 'CHARGEN-udp'. |
| `volumeBps` | `integer` | Total BPS (bytes per second) volume of attack. Deprecated - refer to volume_bps_long instead. |
| `volumeBpsLong` | `string` | Total BPS (bytes per second) volume of attack. |
| `volumePps` | `integer` | Total PPS (packets per second) volume of attack. Deprecated - refer to volume_pps_long instead. |
| `volumePpsLong` | `string` | Total PPS (packets per second) volume of attack. |

### `GoogleCloudSecuritycenterV2AttackExposure`

An attack exposure contains the results of an attack path simulation run.

| Property | Type | Description |
|----------|------|-------------|
| `attackExposureResult` | `string` | The resource name of the attack path simulation result that contains the details regarding this a... |
| `exposedHighValueResourcesCount` | `integer` | The number of high value resources that are exposed as a result of this finding. |
| `exposedLowValueResourcesCount` | `integer` | The number of high value resources that are exposed as a result of this finding. |
| `exposedMediumValueResourcesCount` | `integer` | The number of medium value resources that are exposed as a result of this finding. |
| `latestCalculationTime` | `string` | The most recent time the attack exposure was updated on this finding. |
| `score` | `number` | A number between 0 (inclusive) and infinity that represents how important this finding is to reme... |
| `state` | `string` | Output only. What state this AttackExposure is in. This captures whether or not an attack exposur... |

### `GoogleCloudSecuritycenterV2AwsAccount`

An AWS account that is a member of an organization.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | The unique identifier (ID) of the account, containing exactly 12 digits. |
| `name` | `string` | The friendly name of this account. |

### `GoogleCloudSecuritycenterV2AwsMetadata`

AWS metadata associated with the resource, only applicable if the finding's cloud provider is Amazon Web Services.

| Property | Type | Description |
|----------|------|-------------|
| `account` | `GoogleCloudSecuritycenterV2AwsAccount` | The AWS account associated with the resource. |
| `organization` | `GoogleCloudSecuritycenterV2AwsOrganization` | The AWS organization associated with the resource. |
| `organizationalUnits` | `array<GoogleCloudSecuritycenterV2AwsOrganizationalUnit>` | A list of AWS organizational units associated with the resource, ordered from lowest level (close... |

### `GoogleCloudSecuritycenterV2AwsOrganization`

An organization is a collection of accounts that are centrally managed together using consolidated billing, organized hierarchically with organizational units (OUs), and controlled with policies.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | The unique identifier (ID) for the organization. The regex pattern for an organization ID string ... |

### `GoogleCloudSecuritycenterV2AwsOrganizationalUnit`

An Organizational Unit (OU) is a container of AWS accounts within a root of an organization. Policies that are attached to an OU apply to all accounts contained in that OU and in any child OUs.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | The unique identifier (ID) associated with this OU. The regex pattern for an organizational unit ... |
| `name` | `string` | The friendly name of the OU. |

### `GoogleCloudSecuritycenterV2AzureManagementGroup`

Represents an Azure management group.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The display name of the Azure management group. |
| `id` | `string` | The UUID of the Azure management group, for example, `20000000-0001-0000-0000-000000000000`. |

### `GoogleCloudSecuritycenterV2AzureMetadata`

Azure metadata associated with the resource, only applicable if the finding's cloud provider is Microsoft Azure.

| Property | Type | Description |
|----------|------|-------------|
| `managementGroups` | `array<GoogleCloudSecuritycenterV2AzureManagementGroup>` | A list of Azure management groups associated with the resource, ordered from lowest level (closes... |
| `resourceGroup` | `GoogleCloudSecuritycenterV2AzureResourceGroup` | The Azure resource group associated with the resource. |
| `subscription` | `GoogleCloudSecuritycenterV2AzureSubscription` | The Azure subscription associated with the resource. |
| `tenant` | `GoogleCloudSecuritycenterV2AzureTenant` | The Azure Entra tenant associated with the resource. |

### `GoogleCloudSecuritycenterV2AzureResourceGroup`

Represents an Azure resource group.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | The ID of the Azure resource group. |
| `name` | `string` | The name of the Azure resource group. This is not a UUID. |

### `GoogleCloudSecuritycenterV2AzureSubscription`

Represents an Azure subscription.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The display name of the Azure subscription. |
| `id` | `string` | The UUID of the Azure subscription, for example, `291bba3f-e0a5-47bc-a099-3bdcb2a50a05`. |

### `GoogleCloudSecuritycenterV2AzureTenant`

Represents a Microsoft Entra tenant.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The display name of the Azure tenant. |
| `id` | `string` | The ID of the Microsoft Entra tenant, for example, "a11aaa11-aa11-1aa1-11aa-1aaa11a". |

### `GoogleCloudSecuritycenterV2BackupDisasterRecovery`

Information related to Google Cloud Backup and DR Service findings.

| Property | Type | Description |
|----------|------|-------------|
| `appliance` | `string` | The name of the Backup and DR appliance that captures, moves, and manages the lifecycle of backup... |
| `applications` | `array<string>` | The names of Backup and DR applications. An application is a VM, database, or file system on a ma... |
| `backupCreateTime` | `string` | The timestamp at which the Backup and DR backup was created. |
| `backupTemplate` | `string` | The name of a Backup and DR template which comprises one or more backup policies. See the [Backup... |
| `backupType` | `string` | The backup type of the Backup and DR image. For example, `Snapshot`, `Remote Snapshot`, `OnVault`. |
| `host` | `string` | The name of a Backup and DR host, which is managed by the backup and recovery appliance and known... |
| `policies` | `array<string>` | The names of Backup and DR policies that are associated with a template and that define when to r... |
| `policyOptions` | `array<string>` | The names of Backup and DR advanced policy options of a policy applying to an application. See th... |
| `profile` | `string` | The name of the Backup and DR resource profile that specifies the storage media for backups of ap... |
| `storagePool` | `string` | The name of the Backup and DR storage pool that the backup and recovery appliance is storing data... |

### `GoogleCloudSecuritycenterV2BigQueryExport`

Configures how to deliver Findings to BigQuery Instance.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time at which the BigQuery export was created. This field is set by the server a... |
| `cryptoKeyName` | `string` | Output only. The resource name of the Cloud KMS `CryptoKey` used to protect this configuration's ... |
| `dataset` | `string` | The dataset to write findings' updates to. Its format is "projects/[project_id]/datasets/[bigquer... |
| `description` | `string` | The description of the export (max of 1024 characters). |
| `filter` | `string` | Expression that defines the filter to apply across create/update events of findings. The expressi... |
| `mostRecentEditor` | `string` | Output only. Email address of the user who last edited the BigQuery export. This field is set by ... |
| `name` | `string` | Identifier. The relative resource name of this export. See: https://cloud.google.com/apis/design/... |
| `principal` | `string` | Output only. The service account that needs permission to create table and upload data to the Big... |
| `updateTime` | `string` | Output only. The most recent time at which the BigQuery export was updated. This field is set by ... |

### `GoogleCloudSecuritycenterV2Binding`

Represents a Kubernetes RoleBinding or ClusterRoleBinding.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Name for the binding. |
| `ns` | `string` | Namespace for the binding. |
| `role` | `GoogleCloudSecuritycenterV2Role` | The Role or ClusterRole referenced by the binding. |
| `subjects` | `array<GoogleCloudSecuritycenterV2Subject>` | Represents one or more subjects that are bound to the role. Not always available for PATCH requests. |

### `GoogleCloudSecuritycenterV2BulkMuteFindingsResponse`

The response to a BulkMute request. Contains the LRO information.

### `GoogleCloudSecuritycenterV2Chokepoint`

Contains details about a chokepoint, which is a resource or resource group where high-risk attack paths converge, based on [attack path simulations] (https://cloud.google.com/security-command-center/docs/attack-exposure-learn#attack_path_simulations).

| Property | Type | Description |
|----------|------|-------------|
| `relatedFindings` | `array<string>` | List of resource names of findings associated with this chokepoint. For example, organizations/12... |

### `GoogleCloudSecuritycenterV2CloudArmor`

Fields related to Google Cloud Armor findings.

| Property | Type | Description |
|----------|------|-------------|
| `adaptiveProtection` | `GoogleCloudSecuritycenterV2AdaptiveProtection` | Information about potential Layer 7 DDoS attacks identified by [Google Cloud Armor Adaptive Prote... |
| `attack` | `GoogleCloudSecuritycenterV2Attack` | Information about DDoS attack volume and classification. |
| `duration` | `string` | Duration of attack from the start until the current moment (updated every 5 minutes). |
| `requests` | `GoogleCloudSecuritycenterV2Requests` | Information about incoming requests evaluated by [Google Cloud Armor security policies](https://c... |
| `securityPolicy` | `GoogleCloudSecuritycenterV2SecurityPolicy` | Information about the [Google Cloud Armor security policy](https://cloud.google.com/armor/docs/se... |
| `threatVector` | `string` | Distinguish between volumetric & protocol DDoS attack and application layer attacks. For example,... |

### `GoogleCloudSecuritycenterV2CloudControl`

CloudControl associated with the finding.

| Property | Type | Description |
|----------|------|-------------|
| `cloudControlName` | `string` | Name of the CloudControl associated with the finding. |
| `policyType` | `string` | Policy type of the CloudControl |
| `type` | `string` | Type of cloud control. |
| `version` | `integer` | Version of the Cloud Control |

### `GoogleCloudSecuritycenterV2CloudDlpDataProfile`

The [data profile](https://cloud.google.com/dlp/docs/data-profiles) associated with the finding.

| Property | Type | Description |
|----------|------|-------------|
| `dataProfile` | `string` | Name of the data profile, for example, `projects/123/locations/europe/tableProfiles/8383929`. |
| `infoTypes` | `array<GoogleCloudSecuritycenterV2InfoType>` | Type of information detected by SDP. Info type includes name, version and sensitivity of the dete... |
| `parentType` | `string` | The resource hierarchy level at which the data profile was generated. |

### `GoogleCloudSecuritycenterV2CloudDlpInspection`

Details about the Cloud Data Loss Prevention (Cloud DLP) [inspection job](https://cloud.google.com/dlp/docs/concepts-job-triggers) that produced the finding.

| Property | Type | Description |
|----------|------|-------------|
| `fullScan` | `boolean` | Whether Cloud DLP scanned the complete resource or a sampled subset. |
| `infoType` | `string` | The type of information (or *[infoType](https://cloud.google.com/dlp/docs/infotypes-reference)*) ... |
| `infoTypeCount` | `string` | The number of times Cloud DLP found this infoType within this job and resource. |
| `inspectJob` | `string` | Name of the inspection job, for example, `projects/123/locations/europe/dlpJobs/i-8383929`. |

### `GoogleCloudSecuritycenterV2CloudLoggingEntry`

Metadata taken from a [Cloud Logging LogEntry](https://cloud.google.com/logging/docs/reference/v2/rest/v2/LogEntry)

| Property | Type | Description |
|----------|------|-------------|
| `insertId` | `string` | A unique identifier for the log entry. |
| `logId` | `string` | The type of the log (part of `log_name`. `log_name` is the resource name of the log to which this... |
| `resourceContainer` | `string` | The organization, folder, or project of the monitored resource that produced this log entry. |
| `timestamp` | `string` | The time the event described by the log entry occurred. |

### `GoogleCloudSecuritycenterV2Compliance`

Contains compliance information about a security standard indicating unmet recommendations.

| Property | Type | Description |
|----------|------|-------------|
| `ids` | `array<string>` | Policies within the standard or benchmark, for example, A.12.4.1 |
| `standard` | `string` | Industry-wide compliance standards or benchmarks, such as CIS, PCI, and OWASP. |
| `version` | `string` | Version of the standard or benchmark, for example, 1.1 |

### `GoogleCloudSecuritycenterV2ComplianceDetails`

Compliance Details associated with the finding.

| Property | Type | Description |
|----------|------|-------------|
| `cloudControl` | `GoogleCloudSecuritycenterV2CloudControl` | CloudControl associated with the finding |
| `cloudControlDeploymentNames` | `array<string>` | Cloud Control Deployments associated with the finding. For example, organizations/123/locations/g... |
| `frameworks` | `array<GoogleCloudSecuritycenterV2Framework>` | Details of Frameworks associated with the finding |

### `GoogleCloudSecuritycenterV2Connection`

Contains information about the IP connection associated with the finding.

| Property | Type | Description |
|----------|------|-------------|
| `destinationIp` | `string` | Destination IP address. Not present for sockets that are listening and not connected. |
| `destinationPort` | `integer` | Destination port. Not present for sockets that are listening and not connected. |
| `protocol` | `string` | IANA Internet Protocol Number such as TCP(6) and UDP(17). |
| `sourceIp` | `string` | Source IP address. |
| `sourcePort` | `integer` | Source port. |

### `GoogleCloudSecuritycenterV2Contact`

The email address of a contact.

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | An email address. For example, "`person123@company.com`". |

### `GoogleCloudSecuritycenterV2ContactDetails`

Details about specific contacts

| Property | Type | Description |
|----------|------|-------------|
| `contacts` | `array<GoogleCloudSecuritycenterV2Contact>` | A list of contacts |

### `GoogleCloudSecuritycenterV2Container`

Container associated with the finding.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | The time that the container was created. |
| `imageId` | `string` | Optional container image ID, if provided by the container runtime. Uniquely identifies the contai... |
| `labels` | `array<GoogleCloudSecuritycenterV2Label>` | Container labels, as provided by the container runtime. |
| `name` | `string` | Name of the container. |
| `uri` | `string` | Container image URI provided when configuring a pod or container. This string can identify a cont... |

### `GoogleCloudSecuritycenterV2Control`

Compliance control associated with the finding.

| Property | Type | Description |
|----------|------|-------------|
| `controlName` | `string` | Name of the Control |
| `displayName` | `string` | Display name of the control. For example, AU-02. |

### `GoogleCloudSecuritycenterV2Cve`

CVE stands for Common Vulnerabilities and Exposures. Information from the [CVE record](https://www.cve.org/ResourcesSupport/Glossary) that describes this vulnerability.

| Property | Type | Description |
|----------|------|-------------|
| `cvssv3` | `GoogleCloudSecuritycenterV2Cvssv3` | Describe Common Vulnerability Scoring System specified at https://www.first.org/cvss/v3.1/specifi... |
| `exploitReleaseDate` | `string` | Date the first publicly available exploit or PoC was released. |
| `exploitationActivity` | `string` | The exploitation activity of the vulnerability in the wild. |
| `firstExploitationDate` | `string` | Date of the earliest known exploitation. |
| `id` | `string` | The unique identifier for the vulnerability. e.g. CVE-2021-34527 |
| `impact` | `string` | The potential impact of the vulnerability if it was to be exploited. |
| `observedInTheWild` | `boolean` | Whether or not the vulnerability has been observed in the wild. |
| `references` | `array<GoogleCloudSecuritycenterV2Reference>` | Additional information about the CVE. e.g. https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202... |
| `upstreamFixAvailable` | `boolean` | Whether upstream fix is available for the CVE. |
| `zeroDay` | `boolean` | Whether or not the vulnerability was zero day when the finding was published. |

### `GoogleCloudSecuritycenterV2Cvssv3`

Common Vulnerability Scoring System version 3.

| Property | Type | Description |
|----------|------|-------------|
| `attackComplexity` | `string` | This metric describes the conditions beyond the attacker's control that must exist in order to ex... |
| `attackVector` | `string` | Base Metrics Represents the intrinsic characteristics of a vulnerability that are constant over t... |
| `availabilityImpact` | `string` | This metric measures the impact to the availability of the impacted component resulting from a su... |
| `baseScore` | `number` | The base score is a function of the base metric scores. |
| `confidentialityImpact` | `string` | This metric measures the impact to the confidentiality of the information resources managed by a ... |
| `integrityImpact` | `string` | This metric measures the impact to integrity of a successfully exploited vulnerability. |
| `privilegesRequired` | `string` | This metric describes the level of privileges an attacker must possess before successfully exploi... |
| `scope` | `string` | The Scope metric captures whether a vulnerability in one vulnerable component impacts resources i... |
| `userInteraction` | `string` | This metric captures the requirement for a human user, other than the attacker, to participate in... |

### `GoogleCloudSecuritycenterV2Cwe`

CWE stands for Common Weakness Enumeration. Information about this weakness, as described by [CWE](https://cwe.mitre.org/).

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | The CWE identifier, e.g. CWE-94 |
| `references` | `array<GoogleCloudSecuritycenterV2Reference>` | Any reference to the details on the CWE, for example, https://cwe.mitre.org/data/definitions/94.html |

### `GoogleCloudSecuritycenterV2DataAccessEvent`

Details about a data access attempt made by a principal not authorized under applicable data security policy.

| Property | Type | Description |
|----------|------|-------------|
| `eventId` | `string` | Unique identifier for data access event. |
| `eventTime` | `string` | Timestamp of data access event. |
| `operation` | `string` | The operation performed by the principal to access the data. |
| `principalEmail` | `string` | The email address of the principal that accessed the data. The principal could be a user account,... |

### `GoogleCloudSecuritycenterV2DataFlowEvent`

Details about a data flow event, in which either the data is moved to or is accessed from a non-compliant geo-location, as defined in the applicable data security policy.

| Property | Type | Description |
|----------|------|-------------|
| `eventId` | `string` | Unique identifier for data flow event. |
| `eventTime` | `string` | Timestamp of data flow event. |
| `operation` | `string` | The operation performed by the principal for the data flow event. |
| `principalEmail` | `string` | The email address of the principal that initiated the data flow event. The principal could be a u... |
| `violatedLocation` | `string` | Non-compliant location of the principal or the data destination. |

### `GoogleCloudSecuritycenterV2DataRetentionDeletionEvent`

Details about data retention deletion violations, in which the data is non-compliant based on their retention or deletion time, as defined in the applicable data security policy. The Data Retention Deletion (DRD) control is a control of the DSPM (Data Security Posture Management) suite that enables organizations to manage data retention and deletion policies in compliance with regulations, such as GDPR and CRPA. DRD supports two primary policy types: maximum storage length (max TTL) and minimum storage length (min TTL). Both are aimed at helping organizations meet regulatory and data management commitments.

| Property | Type | Description |
|----------|------|-------------|
| `dataObjectCount` | `string` | Number of objects that violated the policy for this resource. If the number is less than 1,000, t... |
| `eventDetectionTime` | `string` | Timestamp indicating when the event was detected. |
| `eventType` | `string` | Type of the DRD event. |
| `maxRetentionAllowed` | `string` | Maximum duration of retention allowed from the DRD control. This comes from the DRD control where... |

### `GoogleCloudSecuritycenterV2Database`

Represents database access information, such as queries. A database may be a sub-resource of an instance (as in the case of Cloud SQL instances or Cloud Spanner instances), or the database instance itself. Some database resources might not have the [full resource name](https://google.aip.dev/122#full-resource-names) populated because these resource types, such as Cloud SQL databases, are not yet supported by Cloud Asset Inventory. In these cases only the display name is provided.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The human-readable name of the database that the user connected to. |
| `grantees` | `array<string>` | The target usernames, roles, or groups of an SQL privilege grant, which is not an IAM policy change. |
| `name` | `string` | Some database resources may not have the [full resource name](https://google.aip.dev/122#full-res... |
| `query` | `string` | The SQL statement that is associated with the database access. |
| `userName` | `string` | The username used to connect to the database. The username might not be an IAM principal and does... |
| `version` | `string` | The version of the database, for example, POSTGRES_14. See [the complete list](https://cloud.goog... |

### `GoogleCloudSecuritycenterV2Dataset`

Vertex AI dataset associated with the finding.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The user defined display name of dataset, e.g. plants-dataset |
| `name` | `string` | Resource name of the dataset, e.g. projects/{project}/locations/{location}/datasets/2094040236064... |
| `source` | `string` | Data source, such as a BigQuery source URI, e.g. bq://scc-nexus-test.AIPPtest.gsod |

### `GoogleCloudSecuritycenterV2Denied`

Denied IP rule.

| Property | Type | Description |
|----------|------|-------------|
| `ipRules` | `array<GoogleCloudSecuritycenterV2IpRule>` | Optional. Optional list of denied IP rules. |

### `GoogleCloudSecuritycenterV2Detection`

Memory hash detection contributing to the binary family match.

| Property | Type | Description |
|----------|------|-------------|
| `binary` | `string` | The name of the binary associated with the memory hash signature detection. |
| `percentPagesMatched` | `number` | The percentage of memory page hashes in the signature that were matched. |

### `GoogleCloudSecuritycenterV2Disk`

Contains information about the disk associated with the finding.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The name of the disk, for example, "https://www.googleapis.com/compute/v1/projects/{project-id}/z... |

### `GoogleCloudSecuritycenterV2DiskPath`

Path of the file in terms of underlying disk/partition identifiers.

| Property | Type | Description |
|----------|------|-------------|
| `partitionUuid` | `string` | UUID of the partition (format https://wiki.archlinux.org/title/persistent_block_device_naming#by-... |
| `relativePath` | `string` | Relative path of the file in the partition as a JSON encoded string. Example: /home/user1/executa... |

### `GoogleCloudSecuritycenterV2DynamicMuteRecord`

The record of a dynamic mute rule that matches the finding.

| Property | Type | Description |
|----------|------|-------------|
| `matchTime` | `string` | When the dynamic mute rule first matched the finding. |
| `muteConfig` | `string` | The relative resource name of the mute rule, represented by a mute config, that created this reco... |

### `GoogleCloudSecuritycenterV2EnvironmentVariable`

A name-value pair representing an environment variable used in an operating system process.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Environment variable name as a JSON encoded string. |
| `val` | `string` | Environment variable value as a JSON encoded string. |

### `GoogleCloudSecuritycenterV2ExfilResource`

Resource where data was exfiltrated from or exfiltrated to.

| Property | Type | Description |
|----------|------|-------------|
| `components` | `array<string>` | Subcomponents of the asset that was exfiltrated, like URIs used during exfiltration, table names,... |
| `name` | `string` | The resource's [full resource name](https://cloud.google.com/apis/design/resource_names#full_reso... |

### `GoogleCloudSecuritycenterV2Exfiltration`

Exfiltration represents a data exfiltration attempt from one or more sources to one or more targets. The `sources` attribute lists the sources of the exfiltrated data. The `targets` attribute lists the destinations the data was copied to.

| Property | Type | Description |
|----------|------|-------------|
| `sources` | `array<GoogleCloudSecuritycenterV2ExfilResource>` | If there are multiple sources, then the data is considered "joined" between them. For instance, B... |
| `targets` | `array<GoogleCloudSecuritycenterV2ExfilResource>` | If there are multiple targets, each target would get a complete copy of the "joined" source data. |
| `totalExfiltratedBytes` | `string` | Total exfiltrated bytes processed for the entire job. |

### `GoogleCloudSecuritycenterV2ExternalExposure`

Details about the externally exposed resource associated with the finding.

| Property | Type | Description |
|----------|------|-------------|
| `backendService` | `string` | The full resource name of load balancer backend service, for example, "//compute.googleapis.com/p... |
| `exposedEndpoint` | `string` | The resource which is running the exposed service, for example, "//compute.googleapis.com/project... |
| `exposedService` | `string` | The name and version of the service, for example, "Jupyter Notebook 6.14.0". |
| `forwardingRule` | `string` | The full resource name of the forwarding rule, for example, "//compute.googleapis.com/projects/{p... |
| `instanceGroup` | `string` | The full resource name of the instance group, for example, "//compute.googleapis.com/projects/{pr... |
| `loadBalancerFirewallPolicy` | `string` | The full resource name of the load balancer firewall policy, for example, "//compute.googleapis.c... |
| `networkEndpointGroup` | `string` | The full resource name of the network endpoint group, for example, "//compute.googleapis.com/proj... |
| `privateIpAddress` | `string` | Private IP address of the exposed endpoint. |
| `privatePort` | `string` | Port number associated with private IP address. |
| `publicIpAddress` | `string` | Public IP address of the exposed endpoint. |
| `publicPort` | `string` | Public port number of the exposed endpoint. |
| `serviceFirewallPolicy` | `string` | The full resource name of the firewall policy of the exposed service, for example, "//compute.goo... |

### `GoogleCloudSecuritycenterV2ExternalSystem`

Representation of third party SIEM/SOAR fields within SCC.

| Property | Type | Description |
|----------|------|-------------|
| `assignees` | `array<string>` | References primary/secondary etc assignees in the external system. |
| `caseCloseTime` | `string` | The time when the case was closed, as reported by the external system. |
| `caseCreateTime` | `string` | The time when the case was created, as reported by the external system. |
| `casePriority` | `string` | The priority of the finding's corresponding case in the external system. |
| `caseSla` | `string` | The SLA of the finding's corresponding case in the external system. |
| `caseUri` | `string` | The link to the finding's corresponding case in the external system. |
| `externalSystemUpdateTime` | `string` | The time when the case was last updated, as reported by the external system. |
| `externalUid` | `string` | The identifier that's used to track the finding's corresponding case in the external system. |
| `name` | `string` | Full resource name of the external system. The following list shows some examples: + `organizatio... |
| `status` | `string` | The most recent status of the finding's corresponding case, as reported by the external system. |
| `ticketInfo` | `GoogleCloudSecuritycenterV2TicketInfo` | Information about the ticket, if any, that is being used to track the resolution of the issue tha... |

### `GoogleCloudSecuritycenterV2File`

File information about the related binary/library used by an executable, or the script used by a script interpreter

| Property | Type | Description |
|----------|------|-------------|
| `contents` | `string` | Prefix of the file contents as a JSON-encoded string. |
| `diskPath` | `GoogleCloudSecuritycenterV2DiskPath` | Path of the file in terms of underlying disk/partition identifiers. |
| `fileLoadState` | `string` | The load state of the file. |
| `hashedSize` | `string` | The length in bytes of the file prefix that was hashed. If hashed_size == size, any hashes report... |
| `operations` | `array<GoogleCloudSecuritycenterV2FileOperation>` | Operation(s) performed on a file. |
| `partiallyHashed` | `boolean` | True when the hash covers only a prefix of the file. |
| `path` | `string` | Absolute path of the file as a JSON encoded string. |
| `sha256` | `string` | SHA256 hash of the first hashed_size bytes of the file encoded as a hex string. If hashed_size ==... |
| `size` | `string` | Size of the file in bytes. |

### `GoogleCloudSecuritycenterV2FileOperation`

Operation(s) performed on a file.

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | The type of the operation |

### `GoogleCloudSecuritycenterV2Finding`

Security Command Center finding. A finding is a record of assessment data like security, risk, health, or privacy, that is ingested into Security Command Center for presentation, notification, analysis, policy testing, and enforcement. For example, a cross-site scripting (XSS) vulnerability in an App Engine application is a finding.

| Property | Type | Description |
|----------|------|-------------|
| `access` | `GoogleCloudSecuritycenterV2Access` | Access details associated with the finding, such as more information on the caller, which method ... |
| `affectedResources` | `GoogleCloudSecuritycenterV2AffectedResources` | AffectedResources associated with the finding. |
| `aiModel` | `GoogleCloudSecuritycenterV2AiModel` | The AI model associated with the finding. |
| `application` | `GoogleCloudSecuritycenterV2Application` | Represents an application associated with the finding. |
| `artifactGuardPolicies` | `GoogleCloudSecuritycenterV2ArtifactGuardPolicies` | ArtifactGuardPolicies associated with the finding. |
| `attackExposure` | `GoogleCloudSecuritycenterV2AttackExposure` | The results of an attack path simulation relevant to this finding. |
| `backupDisasterRecovery` | `GoogleCloudSecuritycenterV2BackupDisasterRecovery` | Fields related to Backup and DR findings. |
| `canonicalName` | `string` | Output only. The canonical name of the finding. The following list shows some examples: + `organi... |
| `category` | `string` | Immutable. The additional taxonomy group within findings from a given source. Example: "XSS_FLASH... |
| `chokepoint` | `GoogleCloudSecuritycenterV2Chokepoint` | Contains details about a chokepoint, which is a resource or resource group where high-risk attack... |
| `cloudArmor` | `GoogleCloudSecuritycenterV2CloudArmor` | Fields related to Cloud Armor findings. |
| `cloudDlpDataProfile` | `GoogleCloudSecuritycenterV2CloudDlpDataProfile` | Cloud DLP data profile that is associated with the finding. |
| `cloudDlpInspection` | `GoogleCloudSecuritycenterV2CloudDlpInspection` | Cloud Data Loss Prevention (Cloud DLP) inspection results that are associated with the finding. |
| `complianceDetails` | `GoogleCloudSecuritycenterV2ComplianceDetails` | Details about the compliance implications of the finding. |
| `compliances` | `array<GoogleCloudSecuritycenterV2Compliance>` | Contains compliance information for security standards associated to the finding. |
| `connections` | `array<GoogleCloudSecuritycenterV2Connection>` | Contains information about the IP connection associated with the finding. |
| `contacts` | `object` | Output only. Map containing the points of contact for the given finding. The key represents the t... |
| `containers` | `array<GoogleCloudSecuritycenterV2Container>` | Containers associated with the finding. This field provides information for both Kubernetes and n... |
| `createTime` | `string` | Output only. The time at which the finding was created in Security Command Center. |
| `cryptoKeyName` | `string` | Output only. The name of the Cloud KMS key used to encrypt this finding, if any. |
| `dataAccessEvents` | `array<GoogleCloudSecuritycenterV2DataAccessEvent>` | Data access events associated with the finding. |
| `dataFlowEvents` | `array<GoogleCloudSecuritycenterV2DataFlowEvent>` | Data flow events associated with the finding. |
| `dataRetentionDeletionEvents` | `array<GoogleCloudSecuritycenterV2DataRetentionDeletionEvent>` | Data retention deletion events associated with the finding. |
| `database` | `GoogleCloudSecuritycenterV2Database` | Database associated with the finding. |
| `description` | `string` | Contains more details about the finding. |
| `disk` | `GoogleCloudSecuritycenterV2Disk` | Disk associated with the finding. |
| `eventTime` | `string` | The time the finding was first detected. If an existing finding is updated, then this is the time... |
| `exfiltration` | `GoogleCloudSecuritycenterV2Exfiltration` | Represents exfiltrations associated with the finding. |
| `externalExposure` | `GoogleCloudSecuritycenterV2ExternalExposure` | External exposure associated with the finding. |
| `externalSystems` | `object` | Output only. Third party SIEM/SOAR fields within SCC, contains external system information and ex... |
| `externalUri` | `string` | The URI that, if available, points to a web page outside of Security Command Center where additio... |
| `files` | `array<GoogleCloudSecuritycenterV2File>` | File associated with the finding. |
| `findingClass` | `string` | The class of the finding. |
| `groupMemberships` | `array<GoogleCloudSecuritycenterV2GroupMembership>` | Contains details about groups of which this finding is a member. A group is a collection of findi... |
| `iamBindings` | `array<GoogleCloudSecuritycenterV2IamBinding>` | Represents IAM bindings associated with the finding. |
| `indicator` | `GoogleCloudSecuritycenterV2Indicator` | Represents what's commonly known as an *indicator of compromise* (IoC) in computer forensics. Thi... |
| `ipRules` | `GoogleCloudSecuritycenterV2IpRules` | IP rules associated with the finding. |
| `job` | `GoogleCloudSecuritycenterV2Job` | Job associated with the finding. |
| `kernelRootkit` | `GoogleCloudSecuritycenterV2KernelRootkit` | Signature of the kernel rootkit. |
| `kubernetes` | `GoogleCloudSecuritycenterV2Kubernetes` | Kubernetes resources associated with the finding. |
| `loadBalancers` | `array<GoogleCloudSecuritycenterV2LoadBalancer>` | The load balancers associated with the finding. |
| `logEntries` | `array<GoogleCloudSecuritycenterV2LogEntry>` | Log entries that are relevant to the finding. |
| `mitreAttack` | `GoogleCloudSecuritycenterV2MitreAttack` | MITRE ATT&CK tactics and techniques related to this finding. See: https://attack.mitre.org |
| `moduleName` | `string` | Unique identifier of the module which generated the finding. Example: folders/598186756061/securi... |
| `mute` | `string` | Indicates the mute state of a finding (either muted, unmuted or undefined). Unlike other attribut... |
| `muteInfo` | `GoogleCloudSecuritycenterV2MuteInfo` | Output only. The mute information regarding this finding. |
| `muteInitiator` | `string` | Records additional information about the mute operation, for example, the [mute configuration](ht... |
| `muteUpdateTime` | `string` | Output only. The most recent time this finding was muted or unmuted. |
| `name` | `string` | Identifier. The [relative resource name](https://cloud.google.com/apis/design/resource_names#rela... |
| `networks` | `array<GoogleCloudSecuritycenterV2Network>` | Represents the VPC networks that the resource is attached to. |
| `nextSteps` | `string` | Steps to address the finding. |
| `notebook` | `GoogleCloudSecuritycenterV2Notebook` | Notebook associated with the finding. |
| `orgPolicies` | `array<GoogleCloudSecuritycenterV2OrgPolicy>` | Contains information about the org policies associated with the finding. |
| `parent` | `string` | The relative resource name of the source and location the finding belongs to. See: https://cloud.... |
| `parentDisplayName` | `string` | Output only. The human readable display name of the finding source such as "Event Threat Detectio... |
| `processes` | `array<GoogleCloudSecuritycenterV2Process>` | Represents operating system processes associated with the Finding. |
| `resourceName` | `string` | Immutable. For findings on Google Cloud resources, the full resource name of the Google Cloud res... |
| `secret` | `GoogleCloudSecuritycenterV2Secret` | Secret associated with the finding. |
| `securityMarks` | `GoogleCloudSecuritycenterV2SecurityMarks` | Output only. User specified security marks. These marks are entirely managed by the user and come... |
| `securityPosture` | `GoogleCloudSecuritycenterV2SecurityPosture` | The security posture associated with the finding. |
| `severity` | `string` | The severity of the finding. This field is managed by the source that writes the finding. |
| `sourceProperties` | `object` | Source specific properties. These properties are managed by the source that writes the finding. T... |
| `state` | `string` | Output only. The state of the finding. |
| `toxicCombination` | `GoogleCloudSecuritycenterV2ToxicCombination` | Contains details about a group of security issues that, when the issues occur together, represent... |
| `vertexAi` | `GoogleCloudSecuritycenterV2VertexAi` | VertexAi associated with the finding. |
| `vulnerability` | `GoogleCloudSecuritycenterV2Vulnerability` | Represents vulnerability-specific fields like CVE and CVSS scores. CVE stands for Common Vulnerab... |

### `GoogleCloudSecuritycenterV2Folder`

Message that contains the resource name and display name of a folder resource.

| Property | Type | Description |
|----------|------|-------------|
| `resourceFolder` | `string` | Full resource name of this folder. See: https://cloud.google.com/apis/design/resource_names#full_... |
| `resourceFolderDisplayName` | `string` | The user defined display name for this folder. |

### `GoogleCloudSecuritycenterV2Framework`

Compliance framework associated with the finding.

| Property | Type | Description |
|----------|------|-------------|
| `category` | `array<string>` | Category of the framework associated with the finding. E.g. Security Benchmark, or Assured Workloads |
| `controls` | `array<GoogleCloudSecuritycenterV2Control>` | The controls associated with the framework. |
| `displayName` | `string` | Display name of the framework. For a standard framework, this will look like e.g. PCI DSS 3.2.1, ... |
| `name` | `string` | Name of the framework associated with the finding |
| `type` | `string` | Type of the framework associated with the finding, to specify whether the framework is built-in (... |

### `GoogleCloudSecuritycenterV2Geolocation`

Represents a geographical location for a given access.

| Property | Type | Description |
|----------|------|-------------|
| `regionCode` | `string` | A CLDR. |

### `GoogleCloudSecuritycenterV2GroupMembership`

Contains details about groups of which this finding is a member. A group is a collection of findings that are related in some way.

| Property | Type | Description |
|----------|------|-------------|
| `groupId` | `string` | ID of the group. |
| `groupType` | `string` | Type of group. |

### `GoogleCloudSecuritycenterV2IamBinding`

Represents a particular IAM binding, which captures a member's role addition, removal, or state.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` | The action that was performed on a Binding. |
| `member` | `string` | A single identity requesting access for a Cloud Platform resource, for example, "foo@google.com". |
| `role` | `string` | Role that is assigned to "members". For example, "roles/viewer", "roles/editor", or "roles/owner". |

### `GoogleCloudSecuritycenterV2Indicator`

Represents what's commonly known as an _indicator of compromise_ (IoC) in computer forensics. This is an artifact observed on a network or in an operating system that, with high confidence, indicates a computer intrusion. For more information, see [Indicator of compromise](https://en.wikipedia.org/wiki/Indicator_of_compromise).

| Property | Type | Description |
|----------|------|-------------|
| `domains` | `array<string>` | List of domains associated to the Finding. |
| `ipAddresses` | `array<string>` | The list of IP addresses that are associated with the finding. |
| `signatures` | `array<GoogleCloudSecuritycenterV2ProcessSignature>` | The list of matched signatures indicating that the given process is present in the environment. |
| `uris` | `array<string>` | The list of URIs associated to the Findings. |

### `GoogleCloudSecuritycenterV2InfoType`

Type of information detected by the API.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Name of the information type. Either a name of your choosing when creating a CustomInfoType, or o... |
| `sensitivityScore` | `GoogleCloudSecuritycenterV2SensitivityScore` | Optional custom sensitivity for this InfoType. This only applies to data profiling. |
| `version` | `string` | Optional version name for this InfoType. |

### `GoogleCloudSecuritycenterV2IpRule`

IP rule information.

| Property | Type | Description |
|----------|------|-------------|
| `portRanges` | `array<GoogleCloudSecuritycenterV2PortRange>` | Optional. An optional list of ports to which this rule applies. This field is only applicable for... |
| `protocol` | `string` | The IP protocol this rule applies to. This value can either be one of the following well known pr... |

### `GoogleCloudSecuritycenterV2IpRules`

IP rules associated with the finding.

| Property | Type | Description |
|----------|------|-------------|
| `allowed` | `GoogleCloudSecuritycenterV2Allowed` | Tuple with allowed rules. |
| `denied` | `GoogleCloudSecuritycenterV2Denied` | Tuple with denied rules. |
| `destinationIpRanges` | `array<string>` | If destination IP ranges are specified, the firewall rule applies only to traffic that has a dest... |
| `direction` | `string` | The direction that the rule is applicable to, one of ingress or egress. |
| `exposedServices` | `array<string>` | Name of the network protocol service, such as FTP, that is exposed by the open port. Follows the ... |
| `sourceIpRanges` | `array<string>` | If source IP ranges are specified, the firewall rule applies only to traffic that has a source IP... |

### `GoogleCloudSecuritycenterV2Issue`

Security Command Center Issue.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the issue was created. |
| `description` | `string` | The description of the issue in Markdown format. |
| `detection` | `string` | The finding category or rule name that generated the issue. |
| `domains` | `array<GoogleCloudSecuritycenterV2IssueDomain>` | The domains of the issue. |
| `exposureScore` | `number` | The exposure score of the issue. |
| `issueType` | `string` | The type of the issue. |
| `lastObservationTime` | `string` | The time the issue was last observed. |
| `mute` | `GoogleCloudSecuritycenterV2IssueMute` | The mute information of the issue. |
| `name` | `string` | Identifier. The name of the issue. Format: organizations/{organization}/locations/{location}/issu... |
| `primaryResource` | `GoogleCloudSecuritycenterV2IssueResource` | The primary resource associated with the issue. |
| `relatedFindings` | `array<GoogleCloudSecuritycenterV2IssueFinding>` | The findings related to the issue. |
| `remediations` | `array<string>` | Approaches to remediate the issue in Markdown format. |
| `secondaryResources` | `array<GoogleCloudSecuritycenterV2IssueResource>` | Additional resources associated with the issue. |
| `securityContexts` | `array<GoogleCloudSecuritycenterV2IssueSecurityContext>` | The security context of the issue. |
| `severity` | `string` | The severity of the issue. |
| `state` | `string` | Output only. The state of the issue. |
| `updateTime` | `string` | Output only. The time the issue was last updated. |

### `GoogleCloudSecuritycenterV2IssueDomain`

The domains of an issue.

| Property | Type | Description |
|----------|------|-------------|
| `domainCategory` | `string` | The domain category of the issue. |

### `GoogleCloudSecuritycenterV2IssueFinding`

Finding related to an issue.

| Property | Type | Description |
|----------|------|-------------|
| `cve` | `GoogleCloudSecuritycenterV2IssueFindingCve` | The CVE of the finding. |
| `name` | `string` | The name of the finding. |
| `securityBulletin` | `GoogleCloudSecuritycenterV2IssueFindingSecurityBulletin` | The security bulletin of the finding. |

### `GoogleCloudSecuritycenterV2IssueFindingCve`

The CVE of the finding.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The CVE name. |

### `GoogleCloudSecuritycenterV2IssueFindingSecurityBulletin`

The security bulletin of the finding.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The security bulletin name. |

### `GoogleCloudSecuritycenterV2IssueMute`

The mute information of the issue.

| Property | Type | Description |
|----------|------|-------------|
| `muteInitiator` | `string` | The email address of the user who last changed the mute state of the issue. |
| `muteReason` | `string` | The user-provided reason for muting the issue. |
| `muteState` | `string` | Output only. The mute state of the issue. |
| `muteUpdateTime` | `string` | The time the issue was muted. |

### `GoogleCloudSecuritycenterV2IssueResource`

A resource associated with the an issue.

| Property | Type | Description |
|----------|------|-------------|
| `adcApplication` | `GoogleCloudSecuritycenterV2IssueResourceAdcApplication` | The ADC application associated with the finding. |
| `adcApplicationTemplate` | `GoogleCloudSecuritycenterV2IssueResourceAdcApplicationTemplateRevision` | The ADC template associated with the finding. |
| `adcSharedTemplate` | `GoogleCloudSecuritycenterV2IssueResourceAdcSharedTemplateRevision` | The ADC shared template associated with the finding. |
| `application` | `GoogleCloudSecuritycenterV2IssueResourceApplication` | The AppHub application associated with the resource, if any. Only populated for the primary resou... |
| `awsMetadata` | `GoogleCloudSecuritycenterV2IssueResourceAwsMetadata` | The AWS metadata of the resource associated with the issue. Only populated for AWS resources. |
| `azureMetadata` | `GoogleCloudSecuritycenterV2IssueResourceAzureMetadata` | The Azure metadata of the resource associated with the issue. Only populated for Azure resources. |
| `cloudProvider` | `string` | The cloud provider of the resource associated with the issue. |
| `displayName` | `string` | The resource-type specific display name of the resource associated with the issue. |
| `googleCloudMetadata` | `GoogleCloudSecuritycenterV2IssueResourceGoogleCloudMetadata` | The Google Cloud metadata of the resource associated with the issue. Only populated for Google Cl... |
| `name` | `string` | The full resource name of the resource associated with the issue. |
| `type` | `string` | The type of the resource associated with the issue. |

### `GoogleCloudSecuritycenterV2IssueResourceAdcApplication`

Represents an ADC application associated with the finding.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `GoogleCloudSecuritycenterV2IssueResourceApplicationAttributes` | Consumer provided attributes for the AppHub application. |
| `name` | `string` | The resource name of an ADC Application. Format: projects/{project}/locations/{location}/spaces/{... |

### `GoogleCloudSecuritycenterV2IssueResourceAdcApplicationTemplateRevision`

Represents an ADC template associated with the finding.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The resource name of an ADC Application Template Revision. Format: projects/{project}/locations/{... |

### `GoogleCloudSecuritycenterV2IssueResourceAdcSharedTemplateRevision`

Represents an ADC shared template associated with the finding.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The resource name of an ADC Shared Template Revision. Format: projects/{project}/locations/{locat... |

### `GoogleCloudSecuritycenterV2IssueResourceApplication`

The AppHub application associated with the resource, if any.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `GoogleCloudSecuritycenterV2IssueResourceApplicationAttributes` | Consumer provided attributes for the application |
| `name` | `string` | The resource name of an Application. Format: `projects/{host-project-id}/locations/{location}/app... |

### `GoogleCloudSecuritycenterV2IssueResourceApplicationAttributes`

Consumer provided attributes for the application

| Property | Type | Description |
|----------|------|-------------|
| `businessOwners` | `array<GoogleCloudSecuritycenterV2IssueResourceApplicationAttributesContactInfo>` | Business team that ensures user needs are met and value is delivered |
| `criticality` | `GoogleCloudSecuritycenterV2IssueResourceApplicationAttributesCriticality` | User-defined criticality information. |
| `developerOwners` | `array<GoogleCloudSecuritycenterV2IssueResourceApplicationAttributesContactInfo>` | Developer team that owns development and coding. |
| `environment` | `GoogleCloudSecuritycenterV2IssueResourceApplicationAttributesEnvironment` | User-defined environment information. |
| `operatorOwners` | `array<GoogleCloudSecuritycenterV2IssueResourceApplicationAttributesContactInfo>` | Operator team that ensures runtime and operations. |

### `GoogleCloudSecuritycenterV2IssueResourceApplicationAttributesContactInfo`

Contact information of stakeholders.

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | Email address of the contacts. |

### `GoogleCloudSecuritycenterV2IssueResourceApplicationAttributesCriticality`

Criticality of the Application, Service, or Workload

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | Criticality Type. |

### `GoogleCloudSecuritycenterV2IssueResourceApplicationAttributesEnvironment`

Environment of the Application, Service, or Workload

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | Environment Type. |

### `GoogleCloudSecuritycenterV2IssueResourceAwsMetadata`

The AWS metadata of a resource associated with an issue.

| Property | Type | Description |
|----------|------|-------------|
| `account` | `GoogleCloudSecuritycenterV2IssueResourceAwsMetadataAwsAccount` | The AWS account of the resource associated with the issue. |

### `GoogleCloudSecuritycenterV2IssueResourceAwsMetadataAwsAccount`

The AWS account of the resource associated with the issue.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | The AWS account ID of the resource associated with the issue. |
| `name` | `string` | The AWS account name of the resource associated with the issue. |

### `GoogleCloudSecuritycenterV2IssueResourceAzureMetadata`

The Azure metadata of a resource associated with an issue.

| Property | Type | Description |
|----------|------|-------------|
| `subscription` | `GoogleCloudSecuritycenterV2IssueResourceAzureMetadataAzureSubscription` | The Azure subscription of the resource associated with the issue. |

### `GoogleCloudSecuritycenterV2IssueResourceAzureMetadataAzureSubscription`

The Azure subscription of the resource associated with the issue.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The Azure subscription display name of the resource associated with the issue. |
| `id` | `string` | The Azure subscription ID of the resource associated with the issue. |

### `GoogleCloudSecuritycenterV2IssueResourceGoogleCloudMetadata`

Google Cloud metadata of a resource associated with an issue.

| Property | Type | Description |
|----------|------|-------------|
| `projectId` | `string` | The project ID that the resource associated with the issue belongs to. |

### `GoogleCloudSecuritycenterV2IssueSecurityContext`

Security context associated with an issue.

| Property | Type | Description |
|----------|------|-------------|
| `aggregatedCount` | `GoogleCloudSecuritycenterV2IssueSecurityContextAggregatedCount` | The aggregated count of the security context. |
| `context` | `GoogleCloudSecuritycenterV2IssueSecurityContextContext` | The context of the security context. |

### `GoogleCloudSecuritycenterV2IssueSecurityContextAggregatedCount`

Aggregated count of a security context.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | Aggregation key. |
| `value` | `integer` | Aggregation value. |

### `GoogleCloudSecuritycenterV2IssueSecurityContextContext`

Context of a security context.

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | Context type. |
| `values` | `array<string>` | Context values. |

### `GoogleCloudSecuritycenterV2Job`

Describes a job

| Property | Type | Description |
|----------|------|-------------|
| `errorCode` | `integer` | Optional. If the job did not complete successfully, this field describes why. |
| `location` | `string` | Optional. Gives the location where the job ran, such as `US` or `europe-west1` |
| `name` | `string` | The fully-qualified name for a job. e.g. `projects//jobs/` |
| `state` | `string` | Output only. State of the job, such as `RUNNING` or `PENDING`. |

### `GoogleCloudSecuritycenterV2KernelRootkit`

Kernel mode rootkit signatures.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Rootkit name, when available. |
| `unexpectedCodeModification` | `boolean` | True if unexpected modifications of kernel code memory are present. |
| `unexpectedFtraceHandler` | `boolean` | True if `ftrace` points are present with callbacks pointing to regions that are not in the expect... |
| `unexpectedInterruptHandler` | `boolean` | True if interrupt handlers that are are not in the expected kernel or module code regions are pre... |
| `unexpectedKernelCodePages` | `boolean` | True if kernel code pages that are not in the expected kernel or module code regions are present. |
| `unexpectedKprobeHandler` | `boolean` | True if `kprobe` points are present with callbacks pointing to regions that are not in the expect... |
| `unexpectedProcessesInRunqueue` | `boolean` | True if unexpected processes in the scheduler run queue are present. Such processes are in the ru... |
| `unexpectedReadOnlyDataModification` | `boolean` | True if unexpected modifications of kernel read-only data memory are present. |
| `unexpectedSystemCallHandler` | `boolean` | True if system call handlers that are are not in the expected kernel or module code regions are p... |

### `GoogleCloudSecuritycenterV2Kubernetes`

Kubernetes-related attributes.

| Property | Type | Description |
|----------|------|-------------|
| `accessReviews` | `array<GoogleCloudSecuritycenterV2AccessReview>` | Provides information on any Kubernetes access reviews (privilege checks) relevant to the finding. |
| `bindings` | `array<GoogleCloudSecuritycenterV2Binding>` | Provides Kubernetes role binding information for findings that involve [RoleBindings or ClusterRo... |
| `nodePools` | `array<GoogleCloudSecuritycenterV2NodePool>` | GKE [node pools](https://cloud.google.com/kubernetes-engine/docs/concepts/node-pools) associated ... |
| `nodes` | `array<GoogleCloudSecuritycenterV2Node>` | Provides Kubernetes [node](https://cloud.google.com/kubernetes-engine/docs/concepts/cluster-archi... |
| `objects` | `array<GoogleCloudSecuritycenterV2Object>` | Kubernetes objects related to the finding. |
| `pods` | `array<GoogleCloudSecuritycenterV2Pod>` | Kubernetes [Pods](https://cloud.google.com/kubernetes-engine/docs/concepts/pod) associated with t... |
| `roles` | `array<GoogleCloudSecuritycenterV2Role>` | Provides Kubernetes role information for findings that involve [Roles or ClusterRoles](https://cl... |

### `GoogleCloudSecuritycenterV2Label`

Represents a generic name-value label. A label has separate name and value fields to support filtering with the `contains()` function. For more information, see [Filtering on array-type fields](https://cloud.google.com/security-command-center/docs/how-to-api-list-findings#array-contains-filtering).

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Name of the label. |
| `value` | `string` | Value that corresponds to the label's name. |

### `GoogleCloudSecuritycenterV2LoadBalancer`

Contains information related to the load balancer associated with the finding.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The name of the load balancer associated with the finding. |

### `GoogleCloudSecuritycenterV2LogEntry`

An individual entry in a log.

| Property | Type | Description |
|----------|------|-------------|
| `cloudLoggingEntry` | `GoogleCloudSecuritycenterV2CloudLoggingEntry` | An individual entry in a log stored in Cloud Logging. |

### `GoogleCloudSecuritycenterV2MemoryHashSignature`

A signature corresponding to memory page hashes.

| Property | Type | Description |
|----------|------|-------------|
| `binaryFamily` | `string` | The binary family. |
| `detections` | `array<GoogleCloudSecuritycenterV2Detection>` | The list of memory hash detections contributing to the binary family match. |

### `GoogleCloudSecuritycenterV2MitreAttack`

MITRE ATT&CK tactics and techniques related to this finding. See: https://attack.mitre.org

| Property | Type | Description |
|----------|------|-------------|
| `additionalTactics` | `array<string>` | Additional MITRE ATT&CK tactics related to this finding, if any. |
| `additionalTechniques` | `array<string>` | Additional MITRE ATT&CK techniques related to this finding, if any, along with any of their respe... |
| `primaryTactic` | `string` | The MITRE ATT&CK tactic most closely represented by this finding, if any. |
| `primaryTechniques` | `array<string>` | The MITRE ATT&CK technique most closely represented by this finding, if any. primary_techniques i... |
| `version` | `string` | The MITRE ATT&CK version referenced by the above fields. E.g. "8". |

### `GoogleCloudSecuritycenterV2MuteConfig`

A mute config is a Cloud SCC resource that contains the configuration to mute create/update events of findings.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time at which the mute config was created. This field is set by the server and w... |
| `cryptoKeyName` | `string` | Output only. The resource name of the Cloud KMS `CryptoKey` used to encrypt this configuration da... |
| `description` | `string` | A description of the mute config. |
| `expiryTime` | `string` | Optional. The expiry of the mute config. Only applicable for dynamic configs. If the expiry is se... |
| `filter` | `string` | Required. An expression that defines the filter to apply across create/update events of findings.... |
| `mostRecentEditor` | `string` | Output only. Email address of the user who last edited the mute config. This field is set by the ... |
| `name` | `string` | Identifier. This field will be ignored if provided on config creation. The following list shows s... |
| `type` | `string` | Required. The type of the mute config, which determines what type of mute state the config affect... |
| `updateTime` | `string` | Output only. The most recent time at which the mute config was updated. This field is set by the ... |

### `GoogleCloudSecuritycenterV2MuteInfo`

Mute information about the finding, including whether the finding has a static mute or any matching dynamic mute rules.

| Property | Type | Description |
|----------|------|-------------|
| `dynamicMuteRecords` | `array<GoogleCloudSecuritycenterV2DynamicMuteRecord>` | The list of dynamic mute rules that currently match the finding. |
| `staticMute` | `GoogleCloudSecuritycenterV2StaticMute` | If set, the static mute applied to this finding. Static mutes override dynamic mutes. If unset, t... |

### `GoogleCloudSecuritycenterV2Network`

Contains information about a VPC network associated with the finding.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The name of the VPC network resource, for example, `//compute.googleapis.com/projects/my-project/... |

### `GoogleCloudSecuritycenterV2Node`

Kubernetes nodes associated with the finding.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | [Full resource name](https://google.aip.dev/122#full-resource-names) of the Compute Engine VM run... |

### `GoogleCloudSecuritycenterV2NodePool`

Provides GKE node pool information.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Kubernetes node pool name. |
| `nodes` | `array<GoogleCloudSecuritycenterV2Node>` | Nodes associated with the finding. |

### `GoogleCloudSecuritycenterV2Notebook`

Represents a Jupyter notebook IPYNB file, such as a [Colab Enterprise notebook](https://cloud.google.com/colab/docs/introduction) file, that is associated with a finding.

| Property | Type | Description |
|----------|------|-------------|
| `lastAuthor` | `string` | The user ID of the latest author to modify the notebook. |
| `name` | `string` | The name of the notebook. |
| `notebookUpdateTime` | `string` | The most recent time the notebook was updated. |
| `service` | `string` | The source notebook service, for example, "Colab Enterprise". |

### `GoogleCloudSecuritycenterV2NotificationMessage`

Cloud SCC's Notification

| Property | Type | Description |
|----------|------|-------------|
| `finding` | `GoogleCloudSecuritycenterV2Finding` | If it's a Finding based notification config, this field will be populated. |
| `notificationConfigName` | `string` | Name of the notification config that generated current notification. |
| `resource` | `GoogleCloudSecuritycenterV2Resource` | The Cloud resource tied to this notification's Finding. |

### `GoogleCloudSecuritycenterV2Object`

Kubernetes object related to the finding, uniquely identified by GKNN. Used if the object Kind is not one of Pod, Node, NodePool, Binding, or AccessReview.

| Property | Type | Description |
|----------|------|-------------|
| `containers` | `array<GoogleCloudSecuritycenterV2Container>` | Pod containers associated with this finding, if any. |
| `group` | `string` | Kubernetes object group, such as "policy.k8s.io/v1". |
| `kind` | `string` | Kubernetes object kind, such as "Namespace". |
| `name` | `string` | Kubernetes object name. For details see https://kubernetes.io/docs/concepts/overview/working-with... |
| `ns` | `string` | Kubernetes object namespace. Must be a valid DNS label. Named "ns" to avoid collision with C++ na... |

### `GoogleCloudSecuritycenterV2OrgPolicy`

Contains information about the org policies associated with the finding.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Identifier. The resource name of the org policy. Example: "organizations/{organization_id}/polici... |

### `GoogleCloudSecuritycenterV2Package`

Package is a generic definition of a package.

| Property | Type | Description |
|----------|------|-------------|
| `cpeUri` | `string` | The CPE URI where the vulnerability was detected. |
| `packageName` | `string` | The name of the package where the vulnerability was detected. |
| `packageType` | `string` | Type of package, for example, os, maven, or go. |
| `packageVersion` | `string` | The version of the package. |

### `GoogleCloudSecuritycenterV2Pipeline`

Vertex AI training pipeline associated with the finding.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The user-defined display name of pipeline, e.g. plants-classification |
| `name` | `string` | Resource name of the pipeline, e.g. projects/{project}/locations/{location}/trainingPipelines/525... |

### `GoogleCloudSecuritycenterV2Pod`

A Kubernetes Pod.

| Property | Type | Description |
|----------|------|-------------|
| `containers` | `array<GoogleCloudSecuritycenterV2Container>` | Pod containers associated with this finding, if any. |
| `labels` | `array<GoogleCloudSecuritycenterV2Label>` | Pod labels. For Kubernetes containers, these are applied to the container. |
| `name` | `string` | Kubernetes Pod name. |
| `ns` | `string` | Kubernetes Pod namespace. |

### `GoogleCloudSecuritycenterV2PolicyDriftDetails`

The policy field that violates the deployed posture and its expected and detected values.

| Property | Type | Description |
|----------|------|-------------|
| `detectedValue` | `string` | The detected value that violates the deployed posture, for example, `false` or `allowed_values={"... |
| `expectedValue` | `string` | The value of this field that was configured in a posture, for example, `true` or `allowed_values=... |
| `field` | `string` | The name of the updated field, for example constraint.implementation.policy_rules[0].enforce |

### `GoogleCloudSecuritycenterV2PortRange`

A port range which is inclusive of the min and max values. Values are between 0 and 2^16-1. The max can be equal / must be not smaller than the min value. If min and max are equal this indicates that it is a single port.

| Property | Type | Description |
|----------|------|-------------|
| `max` | `string` | Maximum port value. |
| `min` | `string` | Minimum port value. |

### `GoogleCloudSecuritycenterV2Process`

Represents an operating system process.

| Property | Type | Description |
|----------|------|-------------|
| `args` | `array<string>` | Process arguments as JSON encoded strings. |
| `argumentsTruncated` | `boolean` | True if `args` is incomplete. |
| `binary` | `GoogleCloudSecuritycenterV2File` | File information for the process executable. |
| `envVariables` | `array<GoogleCloudSecuritycenterV2EnvironmentVariable>` | Process environment variables. |
| `envVariablesTruncated` | `boolean` | True if `env_variables` is incomplete. |
| `libraries` | `array<GoogleCloudSecuritycenterV2File>` | File information for libraries loaded by the process. |
| `name` | `string` | The process name, as displayed in utilities like `top` and `ps`. This name can be accessed throug... |
| `parentPid` | `string` | The parent process ID. |
| `pid` | `string` | The process ID. |
| `script` | `GoogleCloudSecuritycenterV2File` | When the process represents the invocation of a script, `binary` provides information about the i... |
| `userId` | `string` | The ID of the user that executed the process. E.g. If this is the root user this will always be 0. |

### `GoogleCloudSecuritycenterV2ProcessSignature`

Indicates what signature matched this process.

| Property | Type | Description |
|----------|------|-------------|
| `memoryHashSignature` | `GoogleCloudSecuritycenterV2MemoryHashSignature` | Signature indicating that a binary family was matched. |
| `signatureType` | `string` | Describes the type of resource associated with the signature. |
| `yaraRuleSignature` | `GoogleCloudSecuritycenterV2YaraRuleSignature` | Signature indicating that a YARA rule was matched. |

### `GoogleCloudSecuritycenterV2Reference`

Additional Links

| Property | Type | Description |
|----------|------|-------------|
| `source` | `string` | Source of the reference e.g. NVD |
| `uri` | `string` | Uri for the mentioned source e.g. https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-34527. |

### `GoogleCloudSecuritycenterV2Requests`

Information about the requests relevant to the finding.

| Property | Type | Description |
|----------|------|-------------|
| `longTermAllowed` | `integer` | Allowed RPS (requests per second) over the long term. |
| `longTermDenied` | `integer` | Denied RPS (requests per second) over the long term. |
| `ratio` | `number` | For 'Increasing deny ratio', the ratio is the denied traffic divided by the allowed traffic. For ... |
| `shortTermAllowed` | `integer` | Allowed RPS (requests per second) in the short term. |

### `GoogleCloudSecuritycenterV2Resource`

Information related to the Google Cloud resource.

| Property | Type | Description |
|----------|------|-------------|
| `adcApplication` | `GoogleCloudSecuritycenterV2AdcApplication` | The ADC application associated with the finding. |
| `adcApplicationTemplate` | `GoogleCloudSecuritycenterV2AdcApplicationTemplateRevision` | The ADC template associated with the finding. |
| `adcSharedTemplate` | `GoogleCloudSecuritycenterV2AdcSharedTemplateRevision` | The ADC shared template associated with the finding. |
| `application` | `GoogleCloudSecuritycenterV2ResourceApplication` | The App Hub application this resource belongs to. |
| `awsMetadata` | `GoogleCloudSecuritycenterV2AwsMetadata` | The AWS metadata associated with the finding. |
| `azureMetadata` | `GoogleCloudSecuritycenterV2AzureMetadata` | The Azure metadata associated with the finding. |
| `cloudProvider` | `string` | Indicates which cloud provider the finding is from. |
| `displayName` | `string` | The human readable name of the resource. |
| `gcpMetadata` | `GcpMetadata` | The Google Cloud metadata associated with the finding. |
| `location` | `string` | The region or location of the service (if applicable). |
| `name` | `string` | The full resource name of the resource. See: https://cloud.google.com/apis/design/resource_names#... |
| `resourcePath` | `GoogleCloudSecuritycenterV2ResourcePath` | Provides the path to the resource within the resource hierarchy. |
| `resourcePathString` | `string` | A string representation of the resource path. For Google Cloud, it has the format of `organizatio... |
| `service` | `string` | The service or resource provider associated with the resource. |
| `type` | `string` | The full resource type of the resource. |

### `GoogleCloudSecuritycenterV2ResourceApplication`

The App Hub Application associated with the finding's resource.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `GoogleCloudSecuritycenterV2ResourceApplicationAttributes` | Consumer provided attributes for the application |
| `name` | `string` | The resource name of an Application. Format: `projects/{host-project-id}/locations/{location}/app... |

### `GoogleCloudSecuritycenterV2ResourceApplicationAttributes`

Consumer provided attributes for the application

| Property | Type | Description |
|----------|------|-------------|
| `businessOwners` | `array<GoogleCloudSecuritycenterV2ResourceApplicationAttributesContactInfo>` | Business team that ensures user needs are met and value is delivered |
| `criticality` | `GoogleCloudSecuritycenterV2ResourceApplicationAttributesCriticality` | User-defined criticality information. |
| `developerOwners` | `array<GoogleCloudSecuritycenterV2ResourceApplicationAttributesContactInfo>` | Developer team that owns development and coding. |
| `environment` | `GoogleCloudSecuritycenterV2ResourceApplicationAttributesEnvironment` | User-defined environment information. |
| `operatorOwners` | `array<GoogleCloudSecuritycenterV2ResourceApplicationAttributesContactInfo>` | Operator team that ensures runtime and operations. |

### `GoogleCloudSecuritycenterV2ResourceApplicationAttributesContactInfo`

Contact information of stakeholders.

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | Email address of the contacts. |

### `GoogleCloudSecuritycenterV2ResourceApplicationAttributesCriticality`

Criticality of the Application, Service, or Workload

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | Criticality Type. |

### `GoogleCloudSecuritycenterV2ResourceApplicationAttributesEnvironment`

Environment of the Application, Service, or Workload

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | Environment Type. |

### `GoogleCloudSecuritycenterV2ResourcePath`

Represents the path of resources leading up to the resource this finding is about.

| Property | Type | Description |
|----------|------|-------------|
| `nodes` | `array<GoogleCloudSecuritycenterV2ResourcePathNode>` | The list of nodes that make the up resource path, ordered from lowest level to highest level. |

### `GoogleCloudSecuritycenterV2ResourcePathNode`

A node within the resource path. Each node represents a resource within the resource hierarchy.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The display name of the resource this node represents. |
| `id` | `string` | The ID of the resource this node represents. |
| `nodeType` | `string` | The type of resource this node represents. |

### `GoogleCloudSecuritycenterV2ResourceValueConfig`

A resource value configuration (RVC) is a mapping configuration of user's resources to resource values. Used in Attack path simulations.

| Property | Type | Description |
|----------|------|-------------|
| `cloudProvider` | `string` | Cloud provider this configuration applies to |
| `createTime` | `string` | Output only. Timestamp this resource value configuration was created. |
| `description` | `string` | Description of the resource value configuration. |
| `name` | `string` | Identifier. Name for the resource value configuration |
| `resourceLabelsSelector` | `object` | List of resource labels to search for, evaluated with `AND`. For example, "resource_labels_select... |
| `resourceType` | `string` | Apply resource_value only to resources that match resource_type. resource_type will be checked wi... |
| `resourceValue` | `string` | Resource value level this expression represents Only required when there is no Sensitive Data Pro... |
| `scope` | `string` | Project or folder to scope this configuration to. For example, "project/456" would apply this con... |
| `sensitiveDataProtectionMapping` | `GoogleCloudSecuritycenterV2SensitiveDataProtectionMapping` | A mapping of the sensitivity on Sensitive Data Protection finding to resource values. This mappin... |
| `tagValues` | `array<string>` | Tag values combined with `AND` to check against. For Google Cloud resources, they are tag value I... |
| `updateTime` | `string` | Output only. Timestamp this resource value configuration was last updated. |

### `GoogleCloudSecuritycenterV2Role`

Kubernetes Role or ClusterRole.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Role type. |
| `name` | `string` | Role name. |
| `ns` | `string` | Role namespace. |

### `GoogleCloudSecuritycenterV2Secret`

Details about a secret or credential associated with the finding.

| Property | Type | Description |
|----------|------|-------------|
| `environmentVariable` | `GoogleCloudSecuritycenterV2SecretEnvironmentVariable` | The environment variable containing the secret. |
| `filePath` | `GoogleCloudSecuritycenterV2SecretFilePath` | The file containing the secret. |
| `status` | `GoogleCloudSecuritycenterV2SecretStatus` | The status of the secret. |
| `type` | `string` | The type of secret, for example, GCP_API_KEY. |

### `GoogleCloudSecuritycenterV2SecretEnvironmentVariable`

Environment variable containing the secret.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | Environment variable name as a JSON encoded string. Note that value is not included since the val... |

### `GoogleCloudSecuritycenterV2SecretFilePath`

File path containing the secret.

| Property | Type | Description |
|----------|------|-------------|
| `path` | `string` | Path to the file. |

### `GoogleCloudSecuritycenterV2SecretStatus`

The status of the secret.

| Property | Type | Description |
|----------|------|-------------|
| `lastUpdatedTime` | `string` | Time that the secret was found. |
| `validity` | `string` | The validity of the secret. |

### `GoogleCloudSecuritycenterV2SecurityBulletin`

SecurityBulletin are notifications of vulnerabilities of Google products.

| Property | Type | Description |
|----------|------|-------------|
| `bulletinId` | `string` | ID of the bulletin corresponding to the vulnerability. |
| `submissionTime` | `string` | Submission time of this Security Bulletin. |
| `suggestedUpgradeVersion` | `string` | This represents a version that the cluster receiving this notification should be upgraded to, bas... |

### `GoogleCloudSecuritycenterV2SecurityMarks`

User specified security marks that are attached to the parent Security Command Center resource. Security marks are scoped within a Security Command Center organization -- they can be modified and viewed by all users who have proper permissions on the organization.

| Property | Type | Description |
|----------|------|-------------|
| `canonicalName` | `string` | The canonical name of the marks. The following list shows some examples: + `organizations/{organi... |
| `marks` | `object` | Mutable user specified security marks belonging to the parent resource. Constraints are as follow... |
| `name` | `string` | The relative resource name of the SecurityMarks. See: https://cloud.google.com/apis/design/resour... |

### `GoogleCloudSecuritycenterV2SecurityPolicy`

Information about the [Google Cloud Armor security policy](https://cloud.google.com/armor/docs/security-policy-overview) relevant to the finding.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The name of the Google Cloud Armor security policy, for example, "my-security-policy". |
| `preview` | `boolean` | Whether or not the associated rule or policy is in preview mode. |
| `type` | `string` | The type of Google Cloud Armor security policy for example, 'backend security policy', 'edge secu... |

### `GoogleCloudSecuritycenterV2SecurityPosture`

Represents a posture that is deployed on Google Cloud by the Security Command Center Posture Management service. A posture contains one or more policy sets. A policy set is a group of policies that enforce a set of security rules on Google Cloud.

| Property | Type | Description |
|----------|------|-------------|
| `changedPolicy` | `string` | The name of the updated policy, for example, `projects/{project_id}/policies/{constraint_name}`. |
| `name` | `string` | Name of the posture, for example, `CIS-Posture`. |
| `policy` | `string` | The ID of the updated policy, for example, `compute-policy-1`. |
| `policyDriftDetails` | `array<GoogleCloudSecuritycenterV2PolicyDriftDetails>` | The details about a change in an updated policy that violates the deployed posture. |
| `policySet` | `string` | The name of the updated policy set, for example, `cis-policyset`. |
| `postureDeployment` | `string` | The name of the posture deployment, for example, `organizations/{org_id}/posturedeployments/{post... |
| `postureDeploymentResource` | `string` | The project, folder, or organization on which the posture is deployed, for example, `projects/{pr... |
| `revisionId` | `string` | The version of the posture, for example, `c7cfa2a8`. |

### `GoogleCloudSecuritycenterV2SensitiveDataProtectionMapping`

Resource value mapping for Sensitive Data Protection findings If any of these mappings have a resource value that is not unspecified, the resource_value field will be ignored when reading this configuration.

| Property | Type | Description |
|----------|------|-------------|
| `highSensitivityMapping` | `string` | Resource value mapping for high-sensitivity Sensitive Data Protection findings |
| `mediumSensitivityMapping` | `string` | Resource value mapping for medium-sensitivity Sensitive Data Protection findings |

### `GoogleCloudSecuritycenterV2SensitivityScore`

Score is calculated from of all elements in the data profile. A higher level means the data is more sensitive.

| Property | Type | Description |
|----------|------|-------------|
| `score` | `string` | The sensitivity score applied to the resource. |

### `GoogleCloudSecuritycenterV2ServiceAccountDelegationInfo`

Identity delegation history of an authenticated service account.

| Property | Type | Description |
|----------|------|-------------|
| `principalEmail` | `string` | The email address of a Google account. |
| `principalSubject` | `string` | A string representing the principal_subject associated with the identity. As compared to `princip... |

### `GoogleCloudSecuritycenterV2StaticMute`

Information about the static mute state. A static mute state overrides any dynamic mute rules that apply to this finding. The static mute state can be set by a static mute rule or by muting the finding directly.

| Property | Type | Description |
|----------|------|-------------|
| `applyTime` | `string` | When the static mute was applied. |
| `state` | `string` | The static mute state. If the value is `MUTED` or `UNMUTED`, then the finding's overall mute stat... |

### `GoogleCloudSecuritycenterV2Subject`

Represents a Kubernetes subject.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Authentication type for the subject. |
| `name` | `string` | Name for the subject. |
| `ns` | `string` | Namespace for the subject. |

### `GoogleCloudSecuritycenterV2TicketInfo`

Information about the ticket, if any, that is being used to track the resolution of the issue that is identified by this finding.

| Property | Type | Description |
|----------|------|-------------|
| `assignee` | `string` | The assignee of the ticket in the ticket system. |
| `description` | `string` | The description of the ticket in the ticket system. |
| `id` | `string` | The identifier of the ticket in the ticket system. |
| `status` | `string` | The latest status of the ticket, as reported by the ticket system. |
| `updateTime` | `string` | The time when the ticket was last updated, as reported by the ticket system. |
| `uri` | `string` | The link to the ticket in the ticket system. |

### `GoogleCloudSecuritycenterV2ToxicCombination`

Contains details about a group of security issues that, when the issues occur together, represent a greater risk than when the issues occur independently. A group of such issues is referred to as a toxic combination.

| Property | Type | Description |
|----------|------|-------------|
| `attackExposureScore` | `number` | The [Attack exposure score](https://cloud.google.com/security-command-center/docs/attack-exposure... |
| `relatedFindings` | `array<string>` | List of resource names of findings associated with this toxic combination. For example, `organiza... |

### `GoogleCloudSecuritycenterV2VertexAi`

Vertex AI-related information associated with the finding.

| Property | Type | Description |
|----------|------|-------------|
| `datasets` | `array<GoogleCloudSecuritycenterV2Dataset>` | Datasets associated with the finding. |
| `pipelines` | `array<GoogleCloudSecuritycenterV2Pipeline>` | Pipelines associated with the finding. |

### `GoogleCloudSecuritycenterV2Vulnerability`

Refers to common vulnerability fields e.g. cve, cvss, cwe etc.

| Property | Type | Description |
|----------|------|-------------|
| `cve` | `GoogleCloudSecuritycenterV2Cve` | CVE stands for Common Vulnerabilities and Exposures (https://cve.mitre.org/about/) |
| `cwes` | `array<GoogleCloudSecuritycenterV2Cwe>` | Represents one or more Common Weakness Enumeration (CWE) information on this vulnerability. |
| `fixedPackage` | `GoogleCloudSecuritycenterV2Package` | The fixed package is relevant to the finding. |
| `offendingPackage` | `GoogleCloudSecuritycenterV2Package` | The offending package is relevant to the finding. |
| `providerRiskScore` | `string` | Provider provided risk_score based on multiple factors. The higher the risk score, the more risky... |
| `reachable` | `boolean` | Represents whether the vulnerability is reachable (detected via static analysis) |
| `securityBulletin` | `GoogleCloudSecuritycenterV2SecurityBulletin` | The security bulletin is relevant to this finding. |

### `GoogleCloudSecuritycenterV2YaraRuleSignature`

A signature corresponding to a YARA rule.

| Property | Type | Description |
|----------|------|-------------|
| `yaraRule` | `string` | The name of the YARA rule. |

### `GroupAssetsRequest`

Request message for grouping by assets.

| Property | Type | Description |
|----------|------|-------------|
| `compareDuration` | `string` | When compare_duration is set, the GroupResult's "state_change" property is updated to indicate wh... |
| `filter` | `string` | Expression that defines the filter to apply across assets. The expression is a list of zero or mo... |
| `groupBy` | `string` | Required. Expression that defines what assets fields to use for grouping. The string value should... |
| `pageSize` | `integer` | The maximum number of results to return in a single response. Default is 10, minimum is 1, maximu... |
| `pageToken` | `string` | The value returned by the last `GroupAssetsResponse`; indicates that this is a continuation of a ... |
| `readTime` | `string` | Time used as a reference point when filtering assets. The filter is limited to assets existing at... |

### `GroupAssetsResponse`

Response message for grouping by assets.

| Property | Type | Description |
|----------|------|-------------|
| `groupByResults` | `array<GroupResult>` | Group results. There exists an element for each existing unique combination of property/values. T... |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results. |
| `readTime` | `string` | Time used for executing the groupBy request. |
| `totalSize` | `integer` | The total number of results matching the query. |

### `GroupFindingsRequest`

Request message for grouping by findings.

| Property | Type | Description |
|----------|------|-------------|
| `compareDuration` | `string` | When compare_duration is set, the GroupResult's "state_change" attribute is updated to indicate w... |
| `filter` | `string` | Expression that defines the filter to apply across findings. The expression is a list of one or m... |
| `groupBy` | `string` | Required. Expression that defines what assets fields to use for grouping (including `state_change... |
| `pageSize` | `integer` | The maximum number of results to return in a single response. Default is 10, minimum is 1, maximu... |
| `pageToken` | `string` | The value returned by the last `GroupFindingsResponse`; indicates that this is a continuation of ... |
| `readTime` | `string` | Time used as a reference point when filtering findings. The filter is limited to findings existin... |

### `GroupFindingsResponse`

Response message for group by findings.

| Property | Type | Description |
|----------|------|-------------|
| `groupByResults` | `array<GroupResult>` | Group results. There exists an element for each existing unique combination of property/values. T... |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results. |
| `readTime` | `string` | Time used for executing the groupBy request. |
| `totalSize` | `integer` | The total number of results matching the query. |

### `GroupMembership`

Contains details about groups of which this finding is a member. A group is a collection of findings that are related in some way.

| Property | Type | Description |
|----------|------|-------------|
| `groupId` | `string` | ID of the group. |
| `groupType` | `string` | Type of group. |

### `GroupResult`

Result containing the properties and count of a groupBy request.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `string` | Total count of resources for the given properties. |
| `properties` | `object` | Properties matching the groupBy fields in the request. |

### `IamBinding`

Represents a particular IAM binding, which captures a member's role addition, removal, or state.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` | The action that was performed on a Binding. |
| `member` | `string` | A single identity requesting access for a Cloud Platform resource, for example, "foo@google.com". |
| `role` | `string` | Role that is assigned to "members". For example, "roles/viewer", "roles/editor", or "roles/owner". |

### `IamPolicy`

Cloud IAM Policy information associated with the Google Cloud resource described by the Security Command Center asset. This information is managed and defined by the Google Cloud resource and cannot be modified by the user.

| Property | Type | Description |
|----------|------|-------------|
| `policyBlob` | `string` | The JSON representation of the Policy associated with the asset. See https://cloud.google.com/iam... |

### `Indicator`

Represents what's commonly known as an _indicator of compromise_ (IoC) in computer forensics. This is an artifact observed on a network or in an operating system that, with high confidence, indicates a computer intrusion. For more information, see [Indicator of compromise](https://en.wikipedia.org/wiki/Indicator_of_compromise).

| Property | Type | Description |
|----------|------|-------------|
| `domains` | `array<string>` | List of domains associated to the Finding. |
| `ipAddresses` | `array<string>` | The list of IP addresses that are associated with the finding. |
| `signatures` | `array<ProcessSignature>` | The list of matched signatures indicating that the given process is present in the environment. |
| `uris` | `array<string>` | The list of URIs associated to the Findings. |

### `InfoType`

Type of information detected by the API.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Name of the information type. Either a name of your choosing when creating a CustomInfoType, or o... |
| `sensitivityScore` | `SensitivityScore` | Optional custom sensitivity for this InfoType. This only applies to data profiling. |
| `version` | `string` | Optional version name for this InfoType. |

### `IpRule`

IP rule information.

| Property | Type | Description |
|----------|------|-------------|
| `portRanges` | `array<PortRange>` | Optional. An optional list of ports to which this rule applies. This field is only applicable for... |
| `protocol` | `string` | The IP protocol this rule applies to. This value can either be one of the following well known pr... |

### `IpRules`

IP rules associated with the finding.

| Property | Type | Description |
|----------|------|-------------|
| `allowed` | `Allowed` | Tuple with allowed rules. |
| `denied` | `Denied` | Tuple with denied rules. |
| `destinationIpRanges` | `array<string>` | If destination IP ranges are specified, the firewall rule applies only to traffic that has a dest... |
| `direction` | `string` | The direction that the rule is applicable to, one of ingress or egress. |
| `exposedServices` | `array<string>` | Name of the network protocol service, such as FTP, that is exposed by the open port. Follows the ... |
| `sourceIpRanges` | `array<string>` | If source IP ranges are specified, the firewall rule applies only to traffic that has a source IP... |

### `Job`

Describes a job

| Property | Type | Description |
|----------|------|-------------|
| `errorCode` | `integer` | Optional. If the job did not complete successfully, this field describes why. |
| `location` | `string` | Optional. Gives the location where the job ran, such as `US` or `europe-west1` |
| `name` | `string` | The fully-qualified name for a job. e.g. `projects//jobs/` |
| `state` | `string` | Output only. State of the job, such as `RUNNING` or `PENDING`. |

### `KernelRootkit`

Kernel mode rootkit signatures.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Rootkit name, when available. |
| `unexpectedCodeModification` | `boolean` | True if unexpected modifications of kernel code memory are present. |
| `unexpectedFtraceHandler` | `boolean` | True if `ftrace` points are present with callbacks pointing to regions that are not in the expect... |
| `unexpectedInterruptHandler` | `boolean` | True if interrupt handlers that are are not in the expected kernel or module code regions are pre... |
| `unexpectedKernelCodePages` | `boolean` | True if kernel code pages that are not in the expected kernel or module code regions are present. |
| `unexpectedKprobeHandler` | `boolean` | True if `kprobe` points are present with callbacks pointing to regions that are not in the expect... |
| `unexpectedProcessesInRunqueue` | `boolean` | True if unexpected processes in the scheduler run queue are present. Such processes are in the ru... |
| `unexpectedReadOnlyDataModification` | `boolean` | True if unexpected modifications of kernel read-only data memory are present. |
| `unexpectedSystemCallHandler` | `boolean` | True if system call handlers that are are not in the expected kernel or module code regions are p... |

### `Kubernetes`

Kubernetes-related attributes.

| Property | Type | Description |
|----------|------|-------------|
| `accessReviews` | `array<AccessReview>` | Provides information on any Kubernetes access reviews (privilege checks) relevant to the finding. |
| `bindings` | `array<GoogleCloudSecuritycenterV1Binding>` | Provides Kubernetes role binding information for findings that involve [RoleBindings or ClusterRo... |
| `nodePools` | `array<NodePool>` | GKE [node pools](https://cloud.google.com/kubernetes-engine/docs/concepts/node-pools) associated ... |
| `nodes` | `array<Node>` | Provides Kubernetes [node](https://cloud.google.com/kubernetes-engine/docs/concepts/cluster-archi... |
| `objects` | `array<Object>` | Kubernetes objects related to the finding. |
| `pods` | `array<Pod>` | Kubernetes [Pods](https://cloud.google.com/kubernetes-engine/docs/concepts/pod) associated with t... |
| `roles` | `array<Role>` | Provides Kubernetes role information for findings that involve [Roles or ClusterRoles](https://cl... |

### `Label`

Represents a generic name-value label. A label has separate name and value fields to support filtering with the `contains()` function. For more information, see [Filtering on array-type fields](https://cloud.google.com/security-command-center/docs/how-to-api-list-findings#array-contains-filtering).

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Name of the label. |
| `value` | `string` | Value that corresponds to the label's name. |

### `ListAssetsResponse`

Response message for listing assets.

| Property | Type | Description |
|----------|------|-------------|
| `listAssetsResults` | `array<ListAssetsResult>` | Assets matching the list request. |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results. |
| `readTime` | `string` | Time used for executing the list request. |
| `totalSize` | `integer` | The total number of assets matching the query. |

### `ListAssetsResult`

Result containing the Asset and its State.

| Property | Type | Description |
|----------|------|-------------|
| `asset` | `Asset` | Asset matching the search request. |
| `stateChange` | `string` | State change of the asset between the points in time. |

### `ListAttackPathsResponse`

Response message for listing the attack paths for a given simulation or valued resource.

| Property | Type | Description |
|----------|------|-------------|
| `attackPaths` | `array<AttackPath>` | The attack paths that the attack path simulation identified. |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results. |

### `ListBigQueryExportsResponse`

Response message for listing BigQuery exports.

| Property | Type | Description |
|----------|------|-------------|
| `bigQueryExports` | `array<GoogleCloudSecuritycenterV1BigQueryExport>` | The BigQuery exports from the specified parent. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `ListDescendantEventThreatDetectionCustomModulesResponse`

Response for listing current and descendant resident Event Threat Detection custom modules.

| Property | Type | Description |
|----------|------|-------------|
| `eventThreatDetectionCustomModules` | `array<EventThreatDetectionCustomModule>` | Custom modules belonging to the requested parent. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `ListDescendantSecurityHealthAnalyticsCustomModulesResponse`

Response message for listing descendant Security Health Analytics custom modules.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If not empty, indicates that there may be more custom modules to be returned. |
| `securityHealthAnalyticsCustomModules` | `array<GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule>` | Custom modules belonging to the requested parent and its descendants. |

### `ListEffectiveEventThreatDetectionCustomModulesResponse`

Response for listing EffectiveEventThreatDetectionCustomModules.

| Property | Type | Description |
|----------|------|-------------|
| `effectiveEventThreatDetectionCustomModules` | `array<EffectiveEventThreatDetectionCustomModule>` | Effective custom modules belonging to the requested parent. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `ListEffectiveSecurityHealthAnalyticsCustomModulesResponse`

Response message for listing effective Security Health Analytics custom modules.

| Property | Type | Description |
|----------|------|-------------|
| `effectiveSecurityHealthAnalyticsCustomModules` | `array<GoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule>` | Effective custom modules belonging to the requested parent. |
| `nextPageToken` | `string` | If not empty, indicates that there may be more effective custom modules to be returned. |

### `ListEventThreatDetectionCustomModulesResponse`

Response for listing Event Threat Detection custom modules.

| Property | Type | Description |
|----------|------|-------------|
| `eventThreatDetectionCustomModules` | `array<EventThreatDetectionCustomModule>` | Custom modules belonging to the requested parent. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `ListFindingsResponse`

Response message for listing findings.

| Property | Type | Description |
|----------|------|-------------|
| `listFindingsResults` | `array<ListFindingsResult>` | Findings matching the list request. |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results. |
| `readTime` | `string` | Time used for executing the list request. |
| `totalSize` | `integer` | The total number of findings matching the query. |

### `ListFindingsResult`

Result containing the Finding and its StateChange.

| Property | Type | Description |
|----------|------|-------------|
| `finding` | `Finding` | Finding matching the search request. |
| `resource` | `Resource` | Output only. Resource that is associated with this finding. |
| `stateChange` | `string` | State change of the finding between the points in time. |

### `ListMuteConfigsResponse`

Response message for listing mute configs.

| Property | Type | Description |
|----------|------|-------------|
| `muteConfigs` | `array<GoogleCloudSecuritycenterV1MuteConfig>` | The mute configs from the specified parent. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `ListNotificationConfigsResponse`

Response message for listing notification configs.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results. |
| `notificationConfigs` | `array<NotificationConfig>` | Notification configs belonging to the requested parent. |

### `ListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<Operation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `ListResourceValueConfigsResponse`

Response message to list resource value configs

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is empty, the... |
| `resourceValueConfigs` | `array<GoogleCloudSecuritycenterV1ResourceValueConfig>` | The resource value configs from the specified parent. |

### `ListSecurityHealthAnalyticsCustomModulesResponse`

Response message for listing Security Health Analytics custom modules.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If not empty, indicates that there may be more custom modules to be returned. |
| `securityHealthAnalyticsCustomModules` | `array<GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule>` | Custom modules belonging to the requested parent. |

### `ListSourcesResponse`

Response message for listing sources.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results. |
| `sources` | `array<Source>` | Sources belonging to the requested parent. |

### `ListValuedResourcesResponse`

Response message for listing the valued resources for a given simulation.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results. |
| `totalSize` | `integer` | The estimated total number of results matching the query. |
| `valuedResources` | `array<ValuedResource>` | The valued resources that the attack path simulation identified. |

### `LoadBalancer`

Contains information related to the load balancer associated with the finding.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The name of the load balancer associated with the finding. |

### `LogEntry`

An individual entry in a log.

| Property | Type | Description |
|----------|------|-------------|
| `cloudLoggingEntry` | `CloudLoggingEntry` | An individual entry in a log stored in Cloud Logging. |

### `MemoryHashSignature`

A signature corresponding to memory page hashes.

| Property | Type | Description |
|----------|------|-------------|
| `binaryFamily` | `string` | The binary family. |
| `detections` | `array<Detection>` | The list of memory hash detections contributing to the binary family match. |

### `MitreAttack`

MITRE ATT&CK tactics and techniques related to this finding. See: https://attack.mitre.org

| Property | Type | Description |
|----------|------|-------------|
| `additionalTactics` | `array<string>` | Additional MITRE ATT&CK tactics related to this finding, if any. |
| `additionalTechniques` | `array<string>` | Additional MITRE ATT&CK techniques related to this finding, if any, along with any of their respe... |
| `primaryTactic` | `string` | The MITRE ATT&CK tactic most closely represented by this finding, if any. |
| `primaryTechniques` | `array<string>` | The MITRE ATT&CK technique most closely represented by this finding, if any. primary_techniques i... |
| `version` | `string` | The MITRE ATT&CK version referenced by the above fields. E.g. "8". |

### `MuteInfo`

Mute information about the finding, including whether the finding has a static mute or any matching dynamic mute rules.

| Property | Type | Description |
|----------|------|-------------|
| `dynamicMuteRecords` | `array<DynamicMuteRecord>` | The list of dynamic mute rules that currently match the finding. |
| `staticMute` | `StaticMute` | If set, the static mute applied to this finding. Static mutes override dynamic mutes. If unset, t... |

### `Network`

Contains information about a VPC network associated with the finding.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The name of the VPC network resource, for example, `//compute.googleapis.com/projects/my-project/... |

### `Node`

Kubernetes nodes associated with the finding.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | [Full resource name](https://google.aip.dev/122#full-resource-names) of the Compute Engine VM run... |

### `NodePool`

Provides GKE node pool information.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Kubernetes node pool name. |
| `nodes` | `array<Node>` | Nodes associated with the finding. |

### `Notebook`

Represents a Jupyter notebook IPYNB file, such as a [Colab Enterprise notebook](https://cloud.google.com/colab/docs/introduction) file, that is associated with a finding.

| Property | Type | Description |
|----------|------|-------------|
| `lastAuthor` | `string` | The user ID of the latest author to modify the notebook. |
| `name` | `string` | The name of the notebook. |
| `notebookUpdateTime` | `string` | The most recent time the notebook was updated. |
| `service` | `string` | The source notebook service, for example, "Colab Enterprise". |

### `NotificationConfig`

Cloud Security Command Center (Cloud SCC) notification configs. A notification config is a Cloud SCC resource that contains the configuration to send notifications for create/update events of findings, assets and etc.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | The description of the notification config (max of 1024 characters). |
| `name` | `string` | The relative resource name of this notification config. See: https://cloud.google.com/apis/design... |
| `pubsubTopic` | `string` | The Pub/Sub topic to send notifications to. Its format is "projects/[project_id]/topics/[topic]". |
| `serviceAccount` | `string` | Output only. The service account that needs "pubsub.topics.publish" permission to publish to the ... |
| `streamingConfig` | `StreamingConfig` | The config for triggering streaming-based notifications. |

### `Object`

Kubernetes object related to the finding, uniquely identified by GKNN. Used if the object Kind is not one of Pod, Node, NodePool, Binding, or AccessReview.

| Property | Type | Description |
|----------|------|-------------|
| `containers` | `array<Container>` | Pod containers associated with this finding, if any. |
| `group` | `string` | Kubernetes object group, such as "policy.k8s.io/v1". |
| `kind` | `string` | Kubernetes object kind, such as "Namespace". |
| `name` | `string` | Kubernetes object name. For details see https://kubernetes.io/docs/concepts/overview/working-with... |
| `ns` | `string` | Kubernetes object namespace. Must be a valid DNS label. Named "ns" to avoid collision with C++ na... |

### `Operation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `Status` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `OrgPolicy`

Contains information about the org policies associated with the finding.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The resource name of the org policy. Example: "organizations/{organization_id}/policies/{constrai... |

### `OrganizationSettings`

User specified settings that are attached to the Security Command Center organization.

| Property | Type | Description |
|----------|------|-------------|
| `assetDiscoveryConfig` | `AssetDiscoveryConfig` | The configuration used for Asset Discovery runs. |
| `enableAssetDiscovery` | `boolean` | A flag that indicates if Asset Discovery should be enabled. If the flag is set to `true`, then di... |
| `name` | `string` | The relative resource name of the settings. See: https://cloud.google.com/apis/design/resource_na... |

### `Package`

Package is a generic definition of a package.

| Property | Type | Description |
|----------|------|-------------|
| `cpeUri` | `string` | The CPE URI where the vulnerability was detected. |
| `packageName` | `string` | The name of the package where the vulnerability was detected. |
| `packageType` | `string` | Type of package, for example, os, maven, or go. |
| `packageVersion` | `string` | The version of the package. |

### `PathNodeAssociatedFinding`

A finding that is associated with this node in the attack path.

| Property | Type | Description |
|----------|------|-------------|
| `canonicalFinding` | `string` | Canonical name of the associated findings. Example: `organizations/123/sources/456/findings/789` |
| `findingCategory` | `string` | The additional taxonomy group within findings from a given source. |
| `name` | `string` | Full resource name of the finding. |

### `Pipeline`

Vertex AI training pipeline associated with the finding.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The user defined display name of pipeline, e.g. plants-classification |
| `name` | `string` | Resource name of the pipeline, e.g. projects/{project}/locations/{location}/trainingPipelines/525... |

### `Pod`

A Kubernetes Pod.

| Property | Type | Description |
|----------|------|-------------|
| `containers` | `array<Container>` | Pod containers associated with this finding, if any. |
| `labels` | `array<Label>` | Pod labels. For Kubernetes containers, these are applied to the container. |
| `name` | `string` | Kubernetes Pod name. |
| `ns` | `string` | Kubernetes Pod namespace. |

### `Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `auditConfigs` | `array<AuditConfig>` | Specifies cloud audit logging configuration for this policy. |
| `bindings` | `array<Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `PolicyDriftDetails`

The policy field that violates the deployed posture and its expected and detected values.

| Property | Type | Description |
|----------|------|-------------|
| `detectedValue` | `string` | The detected value that violates the deployed posture, for example, `false` or `allowed_values={"... |
| `expectedValue` | `string` | The value of this field that was configured in a posture, for example, `true` or `allowed_values=... |
| `field` | `string` | The name of the updated field, for example constraint.implementation.policy_rules[0].enforce |

### `PortRange`

A port range which is inclusive of the min and max values. Values are between 0 and 2^16-1. The max can be equal / must be not smaller than the min value. If min and max are equal this indicates that it is a single port.

| Property | Type | Description |
|----------|------|-------------|
| `max` | `string` | Maximum port value. |
| `min` | `string` | Minimum port value. |

### `Position`

A position in the uploaded text version of a module.

| Property | Type | Description |
|----------|------|-------------|
| `columnNumber` | `integer` | The column number. |
| `lineNumber` | `integer` | The line number. |

### `Process`

Represents an operating system process.

| Property | Type | Description |
|----------|------|-------------|
| `args` | `array<string>` | Process arguments as JSON encoded strings. |
| `argumentsTruncated` | `boolean` | True if `args` is incomplete. |
| `binary` | `File` | File information for the process executable. |
| `envVariables` | `array<EnvironmentVariable>` | Process environment variables. |
| `envVariablesTruncated` | `boolean` | True if `env_variables` is incomplete. |
| `libraries` | `array<File>` | File information for libraries loaded by the process. |
| `name` | `string` | The process name, as displayed in utilities like `top` and `ps`. This name can be accessed throug... |
| `parentPid` | `string` | The parent process ID. |
| `pid` | `string` | The process ID. |
| `script` | `File` | When the process represents the invocation of a script, `binary` provides information about the i... |
| `userId` | `string` | The ID of the user that executed the process. E.g. If this is the root user this will always be 0. |

### `ProcessSignature`

Indicates what signature matched this process.

| Property | Type | Description |
|----------|------|-------------|
| `memoryHashSignature` | `MemoryHashSignature` | Signature indicating that a binary family was matched. |
| `signatureType` | `string` | Describes the type of resource associated with the signature. |
| `yaraRuleSignature` | `YaraRuleSignature` | Signature indicating that a YARA rule was matched. |

### `Reference`

Additional Links

| Property | Type | Description |
|----------|------|-------------|
| `source` | `string` | Source of the reference e.g. NVD |
| `uri` | `string` | Uri for the mentioned source e.g. https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-34527. |

### `Requests`

Information about the requests relevant to the finding.

| Property | Type | Description |
|----------|------|-------------|
| `longTermAllowed` | `integer` | Allowed RPS (requests per second) over the long term. |
| `longTermDenied` | `integer` | Denied RPS (requests per second) over the long term. |
| `ratio` | `number` | For 'Increasing deny ratio', the ratio is the denied traffic divided by the allowed traffic. For ... |
| `shortTermAllowed` | `integer` | Allowed RPS (requests per second) in the short term. |

### `Resource`

Information related to the Google Cloud resource that is associated with this finding.

| Property | Type | Description |
|----------|------|-------------|
| `adcApplication` | `AdcApplication` | The ADC application associated with the finding. |
| `adcApplicationTemplate` | `AdcApplicationTemplateRevision` | The ADC template associated with the finding. |
| `adcSharedTemplate` | `AdcSharedTemplateRevision` | The ADC shared template associated with the finding. |
| `application` | `GoogleCloudSecuritycenterV1ResourceApplication` | The App Hub application this resource belongs to. |
| `awsMetadata` | `AwsMetadata` | The AWS metadata associated with the finding. |
| `azureMetadata` | `AzureMetadata` | The Azure metadata associated with the finding. |
| `cloudProvider` | `string` | Indicates which cloud provider the finding is from. |
| `displayName` | `string` | The human readable name of the resource. |
| `folders` | `array<Folder>` | Contains a Folder message for each folder in the assets ancestry. The first folder is the deepest... |
| `location` | `string` | The region or location of the service (if applicable). |
| `name` | `string` | The full resource name of the resource. See: https://cloud.google.com/apis/design/resource_names#... |
| `organization` | `string` | Indicates which organization / tenant the finding is for. |
| `parentDisplayName` | `string` | The human readable name of resource's parent. |
| `parentName` | `string` | The full resource name of resource's parent. |
| `projectDisplayName` | `string` | The project ID that the resource belongs to. |
| `projectName` | `string` | The full resource name of project that the resource belongs to. |
| `resourcePath` | `ResourcePath` | Provides the path to the resource within the resource hierarchy. |
| `resourcePathString` | `string` | A string representation of the resource path. For Google Cloud, it has the format of `org/{organi... |
| `service` | `string` | The service or resource provider associated with the resource. |
| `type` | `string` | The full resource type of the resource. |

### `ResourcePath`

Represents the path of resources leading up to the resource this finding is about.

| Property | Type | Description |
|----------|------|-------------|
| `nodes` | `array<ResourcePathNode>` | The list of nodes that make the up resource path, ordered from lowest level to highest level. |

### `ResourcePathNode`

A node within the resource path. Each node represents a resource within the resource hierarchy.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The display name of the resource this node represents. |
| `id` | `string` | The ID of the resource this node represents. |
| `nodeType` | `string` | The type of resource this node represents. |

### `ResourceValueConfigMetadata`

Metadata about a ResourceValueConfig. For example, id and name.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Resource value config name |

### `Role`

Kubernetes Role or ClusterRole.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Role type. |
| `name` | `string` | Role name. |
| `ns` | `string` | Role namespace. |

### `RunAssetDiscoveryRequest`

Request message for running asset discovery for an organization.

### `Secret`

Details about a secret or credential associated with the finding.

| Property | Type | Description |
|----------|------|-------------|
| `environmentVariable` | `SecretEnvironmentVariable` | The environment variable containing the secret. |
| `filePath` | `SecretFilePath` | The file containing the secret. |
| `status` | `SecretStatus` | The status of the secret. |
| `type` | `string` | The type of secret, for example, GCP_API_KEY. |

### `SecretEnvironmentVariable`

Environment variable containing the secret.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | Environment variable name as a JSON encoded string. Note that value is not included since the val... |

### `SecretFilePath`

File path containing the secret.

| Property | Type | Description |
|----------|------|-------------|
| `path` | `string` | Path to the file. |

### `SecretStatus`

The status of the secret.

| Property | Type | Description |
|----------|------|-------------|
| `lastUpdatedTime` | `string` | Time that the secret was found. |
| `validity` | `string` | The validity of the secret. |

### `SecurityBulletin`

SecurityBulletin are notifications of vulnerabilities of Google products.

| Property | Type | Description |
|----------|------|-------------|
| `bulletinId` | `string` | ID of the bulletin corresponding to the vulnerability. |
| `submissionTime` | `string` | Submission time of this Security Bulletin. |
| `suggestedUpgradeVersion` | `string` | This represents a version that the cluster receiving this notification should be upgraded to, bas... |

### `SecurityCenterProperties`

Security Command Center managed properties. These properties are managed by Security Command Center and cannot be modified by the user.

| Property | Type | Description |
|----------|------|-------------|
| `folders` | `array<Folder>` | Contains a Folder message for each folder in the assets ancestry. The first folder is the deepest... |
| `resourceDisplayName` | `string` | The user defined display name for this resource. |
| `resourceName` | `string` | The full resource name of the Google Cloud resource this asset represents. This field is immutabl... |
| `resourceOwners` | `array<string>` | Owners of the Google Cloud resource. |
| `resourceParent` | `string` | The full resource name of the immediate parent of the resource. See: https://cloud.google.com/api... |
| `resourceParentDisplayName` | `string` | The user defined display name for the parent of this resource. |
| `resourceProject` | `string` | The full resource name of the project the resource belongs to. See: https://cloud.google.com/apis... |
| `resourceProjectDisplayName` | `string` | The user defined display name for the project of this resource. |
| `resourceType` | `string` | The type of the Google Cloud resource. Examples include: APPLICATION, PROJECT, and ORGANIZATION. ... |

### `SecurityMarks`

User specified security marks that are attached to the parent Security Command Center resource. Security marks are scoped within a Security Command Center organization -- they can be modified and viewed by all users who have proper permissions on the organization.

| Property | Type | Description |
|----------|------|-------------|
| `canonicalName` | `string` | The canonical name of the marks. Examples: "organizations/{organization_id}/assets/{asset_id}/sec... |
| `marks` | `object` | Mutable user specified security marks belonging to the parent resource. Constraints are as follow... |
| `name` | `string` | The relative resource name of the SecurityMarks. See: https://cloud.google.com/apis/design/resour... |

### `SecurityPolicy`

Information about the [Google Cloud Armor security policy](https://cloud.google.com/armor/docs/security-policy-overview) relevant to the finding.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The name of the Google Cloud Armor security policy, for example, "my-security-policy". |
| `preview` | `boolean` | Whether or not the associated rule or policy is in preview mode. |
| `type` | `string` | The type of Google Cloud Armor security policy for example, 'backend security policy', 'edge secu... |

### `SecurityPosture`

Represents a posture that is deployed on Google Cloud by the Security Command Center Posture Management service. A posture contains one or more policy sets. A policy set is a group of policies that enforce a set of security rules on Google Cloud.

| Property | Type | Description |
|----------|------|-------------|
| `changedPolicy` | `string` | The name of the updated policy, for example, `projects/{project_id}/policies/{constraint_name}`. |
| `name` | `string` | Name of the posture, for example, `CIS-Posture`. |
| `policy` | `string` | The ID of the updated policy, for example, `compute-policy-1`. |
| `policyDriftDetails` | `array<PolicyDriftDetails>` | The details about a change in an updated policy that violates the deployed posture. |
| `policySet` | `string` | The name of the updated policyset, for example, `cis-policyset`. |
| `postureDeployment` | `string` | The name of the posture deployment, for example, `organizations/{org_id}/posturedeployments/{post... |
| `postureDeploymentResource` | `string` | The project, folder, or organization on which the posture is deployed, for example, `projects/{pr... |
| `revisionId` | `string` | The version of the posture, for example, `c7cfa2a8`. |

### `SensitivityScore`

Score is calculated from of all elements in the data profile. A higher level means the data is more sensitive.

| Property | Type | Description |
|----------|------|-------------|
| `score` | `string` | The sensitivity score applied to the resource. |

### `ServiceAccountDelegationInfo`

Identity delegation history of an authenticated service account.

| Property | Type | Description |
|----------|------|-------------|
| `principalEmail` | `string` | The email address of a Google account. |
| `principalSubject` | `string` | A string representing the principal_subject associated with the identity. As compared to `princip... |

### `SetFindingStateRequest`

Request message for updating a finding's state.

| Property | Type | Description |
|----------|------|-------------|
| `startTime` | `string` | Optional. The time at which the updated state takes effect. If unset, defaults to the request time. |
| `state` | `string` | Required. The desired State of the finding. |

### `SetIamPolicyRequest`

Request message for `SetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `Policy` | REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited ... |
| `updateMask` | `string` | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mas... |

### `SetMuteRequest`

Request message for updating a finding's mute status.

| Property | Type | Description |
|----------|------|-------------|
| `mute` | `string` | Required. The desired state of the Mute. |

### `SimulateSecurityHealthAnalyticsCustomModuleRequest`

Request message to simulate a CustomConfig against a given test resource. Maximum size of the request is 4 MB by default.

| Property | Type | Description |
|----------|------|-------------|
| `customConfig` | `GoogleCloudSecuritycenterV1CustomConfig` | Required. The custom configuration that you need to test. |
| `resource` | `SimulatedResource` | Required. Resource data to simulate custom module against. |

### `SimulateSecurityHealthAnalyticsCustomModuleResponse`

Response message for simulating a `SecurityHealthAnalyticsCustomModule` against a given resource.

| Property | Type | Description |
|----------|------|-------------|
| `result` | `SimulatedResult` | Result for test case in the corresponding request. |

### `SimulatedResource`

Manually constructed resource name. If the custom module evaluates against only the resource data, you can omit the `iam_policy_data` field. If it evaluates only the `iam_policy_data` field, you can omit the resource data.

| Property | Type | Description |
|----------|------|-------------|
| `iamPolicyData` | `Policy` | Optional. A representation of the IAM policy. |
| `resourceData` | `object` | Optional. A representation of the Google Cloud resource. Should match the Google Cloud resource J... |
| `resourceType` | `string` | Required. The type of the resource, for example, `compute.googleapis.com/Disk`. |

### `SimulatedResult`

Possible test result.

| Property | Type | Description |
|----------|------|-------------|
| `error` | `Status` | Error encountered during the test. |
| `finding` | `Finding` | Finding that would be published for the test case, if a violation is detected. |
| `noViolation` | `Empty` | Indicates that the test case does not trigger any violation. |

### `Simulation`

Attack path simulation

| Property | Type | Description |
|----------|------|-------------|
| `cloudProvider` | `string` | Indicates which cloud provider was used in this simulation. |
| `createTime` | `string` | Output only. Time simulation was created |
| `name` | `string` | Full resource name of the Simulation: `organizations/123/simulations/456` |
| `resourceValueConfigsMetadata` | `array<ResourceValueConfigMetadata>` | Resource value configurations' metadata used in this simulation. Maximum of 100. |

### `Source`

Security Command Center finding source. A finding source is an entity or a mechanism that can produce a finding. A source is like a container of findings that come from the same scanner, logger, monitor, and other tools.

| Property | Type | Description |
|----------|------|-------------|
| `canonicalName` | `string` | The canonical name of the finding source. It's either "organizations/{organization_id}/sources/{s... |
| `description` | `string` | The description of the source (max of 1024 characters). Example: "Web Security Scanner is a web s... |
| `displayName` | `string` | The source's display name. A source's display name must be unique amongst its siblings, for examp... |
| `name` | `string` | The relative resource name of this source. See: https://cloud.google.com/apis/design/resource_nam... |

### `StaticMute`

Information about the static mute state. A static mute state overrides any dynamic mute rules that apply to this finding. The static mute state can be set by a static mute rule or by muting the finding directly.

| Property | Type | Description |
|----------|------|-------------|
| `applyTime` | `string` | When the static mute was applied. |
| `state` | `string` | The static mute state. If the value is `MUTED` or `UNMUTED`, then the finding's overall mute stat... |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `StreamingConfig`

The config for streaming-based notifications, which send each event as soon as it is detected.

| Property | Type | Description |
|----------|------|-------------|
| `filter` | `string` | Expression that defines the filter to apply across create/update events of assets or findings as ... |

### `Subject`

Represents a Kubernetes subject.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Authentication type for the subject. |
| `name` | `string` | Name for the subject. |
| `ns` | `string` | Namespace for the subject. |

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

### `TicketInfo`

Information about the ticket, if any, that is being used to track the resolution of the issue that is identified by this finding.

| Property | Type | Description |
|----------|------|-------------|
| `assignee` | `string` | The assignee of the ticket in the ticket system. |
| `description` | `string` | The description of the ticket in the ticket system. |
| `id` | `string` | The identifier of the ticket in the ticket system. |
| `status` | `string` | The latest status of the ticket, as reported by the ticket system. |
| `updateTime` | `string` | The time when the ticket was last updated, as reported by the ticket system. |
| `uri` | `string` | The link to the ticket in the ticket system. |

### `ToxicCombination`

Contains details about a group of security issues that, when the issues occur together, represent a greater risk than when the issues occur independently. A group of such issues is referred to as a toxic combination.

| Property | Type | Description |
|----------|------|-------------|
| `attackExposureScore` | `number` | The [Attack exposure score](https://cloud.google.com/security-command-center/docs/attack-exposure... |
| `relatedFindings` | `array<string>` | List of resource names of findings associated with this toxic combination. For example, `organiza... |

### `ValidateEventThreatDetectionCustomModuleRequest`

Request to validate an Event Threat Detection custom module.

| Property | Type | Description |
|----------|------|-------------|
| `rawText` | `string` | Required. The raw text of the module's contents. Used to generate error messages. |
| `type` | `string` | Required. The type of the module (e.g. CONFIGURABLE_BAD_IP). |

### `ValidateEventThreatDetectionCustomModuleResponse`

Response to validating an Event Threat Detection custom module.

| Property | Type | Description |
|----------|------|-------------|
| `errors` | `CustomModuleValidationErrors` | A list of errors returned by the validator. If the list is empty, there were no errors. |

### `ValuedResource`

A resource that is determined to have value to a user's system

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Human-readable name of the valued resource. |
| `exposedScore` | `number` | Exposed score for this valued resource. A value of 0 means no exposure was detected exposure. |
| `name` | `string` | Valued resource name, for example, e.g.: `organizations/123/simulations/456/valuedResources/789` |
| `resource` | `string` | The [full resource name](https://cloud.google.com/apis/design/resource_names#full_resource_name) ... |
| `resourceType` | `string` | The [resource type](https://cloud.google.com/asset-inventory/docs/supported-asset-types) of the v... |
| `resourceValue` | `string` | How valuable this resource is. |
| `resourceValueConfigsUsed` | `array<ResourceValueConfigMetadata>` | List of resource value configurations' metadata used to determine the value of this resource. Max... |

### `VertexAi`

Vertex AI-related information associated with the finding.

| Property | Type | Description |
|----------|------|-------------|
| `datasets` | `array<Dataset>` | Datasets associated with the finding. |
| `pipelines` | `array<Pipeline>` | Pipelines associated with the finding. |

### `Vulnerability`

Refers to common vulnerability fields e.g. cve, cvss, cwe etc.

| Property | Type | Description |
|----------|------|-------------|
| `cve` | `Cve` | CVE stands for Common Vulnerabilities and Exposures (https://cve.mitre.org/about/) |
| `cwes` | `array<Cwe>` | Represents one or more Common Weakness Enumeration (CWE) information on this vulnerability. |
| `fixedPackage` | `Package` | The fixed package is relevant to the finding. |
| `offendingPackage` | `Package` | The offending package is relevant to the finding. |
| `providerRiskScore` | `string` | Provider provided risk_score based on multiple factors. The higher the risk score, the more risky... |
| `reachable` | `boolean` | Represents whether the vulnerability is reachable (detected via static analysis) |
| `securityBulletin` | `SecurityBulletin` | The security bulletin is relevant to this finding. |

### `VulnerabilityCountBySeverity`

Vulnerability count by severity.

| Property | Type | Description |
|----------|------|-------------|
| `severityToFindingCount` | `object` | Key is the Severity enum. |

### `VulnerabilitySnapshot`

Result containing the properties and count of a VulnerabilitySnapshot request.

| Property | Type | Description |
|----------|------|-------------|
| `cloudProvider` | `string` | The cloud provider for the vulnerability snapshot. |
| `findingCount` | `VulnerabilityCountBySeverity` | The vulnerability count by severity. |
| `name` | `string` | Identifier. The vulnerability snapshot name. Format: //locations//vulnerabilitySnapshots/ |
| `snapshotTime` | `string` | The time that the snapshot was taken. |

### `YaraRuleSignature`

A signature corresponding to a YARA rule.

| Property | Type | Description |
|----------|------|-------------|
| `yaraRule` | `string` | The name of the YARA rule. |

